object Form7: TForm7
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1042#1110#1082#1085#1086' '#1087#1086#1096#1091#1082#1091
  ClientHeight = 388
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object StatusBar1: TStatusBar
    Left = 0
    Top = 369
    Width = 628
    Height = 19
    Panels = <>
    ExplicitTop = 422
    ExplicitWidth = 624
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 321
    Align = alTop
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 1
      Top = 57
      Width = 626
      Height = 56
      Align = alTop
      Caption = #1055#1086#1096#1091#1082' '#1091' '#1085#1072#1079#1074#1072#1093
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      StyleElements = [seClient, seBorder]
      ExplicitLeft = -1
      ExplicitTop = -3
      object SearchBox1: TSearchBox
        Left = 2
        Top = 23
        Width = 622
        Height = 29
        Align = alTop
        TabOrder = 0
        OnChange = SearchBox1InvokeSearch
        OnEnter = SearchBox1Enter
        OnInvokeSearch = SearchBox1InvokeSearch
        ExplicitWidth = 618
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 113
      Width = 626
      Height = 56
      Align = alTop
      Caption = #1055#1086#1096#1091#1082' '#1091' '#1090#1077#1082#1089#1090#1110
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      StyleElements = [seClient, seBorder]
      ExplicitTop = 1
      ExplicitWidth = 622
      object SearchBox2: TSearchBox
        Left = 2
        Top = 23
        Width = 622
        Height = 29
        Align = alTop
        TabOrder = 0
        OnEnter = SearchBox2Enter
        OnInvokeSearch = SearchBox2InvokeSearch
      end
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 169
      Width = 626
      Height = 144
      Align = alTop
      Caption = #1055#1086#1096#1091#1082' '#1089#1090#1072#1090#1090#1110
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      StyleElements = [seClient, seBorder]
      object Label1: TLabel
        Left = 3
        Top = 24
        Width = 21
        Height = 21
        Caption = #1056#1110#1082
        StyleElements = [seClient, seBorder]
      end
      object Label2: TLabel
        Left = 95
        Top = 24
        Width = 18
        Height = 21
        Caption = #8470
        StyleElements = [seClient, seBorder]
      end
      object Label3: TLabel
        Left = 187
        Top = 24
        Width = 29
        Height = 21
        Caption = #1059#1044#1050
        StyleElements = [seClient, seBorder]
      end
      object Label4: TLabel
        Left = 279
        Top = 24
        Width = 27
        Height = 21
        Caption = #1041#1041#1050
        StyleElements = [seClient, seBorder]
      end
      object Label5: TLabel
        Left = 3
        Top = 86
        Width = 56
        Height = 21
        Caption = #1046#1091#1088#1085#1072#1083
        StyleElements = [seClient, seBorder]
      end
      object Label6: TLabel
        Left = 371
        Top = 24
        Width = 31
        Height = 21
        Caption = #1058#1077#1075#1080
        StyleElements = [seClient, seBorder]
      end
      object Edit1: TEdit
        Left = 3
        Top = 51
        Width = 86
        Height = 29
        TabOrder = 0
        OnChange = Edit1Change
      end
      object Edit2: TEdit
        Left = 95
        Top = 51
        Width = 86
        Height = 29
        TabOrder = 1
        OnChange = Edit1Change
      end
      object Edit3: TEdit
        Left = 187
        Top = 51
        Width = 86
        Height = 29
        TabOrder = 2
        OnChange = Edit1Change
      end
      object Edit4: TEdit
        Left = 279
        Top = 51
        Width = 86
        Height = 29
        TabOrder = 3
        OnChange = Edit1Change
      end
      object ComboBox1: TComboBox
        Left = 3
        Top = 112
        Width = 362
        Height = 29
        TabOrder = 4
        OnChange = Edit1Change
      end
      object Edit5: TEdit
        Left = 371
        Top = 51
        Width = 246
        Height = 29
        TabOrder = 5
        OnChange = Edit1Change
      end
    end
    object GroupBox4: TGroupBox
      Left = 1
      Top = 1
      Width = 626
      Height = 56
      Align = alTop
      Caption = #1055#1086#1096#1091#1082' '#1072#1074#1090#1086#1088#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      StyleElements = [seClient, seBorder]
      ExplicitLeft = -1
      ExplicitTop = -3
      object SearchBox3: TSearchBox
        Left = 2
        Top = 23
        Width = 622
        Height = 29
        Align = alTop
        TabOrder = 0
        OnChange = SearchBox3InvokeSearch
        OnEnter = SearchBox3Enter
        OnInvokeSearch = SearchBox3InvokeSearch
        ExplicitLeft = 3
        ExplicitTop = 21
      end
    end
  end
  object Button1: TButton
    Left = 254
    Top = 327
    Width = 121
    Height = 34
    Cancel = True
    Caption = #1054#1095#1080#1089#1090#1080#1090#1080' '#1074#1089#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
end
