unit UtilsMDB;

interface

uses
  Vcl.DBCtrls, Vcl.Dialogs, Vcl.ComCtrls, System.SysUtils, Winapi.RichEdit,
  Winapi.Windows, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ExtDlgs, Vcl.Graphics,
  Data.Win.ADODB, Vcl.Clipbrd, Vcl.Buttons, System.Classes;

// ����� ������ � �������
procedure SearchText(mComponent: TDBRichEdit; fDialog: TFindDialog;
  aText: string);
// ����� ��� ������ ���� ���
function SearchTextAndSelect(RichEdit: TCustomRichEdit;
  SearchText: string): boolean;
// ����� ��� ������ ������ ���
procedure SearchTextM(mComponent: TDBRichEdit; aText: string);
function SearchTextAndSelectMany(RichEdit: TDBRichEdit;
  SearchText: string): boolean;
// ����� �� ������ ����������
function Search_And_Replace(RichEdit: TCustomRichEdit;
  SearchText, ReplaceText: string): boolean;

// ����������� �� ����� ������
procedure CorrectParaAligment(Redit: TCustomRichEdit);

// ����� ������
procedure NyznIndex(mText: TCustomRichEdit);
// ������ ������
procedure VerchIndex(mText: TCustomRichEdit);
// �������� ������� � ����� � ����

procedure InsertMal(OPDialog: TOpenPictureDialog; Table: TADOTable);
// �������� ������� � ������ � ����
procedure InsertMalFromClip(Table: TADOTable; Imag: TDBImage);

// ������� ������� �� �������
procedure LineOffset(Riched: TCustomRichEdit);
// ³����� �� ������� � 0,1,2
procedure RE_SetLineSpacing(ARichEdit: TCustomRichEdit; lineSpacing: Byte);
// ����� ������ � �������

// �������� ����� rtf
function GetRTFText(RichEdit: TDBRichEdit): string;
// ����������� ������
procedure RE_AlignText(RichEdit: TCustomRichEdit; Alignment: TAlignment);
// ����� ������
procedure RE_SetTextStyle(ARichEdit: TCustomRichEdit; Style: TFontStyle);
// ����� ��� ������
// ���� ������� ���� (���)
procedure RE_SetSelBgColor(RichEdit: TCustomRichEdit; AColor: TColor);
procedure RT_Numbering(RichEdit: TCustomRichEdit; numI: integer;
  StartI: integer);
procedure SetStyletext0(RichEdit: TCustomRichEdit);
procedure SetStyletext1(RichEdit: TCustomRichEdit);
procedure SetStyletext2(RichEdit: TCustomRichEdit);
procedure SetStyletext3(RichEdit: TCustomRichEdit);
procedure SetStyletext4(RichEdit: TCustomRichEdit);

procedure Para_Setjustify(ARichEdit: TCustomRichEdit; i: integer);

procedure Char_SetOff(RichEdit: TCustomRichEdit; i: integer);

procedure Char_Space(RichEdit: TCustomRichEdit; i: integer);

procedure Char_Space1(RichEdit: TCustomRichEdit; i: integer);

procedure RE_SetCharFormat(RichEdit: TCustomRichEdit; AUnderlineType: Byte;
  AColor: Word);
procedure RE_SetCharFormat1(ARichEdit: TCustomRichEdit; AUnderlineType: Byte;
  AColor: Word);

function ClearRichText(RTF: TDBRichEdit): string;
function ClearRichSelText(RTF: TDBRichEdit): string;

procedure RE_LineBefore(ARichEdit: TCustomRichEdit; i: integer);
procedure RE_LineAfter(ARichEdit: TCustomRichEdit; i: integer);

function ExecAndWait(const FileName,
                     Params: ShortString;
                     const WinState: Word): boolean; export;

