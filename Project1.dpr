program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  ABOUT in 'ABOUT.pas' {AboutBox},
  Vcl.Themes,
  Vcl.Styles,
  Unit2 in 'Unit2.pas' {Form2},
  UtilsMDB in 'UtilsMDB.pas',
  Unit3 in 'Unit3.pas' {DataModule3: TDataModule},
  Unit4 in 'Unit4.pas' {Form4},
  Unit5 in 'Unit5.pas' {Form5},
  Unit6 in 'Unit6.pas' {Form6},
  Unit7 in 'Unit7.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Blue');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule3, DataModule3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
