object Form5: TForm5
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1053#1086#1074#1080#1081' '#8470' '#1078#1091#1088#1085#1072#1083#1091'  ('#1056#1077#1076#1072#1082#1090#1091#1074#1072#1085#1085#1103')'
  ClientHeight = 580
  ClientWidth = 810
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 0
    Top = 8
    Width = 20
    Height = 15
    Caption = #1050#1086#1076
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    StyleElements = [seClient, seBorder]
  end
  object Label2: TLabel
    Left = 0
    Top = 32
    Width = 53
    Height = 15
    Caption = #1053#1072#1079#1074#1072#1047#1052#1030
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    StyleElements = [seClient, seBorder]
  end
  object Label3: TLabel
    Left = 0
    Top = 72
    Width = 16
    Height = 15
    Caption = #1056#1110#1082
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    StyleElements = [seClient, seBorder]
  end
  object Label4: TLabel
    Left = 0
    Top = 120
    Width = 39
    Height = 15
    Caption = #1052#1110#1089#1103#1094#1100
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    StyleElements = [seClient, seBorder]
  end
  object Label5: TLabel
    Left = 0
    Top = 168
    Width = 13
    Height = 15
    Caption = #8470
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    StyleElements = [seClient, seBorder]
  end
  object Label6: TLabel
    Left = 0
    Top = 259
    Width = 30
    Height = 15
    Caption = #1047#1084#1110#1089#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    StyleElements = [seClient, seBorder]
  end
  object Label7: TLabel
    Left = 606
    Top = 0
    Width = 26
    Height = 15
    Caption = #1030#1085#1092#1086
    FocusControl = DBImage1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    StyleElements = [seClient, seBorder]
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 561
    Width = 810
    Height = 19
    Panels = <>
    ExplicitLeft = 128
    ExplicitTop = 240
    ExplicitWidth = 0
  end
  object DBEdit1: TDBEdit
    Left = 40
    Top = 5
    Width = 65
    Height = 23
    DataField = #1050#1086#1076
    DataSource = DataSource1
    TabOrder = 1
    StyleElements = [seClient, seBorder]
  end
  object DBEdit2: TDBEdit
    Left = 0
    Top = 48
    Width = 600
    Height = 23
    DataField = #1053#1072#1079#1074#1072#1047#1052#1030
    DataSource = DataSource1
    TabOrder = 2
    StyleElements = [seClient, seBorder]
  end
  object DBEdit3: TDBEdit
    Left = 0
    Top = 88
    Width = 600
    Height = 23
    DataField = #1056#1110#1082
    DataSource = DataSource1
    TabOrder = 3
    StyleElements = [seClient, seBorder]
  end
  object DBEdit4: TDBEdit
    Left = 0
    Top = 136
    Width = 600
    Height = 23
    DataField = #1052#1110#1089#1103#1094#1100
    DataSource = DataSource1
    TabOrder = 4
    StyleElements = [seClient, seBorder]
  end
  object DBEdit5: TDBEdit
    Left = 0
    Top = 184
    Width = 600
    Height = 23
    DataField = #8470
    DataSource = DataSource1
    TabOrder = 5
    StyleElements = [seClient, seBorder]
  end
  object DBImage1: TDBImage
    Left = 606
    Top = 16
    Width = 203
    Height = 191
    DataField = #1030#1085#1092#1086
    DataSource = DataSource1
    PopupMenu = Form1.PopupMenu1
    Proportional = True
    Stretch = True
    TabOrder = 6
  end
  object DBCheckBox1: TDBCheckBox
    Left = 0
    Top = 213
    Width = 97
    Height = 17
    Caption = #1053#1072#1103#1074#1085#1110#1089#1090#1100
    DataField = #1053#1072#1103#1074#1085#1110#1089#1090#1100
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object DBCheckBox2: TDBCheckBox
    Left = 0
    Top = 236
    Width = 97
    Height = 17
    Caption = #1042
    DataField = #1042
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 528
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBRichEdit1: TDBRichEdit
    Left = 0
    Top = 280
    Width = 810
    Height = 233
    DataField = #1047#1084#1110#1089#1090
    DataSource = DataSource1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    HideSelection = False
    HideScrollBars = False
    PopupMenu = Form1.PopupMenu2
    ScrollBars = ssVertical
    TabOrder = 10
    StyleElements = [seClient, seBorder]
    WantTabs = True
  end
  object DataSource1: TDataSource
    DataSet = DataModule3.ADOTable2
    Left = 736
    Top = 112
  end
end