procedure LoginPass(var Log, Pass: String);
// Underline styles
const
  CFU_UNDERLINETHICK = 9;
  CFU_UNDERLINEWAVE = 8;
  CFU_UNDERLINEDASHDOTDOT = 7;
  CFU_UNDERLINEDASHDOT = 6;
  CFU_UNDERLINEDASH = 5;
  CFU_UNDERLINEDOTTED = 4;
  CFU_UNDERLINE = 1;
  CFU_UNDERLINENONE = 0;

implementation

// ����� ������ ����� �����
procedure SearchText(mComponent: TDBRichEdit; fDialog: TFindDialog;
  aText: string);
var
  FoundAt: LongInt;
  StartPos, ToEnd: integer;
  mySearchTypes: TSearchTypes;
  // myFindOptions: TFindOptions;
begin
  mySearchTypes := [];
  fDialog.FindText := aText;

  with mComponent do
  begin
    if frMatchCase in fDialog.Options then
      mySearchTypes := mySearchTypes + [stMatchCase];
    if frWholeWord in fDialog.Options then
      mySearchTypes := mySearchTypes + [stWholeWord];

    { ������ ����� ���� ��������� ��������, ���� ���� �. }
    { � ������ ������� ��������� � ������� ������. }

    if SelLength <> 0 then
      StartPos := SelStart + SelLength
    else
      StartPos := 0;

    { ToEnd � �� ������� �� StartPos �� ���� ������
      � ������� ��������� ���������� ������������. }

    ToEnd := Length(Text) - StartPos;

    FoundAt := FindText(fDialog.FindText, StartPos, ToEnd, mySearchTypes);
    if FoundAt <> -1 then
    begin
      SetFocus;
      SelStart := FoundAt;
      SelLength := Length(fDialog.FindText);
    end
    else
      System.SysUtils.Beep;
  end;
end;

// ����� ������ ����� �����
procedure SearchTextM(mComponent: TDBRichEdit; aText: string);
var
  FoundAt: LongInt;
  StartPos, ToEnd: integer;
  mySearchTypes: TSearchTypes;
  myFindOptions: TFindOptions;
begin
  mySearchTypes := [];

  with mComponent do
  begin
    { ������ ����� ���� ��������� ��������, ���� ���� �. }
    { � ������ ������� ��������� � ������� ������. }

    if SelLength <> 0 then
      StartPos := SelStart + SelLength
    else
      StartPos := 0;

    { ToEnd � �� ������� �� StartPos �� ���� ������
      � ������� ��������� ���������� ������������. }

    ToEnd := Length(Text) - StartPos;

    FoundAt := FindText(aText, StartPos, ToEnd, mySearchTypes);
    if FoundAt <> -1 then
    begin
      SetFocus;
      SelStart := FoundAt;
      SelLength := Length(aText);
    end
    else
      System.SysUtils.Beep;
  end;
end;

// ���� ������ � ��������
function SearchTextAndSelectMany(RichEdit: TDBRichEdit;
  SearchText: string): boolean;
var
  StartPos, Position, EndPos: integer;
begin
  StartPos := 0;
  with RichEdit do
  begin
    EndPos := Length(RichEdit.Text);
    Lines.BeginUpdate;
    while FindText(SearchText, StartPos, EndPos, [stMatchCase]) <> -1 do
    begin
      EndPos := Length(RichEdit.Text) - StartPos;
      Position := FindText(SearchText, StartPos, EndPos, [stMatchCase]);
      Inc(StartPos, Length(SearchText));
      SetFocus;
      SelStart := Position;
      SelLength := Length(SearchText);
    end;
    Lines.EndUpdate;
  end;
end;

// ����������� ������ �� �����
procedure CorrectParaAligment(Redit: TCustomRichEdit);
const
  TO_ADVANCEDTYPOGRAPHY = $0001;
  TO_SIMPLELINEBREAK = $0002;
  EM_SETTYPOGRAPHYOPTIONS = $04CA;
  PFA_JUSTIFY = $0004;
  // Rich Edit 2.0: Paragraphs are justified. This value is included for compatibility with TOM interfaces; rich edit controls earlier than Rich Edit 3.0 display the text aligned with the left margin.
  PFA_FULL_INTERWORD = $0005;
  // Paragraphs are justified by expanding the blanks alone.
