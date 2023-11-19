unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TForm7 = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    SearchBox1: TSearchBox;
    GroupBox2: TGroupBox;
    SearchBox2: TSearchBox;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    GroupBox4: TGroupBox;
    SearchBox3: TSearchBox;
    Button1: TButton;
    procedure SearchBox1InvokeSearch(Sender: TObject);
    procedure SearchBox2InvokeSearch(Sender: TObject);
    procedure SearchBox3InvokeSearch(Sender: TObject);
    procedure SearchBox3Enter(Sender: TObject);
    procedure SearchBox1Enter(Sender: TObject);
    procedure SearchBox2Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses ABOUT, Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, UtilsMDB;

procedure TForm7.Button1Click(Sender: TObject);
begin
  SearchBox1.Text := '';
  SearchBox2.Text := '';
  SearchBox3.Text := '';
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  Edit5.Text := '';
  ComboBox1.ItemIndex := -1;
end;

procedure TForm7.Edit1Change(Sender: TObject);
var
  s: string;
begin
  DataModule3.ADOTable3.filtered := false;

  if ComboBox1.Text <> '' then
    s := '[Журнал] = ' + QuotedStr(ComboBox1.Text)
  else
    s := '';

  if Edit1.Text <> '' then
    if s <> '' then
      s := s + ' AND ' + '[Рік] Like ' + QuotedStr(Edit1.Text + '%')
    else
      s := '[Рік] Like ' + QuotedStr(Edit1.Text + '%');

  if Edit2.Text <> '' then
    if s <> '' then
      s := s + ' AND ' + '[Номер] like ' + QuotedStr(Edit2.Text + '%')
    else
      s := '[Номер] like ' + QuotedStr(Edit2.Text + '%');

  if Edit3.Text <> '' then
    if s <> '' then
      s := s + ' AND ' + '[УДК] like ' + QuotedStr(Edit3.Text + '%')
    else
      s := '[УДК] like ' + QuotedStr(Edit3.Text + '%');

  if Edit4.Text <> '' then
    if s <> '' then
      s := s + ' AND ' + '[ББК] like ' + QuotedStr(Edit4.Text + '%')
    else
      s := '[ББК] like ' + QuotedStr(Edit4.Text + '%');

  if Edit5.Text <> '' then
    if s <> '' then
      s := s + ' AND ' + '[Теги] like ' + QuotedStr('%' + Edit5.Text + '%')
    else
      s := '[Теги] like ' + QuotedStr('%' + Edit5.Text + '%');

  DataModule3.ADOTable3.filter := s;
  DataModule3.ADOTable3.filtered := True;

end;

procedure TForm7.FormCreate(Sender: TObject);
var
  Listname: TStringList;
begin
  Listname := TStringList.Create;
  Listname.Duplicates := dupIgnore;
  Listname.Sorted := True;
  DataModule3.ADOTable2.First;
  DataModule3.ADOTable2.DisableControls;
  while not DataModule3.ADOTable2.Eof do
  begin
    Listname.Add(DataModule3.ADOTable2.FieldByName('НазваЗМІ').AsString);
    DataModule3.ADOTable2.Next;
  end;
  ComboBox1.Items.AddStrings(Listname);
  DataModule3.ADOTable2.EnableControls;
  FreeAndNil(Listname);
end;

procedure TForm7.SearchBox1Enter(Sender: TObject);
begin
  SearchBox2.Text := '';
  SearchBox3.Text := '';
end;

procedure TForm7.SearchBox1InvokeSearch(Sender: TObject);
begin
  case form1.PageControl1.ActivePageIndex of
    1:
      begin
        if SearchBox1.Text <> '' then
        begin
          DataModule3.ADOTable2.filtered := false;
          DataModule3.ADOTable2.filter := '[НазваЗМІ] like ' +
            QuotedStr('%' + SearchBox1.Text + '%');
          DataModule3.ADOTable2.filtered := True;
        end;
      end;
    2:
      begin
        if SearchBox1.Text <> '' then
        begin
          DataModule3.ADOTable3.filtered := false;
          DataModule3.ADOTable3.filter := '[Назва] like ' +
            QuotedStr('%' + SearchBox1.Text + '%');
          DataModule3.ADOTable3.filtered := True;
        end;
      end;
  end;
end;

procedure TForm7.SearchBox2Enter(Sender: TObject);
begin
  SearchBox1.Text := '';
  SearchBox3.Text := '';
end;

procedure TForm7.SearchBox2InvokeSearch(Sender: TObject);
begin
  case form1.PageControl1.ActivePageIndex of
    1:
      SearchTextM(form1.DBRichEdit2, SearchBox2.Text);
    2:
      SearchTextM(form1.DBRichEdit3, SearchBox2.Text);
  end;
end;

procedure TForm7.SearchBox3Enter(Sender: TObject);
begin
  SearchBox1.Text := '';
  SearchBox2.Text := '';
end;

procedure TForm7.SearchBox3InvokeSearch(Sender: TObject);
begin
  case form1.PageControl1.ActivePageIndex of
    2:
      begin
        if SearchBox3.Text <> '' then
        begin
          DataModule3.ADOTable3.filtered := false;
          DataModule3.ADOTable3.filter := '[Автор] like ' +
            QuotedStr(SearchBox3.Text + '%');
          DataModule3.ADOTable3.filtered := True;
        end;
      end;
  end;
end;

end.
