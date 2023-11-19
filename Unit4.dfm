object Form4: TForm4
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1053#1086#1074#1080#1081' '#1047#1052#1030'  ('#1056#1077#1076#1072#1082#1090#1091#1074#1072#1085#1085#1103')'
  ClientHeight = 523
  ClientWidth = 861
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  StyleElements = [seClient, seBorder]
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 16
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
    Left = 8
    Top = 37
    Width = 32
    Height = 15
    Caption = #1053#1072#1079#1074#1072
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
    Left = 8
    Top = 80
    Width = 26
    Height = 15
    Caption = #1030#1085#1092#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    StyleElements = [seClient, seBorder]
  end
  object Label4: TLabel
    Left = 8
    Top = 360
    Width = 81
    Height = 15
    Caption = #1056#1110#1082' '#1079#1072#1089#1085#1091#1074#1072#1085#1085#1103
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    StyleElements = [seClient, seBorder]
  end
  object Label5: TLabel
    Left = 8
    Top = 408
    Width = 30
    Height = 15
    Caption = #1052#1086#1074#1072
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    StyleElements = [seClient, seBorder]
  end
  object Label6: TLabel
    Left = 614
    Top = 20
    Width = 51
    Height = 15
    Caption = #1054#1073#1083#1086#1078#1082#1072
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
    Top = 504
    Width = 861
    Height = 19
    Panels = <>
    ExplicitTop = 802
    ExplicitWidth = 624
  end
  object DBEdit1: TDBEdit
    Left = 47
    Top = 13
    Width = 58
    Height = 23
    DataField = #1050#1086#1076
    DataSource = DataModule3.DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 53
    Width = 600
    Height = 23
    DataField = #1053#1072#1079#1074#1072
    DataSource = DataModule3.DataSource1
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 376
    Width = 600
    Height = 23
    DataField = #1056#1110#1082' '#1079#1072#1089#1085#1091#1074#1072#1085#1085#1103
    DataSource = DataModule3.DataSource1
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 424
    Width = 600
    Height = 23
    DataField = #1052#1086#1074#1072
    DataSource = DataModule3.DataSource1
    TabOrder = 4
  end
  object DBImage1: TDBImage
    Left = 614
    Top = 36
    Width = 243
    Height = 243
    DataField = #1054#1073#1083#1086#1078#1082#1072
    DataSource = DataModule3.DataSource1
    PopupMenu = Form1.PopupMenu1
    Proportional = True
    Stretch = True
    TabOrder = 5
  end
  object DBRichEdit1: TDBRichEdit
    Left = 8
    Top = 99
    Width = 600
    Height = 255
    DataField = #1030#1085#1092#1086
    DataSource = DataModule3.DataSource1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    HideSelection = False
    HideScrollBars = False
    ParentShowHint = False
    PopupMenu = Form1.PopupMenu2
    ScrollBars = ssVertical
    ShowHint = False
    TabOrder = 6
    StyleElements = [seClient, seBorder]
    WantTabs = True
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 464
    Width = 240
    Height = 25
    DataSource = DataModule3.DataSource1
    TabOrder = 7
  end
end