var
  lParagraph: TParaFormat2;
begin
  ZeroMemory(@lParagraph, SizeOf(TParaFormat2));
  lParagraph.cbSize := SizeOf(TParaFormat2);
  lParagraph.dwMask := PFM_ALIGNMENT;
  lParagraph.wAlignment := PFA_JUSTIFY;
  SendMessage(Redit.Handle, EM_SETTYPOGRAPHYOPTIONS, TO_ADVANCEDTYPOGRAPHY,
    TO_ADVANCEDTYPOGRAPHY);
  SendMessage(Redit.Handle, EM_SETPARAFORMAT, 0, integer(@lParagraph));
end;

// ����� ������
procedure NyznIndex(mText: TCustomRichEdit);
begin
  if mText.SelAttributes.Subscript = sstSubscript then
    mText.SelAttributes.Subscript := sstNone
  else
    mText.SelAttributes.Subscript := sstSubscript;
end;

// ������ ������
procedure VerchIndex(mText: TCustomRichEdit);
begin
  if mText.SelAttributes.Subscript = sstSuperscript then
    mText.SelAttributes.Subscript := sstNone
  else
    mText.SelAttributes.Subscript := sstSuperscript;
end;

// ������� �������
procedure InsertMal(OPDialog: TOpenPictureDialog; Table: TADOTable);
var
  jpeg: TJPEGImage;
  bmp: TBitmap;
begin
  // ���������� � ��� �������
  // **����� �������
  if OPDialog.Execute then
  begin
    jpeg := TJPEGImage.Create;
    bmp := TBitmap.Create;
  end;
  // **��������� � ����
  try
    jpeg.loadFromFile(OPDialog.FileName);
    bmp.Assign(jpeg);
    Table.edit;
    Table.FieldByName('����').Assign(bmp);
    Table.Post;
  finally
    // **��������� ����� ������
    jpeg.Free;
    bmp.Free;
  end;
end;

// ������� ������� � ������
procedure InsertMalFromClip(Table: TADOTable; Imag: TDBImage);
begin
  if Clipboard.HasFormat(CF_BITMAP) or Clipboard.HasFormat(CF_METAFILEPICT) or
    Clipboard.HasFormat(CF_PICTURE) then
  begin
    Table.edit;
    Imag.Picture.Bitmap.Assign(Clipboard);
    Table.Post;
  end;
end;

// ̳��������� ��������
procedure LineOffset(Riched: TCustomRichEdit);
var
  i: integer;
begin
  i := strtoint(inputbox('̳��������� ��������', '������ ��������', '0'));
  Riched.SelAttributes.Offset := i;
end;

// ̳��������� �������� ����������
procedure RE_SetLineSpacing(ARichEdit: TCustomRichEdit; lineSpacing: Byte);
var
  pf2: ParaFormat2;
begin
  FillChar(pf2, SizeOf(pf2), 0);
  pf2.cbSize := SizeOf(ParaFormat2);
  pf2.dwMask := PFM_LINESPACING;
  pf2.bLineSpacingRule := lineSpacing;
  SendMessage(ARichEdit.Handle, EM_SETPARAFORMAT, 0, LongInt(@pf2));
end;

// ����� ������ � ��������
function SearchTextAndSelect(RichEdit: TCustomRichEdit;
  SearchText: string): boolean;
var
  StartPos, EndPos, Pos: integer;
begin
  StartPos := 0;
  with RichEdit do
  begin
    EndPos := Length(Text);
    Lines.BeginUpdate;
    while FindText(SearchText, StartPos, EndPos, [stMatchCase]) <> -1 do
    begin
      EndPos := Length(Text) - StartPos;
      Pos := FindText(SearchText, StartPos, EndPos, [stMatchCase]);
      Inc(StartPos, Length(SearchText));
      SetFocus;
      SelStart := Pos;
      SelLength := Length(SearchText);
      Break;
    end;
    Lines.EndUpdate;
  end;
