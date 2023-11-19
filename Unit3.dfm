object DataModule3: TDataModule3
  Height = 281
  Width = 339
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 56
    Top = 160
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=DataMag.mdb;Persist' +
      ' Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 56
    Top = 32
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = #1053#1072#1079#1074#1072
    TableName = 'Magazine'
    Left = 56
    Top = 96
    object ADOTable1Код: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object ADOTable1Назва: TWideStringField
      FieldName = #1053#1072#1079#1074#1072
      Size = 255
    end
    object ADOTable1Інфо: TWideMemoField
      FieldName = #1030#1085#1092#1086
      BlobType = ftWideMemo
    end
    object ADOTable1Рікзаснування: TWideStringField
      FieldName = #1056#1110#1082' '#1079#1072#1089#1085#1091#1074#1072#1085#1085#1103
      Size = 255
    end
    object ADOTable1Мова: TWideStringField
      FieldName = #1052#1086#1074#1072
      Size = 255
    end
    object ADOTable1Обложка: TBlobField
      FieldName = #1054#1073#1083#1086#1078#1082#1072
    end
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = #1053#1072#1079#1074#1072#1047#1052#1030';'#1056#1110#1082';'#8470
    TableName = 'MagazineMax'
    Left = 144
    Top = 96
    object ADOTable2Код: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object ADOTable2НазваЗМІ: TWideStringField
      FieldName = #1053#1072#1079#1074#1072#1047#1052#1030
      Size = 255
    end
    object ADOTable2Рік: TWideStringField
      FieldName = #1056#1110#1082
      Size = 255
    end
    object ADOTable2Місяць: TWideStringField
      FieldName = #1052#1110#1089#1103#1094#1100
      Size = 255
    end
    object ADOTable2WideStringField: TWideStringField
      FieldName = #8470
      Size = 255
    end
    object ADOTable2Зміст: TWideMemoField
      FieldName = #1047#1084#1110#1089#1090
      BlobType = ftWideMemo
    end
    object ADOTable2Інфо: TBlobField
      FieldName = #1030#1085#1092#1086
    end
    object ADOTable2Наявність: TBooleanField
      FieldName = #1053#1072#1103#1074#1085#1110#1089#1090#1100
      DisplayValues = '+;-'
    end
    object ADOTable2В: TBooleanField
      Alignment = taCenter
      FieldName = #1042
      DisplayValues = '+;-'
    end
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = #1040#1074#1090#1086#1088';'#1053#1072#1079#1074#1072
    TableName = 'Statti'
    Left = 224
    Top = 96
    object ADOTable3Код: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object ADOTable3Автор: TWideStringField
      FieldName = #1040#1074#1090#1086#1088
      Size = 255
    end
    object ADOTable3Назва: TWideStringField
      FieldName = #1053#1072#1079#1074#1072
      Size = 255
    end
    object ADOTable3Журнал: TWideStringField
      FieldName = #1046#1091#1088#1085#1072#1083
      Size = 255
    end
    object ADOTable3Рік: TWideStringField
      FieldName = #1056#1110#1082
      Size = 255
    end
    object ADOTable3Номер: TWideStringField
      FieldName = #1053#1086#1084#1077#1088
      Size = 255
    end
    object ADOTable3Сторінка: TWideStringField
      FieldName = #1057#1090#1086#1088#1110#1085#1082#1072
      Size = 255
    end
    object ADOTable3Зміст: TWideMemoField
      FieldName = #1047#1084#1110#1089#1090
      BlobType = ftWideMemo
    end
    object ADOTable3Теги: TWideStringField
      FieldName = #1058#1077#1075#1080
      Size = 255
    end
    object ADOTable3ББК: TWideStringField
      FieldName = #1041#1041#1050
      Size = 255
    end
    object ADOTable3УДК: TWideStringField
      FieldName = #1059#1044#1050
      Size = 255
    end
    object ADOTable3В: TBooleanField
      FieldName = #1042
      DisplayValues = '+;-'
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 144
    Top = 160
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 224
    Top = 160
  end
end
