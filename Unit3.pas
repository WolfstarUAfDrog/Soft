unit Unit3;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule3 = class(TDataModule)
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    ADOTable3: TADOTable;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    ADOTable2���: TAutoIncField;
    ADOTable2������̲: TWideStringField;
    ADOTable2г�: TWideStringField;
    ADOTable2̳����: TWideStringField;
    ADOTable2WideStringField: TWideStringField;
    ADOTable2����: TWideMemoField;
    ADOTable2����: TBlobField;
    ADOTable2��������: TBooleanField;
    ADOTable2�: TBooleanField;
    ADOTable1���: TAutoIncField;
    ADOTable1�����: TWideStringField;
    ADOTable1����: TWideMemoField;
    ADOTable1г�����������: TWideStringField;
    ADOTable1����: TWideStringField;
    ADOTable1�������: TBlobField;
    ADOTable3���: TAutoIncField;
    ADOTable3�����: TWideStringField;
    ADOTable3������: TWideStringField;
    ADOTable3г�: TWideStringField;
    ADOTable3�����: TWideStringField;
    ADOTable3�������: TWideStringField;
    ADOTable3����: TWideMemoField;
    ADOTable3����: TWideStringField;
    ADOTable3�����: TWideStringField;
    ADOTable3���: TWideStringField;
    ADOTable3���: TWideStringField;
    ADOTable3�: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule3: TDataModule3;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