end;

// ��� ����� RTF ����������������� ����� �� TRichEdit?
function GetRTFText(RichEdit: TDBRichEdit): string;
var
  ss: TStringStream;
  EmptyStr: string;
begin
  EmptyStr := '';
  ss := TStringStream.Create(EmptyStr);
  try
    RichEdit.PlainText := false;
    RichEdit.Lines.SaveToStream(ss);
    Result := ss.DataString;
  finally
    ss.Free;
  end;
end;

// ����������� ������ � ���������
procedure RE_AlignText(RichEdit: TCustomRichEdit; Alignment: TAlignment);
var
  pf2: ParaFormat2;
begin
  FillChar(pf2, SizeOf(pf2), 0);
  pf2.cbSize := SizeOf(ParaFormat2);
  SendMessage(RichEdit.Handle, EM_GETPARAFORMAT, 0, LongInt(@pf2));
  pf2.dwMask := PFM_ALIGNMENT;
  case Alignment of
    taLeftJustify:
      pf2.wAlignment := PFA_LEFT;
    taCenter:
      pf2.wAlignment := PFA_CENTER;
    taRightJustify:
      pf2.wAlignment := PFA_RIGHT;
  end;
  SendMessage(RichEdit.Handle, EM_SETPARAFORMAT, 0, LongInt(@pf2));
end;

// ������� ���������
procedure RT_Numbering(RichEdit: TCustomRichEdit; numI: integer;
  StartI: integer);
var
  fmt: TParaFormat2;
begin
  FillChar(fmt, SizeOf(fmt), 0);
  fmt.cbSize := SizeOf(fmt);
  fmt.dwMask := PFM_NUMBERING or PFM_NUMBERINGSTART or PFM_NUMBERINGSTYLE or
    PFM_NUMBERINGTAB;
  fmt.wNumbering := numI;
  // wNumbering:
  // 0 - ��� ���������
  // 1 - ������������� ������    (�, �, �, ...).
  // 2 - �������� �����          (1, 2, 3, ...).
  // 3 - ��������� �����         (a, b, c, ...).
  // 4 - ������� �����           (A, B, C, ...).
  // 5 - ��������� ������� ����� (i, ii, iii, ...).
  // 6 - ������� ������� �����   (I, II, III, ...).
  // 7 - ������������������ �������� Unicode
  fmt.wNumberingStart := StartI;
  // wNumberingStart:
  // �����, � �������� ���������� ���������.
  fmt.wNumberingStyle := $200;
  // wNumberingStyle:
  // ����� ���������
  // 0     :  1)
  // $100  : (1)
  // $200  :  1.
  // $300  :  1
  // $400  : ������ ������
  // $8000 : ���������� ���������� ������ �� ������� �����
  fmt.wNumberingTab := 1440 div 4;
  // wNumberingTab:
  // ���������� ����� ������� � ������� ���������
  RichEdit.Perform(EM_SETPARAFORMAT, 0, lParam(@fmt));
end;

// ��� �������� ����� ������ TRichEdit ��������� ��������������� ������?
// � ������� ����� ������ �������� �� ������� ��������� ���������� ������:
// Ctrl + B - ���/���� ������� ������
// Ctrl + I - ���/���� ���������� ������
// Ctrl + S - ���/���� ������������ ������
// Ctrl + U - ���/���� ������������� ������

