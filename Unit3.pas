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
    ADOTable2Код: TAutoIncField;
    ADOTable2НазваЗМІ: TWideStringField;
    ADOTable2Рік: TWideStringField;
    ADOTable2Місяць: TWideStringField;
    ADOTable2WideStringField: TWideStringField;
    ADOTable2Зміст: TWideMemoField;
    ADOTable2Інфо: TBlobField;
    ADOTable2Наявність: TBooleanField;
    ADOTable2В: TBooleanField;
    ADOTable1Код: TAutoIncField;
    ADOTable1Назва: TWideStringField;
    ADOTable1Інфо: TWideMemoField;
    ADOTable1Рікзаснування: TWideStringField;
    ADOTable1Мова: TWideStringField;
    ADOTable1Обложка: TBlobField;
    ADOTable3Код: TAutoIncField;
    ADOTable3Назва: TWideStringField;
    ADOTable3Журнал: TWideStringField;
    ADOTable3Рік: TWideStringField;
    ADOTable3Номер: TWideStringField;
    ADOTable3Сторінка: TWideStringField;
    ADOTable3Зміст: TWideMemoField;
    ADOTable3Теги: TWideStringField;
    ADOTable3Автор: TWideStringField;
    ADOTable3ББК: TWideStringField;
    ADOTable3УДК: TWideStringField;
    ADOTable3В: TBooleanField;
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
