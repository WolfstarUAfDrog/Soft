unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Themes;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    ListBox1: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm2.Button1Click(Sender: TObject);
begin
  iniF.WriteString('StyleProg','Стиль',ListBox1.items[ListBox1.ItemIndex]);
  close;
end;

procedure TForm2.FormCreate(Sender: TObject);
var
  StyleName: string;
begin
  for StyleName in TStyleManager.StyleNames do
    ListBox1.Items.Add(StyleName);

  ListBox1.ItemIndex := ListBox1.Items.IndexOf(TStyleManager.ActiveStyle.Name);
end;

procedure TForm2.ListBox1Click(Sender: TObject);
begin
  TStyleManager.SetStyle(ListBox1.items[ListBox1.ItemIndex]);
end;

end.