// ���� ������
procedure RE_SetTextStyle(ARichEdit: TCustomRichEdit; Style: TFontStyle);
begin
  case Style of
    fsBold:
      if fsBold in ARichEdit.SelAttributes.Style then
        ARichEdit.SelAttributes.Style := ARichEdit.SelAttributes.Style
          - [fsBold]
      else
        ARichEdit.SelAttributes.Style := ARichEdit.SelAttributes.Style
          + [fsBold];
    fsItalic:
      if fsItalic in ARichEdit.SelAttributes.Style then
        ARichEdit.SelAttributes.Style := ARichEdit.SelAttributes.Style -
          [fsItalic]
      else
        ARichEdit.SelAttributes.Style := ARichEdit.SelAttributes.Style +
          [fsItalic];
    fsUnderline:
      if fsUnderline in ARichEdit.SelAttributes.Style then
        ARichEdit.SelAttributes.Style := ARichEdit.SelAttributes.Style -
          [fsUnderline]
      else
        ARichEdit.SelAttributes.Style := ARichEdit.SelAttributes.Style +
          [fsUnderline];
    fsStrikeOut:
      if fsStrikeOut in ARichEdit.SelAttributes.Style then
        ARichEdit.SelAttributes.Style := ARichEdit.SelAttributes.Style -
          [fsStrikeOut]
      else
        ARichEdit.SelAttributes.Style := ARichEdit.SelAttributes.Style +
          [fsStrikeOut];
  end;
end;

// ����� � �������� �������
function Search_And_Replace(RichEdit: TCustomRichEdit;
  SearchText, ReplaceText: string): boolean;
var
  StartPos, Position, EndPos: integer;
begin
  StartPos := 0;
  with RichEdit do
  begin
    EndPos := Length(RichEdit.Text);
    Lines.BeginUpdate;
    while FindText(SearchText, StartPos, EndPos, [stMatchCase]) <> -1 do
    begin
      EndPos := Length(RichEdit.Text) - StartPos;
      Position := FindText(SearchText, StartPos, EndPos, [stMatchCase]);
      Inc(StartPos, Length(SearchText));
      SetFocus;
      SelStart := Position;
      SelLength := Length(SearchText);
      RichEdit.clearselection;
      SelText := ReplaceText;
    end;
    Lines.EndUpdate;
  end;
end;

// ���������� �������� �������
procedure RE_SetSelBgColor(RichEdit: TCustomRichEdit; AColor: TColor);
var
  Format: CHARFORMAT2;
begin
  FillChar(Format, SizeOf(Format), 0);
  with Format do
  begin
    cbSize := SizeOf(Format);
    dwMask := CFM_BACKCOLOR;
    crBackColor := AColor;
    RichEdit.Perform(EM_SETCHARFORMAT, SCF_SELECTION, LongInt(@Format));
  end;
end;

// ��������� ����� ������ ��������� �� ������������, ������ ������� ������
procedure SetStyletext0(RichEdit: TCustomRichEdit);
begin
  RichEdit.SelectAll;
  // ���� ������
  RichEdit.DefAttributes.Color := clBlack;
  RichEdit.DefAttributes.Size := 12;
  RichEdit.DefAttributes.Name := 'Segoe UI';
  RichEdit.DefAttributes.Style := [];
  // ����������� ���� ������ � ���������
  RichEdit.Paragraph.LeftIndent := -20;
  RichEdit.Paragraph.FirstIndent := 40;
  RichEdit.Paragraph.RightIndent := 20;

  CorrectParaAligment(RichEdit);
end;

// ��������� ����� ������ ���������
procedure SetStyletext1(RichEdit: TCustomRichEdit);
begin
  RichEdit.SelectAll;
  // ���� ������
  RichEdit.SelAttributes.Color := clBlack;
  RichEdit.SelAttributes.Size := 12;
  RichEdit.SelAttributes.Name := 'Segoe UI';
  // ����������� ���� ������ � ���������
  RichEdit.Paragraph.LeftIndent := -20;
  RichEdit.Paragraph.FirstIndent := 40;
  RichEdit.Paragraph.RightIndent := 20;

  CorrectParaAligment(RichEdit);
end;

