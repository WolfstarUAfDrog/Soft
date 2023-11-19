unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.ToolWin, Vcl.ComCtrls, Vcl.PlatformDefaultStyleActnCtrls, System.Actions,
  Vcl.ActnList, Vcl.ActnMan, Vcl.Menus, IniFiles, Vcl.Themes, Data.DB,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.ActnCtrls, Vcl.ExtActns, Vcl.StdActns, Vcl.Clipbrd, Vcl.ExtDlgs,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.Imaging.GIFImg, Data.Win.ADODB,
  Winapi.ShellAPI, System.ZLib;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    ActionManager1: TActionManager;
    StatusBar1: TStatusBar;
    ImageList1: TImageList;
    AExit: TAction;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    DBImage1: TDBImage;
    DBRichEdit1: TDBRichEdit;
    TabSheet2: TTabSheet;
    Splitter1: TSplitter;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    EditRichEditSpellCheck1: TRichEditSpellCheck;
    FormatRichEditBold1: TRichEditBold;
    FormatRichEditItalic1: TRichEditItalic;
    FormatRichEditUnderline1: TRichEditUnderline;
    FormatRichEditStrikeOut1: TRichEditStrikeOut;
    FormatRichEditBullets1: TRichEditBullets;
    FormatRichEditAlignLeft1: TRichEditAlignLeft;
    FormatRichEditAlignRight1: TRichEditAlignRight;
    FormatRichEditAlignCenter1: TRichEditAlignCenter;
    ActionToolBar1: TActionToolBar;
    DBGrid2: TDBGrid;
    Splitter2: TSplitter;
    Panel3: TPanel;
    DBImage2: TDBImage;
    DBRichEdit2: TDBRichEdit;
    Статті: TTabSheet;
    DBGrid3: TDBGrid;
    Splitter3: TSplitter;
    DBRichEdit3: TDBRichEdit;
    AStyleText1: TAction;
    AStyleText2: TAction;
    AStyleText3: TAction;
    AStyleText9: TAction;
    AStyleText0: TAction;
    ActionToolBar2: TActionToolBar;
    ActionToolBar3: TActionToolBar;
    ActionToolBar4: TActionToolBar;
    AVI: TAction;
    ANI: TAction;
    AFont: TAction;
    FontDialog1: TFontDialog;
    ASetJustify: TAction;
    ACharH: TAction;
    N7: TMenuItem;
    N8: TMenuItem;
    ACharSpace: TAction;
    N9: TMenuItem;
    ACharW: TAction;
    N10: TMenuItem;
    ACharUnder: TAction;
    N11: TMenuItem;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    PopupMenu3: TPopupMenu;
    AInsPictBuf: TAction;
    N12: TMenuItem;
    AClearFormattext: TAction;
    N13: TMenuItem;
    ADelPict: TAction;
    N14: TMenuItem;
    AInsPictFile: TAction;
    OpenPictureDialog1: TOpenPictureDialog;
    SavePictureDialog1: TSavePictureDialog;
    ASaveToFile: TAction;
    ASaveToClip: TAction;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    Bold1: TMenuItem;
    Italic1: TMenuItem;
    Underline1: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    Bullets1: TMenuItem;
    N18: TMenuItem;
    AaddSt: TAction;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    ANewZMI: TAction;
    ANewNumber: TAction;
    ANewArcticle: TAction;
    ABeetLine: TAction;
    N25: TMenuItem;
    ABetLine1: TAction;
    ABetLine2: TAction;
    ABetLine3: TAction;
    N110: TMenuItem;
    N151: TMenuItem;
    N26: TMenuItem;
    ADownloadSt: TAction;
    N27: TMenuItem;
    N28: TMenuItem;
    ALoadCSV: TAction;
    OpenTextFileDialog1: TOpenTextFileDialog;
    SaveTextFileDialog1: TSaveTextFileDialog;
    N29: TMenuItem;
    ASaveCSV: TAction;
    ASaveADT: TAction;
    ABeforePara: TAction;
    AAfterPara: TAction;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    Gjier1: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    FindDialog1: TFindDialog;
    ReplaceDialog1: TReplaceDialog;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    APara: TAction;
    N40: TMenuItem;
    ASaveMDB: TAction;
    ALoadMDB: TAction;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    AFindAlltext: TAction;
    N44: TMenuItem;
    N45: TMenuItem;
    AinRAR: TAction;
    RAR1: TMenuItem;
    N46: TMenuItem;
    ACreateZip: TAction;
    ADeComprBase: TAction;
    N47: TMenuItem;
    N48: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure AExitExecute(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure AStyleText1Execute(Sender: TObject);
    procedure AStyleText2Execute(Sender: TObject);
    procedure AStyleText3Execute(Sender: TObject);
    procedure AStyleText9Execute(Sender: TObject);
    procedure AStyleText0Execute(Sender: TObject);
    procedure AVIExecute(Sender: TObject);
    procedure ANIExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure AFontExecute(Sender: TObject);
    procedure ASetJustifyExecute(Sender: TObject);
    procedure ACharHExecute(Sender: TObject);
    procedure ACharSpaceExecute(Sender: TObject);
    procedure ACharWExecute(Sender: TObject);
    procedure ACharUnderExecute(Sender: TObject);
    procedure AInsPictBufExecute(Sender: TObject);
    procedure AClearFormattextExecute(Sender: TObject);
    procedure ADelPictExecute(Sender: TObject);
    procedure AInsPictFileExecute(Sender: TObject);
    procedure ASaveToFileExecute(Sender: TObject);
    procedure ASaveToClipExecute(Sender: TObject);
    procedure AaddStExecute(Sender: TObject);
    procedure ANewZMIExecute(Sender: TObject);
    procedure ANewNumberExecute(Sender: TObject);
    procedure ANewArcticleExecute(Sender: TObject);
    procedure ABeetLineExecute(Sender: TObject);
    procedure ABetLine1Execute(Sender: TObject);
    procedure ABetLine2Execute(Sender: TObject);
    procedure ABetLine3Execute(Sender: TObject);
    procedure ADownloadStExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ALoadCSVExecute(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure PageControl1Enter(Sender: TObject);
    procedure ASaveCSVExecute(Sender: TObject);
    procedure ASaveADTExecute(Sender: TObject);
    procedure ABeforeParaExecute(Sender: TObject);
    procedure AAfterParaExecute(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure ReplaceDialog1Find(Sender: TObject);
    procedure ReplaceDialog1Replace(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure AParaExecute(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ASaveMDBExecute(Sender: TObject);
    procedure ALoadMDBExecute(Sender: TObject);
    procedure AFindAlltextExecute(Sender: TObject);
    procedure AinRARExecute(Sender: TObject);
    procedure ACreateZipExecute(Sender: TObject);
    procedure ADeComprBaseExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  iniF: TIniFile;

implementation

{$R *.dfm}

uses ABOUT, Unit2, Unit3, UtilsMDB, Unit4, Unit5, Unit6, Unit7;

procedure TForm1.AaddStExecute(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    1:
      begin
        DataModule3.ADOTable3.Append;
        DataModule3.ADOTable3.FieldByName('Автор').AsString :=
          DBRichEdit2.lines[DBRichEdit2.CaretPos.Y];
        DataModule3.ADOTable3.FieldByName('Журнал').AsString :=
          DataModule3.ADOTable2.FieldByName('НазваЗМІ').AsString;
        DataModule3.ADOTable3.FieldByName('Рік').AsString :=
          DataModule3.ADOTable2.FieldByName('Рік').AsString;
        DataModule3.ADOTable3.FieldByName('Номер').AsString :=
          DataModule3.ADOTable2.FieldByName('№').AsString;
        // showmessage('Все ОК');
        PageControl1.ActivePageIndex := 2;
        DBNavigator1.DataSource := DataModule3.DataSource3;
        // form5.Show;
      end;
  end;
end;

procedure TForm1.AAfterParaExecute(Sender: TObject);
var
  i: Integer;
begin
  i := strtoint(inputbox('Перед абзацом проміжок', 'Вкажіть величину', '0'));
  case PageControl1.ActivePageIndex of
    0:
      RE_LineAfter(DBRichEdit1, i);
    1:
      RE_LineAfter(DBRichEdit2, i);
    2:
      RE_LineAfter(DBRichEdit3, i);
  end;
end;

procedure TForm1.ABeetLineExecute(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0:
      LineOffset(DBRichEdit1);
    1:
      LineOffset(DBRichEdit2);
    2:
      LineOffset(DBRichEdit3);
  end;
end;

procedure TForm1.ABeforeParaExecute(Sender: TObject);
var
  i: Integer;
begin
  i := strtoint(inputbox('Перед абзацом проміжок', 'Вкажіть величину', '0'));
  case PageControl1.ActivePageIndex of
    0:
      RE_LineBefore(DBRichEdit1, i);
    1:
      RE_LineBefore(DBRichEdit2, i);
    2:
      RE_LineBefore(DBRichEdit3, i);
  end;
end;

procedure TForm1.ABetLine1Execute(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0:
      RE_SetLineSpacing(DBRichEdit1, 1);
    1:
      RE_SetLineSpacing(DBRichEdit2, 1);
    2:
      RE_SetLineSpacing(DBRichEdit3, 1);
  end;
end;

procedure TForm1.ACharHExecute(Sender: TObject);
var
  i: Integer;
begin
  i := strtoint(inputbox('', '', '0'));
  case PageControl1.ActivePageIndex of
    0:
      Char_SetOff(DBRichEdit1, i);
    1:
      Char_SetOff(DBRichEdit2, i);
    2:
      Char_SetOff(DBRichEdit3, i);
  end;
end;

procedure TForm1.ACharSpaceExecute(Sender: TObject);
var
  i: Integer;
begin
  i := strtoint(inputbox('', '', '0'));
  case PageControl1.ActivePageIndex of
    0:
      Char_Space(DBRichEdit1, i);
    1:
      Char_Space(DBRichEdit2, i);
    2:
      Char_Space(DBRichEdit3, i);
  end;
end;

procedure TForm1.ACharUnderExecute(Sender: TObject);
var
  i: Integer;
begin
  case PageControl1.ActivePageIndex of
    0:
      RE_SetCharFormat(DBRichEdit1, CFU_UNDERLINEWAVE, $50);
    1:
      RE_SetCharFormat(DBRichEdit2, CFU_UNDERLINE, $50);
    2:
      RE_SetCharFormat(DBRichEdit3, CFU_UNDERLINETHICK, $50);
  end;
end;

procedure TForm1.ACharWExecute(Sender: TObject);
var
  i: Integer;
begin
  i := strtoint(inputbox('', '', '0'));
  case PageControl1.ActivePageIndex of
    0:
      Char_Space1(DBRichEdit1, i);
    1:
      Char_Space1(DBRichEdit2, i);
    2:
      Char_Space1(DBRichEdit3, i);
  end;
end;

procedure TForm1.AClearFormattextExecute(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0:
      ClearRichSelText(DBRichEdit1);
    1:
      ClearRichSelText(DBRichEdit2);
    2:
      ClearRichSelText(DBRichEdit3);
  end;
end;

procedure TForm1.ACreateZipExecute(Sender: TObject);
var
  LInput, LOutput: TFileStream;
  LZip: TZCompressionStream;
begin
  if OpenDialog1.Execute then
  begin
    { Create the Input, Output, and Compressed streams. }
    LInput := TFileStream.Create(OpenDialog1.FileName, fmOpenRead);
    LOutput := TFileStream.Create(OpenDialog1.FileName+'.zip', fmCreate);
    LZip := TZCompressionStream.Create(clDefault, LOutput);

    { Compress data. }
    LZip.CopyFrom(LInput, LInput.Size);

    { Free the streams. }
    LZip.Free;
    LInput.Free;
    LOutput.Free;
  end;
end;

procedure TForm1.ABetLine2Execute(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0:
      RE_SetLineSpacing(DBRichEdit1, 2);
    1:
      RE_SetLineSpacing(DBRichEdit2, 2);
    2:
      RE_SetLineSpacing(DBRichEdit3, 2);
  end;
end;

procedure TForm1.ABetLine3Execute(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0:
      RE_SetLineSpacing(DBRichEdit1, 3);
    1:
      RE_SetLineSpacing(DBRichEdit2, 3);
    2:
      RE_SetLineSpacing(DBRichEdit3, 3);
  end;
end;

procedure TForm1.ANewArcticleExecute(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 2;
  form6.show;
end;

procedure TForm1.ADeComprBaseExecute(Sender: TObject);
var
  LInput, LOutput: TFileStream;
  LUnZip: TZDecompressionStream;

begin
  { Create the Input, Output, and Decompressed streams. }
  if OpenDialog1.Execute then
  begin
  LInput := TFileStream.Create(OpenDialog1.FileName, fmOpenRead);
  LOutput := TFileStream.Create(ChangeFileExt(OpenDialog1.FileName, ''), fmCreate);
  LUnZip := TZDecompressionStream.Create(LInput);

  { Decompress data. }
  LOutput.CopyFrom(LUnZip, 0);

  { Free the streams. }
  LUnZip.Free;
  LInput.Free;
  LOutput.Free;
  end;
end;

procedure TForm1.ADelPictExecute(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0:
      begin
        DataModule3.adotable1.edit;
        DBImage1.Picture := nil;
        DataModule3.adotable1.Post;
      end;
    1:
      begin
        DataModule3.ADOTable2.edit;
        DBImage2.Picture := nil;
        DataModule3.ADOTable2.Post;
      end;

  end;
end;

procedure TForm1.ADownloadStExecute(Sender: TObject);
var
  StrList: TStringList;
begin
  screen.Cursor := crHourGlass;
  StrList := TStringList.Create;

  case PageControl1.ActivePageIndex of
    1:
      begin
        DataModule3.ADOTable2.first;
        DataModule3.ADOTable2.DisableControls;
        try
          while not DataModule3.ADOTable2.Eof do
          begin
            StrList.Clear;
            try
              StrList.Add(DataModule3.ADOTable2.Fields[5].AsString);
              StrList.SaveToFile('Context\' + 'St' +
                inttostr(DataModule3.ADOTable2.RecNo) + '.rtf');
            Except
              StrList.SaveToFile('Context\' + DataModule3.ADOTable2.Fields[1]
                .AsString + '.rtf');
            end;
            DataModule3.ADOTable2.next;
          end;
        finally
          DataModule3.ADOTable2.EnableControls;
        end;
      end;
    2:
      begin
        DataModule3.ADOTable3.first;
        DataModule3.ADOTable3.DisableControls;
        try
          while not DataModule3.ADOTable3.Eof do
          begin
            StrList.Clear;
            StrList.Add(DataModule3.ADOTable3.Fields[6].AsString);
            try
              StrList.SaveToFile('статті\' + DataModule3.ADOTable3.Fields[0]
                .AsString + '.rtf');
            Except
              StrList.SaveToFile('статті\' + DataModule3.ADOTable3.Fields[1]
                .AsString + '.rtf');
            end;
            DataModule3.ADOTable3.next;
          end;
        finally
          DataModule3.ADOTable3.EnableControls;
        end;
      end;
  end;
  FreeAndNil(StrList);
  screen.Cursor := crDefault;
end;

procedure TForm1.AExitExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.AFindAlltextExecute(Sender: TObject);
var
  s: string;
begin
  if InputQuery('Ціль пошуку', 'Вкажіть текст', s) then
  begin
    DataModule3.ADOTable3.Filtered := False;
    DataModule3.ADOTable3.Filter := '[Зміст] like ' + QuotedStr('%' + s + '%');
    DataModule3.ADOTable3.Filtered := True;
  end;
end;

procedure TForm1.AFontExecute(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0:
      begin
        FontDialog1.Font.Assign(DBRichEdit1.SelAttributes);
        if FontDialog1.Execute then
          DBRichEdit1.SelAttributes.Assign(FontDialog1.Font);
      end;
    1:
      begin
        FontDialog1.Font.Assign(DBRichEdit2.SelAttributes);
        if FontDialog1.Execute then
          DBRichEdit2.SelAttributes.Assign(FontDialog1.Font);
      end;
    2:
      begin
        FontDialog1.Font.Assign(DBRichEdit3.SelAttributes);
        if FontDialog1.Execute then
          DBRichEdit3.SelAttributes.Assign(FontDialog1.Font);
      end;
  end;
end;

procedure TForm1.AinRARExecute(Sender: TObject);
var
  ProgPath: string;
begin
  screen.Cursor := crHourGlass;
  ProgPath := ExtractFilePath(Application.ExeName);
  ProgPath := ' a ' + ProgPath + 'Archive\Base ' + ProgPath +
    'Archive\DataMag.mdb';
  CopyFile('DataMag.mdb', 'Archive/DataMag.mdb', False);
  ExecAndWait('c:\Program Files\WinRAR\WinRAR.exe', ProgPath, SW_SHOWNORMAL);
  // ShellExecute(0, 'open', 'winRAR.exe', 'a Base DataMag1.mdb', nil, SW_SHOW);
  DeleteFile('Archive/DataMag.mdb');
  screen.Cursor := crDefault;
end;

procedure TForm1.AInsPictBufExecute(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0:
      if Clipboard.HasFormat(CF_BITMAP) or Clipboard.HasFormat(CF_METAFILEPICT)
        or Clipboard.HasFormat(CF_PICTURE) then
      begin
        DataModule3.adotable1.edit;
        DBImage1.Picture.Assign(Clipboard);
        DataModule3.adotable1.Post;
      end;
    1:
      if Clipboard.HasFormat(CF_BITMAP) or Clipboard.HasFormat(CF_METAFILEPICT)
        or Clipboard.HasFormat(CF_PICTURE) then
      begin
        DataModule3.ADOTable2.edit;
        DBImage2.Picture.Assign(Clipboard);
        DataModule3.ADOTable2.Post;
      end;
  end;
end;

procedure TForm1.AInsPictFileExecute(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
    case PageControl1.ActivePageIndex of
      0:
        begin
          DataModule3.adotable1.edit;
          DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
          DataModule3.adotable1.Post;
        end;
      1:
        begin
          DataModule3.ADOTable2.edit;
          DBImage2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
          DataModule3.ADOTable2.Post;
        end;
    end;
end;

procedure TForm1.ALoadCSVExecute(Sender: TObject);
var
  fileA: textfile;
  i: Integer;
  s: string;
begin
  if OpenTextFileDialog1.Execute then { Display Open dialog box. }
  begin
    AssignFile(fileA, OpenTextFileDialog1.FileName);
    { File selected in the dialog }
    Reset(fileA);
  end;

  s := '';
  DataModule3.ADOTable3.DisableControls;
  DataModule3.ADOTable3.first;
  try
    DataModule3.ADOTable3.insert;
    for i := 0 to DataModule3.ADOTable3.FieldCount - 1 do
    begin
      // s := read(fileA);
      DataModule3.ADOTable3.Fields[i].AsString := s;
      // DataModule3.ADOTable3.Post;
    end;
  finally;
    DataModule3.ADOTable3.EnableControls;
    // flush(fileA);
    CloseFile(fileA);
  end;
end;

procedure TForm1.ALoadMDBExecute(Sender: TObject);
begin
  DataModule3.adotable1.LoadFromFile('table1.md');
  DataModule3.ADOTable2.LoadFromFile('table2.md');
  DataModule3.ADOTable3.LoadFromFile('table3.md');

  DataModule3.adotable1.UpdateBatch(arAll);
  DataModule3.ADOTable2.UpdateBatch(arAll);
  DataModule3.ADOTable3.UpdateBatch(arAll);
end;

procedure TForm1.ANewNumberExecute(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
  form5.show;
end;

procedure TForm1.ANewZMIExecute(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  form4.show;
end;

procedure TForm1.ANIExecute(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0:
      NyznIndex(DBRichEdit1);
    1:
      NyznIndex(DBRichEdit2);
    2:
      NyznIndex(DBRichEdit3);
  end;
end;

procedure TForm1.AParaExecute(Sender: TObject);
var
  Values: TArray<String>;
begin
  SetLength(Values, 3);
  case PageControl1.ActivePageIndex of
    1:
      begin
        if InputQuery('Вхід', ['Абзац', 'Ліве поле', 'Праве поле'], Values) then
        begin
          DBRichEdit2.Paragraph.FirstIndent := strtoint(Values[0]);
          DBRichEdit2.Paragraph.LeftIndent := strtoint(Values[1]);
          DBRichEdit2.Paragraph.RightIndent := strtoint(Values[2]);
        end;
      end;
    2:
      begin
        if InputQuery('Вхід', ['Абзац', 'Ліве поле', 'Праве поле'], Values) then
        begin
          DBRichEdit3.Paragraph.FirstIndent := strtoint(Values[0]);
          DBRichEdit3.Paragraph.LeftIndent := strtoint(Values[1]);
          DBRichEdit3.Paragraph.RightIndent := strtoint(Values[2]);
        end;
      end;
  end;
end;

procedure TForm1.ASaveADTExecute(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 2 then
    if SaveTextFileDialog1.Execute then
      DataModule3.ADOTable3.SaveToFile(SaveTextFileDialog1.FileName, pfADTG);
end;

procedure TForm1.ASaveCSVExecute(Sender: TObject);
var
  fileA: textfile;
  i: Integer;
begin
  if SaveTextFileDialog1.Execute then { Display Open dialog box. }
  begin
    AssignFile(fileA, SaveTextFileDialog1.FileName);
    { File selected in the dialog }
    Rewrite(fileA);

    // Механізм обходу всіх полів і занесення даних у файл
    DataModule3.ADOTable3.DisableControls;
    DataModule3.ADOTable3.first;
    try
      while not DataModule3.ADOTable3.Eof do
      begin
        for i := 0 to DataModule3.ADOTable3.FieldCount - 1 do
          if i <> (DataModule3.ADOTable3.FieldCount - 1) then
            if i <> 6 then
              write(fileA, DataModule3.ADOTable3.Fields[i].AsString + ',')
            else
            begin
              // DataModule3.ADOTable3.Fields[6].;
              DBRichEdit3.lines.SaveToFile(DataModule3.ADOTable3.Fields[0]
                .AsString + '.csv');
              Continue
            end
          else
            writeLN(fileA, DataModule3.ADOTable3.Fields[i].AsString);
        DataModule3.ADOTable3.next;
      end;
    finally;
    end;
    DataModule3.ADOTable3.EnableControls;

    flush(fileA);
    CloseFile(fileA);
  end;
end;

procedure TForm1.ASaveMDBExecute(Sender: TObject);
begin
  DataModule3.adotable1.SaveToFile('table1.md', pfADTG);
  DataModule3.ADOTable2.SaveToFile('table2.md', pfADTG);
  DataModule3.ADOTable3.SaveToFile('table3.md', pfADTG);
end;

procedure TForm1.ASaveToClipExecute(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0:
      begin
        Clipboard.Assign(DBImage1.Picture);
      end;
    1:
      begin
        Clipboard.Assign(DBImage2.Picture);
      end;
  end;
end;

procedure TForm1.ASaveToFileExecute(Sender: TObject);
begin
  if SavePictureDialog1.Execute then
    case PageControl1.ActivePageIndex of
      0:
        begin
          DBImage1.Picture.SaveToFile(SavePictureDialog1.FileName);
        end;
      1:
        begin
          DBImage2.Picture.SaveToFile(SavePictureDialog1.FileName);
        end;
    end;
end;

procedure TForm1.ASetJustifyExecute(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0:
      Para_Setjustify(DBRichEdit1, 3);
    1:
      Para_Setjustify(DBRichEdit2, 3);
    2:
      Para_Setjustify(DBRichEdit3, 3);
  end;
end;

procedure TForm1.AStyleText0Execute(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0:
      begin
        SetStyletext1(DBRichEdit1);
        LineOffset(DBRichEdit1);
        RE_SetLineSpacing(DBRichEdit1, 0);
        RE_LineBefore(DBRichEdit1, 0);
        RE_LineAfter(DBRichEdit1, 0);
      end;
    1:
      begin
        SetStyletext1(DBRichEdit2);
        LineOffset(DBRichEdit2);
        RE_SetLineSpacing(DBRichEdit2, 0);
        RE_LineBefore(DBRichEdit2, 0);
        RE_LineAfter(DBRichEdit2, 0);
      end;
    2:
      begin
        SetStyletext1(DBRichEdit3);
        LineOffset(DBRichEdit3);
        RE_SetLineSpacing(DBRichEdit3, 0);
        RE_LineBefore(DBRichEdit3, 0);
        RE_LineAfter(DBRichEdit3, 0);
      end;
  end;
end;

procedure TForm1.AStyleText1Execute(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0:
      SetStyletext2(DBRichEdit1);
    1:
      SetStyletext2(DBRichEdit2);
    2:
      SetStyletext2(DBRichEdit3);
  end;
end;

procedure TForm1.AStyleText2Execute(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0:
      SetStyletext3(DBRichEdit1);
    1:
      SetStyletext3(DBRichEdit2);
    2:
      SetStyletext3(DBRichEdit3);
  end;
end;

procedure TForm1.AStyleText3Execute(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0:
      SetStyletext4(DBRichEdit1);
    1:
      SetStyletext4(DBRichEdit2);
    2:
      SetStyletext4(DBRichEdit3);
  end;
end;

procedure TForm1.AStyleText9Execute(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0:
      SetStyletext0(DBRichEdit1);
    1:
      SetStyletext0(DBRichEdit2);
    2:
      SetStyletext0(DBRichEdit3);
  end;
end;

procedure TForm1.AVIExecute(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0:
      VerchIndex(DBRichEdit1);
    1:
      VerchIndex(DBRichEdit2);
    2:
      VerchIndex(DBRichEdit3);
  end;
end;

procedure TForm1.DBGrid1DblClick(Sender: TObject);
begin
  DataModule3.ADOTable2.Filtered := False;
  DataModule3.ADOTable2.Filter := '[НазваЗМІ] = ' +
    QuotedStr(DataModule3.adotable1.FieldByName('Назва').AsString);
  DataModule3.ADOTable2.Filtered := True;
  PageControl1.ActivePageIndex := 1;
end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (DataModule3.adotable1.RecNo mod 2) = 0 then
    // if DBGrid2.Canvas.Brush.Color = DBGrid2.Color then
    DBGrid1.Canvas.Brush.Color := clWebSkyBlue;

  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TForm1.DBGrid1TitleClick(Column: TColumn);
begin
  if DataModule3.adotable1.IndexFieldNames = Column.FieldName then
    DataModule3.adotable1.IndexFieldNames := Column.FieldName + ' DESC'
  else
    DataModule3.adotable1.IndexFieldNames := Column.FieldName;
end;

procedure TForm1.DBGrid2DblClick(Sender: TObject);
begin
  form7.ComboBox1.Items.IndexOf(DataModule3.ADOTable2.FieldByName('НазваЗМІ')
    .AsString);
  form7.edit1.Text := DataModule3.ADOTable2.FieldByName('Рік').AsString;
  form7.edit2.Text := DataModule3.ADOTable2.FieldByName('№').AsString;
  PageControl1.ActivePageIndex := 2;
end;

procedure TForm1.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (DataModule3.ADOTable2.RecNo mod 2) = 0 then
    DBGrid2.Canvas.Brush.Color := clWebSkyBlue;

  DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TForm1.DBGrid2TitleClick(Column: TColumn);
begin
  if Column.FieldName = 'НазваЗМІ' then
    if DataModule3.ADOTable2.IndexFieldNames = (Column.FieldName + ';Рік;№')
    then
      DataModule3.ADOTable2.IndexFieldNames := Column.FieldName + ' DESC'
        + ';Рік;№'
    else
      DataModule3.ADOTable2.IndexFieldNames := Column.FieldName + ';Рік;№'
  else if DataModule3.ADOTable2.IndexFieldNames = Column.FieldName then
    DataModule3.ADOTable2.IndexFieldNames := Column.FieldName + ' DESC'
  else
    DataModule3.ADOTable2.IndexFieldNames := Column.FieldName;
end;

procedure TForm1.DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (DataModule3.ADOTable3.RecNo mod 2) = 0 then
    DBGrid3.Canvas.Brush.Color := clWebSkyBlue;

  DBGrid3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TForm1.DBGrid3TitleClick(Column: TColumn);
begin
  if Column.FieldName = 'Журнал' then
    if DataModule3.ADOTable3.IndexFieldNames = (Column.FieldName + ';Рік;Номер')
    then
      DataModule3.ADOTable3.IndexFieldNames := Column.FieldName + ' DESC' +
        ';Рік;Номер'
    else
      DataModule3.ADOTable3.IndexFieldNames := Column.FieldName + ';Рік;Номер'
  else if DataModule3.ADOTable3.IndexFieldNames = Column.FieldName then
    DataModule3.ADOTable3.IndexFieldNames := Column.FieldName + ' DESC'
  else
    DataModule3.ADOTable3.IndexFieldNames := Column.FieldName;
end;

procedure TForm1.FindDialog1Find(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    1:
      SearchText(DBRichEdit2, FindDialog1, FindDialog1.FindText);
    2:
      SearchText(DBRichEdit3, FindDialog1, FindDialog1.FindText);
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
  id_ok: Integer;
begin
  if DataModule3.ADOTable3.Modified then
  begin
    id_ok := MessageDlg('Внесені зміни не збережені!!!', TMsgDlgType.mtWarning,
      mbOKCancel, 0);
    if id_ok = mrOk then
      DataModule3.ADOTable3.Post;
  end;

  FreeAndNil(iniF);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  StyleName: string;
begin
  Application.Title := 'Програма';
  CopyFile('DataMag.mdb', PChar('DataMag' + datetostr(Now) + '.mdb'), False);

  // Створення ini файла
  iniF := TIniFile.Create(ExtractFileDir(Application.ExeName) + '\Prog.ini');

  // Створення списку стилів для програми
  StyleName := iniF.ReadString('StyleProg', 'Стиль', 'Windows10 Blue');
  TStyleManager.TrySetStyle(StyleName);
end;

procedure TForm1.N29Click(Sender: TObject);
begin
  showmessage('Автор програми' + #10#13 + 'Кундис Володимир Ярославович' +
    #10#13 + #10#13 +
    'Мета програми: Ознайомити бажаючих із текстом журнальних статей' + #10#13 +
    'Девіз: Знання без кордонів');
end;

procedure TForm1.N33Click(Sender: TObject);
begin
  form7.show;
end;

procedure TForm1.N34Click(Sender: TObject);
begin
  DataModule3.adotable1.Filtered := False;
  DataModule3.ADOTable2.Filtered := False;
  DataModule3.ADOTable3.Filtered := False;
end;

procedure TForm1.N37Click(Sender: TObject);
begin
  FindDialog1.Execute;
end;

procedure TForm1.N38Click(Sender: TObject);
begin
  ReplaceDialog1.Execute;
end;

procedure TForm1.N39Click(Sender: TObject);
var
  Login, Pass: String;
begin
  LoginPass(Login, Pass);
  StatusBar1.Panels[0].Text := Login;
  StatusBar1.Panels[1].Text := Pass;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  form2.ShowModal;
end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0:
      DBNavigator1.DataSource := DataModule3.DataSource1;
    1:
      DBNavigator1.DataSource := DataModule3.DataSource2;
    2:
      DBNavigator1.DataSource := DataModule3.DataSource3;
  end;
end;

procedure TForm1.PageControl1Enter(Sender: TObject);
begin
  Form1.StatusBar1.Panels[2].Text :=
    inttostr(DataModule3.ADOTable3.RecordCount);
end;

procedure TForm1.ReplaceDialog1Find(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    1:
      SearchText(DBRichEdit2, ReplaceDialog1, ReplaceDialog1.FindText);
    2:
      SearchText(DBRichEdit3, ReplaceDialog1, ReplaceDialog1.FindText);
  end;
end;

procedure TForm1.ReplaceDialog1Replace(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    1:
      Search_And_Replace(DBRichEdit2, ReplaceDialog1.FindText,
        ReplaceDialog1.ReplaceText);
    2:
      Search_And_Replace(DBRichEdit3, ReplaceDialog1.FindText,
        ReplaceDialog1.ReplaceText);
  end;
end;

end.