// ��������� ����� ��������� ���������
procedure SetStyletext2(RichEdit: TCustomRichEdit);
begin
  // RichEdit.SelectAll;
  // ���� ������
  RichEdit.SelAttributes.Name := 'Segoe UI';
  RichEdit.SelAttributes.Color := clRed;
  RichEdit.SelAttributes.Size := 14;
  RichEdit.SelAttributes.Bold := true;

  // ����������� ���� ������ � ���������
  // RichEdit.Paragraph.LeftIndent  := -20;
  // RichEdit.Paragraph.FirstIndent := 40;
  // RichEdit.Paragraph.RightIndent := 20;
  RichEdit.Paragraph.Alignment := taCenter;

  // CorrectParaAligment(RichEdit);
end;

// ��������� ����� ��� ���������
procedure SetStyletext4(RichEdit: TCustomRichEdit);
begin
  // RichEdit.SelectAll;
  // ���� ������
  RichEdit.SelAttributes.Color := clBlue;
  RichEdit.SelAttributes.Size := 12;
  RichEdit.SelAttributes.Name := 'Segoe UI';
  // ����������� ���� ������ � ���������
  RichEdit.Paragraph.LeftIndent := -20;
  RichEdit.Paragraph.FirstIndent := 40;
  RichEdit.Paragraph.RightIndent := 20;

  CorrectParaAligment(RichEdit);
end;

// ��������� 2
procedure SetStyletext3(RichEdit: TCustomRichEdit);
begin
  // RichEdit.SelectAll;
  // ���� ������
  RichEdit.SelAttributes.Color := clBlack;
  RichEdit.SelAttributes.Size := 12;
  RichEdit.SelAttributes.Bold := true;
  RichEdit.SelAttributes.Italic := true;
  RichEdit.SelAttributes.Name := 'Segoe UI';
  // ����������� ���� ������ � ���������
  // RichEdit.Paragraph.LeftIndent  := -20;
  // RichEdit.Paragraph.FirstIndent := 40;
  // RichEdit.Paragraph.RightIndent := 20;
  // RichEdit.Paragraph.Alignment := taCenter;

  CorrectParaAligment(RichEdit);
end;

procedure Para_Setjustify(ARichEdit: TCustomRichEdit; i: integer);
var
  pf2: ParaFormat2;
begin
  FillChar(pf2, SizeOf(pf2), 0);
  pf2.cbSize := SizeOf(ParaFormat2);
  case i of
    0:
      begin
        pf2.dwMask := PFM_ALIGNMENT;
        pf2.wAlignment := PFA_LEFT;
        SendMessage(ARichEdit.Handle, EM_SETPARAFORMAT, 0, LongInt(@pf2));
      end;
    1:
      begin
        pf2.dwMask := PFM_ALIGNMENT;
        pf2.wAlignment := PFA_CENTER;
        SendMessage(ARichEdit.Handle, EM_SETPARAFORMAT, 0, LongInt(@pf2));
      end;
    2:
      begin
        pf2.dwMask := PFM_ALIGNMENT;
        pf2.wAlignment := PFA_RIGHT;
        SendMessage(ARichEdit.Handle, EM_SETPARAFORMAT, 0, LongInt(@pf2));
      end;
    3:
      begin
        pf2.dwMask := PFM_ALIGNMENT;
        pf2.wAlignment := PFA_JUSTIFY;
        SendMessage(ARichEdit.Handle, EM_SETPARAFORMAT, 0, LongInt(@pf2));
      end;
  end;
end;

// ���������� ������� �������� � ����� �� ��������
procedure Char_SetOff(RichEdit: TCustomRichEdit; i: integer);
var
  Format: CHARFORMAT2;
begin
  FillChar(Format, SizeOf(Format), 0);

  Format.cbSize := SizeOf(Format);
  Format.dwMask := CFM_OFFSET;
  Format.yOffset := i;

  RichEdit.Perform(EM_SETCHARFORMAT, SCF_SELECTION, LongInt(@Format));
end;

procedure Char_Space(RichEdit: TCustomRichEdit; i: integer);
var
  Format: CHARFORMAT2;
begin
  FillChar(Format, SizeOf(Format), 0);

  Format.cbSize := SizeOf(Format);
  Format.dwMask := CFM_SPACING;
  Format.sSpacing := i;

  RichEdit.Perform(EM_SETCHARFORMAT, SCF_SELECTION, LongInt(@Format));
end;

procedure Char_Space1(RichEdit: TCustomRichEdit; i: integer);
var
  Format: CHARFORMAT2;
begin
  FillChar(Format, SizeOf(Format), 0);

  Format.cbSize := SizeOf(Format);
  Format.dwMask := CFM_KERNING;
  Format.wKerning := i;

  RichEdit.Perform(EM_SETCHARFORMAT, SCF_SELECTION, LongInt(@Format));
end;

procedure RE_SetCharFormat(RichEdit: TCustomRichEdit; AUnderlineType: Byte;
  AColor: Word);
var
  Format: CHARFORMAT2;
begin
  FillChar(Format, SizeOf(Format), 0);
  // Format.cbSize = SizeOf(Format);

  Format.dwMask := CFM_UNDERLINETYPE or CFM_UNDERLINE;
  Format.dwEffects := CFE_UNDERLINE;
  Format.bUnderlineType := AUnderlineType or AColor;
  // Format.crBackColor := RGB(255, 0, 0);

  case AUnderlineType of
    0:
      Format.bUnderlineType := CFU_CF1UNDERLINE;
    1:
      Format.bUnderlineType := CFU_INVERT;
    2:
      Format.bUnderlineType := CFU_UNDERLINE;
    3:
      Format.bUnderlineType := CFU_UNDERLINEDOTTED;
    4:
      Format.bUnderlineType := CFU_UNDERLINEDOUBLE;
    5:
      Format.bUnderlineType := CFU_UNDERLINENONE;
    6:
      Format.bUnderlineType := CFU_UNDERLINEWORD;
  end;

  // SendMessage(hWndEdit,EM_SETCHARFORMAT, SCF_SELECTION, (LPARAM)&format); }
  RichEdit.Perform(EM_SETCHARFORMAT, SCF_SELECTION, LongInt(@Format));

  // Format.cbSize := SizeOf(Format);
  //
  // Format.dwMask := CFM_UNDERLINETYPE or CFM_UNDERLINE;
  // Format.dwEffects := CFE_UNDERLINE;
  // Format.bUnderlineType := CFU_UNDERLINE;
  // SendMessage(fRichEdit.Handle,EM_SETSEL,StartPos,EndPos);
  // SendMessage(fRichEdit.Handle,EM_SETCHARFORMAT, SCF_SELECTION or SCF_WORD, Longint( @Format ))
end;

procedure RE_SetCharFormat1(ARichEdit: TCustomRichEdit; AUnderlineType: Byte;
  AColor: Word);
var
  // The CHARFORMAT2 structure contains information about
  // character formatting in a rich edit control.
  Format: CHARFORMAT2;
begin
  FillChar(Format, SizeOf(Format), 0);
  with Format do
  begin
    cbSize := SizeOf(Format);
    dwMask := CFM_UNDERLINETYPE;
    bUnderlineType := AUnderlineType or AColor;
    ARichEdit.Perform(EM_SETCHARFORMAT, SCF_SELECTION, LongInt(@Format));
  end;
end;

function ClearRichText(RTF: TDBRichEdit): string;
var
  Stream: TMemoryStream;
  PlainText: boolean;
begin
  Stream := TMemoryStream.Create;
  try
    PlainText := RTF.PlainText;
    try
      RTF.PlainText := false;
      RTF.Lines.SaveToStream(Stream);
    finally
      RTF.PlainText := PlainText;
    end;
    SetLength(Result, Stream.Size);
    Move(Stream.Memory^, PChar(Result)^, Stream.Size);
  finally
    Stream.Free;
  end;
end; // GetRichText

// ���������� ������� �� �������� ������� ������
function ClearRichSelText(RTF: TDBRichEdit): string;
var
  SMemo: TStringList;
begin
  SMemo := TStringList.Create;
  SMemo.Add(RTF.SelText);
  RTF.SelText := SMemo.Strings[0];
  FreeAndNil(SMemo);
end;

procedure RE_LineBefore(ARichEdit: TCustomRichEdit; i: integer);
var
  pf: TParaFormat2;
begin
  FillChar(pf, SizeOf(pf), 0);
  pf.cbSize := SizeOf(pf);
  pf.dwMask := PFM_SPACEBEFORE;
  pf.dySpaceBefore := i; // Twips!
  SendMessage(ARichEdit.Handle, EM_SETPARAFORMAT, 0, lParam(@pf));
end;

procedure RE_LineAfter(ARichEdit: TCustomRichEdit; i: integer);
var
  pf: TParaFormat2;
begin
  FillChar(pf, SizeOf(pf), 0);
  pf.cbSize := SizeOf(pf);
  pf.dwMask := PFM_SPACEAFTER;
  pf.dySpaceBefore := i; // Twips!
  SendMessage(ARichEdit.Handle, EM_SETPARAFORMAT, 0, lParam(@pf));
end;

procedure LoginPass(var Log, Pass: String);
var
  Values: TArray<String>;
begin
  SetLength(Values, 2);
  if InputQuery('����', ['�����', '������'], Values) then
  begin
    Log := Values[0];
    Pass := Values[1];
  end;
end;

function ExecAndWait(const FileName,
                     Params: ShortString;
                     const WinState: Word): boolean; export;
var
  StartInfo: TStartupInfo;
  ProcInfo: TProcessInformation;
  CmdLine: ShortString;
begin
  { �������� ��� ����� ����� ���������, � ����������� ���� �������� � ������ Win9x }
  CmdLine := '"' + Filename + '" ' + Params;
  FillChar(StartInfo, SizeOf(StartInfo), #0);
  with StartInfo do
  begin
    cb := SizeOf(StartInfo);
    dwFlags := STARTF_USESHOWWINDOW;
    wShowWindow := WinState;
  end;
  Result := CreateProcess(nil, PChar( String( CmdLine ) ), nil, nil, false,
                          CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil,
                          PChar(ExtractFilePath(Filename)),StartInfo,ProcInfo);
  { ������� ���������� ���������� }
  if Result then
  begin
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);
    { Free the Handles }
    CloseHandle(ProcInfo.hProcess);
    CloseHandle(ProcInfo.hThread);
  end;
end;

end.

{
  // Ctrl+A
  // keybd_event(VK_LCONTROL, 0, 0, 0); // ������� ������ Ctrl.
  // keybd_event(Ord('A'), 0, 0, 0); // ������� 'A'.
  // keybd_event(Ord('A'), 0, KEYEVENTF_KEYUP, 0); // ���������� 'z'.
  // keybd_event(VK_LCONTROL, 0, KEYEVENTF_KEYUP, 0); // ���������� ������ Ctrl.

  // keybd_event(VK_LCONTROL, 0, 0, 0); // ������� ������ Ctrl.
  // keybd_event(VK_LSHIFT, 0, 0, 0); //������� ������ Shift.
  // keybd_event(Ord('j'), 0, 0, 0); // ������� 'j'.

  // keybd_event(Ord('j'), 0, KEYEVENTF_KEYUP, 0); // ���������� 'j'.
  // keybd_event(VK_LSHIFT, 0, KEYEVENTF_KEYUP, 0); //���������� ������ Shift.
  // keybd_event(VK_LCONTROL, 0, KEYEVENTF_KEYUP, 0); // ���������� ������ Ctrl.
}
