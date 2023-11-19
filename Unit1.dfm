object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1055#1088#1086#1075#1088#1072#1084#1072
  ClientHeight = 625
  ClientWidth = 1045
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object StatusBar1: TStatusBar
    Left = 0
    Top = 606
    Width = 1045
    Height = 19
    Panels = <
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 100
      end>
    ExplicitTop = 605
    ExplicitWidth = 1041
  end
  object Panel1: TPanel
    Left = 0
    Top = 34
    Width = 1045
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1041
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 240
      Height = 39
      DataSource = DataModule3.DataSource1
      Align = alLeft
      TabOrder = 0
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 75
    Width = 1045
    Height = 531
    ActivePage = Статті
    Align = alClient
    TabOrder = 2
    OnChange = PageControl1Change
    OnEnter = PageControl1Enter
    ExplicitWidth = 1041
    ExplicitHeight = 530
    object TabSheet1: TTabSheet
      Caption = #1046#1091#1088#1085#1072#1083#1080
      object Splitter1: TSplitter
        Left = 0
        Top = 348
        Width = 1037
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        ExplicitLeft = -3
        ExplicitTop = 360
        ExplicitWidth = 1020
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1037
        Height = 348
        Align = alClient
        DataSource = DataModule3.DataSource1
        DefaultDrawing = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1079#1074#1072
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 500
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1030#1085#1092#1086
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = #1056#1110#1082' '#1079#1072#1089#1085#1091#1074#1072#1085#1085#1103
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1052#1086#1074#1072
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1054#1073#1083#1086#1078#1082#1072
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Visible = False
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 351
        Width = 1037
        Height = 150
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 350
        ExplicitWidth = 1033
        object DBImage1: TDBImage
          Left = 888
          Top = 27
          Width = 148
          Height = 122
          Align = alRight
          DataField = #1054#1073#1083#1086#1078#1082#1072
          DataSource = DataModule3.DataSource1
          PopupMenu = PopupMenu1
          Proportional = True
          Stretch = True
          TabOrder = 0
          ExplicitLeft = 884
        end
        object DBRichEdit1: TDBRichEdit
          Left = 1
          Top = 27
          Width = 887
          Height = 122
          Align = alClient
          DataField = #1030#1085#1092#1086
          DataSource = DataModule3.DataSource1
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          HideSelection = False
          HideScrollBars = False
          PopupMenu = PopupMenu2
          ScrollBars = ssVertical
          TabOrder = 1
          StyleElements = [seClient, seBorder]
          WantTabs = True
          ExplicitWidth = 883
        end
        object ActionToolBar2: TActionToolBar
          Left = 1
          Top = 1
          Width = 1035
          Height = 26
          ActionManager = ActionManager1
          Caption = 'ActionToolBar2'
          Color = clMenuBar
          ColorMap.DisabledFontColor = 7171437
          ColorMap.HighlightColor = clWhite
          ColorMap.BtnSelectedFont = clBlack
          ColorMap.UnusedColor = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Spacing = 0
          ExplicitWidth = 1031
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1077#1088#1077#1083#1110#1082' '#1089#1090#1072#1090#1090#1077#1081
      ImageIndex = 1
      object Splitter2: TSplitter
        Left = 0
        Top = 201
        Width = 1037
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitWidth = 298
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 1037
        Height = 201
        Align = alTop
        DataSource = DataModule3.DataSource2
        DefaultDrawing = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid2DrawColumnCell
        OnDblClick = DBGrid2DblClick
        OnTitleClick = DBGrid2TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1079#1074#1072#1047#1052#1030
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 500
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = #1056#1110#1082
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = #1052#1110#1089#1103#1094#1100
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = #8470
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1047#1084#1110#1089#1090
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Visible = False
          end
          item
            Expanded = False
            FieldName = #1030#1085#1092#1086
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = #1053#1072#1103#1074#1085#1110#1089#1090#1100
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1042
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 30
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 204
        Width = 1037
        Height = 297
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 1033
        ExplicitHeight = 296
        object DBImage2: TDBImage
          Left = 836
          Top = 27
          Width = 200
          Height = 269
          Align = alRight
          DataField = #1030#1085#1092#1086
          DataSource = DataModule3.DataSource2
          PopupMenu = PopupMenu1
          Proportional = True
          Stretch = True
          TabOrder = 0
          ExplicitLeft = 832
          ExplicitHeight = 268
        end
        object DBRichEdit2: TDBRichEdit
          Left = 1
          Top = 27
          Width = 835
          Height = 269
          Align = alClient
          DataField = #1047#1084#1110#1089#1090
          DataSource = DataModule3.DataSource2
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          HideSelection = False
          HideScrollBars = False
          PopupMenu = PopupMenu2
          ScrollBars = ssVertical
          TabOrder = 1
          StyleElements = [seClient, seBorder]
          WantTabs = True
          ExplicitWidth = 831
          ExplicitHeight = 268
        end
        object ActionToolBar3: TActionToolBar
          Left = 1
          Top = 1
          Width = 1035
          Height = 26
          ActionManager = ActionManager1
          Caption = 'ActionToolBar3'
          Color = clMenuBar
          ColorMap.DisabledFontColor = 7171437
          ColorMap.HighlightColor = clWhite
          ColorMap.BtnSelectedFont = clBlack
          ColorMap.UnusedColor = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Spacing = 0
          ExplicitWidth = 1031
        end
      end
    end
    object Статті: TTabSheet
      Caption = #1057#1090#1072#1090#1090#1110
      ImageIndex = 2
      object Splitter3: TSplitter
        Left = 0
        Top = 291
        Width = 1037
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitTop = 265
        ExplicitWidth = 236
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 1037
        Height = 265
        Align = alTop
        DataSource = DataModule3.DataSource3
        DefaultDrawing = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid3DrawColumnCell
        OnTitleClick = DBGrid3TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1040#1074#1090#1086#1088
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1079#1074#1072
            Width = 750
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1046#1091#1088#1085#1072#1083
            Width = 500
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = #1056#1110#1082
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = #1053#1086#1084#1077#1088
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = #1057#1090#1086#1088#1110#1085#1082#1072
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1047#1084#1110#1089#1090
            Visible = False
          end
          item
            Expanded = False
            FieldName = #1058#1077#1075#1080
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1041#1041#1050
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1059#1044#1050
            Width = 300
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = #1042
            Width = 20
            Visible = True
          end>
      end
      object DBRichEdit3: TDBRichEdit
        Left = 0
        Top = 294
        Width = 1037
        Height = 207
        Align = alClient
        DataField = #1047#1084#1110#1089#1090
        DataSource = DataModule3.DataSource3
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        HideSelection = False
        HideScrollBars = False
        PopupMenu = PopupMenu2
        ScrollBars = ssVertical
        TabOrder = 1
        StyleElements = [seClient, seBorder]
        WantTabs = True
        ExplicitWidth = 1033
        ExplicitHeight = 206
      end
      object ActionToolBar4: TActionToolBar
        Left = 0
        Top = 265
        Width = 1037
        Height = 26
        ActionManager = ActionManager1
        Caption = 'ActionToolBar4'
        Color = clMenuBar
        ColorMap.DisabledFontColor = 7171437
        ColorMap.HighlightColor = clWhite
        ColorMap.BtnSelectedFont = clBlack
        ColorMap.UnusedColor = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Spacing = 0
        ExplicitWidth = 1033
      end
    end
  end
  object ActionToolBar1: TActionToolBar
    Left = 0
    Top = 0
    Width = 1045
    Height = 34
    ActionManager = ActionManager1
    Caption = #1043#1086#1083#1086#1074#1085#1072' '#1087#1072#1085#1077#1083#1100
    Color = clMenuBar
    ColorMap.DisabledFontColor = 7171437
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clBlack
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Spacing = 0
    VertMargin = 5
    ExplicitWidth = 1041
  end
  object MainMenu1: TMainMenu
    Images = ImageList1
    Left = 264
    Top = 216
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N27: TMenuItem
        Action = ADownloadSt
      end
      object N42: TMenuItem
        Caption = '-'
      end
      object N41: TMenuItem
        Action = ASaveMDB
      end
      object N43: TMenuItem
        Action = ALoadMDB
      end
      object N28: TMenuItem
        Caption = '-'
      end
      object N2: TMenuItem
        Action = AExit
      end
      object N46: TMenuItem
        Caption = '-'
      end
      object RAR1: TMenuItem
        Action = AinRAR
      end
      object N48: TMenuItem
        Action = ACreateZip
      end
      object N47: TMenuItem
        Action = ADeComprBase
      end
    end
    object N7: TMenuItem
      Caption = #1060#1086#1088#1084#1072#1090
      object N25: TMenuItem
        Action = ABeetLine
      end
      object N26: TMenuItem
        Action = ABetLine3
      end
      object N110: TMenuItem
        Action = ABetLine1
      end
      object N151: TMenuItem
        Action = ABetLine2
      end
      object N30: TMenuItem
        Caption = '-'
      end
      object N40: TMenuItem
        Action = APara
      end
      object N31: TMenuItem
        Action = ABeforePara
      end
      object N32: TMenuItem
        Action = AAfterPara
      end
      object N36: TMenuItem
        Caption = '-'
      end
      object N8: TMenuItem
        Action = ACharH
      end
    end
    object N3: TMenuItem
      Caption = #1053#1072#1083#1072#1096#1090#1091#1074#1072#1085#1085#1103
      object N6: TMenuItem
        Caption = #1042#1080#1073#1110#1088' '#1089#1090#1080#1083#1102' '#1087#1088#1086#1075#1088#1072#1084#1080
        OnClick = N6Click
      end
    end
    object Gjier1: TMenuItem
      Caption = #1055#1086#1096#1091#1082' ...'
      object N33: TMenuItem
        Caption = #1060#1110#1083#1100#1090#1088#1072#1094#1110#1103
        ShortCut = 114
        OnClick = N33Click
      end
      object N37: TMenuItem
        Caption = #1055#1086#1096#1091#1082' '#1090#1077#1082#1089#1090#1091
        ShortCut = 16498
        OnClick = N37Click
      end
      object N38: TMenuItem
        Caption = #1047#1072#1084#1110#1085#1072' '#1090#1077#1082#1089#1090#1091
        ShortCut = 8306
        OnClick = N38Click
      end
      object N44: TMenuItem
        Caption = '-'
      end
      object N45: TMenuItem
        Action = AFindAlltext
      end
    end
    object N4: TMenuItem
      Caption = #1055#1088#1086' ...'
      object N5: TMenuItem
        Caption = #1055#1088#1086' '#1087#1088#1086#1075#1088#1072#1084#1091
        OnClick = N5Click
      end
      object N29: TMenuItem
        Caption = #1052#1077#1090#1072' '#1087#1088#1086#1077#1082#1090#1091
        OnClick = N29Click
      end
    end
    object N34: TMenuItem
      Caption = '-=-'
      OnClick = N34Click
    end
    object N35: TMenuItem
      Caption = #1041#1088#1072#1082#1086#1074#1072#1085#1110
      Visible = False
      object N9: TMenuItem
        Action = ACharSpace
        Caption = #1052#1110#1078#1089#1080#1084#1074#1086#1083#1100#1085#1080#1081' '#1087#1088#1086#1089#1090#1110#1088
      end
      object N10: TMenuItem
        Action = ACharW
      end
      object N11: TMenuItem
        Action = ACharUnder
      end
      object N13: TMenuItem
        Action = AClearFormattext
      end
      object N39: TMenuItem
        Caption = #1050#1086#1088#1080#1089#1090#1091#1074#1072#1095
        OnClick = N39Click
      end
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = EditDelete1
            Caption = ' '
            ImageIndex = 4
            ShowCaption = False
            ShortCut = 46
          end
          item
            Action = EditUndo1
            Caption = ' '
            ImageIndex = 3
            ShowCaption = False
            ShortCut = 16474
          end
          item
            Action = EditSelectAll1
            ShortCut = 16449
          end
          item
            Action = EditCut1
            Caption = ' '
            ImageIndex = 0
            ShowCaption = False
            ShortCut = 16472
          end
          item
            Action = EditCopy1
            Caption = ' '
            ImageIndex = 1
            ShowCaption = False
            ShortCut = 16451
          end
          item
            Action = EditPaste1
            Caption = ' '
            ImageIndex = 2
            ShowCaption = False
            ShortCut = 16470
          end
          item
            Action = FormatRichEditAlignLeft1
            Caption = ' '
            ImageIndex = 12
            ShowCaption = False
          end
          item
            Action = FormatRichEditAlignCenter1
            Caption = ' '
            ImageIndex = 14
            ShowCaption = False
          end
          item
            Action = FormatRichEditAlignRight1
            Caption = ' '
            ImageIndex = 13
            ShowCaption = False
          end
          item
            Action = FormatRichEditBullets1
            Caption = ' '
            ImageIndex = 11
            ShowCaption = False
          end
          item
            Action = FormatRichEditBold1
            Caption = ' '
            ImageIndex = 7
            ShowCaption = False
            ShortCut = 16450
          end
          item
            Action = FormatRichEditItalic1
            Caption = ' '
            ImageIndex = 8
            ShowCaption = False
            ShortCut = 16457
          end
          item
            Action = FormatRichEditUnderline1
            Caption = ' '
            ImageIndex = 9
            ShowCaption = False
            ShortCut = 16469
          end
          item
            Action = FormatRichEditStrikeOut1
            Caption = ' '
            ImageIndex = 10
            ShowCaption = False
          end
          item
            Action = AFont
          end>
        ActionBar = ActionToolBar1
      end
      item
        Items = <
          item
            Action = AStyleText1
            ShortCut = 24625
          end
          item
            Action = AStyleText2
            ShortCut = 24626
          end
          item
            Action = AStyleText3
            ShortCut = 24627
          end
          item
            Action = AStyleText9
            ShortCut = 24633
          end
          item
            Action = AStyleText0
            ShortCut = 24624
          end
          item
            Action = AVI
          end
          item
            Action = ANI
          end
          item
            Action = FormatRichEditBold1
            ImageIndex = 7
            ShowCaption = False
            ShortCut = 16450
          end
          item
            Action = FormatRichEditItalic1
            ImageIndex = 8
            ShowCaption = False
            ShortCut = 16457
          end
          item
            Action = FormatRichEditUnderline1
            ImageIndex = 9
            ShowCaption = False
            ShortCut = 16469
          end
          item
            Action = FormatRichEditStrikeOut1
            ImageIndex = 10
            ShowCaption = False
          end
          item
            Action = FormatRichEditBullets1
            Caption = 'Bu&llets'
            ImageIndex = 11
            ShowCaption = False
          end
          item
            Action = FormatRichEditAlignLeft1
            Caption = '&Align Left'
            ImageIndex = 12
            ShowCaption = False
          end
          item
            Action = FormatRichEditAlignCenter1
            ImageIndex = 14
            ShowCaption = False
          end
          item
            Action = FormatRichEditAlignRight1
            ImageIndex = 13
            ShowCaption = False
          end
          item
            Action = ASetJustify
          end>
        ActionBar = ActionToolBar2
      end
      item
        Items = <
          item
            Action = AStyleText1
            ShortCut = 24625
          end
          item
            Action = AStyleText2
            ShortCut = 24626
          end
          item
            Action = AStyleText3
            ShortCut = 24627
          end
          item
            Action = AStyleText9
            ShortCut = 24633
          end
          item
            Action = AStyleText0
            ShortCut = 24624
          end
          item
            Action = AVI
          end
          item
            Action = ANI
          end
          item
            Action = FormatRichEditBold1
            ImageIndex = 7
            ShowCaption = False
            ShortCut = 16450
          end
          item
            Action = FormatRichEditItalic1
            ImageIndex = 8
            ShowCaption = False
            ShortCut = 16457
          end
          item
            Action = FormatRichEditUnderline1
            ImageIndex = 9
            ShowCaption = False
            ShortCut = 16469
          end
          item
            Action = FormatRichEditStrikeOut1
            ImageIndex = 10
            ShowCaption = False
          end
          item
            Action = FormatRichEditBullets1
            Caption = 'Bu&llets'
            ImageIndex = 11
            ShowCaption = False
          end
          item
            Action = FormatRichEditAlignLeft1
            Caption = '&Align Left'
            ImageIndex = 12
            ShowCaption = False
          end
          item
            Action = FormatRichEditAlignCenter1
            ImageIndex = 14
            ShowCaption = False
          end
          item
            Action = FormatRichEditAlignRight1
            ImageIndex = 13
            ShowCaption = False
          end
          item
            Action = ASetJustify
          end>
        ActionBar = ActionToolBar3
      end
      item
        Items = <
          item
            Action = AStyleText1
            ShortCut = 24625
          end
          item
            Action = AStyleText2
            ShortCut = 24626
          end
          item
            Action = AStyleText3
            ShortCut = 24627
          end
          item
            Action = AStyleText9
            ShortCut = 24633
          end
          item
            Action = AStyleText0
            ShortCut = 24624
          end
          item
            Action = AVI
          end
          item
            Action = ANI
          end
          item
            Action = FormatRichEditBold1
            ImageIndex = 7
            ShowCaption = False
            ShortCut = 16450
          end
          item
            Action = FormatRichEditItalic1
            ImageIndex = 8
            ShowCaption = False
            ShortCut = 16457
          end
          item
            Action = FormatRichEditUnderline1
            ImageIndex = 9
            ShowCaption = False
            ShortCut = 16469
          end
          item
            Action = FormatRichEditStrikeOut1
            ImageIndex = 10
            ShowCaption = False
          end
          item
            Action = FormatRichEditBullets1
            Caption = 'Bu&llets'
            ImageIndex = 11
            ShowCaption = False
          end
          item
            Action = FormatRichEditAlignLeft1
            Caption = '&Align Left'
            ImageIndex = 12
            ShowCaption = False
          end
          item
            Action = FormatRichEditAlignCenter1
            ImageIndex = 14
            ShowCaption = False
          end
          item
            Action = FormatRichEditAlignRight1
            ImageIndex = 13
            ShowCaption = False
          end
          item
            Action = ASetJustify
          end>
        ActionBar = ActionToolBar4
      end>
    Images = ImageList1
    Left = 264
    Top = 272
    StyleName = 'Platform Default'
    object AExit: TAction
      Category = #1060#1072#1081#1083
      Caption = #1042#1080#1093#1110#1076
      ShortCut = 32883
      OnExecute = AExitExecute
    end
    object EditCut1: TEditCut
      Category = #1055#1088#1072#1074#1082#1072
      Caption = 'Cu&t'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 0
      ShortCut = 16472
    end
    object EditCopy1: TEditCopy
      Category = #1055#1088#1072#1074#1082#1072
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = #1055#1088#1072#1074#1082#1072
      Caption = '&Paste'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 2
      ShortCut = 16470
    end
    object EditSelectAll1: TEditSelectAll
      Category = #1055#1088#1072#1074#1082#1072
      Caption = 'Select &All'
      Hint = 'Select All|Selects the entire document'
      ShortCut = 16449
    end
    object EditUndo1: TEditUndo
      Category = #1055#1088#1072#1074#1082#1072
      Caption = '&Undo'
      Hint = 'Undo|Reverts the last action'
      ImageIndex = 3
      ShortCut = 16474
    end
    object EditDelete1: TEditDelete
      Category = #1055#1088#1072#1074#1082#1072
      Caption = '&Delete'
      Hint = 'Delete|Erases the selection'
      ImageIndex = 4
      ShortCut = 46
    end
    object EditRichEditSpellCheck1: TRichEditSpellCheck
      Category = #1055#1088#1072#1074#1082#1072
      Caption = 'S&pell Check...'
      Hint = 'Spell Check|Shows spell checker menu'
      ImageIndex = 5
    end
    object FormatRichEditBold1: TRichEditBold
      Category = #1060#1086#1088#1084#1072#1090
      AutoCheck = True
      Caption = '&Bold'
      Hint = 'Bold'
      ImageIndex = 7
      ShortCut = 16450
    end
    object FormatRichEditItalic1: TRichEditItalic
      Category = #1060#1086#1088#1084#1072#1090
      AutoCheck = True
      Caption = '&Italic'
      Hint = 'Italic'
      ImageIndex = 8
      ShortCut = 16457
    end
    object FormatRichEditUnderline1: TRichEditUnderline
      Category = #1060#1086#1088#1084#1072#1090
      AutoCheck = True
      Caption = '&Underline'
      Hint = 'Underline'
      ImageIndex = 9
      ShortCut = 16469
    end
    object FormatRichEditStrikeOut1: TRichEditStrikeOut
      Category = #1060#1086#1088#1084#1072#1090
      AutoCheck = True
      Caption = '&Strikeout'
      Hint = 'Strikeout'
      ImageIndex = 10
    end
    object FormatRichEditBullets1: TRichEditBullets
      Category = #1060#1086#1088#1084#1072#1090
      AutoCheck = True
      Caption = '&Bullets'
      Hint = 'Bullets|Inserts a bullet on the current line'
      ImageIndex = 11
    end
    object FormatRichEditAlignLeft1: TRichEditAlignLeft
      Category = #1060#1086#1088#1084#1072#1090
      AutoCheck = True
      Caption = 'Align &Left'
      Hint = 'Align Left|Aligns text at the left indent'
      ImageIndex = 12
    end
    object FormatRichEditAlignRight1: TRichEditAlignRight
      Category = #1060#1086#1088#1084#1072#1090
      AutoCheck = True
      Caption = 'Align &Right'
      Hint = 'Align Right|Aligns text at the right indent'
      ImageIndex = 13
    end
    object FormatRichEditAlignCenter1: TRichEditAlignCenter
      Category = #1060#1086#1088#1084#1072#1090
      AutoCheck = True
      Caption = '&Center'
      Hint = 'Center|Centers text between margins'
      ImageIndex = 14
    end
    object AStyleText1: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1047#1072#1075#1086#1083#1086#1074#1086#1082
      ShortCut = 24625
      OnExecute = AStyleText1Execute
    end
    object AStyleText2: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1055#1110#1076#1079#1072#1075#1086#1083#1086#1074#1086#1082
      ShortCut = 24626
      OnExecute = AStyleText2Execute
    end
    object AStyleText3: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1060#1086#1088#1084#1072#1090' '#1076#1072#1090
      ShortCut = 24627
      OnExecute = AStyleText3Execute
    end
    object AStyleText9: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1057#1090#1080#1083#1100' '#1090#1077#1082#1089#1090#1091
      ShortCut = 24633
      OnExecute = AStyleText9Execute
    end
    object AStyleText0: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1060#1086#1088#1084#1072#1090' '#1074#1080#1076'.'#1090#1077#1082#1089#1090#1091
      ShortCut = 24624
      OnExecute = AStyleText0Execute
    end
    object AVI: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1042#1030
      OnExecute = AVIExecute
    end
    object ANI: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1053#1030
      OnExecute = ANIExecute
    end
    object AFont: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1064#1088#1080#1092#1090
      OnExecute = AFontExecute
    end
    object ASetJustify: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1055#1086' '#1096#1080#1088#1080#1085#1110
      OnExecute = ASetJustifyExecute
    end
    object ACharH: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1057#1080#1084#1074#1086#1083#1053
      OnExecute = ACharHExecute
    end
    object ACharSpace: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1057#1080#1084#1074#1086#1083#1080#1064
      OnExecute = ACharSpaceExecute
    end
    object ACharW: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1050#1077#1088#1085#1110#1085#1075
      OnExecute = ACharWExecute
    end
    object ACharUnder: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1055#1110#1076#1082#1088#1077#1089#1083#1077#1085#1085#1103
      OnExecute = ACharUnderExecute
    end
    object AInsPictBuf: TAction
      Category = #1042#1089#1090#1072#1074#1082#1072
      Caption = #1042#1089#1090#1072#1074#1082#1072' '#1084#1072#1083#1102#1085#1082#1091' '#1079' '#1073#1091#1092#1077#1088#1091
      OnExecute = AInsPictBufExecute
    end
    object AClearFormattext: TAction
      Caption = #1054#1095#1080#1097#1077#1085#1085#1103' '#1090#1077#1082#1089#1090#1091
      OnExecute = AClearFormattextExecute
    end
    object ADelPict: TAction
      Category = #1042#1089#1090#1072#1074#1082#1072
      Caption = #1042#1080#1076#1072#1083#1077#1085#1085#1103' '#1084#1072#1083#1102#1085#1082#1091
      OnExecute = ADelPictExecute
    end
    object AInsPictFile: TAction
      Category = #1042#1089#1090#1072#1074#1082#1072
      Caption = #1042#1089#1090#1072#1074#1082#1072' '#1084#1072#1083#1102#1085#1082#1091' '#1079' '#1092#1072#1081#1083#1091
      OnExecute = AInsPictFileExecute
    end
    object ASaveToFile: TAction
      Category = #1042#1089#1090#1072#1074#1082#1072
      Caption = #1047#1073#1077#1088#1077#1075#1090#1080' '#1091' '#1092#1072#1081#1083
      OnExecute = ASaveToFileExecute
    end
    object ASaveToClip: TAction
      Category = #1042#1089#1090#1072#1074#1082#1072
      Caption = #1047#1073#1077#1088#1077#1075#1090#1080' '#1091' '#1073#1091#1092#1077#1088
      OnExecute = ASaveToClipExecute
    end
    object AaddSt: TAction
      Caption = #1044#1086#1076#1072#1090#1080' '#1089#1090#1072#1090#1090#1102
      ShortCut = 113
      OnExecute = AaddStExecute
    end
    object ANewZMI: TAction
      Category = #1060#1072#1081#1083
      Caption = #1053#1086#1074#1080#1081' '#1047#1052#1030
      ShortCut = 115
      OnExecute = ANewZMIExecute
    end
    object ANewNumber: TAction
      Category = #1060#1072#1081#1083
      Caption = #1053#1086#1074#1080#1081' '#8470' '#1078#1091#1088#1085#1072#1083#1091
      ShortCut = 116
      OnExecute = ANewNumberExecute
    end
    object ANewArcticle: TAction
      Category = #1060#1072#1081#1083
      Caption = #1053#1086#1074#1072' '#1089#1090#1072#1090#1090#1103
      ShortCut = 117
      OnExecute = ANewArcticleExecute
    end
    object ABeetLine: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1052#1110#1078#1088#1103#1076#1082#1086#1074#1080#1081' '#1110#1085#1090#1077#1088#1074#1072#1083' ('#1090#1086#1095#1085#1080#1081')'
      OnExecute = ABeetLineExecute
    end
    object ABetLine1: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1052#1110#1078#1088#1103#1076#1082#1086#1074#1080#1081' '#1110#1085#1090#1077#1088#1074#1072#1083' 1.5'
      OnExecute = ABetLine1Execute
    end
    object ABetLine2: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1052#1110#1078#1088#1103#1076#1082#1086#1074#1080#1081' '#1110#1085#1090#1077#1088#1074#1072#1083' 2'
      OnExecute = ABetLine2Execute
    end
    object ABetLine3: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1052#1110#1078#1088#1103#1076#1082#1086#1074#1080#1081' '#1110#1085#1090#1077#1088#1074#1072#1083' 1'
      OnExecute = ABetLine3Execute
    end
    object ADownloadSt: TAction
      Category = #1060#1072#1081#1083
      Caption = #1042#1080#1074#1072#1085#1090#1072#1078#1077#1085#1085#1103' '#1089#1090#1072#1090#1090#1110
      OnExecute = ADownloadStExecute
    end
    object ALoadCSV: TAction
      Category = #1060#1072#1081#1083
      Caption = #1047#1072#1074#1072#1085#1090#1072#1078#1077#1085#1085#1103' CSV'
      OnExecute = ALoadCSVExecute
    end
    object ASaveCSV: TAction
      Category = #1060#1072#1081#1083
      Caption = #1047#1073#1077#1088#1077#1075#1090#1080' '#1091' CSV'
      OnExecute = ASaveCSVExecute
    end
    object ASaveADT: TAction
      Category = #1060#1072#1081#1083
      Caption = #1047#1073#1077#1088#1077#1078#1077#1085#1085#1103' '#1073#1072#1079#1080' '#1089#1090#1072#1090#1090#1077#1081
      OnExecute = ASaveADTExecute
    end
    object ABeforePara: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1055#1077#1088#1077#1076' '#1072#1073#1079#1072#1094
      OnExecute = ABeforeParaExecute
    end
    object AAfterPara: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1055#1110#1089#1083#1103' '#1072#1073#1079#1072#1094#1091
      OnExecute = AAfterParaExecute
    end
    object APara: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1055#1086#1083#1103' '#1072#1073#1079#1072#1094#1091
      OnExecute = AParaExecute
    end
    object ASaveMDB: TAction
      Category = #1060#1072#1081#1083
      Caption = #1047#1073#1077#1088#1077#1075#1090#1080' '#1073#1072#1079#1091
      OnExecute = ASaveMDBExecute
    end
    object ALoadMDB: TAction
      Category = #1060#1072#1081#1083
      Caption = #1047#1072#1074#1072#1085#1090#1072#1078#1080#1090#1080' '#1073#1072#1079#1091
      OnExecute = ALoadMDBExecute
    end
    object AFindAlltext: TAction
      Category = #1055#1086#1096#1091#1082
      Caption = #1055#1086#1096#1091#1082' '#1091' '#1090#1077#1082#1089#1090#1110' '#1074#1089#1110#1093' '#1089#1090#1072#1090#1090#1077#1081
      OnExecute = AFindAlltextExecute
    end
    object AinRAR: TAction
      Category = #1060#1072#1081#1083
      Caption = 'RAR '#1073#1072#1079#1080
      OnExecute = AinRARExecute
    end
    object ACreateZip: TAction
      Category = #1060#1072#1081#1083
      Caption = #1057#1090#1074#1086#1088#1077#1085#1085#1103' '#1072#1088#1093#1110#1074#1091
      OnExecute = ACreateZipExecute
    end
    object ADeComprBase: TAction
      Category = #1060#1072#1081#1083
      Caption = #1056#1086#1079#1072#1088#1093#1110#1074#1091#1074#1072#1090#1080' '#1073#1072#1079#1091
      OnExecute = ADeComprBaseExecute
    end
  end
  object ImageList1: TImageList
    Left = 264
    Top = 336
    Bitmap = {
      494C01010F001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0080808000777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      77007777770080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080007777
      7700777777007777770077777700777777007777770077777700777777007777
      7700777777007777770080808000FFFFFF00FFFFFF0080808000777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      7700777777007777770080808000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0080808000777777007777
      77007777770077777700777777007777770080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00808080007777770077777700777777007777
      7700777777007777770080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000777777007777770077777700777777007777770077777700777777008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0080808000777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      77007777770080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080007777
      7700777777007777770077777700777777007777770077777700777777007777
      7700777777007777770080808000FFFFFF00FFFFFF0080808000777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      7700777777007777770080808000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0080808000777777007777
      77007777770077777700777777007777770080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00808080007777770077777700777777007777
      7700777777007777770080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000777777007777770077777700777777007777770077777700777777008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0080808000777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      77007777770080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080007777
      7700777777007777770077777700777777007777770077777700777777007777
      7700777777007777770080808000FFFFFF00FFFFFF0080808000777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      7700777777007777770080808000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0080808000777777007777
      77007777770077777700777777007777770080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00808080007777770077777700777777007777
      7700777777007777770080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000777777007777770077777700777777007777770077777700777777008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0080808000777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      77007777770080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080007777
      7700777777007777770077777700777777007777770077777700777777007777
      7700777777007777770080808000FFFFFF00FFFFFF0080808000777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      7700777777007777770080808000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E3E3E300A4A0A000777777005F5F5F005F5F5F0080808000B2B2B200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCC9900CC663300CCCC
      9900FFFFFF00D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7
      D700D7D7D700D7D7D700D7D7D700D7D7D700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B2B2
      B2005F5F5F005555550055555500555555005555550055555500555555008080
      8000F1F1F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC663300CC663300CC66
      3300FFFFFF007777770077777700777777007777770077777700777777007777
      770077777700777777007777770077777700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F1F1F1005F5F5F005F5F5F00C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00868686005555
      5500555555005555550055555500555555005555550055555500555555005555
      55005555550066666600FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1F1006666
      6600555555005F5F5F00A4A0A000CCCCCC00C0C0C00096969600555555005555
      550099999900FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCC9900CC663300CCCC
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00868686005555550086868600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E3E3E300C0C0C000C0C0C000DDDDDD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCC
      CC0096969600EAEAEA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00999999005555
      55005F5F5F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C000555555005F5F5F00F1F1F100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F1F1F100868686005555550055555500555555005555550077777700E3E3
      E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCCCC005555
      550055555500DDDDDD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F1F1F1005F5F5F0055555500C0C0C000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00868686005555550096969600E3E3E300EAEAEA00C0C0C000666666006666
      6600F1F1F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B2B2B2005555
      550055555500DDDDDD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00868686005555550086868600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDD
      DD005555550080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C0005555
      5500C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E3E300A4A0A0005F5F5F005555
      550066666600FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCC9900CC663300CCCC
      9900FFFFFF00D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7
      D700D7D7D700D7D7D700D7D7D700D7D7D700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0C0C000555555005F5F5F00F1F1F100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C00055555500A4A0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAEAEA005555
      550099999900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F1F1F100B2B2B200777777005555550055555500555555005555
      5500C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC663300CC663300CC66
      3300FFFFFF007777770077777700777777007777770077777700777777007777
      770077777700777777007777770077777700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F1F1F1005F5F5F0055555500CBCBCB00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C00055555500B2B2B200FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAEAEA005555
      550099999900FFFFFF00FFFFFF00FFFFFF00FFFFFF0055555500555555005555
      5500555555005555550055555500555555005555550055555500555555005555
      5500555555005555550055555500FFFFFF00FFFFFF00CCCC9900CC663300CCCC
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00808080005555550096969600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C00055555500B2B2B200FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAEAEA005555
      550099999900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1
      F10066666600555555005555550066666600A4A0A000DDDDDD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B2B2B200555555005F5F5F00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C00055555500B2B2B200FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAEAEA005555
      550099999900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C0005555550055555500A4A0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EAEAEA005F5F5F0055555500CCCCCC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C00055555500B2B2B200FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAEAEA005555
      550099999900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B2B2
      B2005555550055555500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080005555550099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C00055555500B2B2B200FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAEAEA005555
      550099999900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C0005555550055555500DDDDDD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C000F1F1F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCC9900CC663300CCCC
      9900FFFFFF00D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7
      D700D7D7D700D7D7D700D7D7D700D7D7D700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C0005555550066666600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C00055555500B2B2B200FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAEAEA005555
      550099999900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1
      F100666666005555550066666600B2B2B200CCCCCC00C0C0C000777777005555
      550099999900FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC663300CC663300CC66
      3300FFFFFF007777770077777700777777007777770077777700777777007777
      770077777700777777007777770077777700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CCCCCC005F5F5F0055555500555555005555550055555500555555005555
      550099999900FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCC9900CC663300CCCC
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E3E3E30096969600666666005F5F5F006666660086868600CCCC
      CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDDDD00666666008686
      8600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EAEAEA001C1C1C0077777700FFFFFF00C0C0C000868686008686
      86008686860086868600868686008686860086868600B2B2B200999966008686
      860086868600C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000868686008686
      86008686860086868600868686008686860086868600B2B2B200999966008686
      860086868600C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00016161600000000000000
      0000E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF005F5F5F000000000022222200FFFFFF0086868600C0C0C000DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00C0C0C00066993300669933009999
      6600C0C0C00086868600FFFFFF00FFFFFF00FFFFFF0086868600C0C0C000DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00C0C0C00066993300669933009999
      6600C0C0C00086868600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005F5F5F0000000000000000000000
      000077777700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B2B2B2000000000000000000B2B2B200FFFFFF0086868600DDDDDD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0DCC0006699330066993300669933006699
      33009999660086868600FFFFFF00FFFFFF00FFFFFF0086868600DDDDDD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0DCC0006699330066993300669933006699
      33009999660086868600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005555
      5500555555005555550055555500555555005F5F5F0077777700A4A0A000EAEA
      EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B2B2B20000000000000000000000
      000016161600E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E3
      E30016161600000000004D4D4D00FFFFFF00FFFFFF0086868600DDDDDD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00999966006699330099CC9900E3E3E3009999
      66006699330099996600F8F8F800FFFFFF00FFFFFF0086868600DDDDDD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00999966006699330099CC9900E3E3E3009999
      66006699330099996600F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFFFF005555
      55005555550096969600B2B2B200B2B2B200A4A0A00080808000555555006666
      6600E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF0033333300000000000000
      0000000000005F5F5F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003939
      39000000000016161600DDDDDD00FFFFFF00FFFFFF0086868600DDDDDD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E3E3E300C0DCC000FFFFFF00FFFFFF00E3E3
      E300999966006699330099CC6600FFFFFF00FFFFFF0086868600DDDDDD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E3E3E300C0DCC000FFFFFF00FFFFFF00E3E3
      E300999966006699330099CC6600FFFFFF00FFFFFF00FFFFFF00FFFFFF005555
      550055555500CCCCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00969696005555
      550096969600FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCCCC00000000000000
      00000000000000000000B2B2B200FFFFFF00FFFFFF00FFFFFF00666666000000
      00000000000086868600FFFFFF00FFFFFF00FFFFFF0086868600DDDDDD00DDDD
      DD00DDDDDD00F1F1F100DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD009999660099CC9900FFFFFF00FFFFFF0086868600DDDDDD00DDDD
      DD00DDDDDD00F1F1F100DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD009999660099CC9900FFFFFF00FFFFFF00FFFFFF00FFFFFF005555
      550055555500CCCCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C0005555
      550080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00969696000000
      0000000000000000000016161600E3E3E300FFFFFF0077777700000000000000
      000039393900FFFFFF00FFFFFF00FFFFFF00FFFFFF0086868600DDDDDD00F1F1
      F100F1F1F100FFFFFF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100DDDDDD0096969600FFFFFF00FFFFFF00FFFFFF0086868600DDDDDD00F1F1
      F100F1F1F100FFFFFF00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100DDDDDD0096969600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005555
      550055555500CCCCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00868686005555
      5500A4A0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007777
      7700000000000000000000000000333333007777770000000000000000001616
      1600DDDDDD00FFFFFF00FFFFFF00FFFFFF00FFFFFF0086868600DDDDDD00D7D7
      D700CCCCCC00CCCCCC00CCCCCC00DDDDDD00CCCCCC00EAEAEA00CCCCCC00CCCC
      CC00DDDDDD0086868600FFFFFF00FFFFFF00FFFFFF0086868600DDDDDD00D7D7
      D700CCCCCC00CCCCCC00CCCCCC00DDDDDD00CCCCCC00EAEAEA00CCCCCC00CCCC
      CC00DDDDDD0086868600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005555
      55005555550080808000868686008686860086868600666666005F5F5F009696
      9600F1F1F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0077777700000000000000000000000000000000000000000000000000B2B2
      B200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0086868600DDDDDD00FFFF
      FF00FFFFFF00F1F1F100F1F1F100FFFFFF00FFFFFF00FFFFFF00F1F1F100F1F1
      F100DDDDDD0086868600FFFFFF00FFFFFF00FFFFFF0086868600DDDDDD00FFFF
      FF00FFFFFF00F1F1F100F1F1F100FFFFFF00FFFFFF00FFFFFF00F1F1F100F1F1
      F100DDDDDD0086868600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005555
      550055555500808080008686860086868600808080005F5F5F0096969600EAEA
      EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00666666000000000000000000000000000000000077777700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0086868600DDDDDD00DDDD
      DD00E3E3E300CCCCCC00CCCCCC00DDDDDD00DDDDDD00E3E3E300CCCCCC00CCCC
      CC00DDDDDD0086868600FFFFFF00FFFFFF00FFFFFF0086868600DDDDDD00DDDD
      DD00E3E3E300CCCCCC00CCCCCC00DDDDDD00DDDDDD00E3E3E300CCCCCC00CCCC
      CC00DDDDDD0086868600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005555
      550055555500CCCCCC00FFFFFF00FFFFFF00FFFFFF00E3E3E3005F5F5F006666
      6600F1F1F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1
      F10080808000161616000000000000000000000000000000000029292900DDDD
      DD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0086868600DDDDDD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAEAEA00DDDDDD00DDDD
      DD00C0C0C00086868600FFFFFF00FFFFFF00FFFFFF0086868600DDDDDD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAEAEA00DDDDDD00DDDD
      DD00C0C0C00086868600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005555
      550055555500CCCCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00868686005555
      5500CBCBCB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1F100969696001C1C
      1C00000000000000000000000000000000001616160000000000000000001616
      1600B2B2B200FFFFFF00FFFFFF00FFFFFF00FFFFFF0086868600DDDDDD00FFFF
      FF00E3E3E300DDDDDD00FFFFFF00FFFFFF00F1F1F10096969600777777007777
      77007777770086868600FFFFFF00FFFFFF00FFFFFF0086868600DDDDDD00FFFF
      FF00E3E3E300DDDDDD00FFFFFF00FFFFFF00F1F1F10096969600777777007777
      77007777770086868600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005555
      550055555500CCCCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00666666005555
      5500CCCCCC00FFFFFF00FFFFFF00FFFFFF008686860016161600000000000000
      000000000000000000000000000042424200F1F1F10096969600161616000000
      0000000000005F5F5F00EAEAEA00FFFFFF00FFFFFF0086868600DDDDDD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDDDD0077777700FFFFFF00CCCC
      CC0086868600D7D7D700FFFFFF00FFFFFF00FFFFFF0086868600DDDDDD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDDDD0077777700FFFFFF00CCCC
      CC0086868600D7D7D700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005555
      55005555550096969600B2B2B200B2B2B200A4A0A00077777700555555007777
      7700FFFFFF00FFFFFF00FFFFFF00FFFFFF001C1C1C0000000000000000000000
      0000000000000000000066666600FFFFFF00FFFFFF00FFFFFF00DDDDDD004D4D
      4D0000000000000000001616160099999900FFFFFF0086868600DDDDDD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDDDD0077777700CCCCCC008686
      8600C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF0086868600DDDDDD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDDDD0077777700CCCCCC008686
      8600C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005555
      5500555555005555550055555500555555005F5F5F0077777700B2B2B200F1F1
      F100FFFFFF00FFFFFF00FFFFFF00FFFFFF008686860000000000000000000000
      000016161600B2B2B200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B2B2B200222222000000000033333300FFFFFF0086868600C0C0C000DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00C0C0C0007777770086868600C0C0
      C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0086868600C0C0C000DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00C0C0C0007777770086868600C0C0
      C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0055555500222222008686
      8600F1F1F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099999900DDDDDD00FFFFFF00C0C0C000868686008686
      8600868686008686860086868600868686008686860086868600C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000868686008686
      8600868686008686860086868600868686008686860086868600C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAEAEA00CC996600CC99
      3300CC996600CC999900EAEAEA00FFFFFF00FFFFFF00F1F1F100CC999900CC99
      3300CC993300CC996600EAEAEA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0096969600808080008080800080808000808080008080
      800080808000808080008080800096969600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00969696008080800080808000808080008080
      800080808000808080008080800096969600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600CC663300F0CA
      A600F0CAA600CC663300CC993300EAEAEA00FFFFFF00CC996600CC663300F0CA
      A600F0CAA600CC663300CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC663300CC996600FFFF
      FF00FFFFFF00F0CAA600CC663300CCCC9900F0CAA600CC663300F0CAA600FFFF
      FF00FFFFFF00CC996600CC663300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF00CC663300CC663300CC663300CC66
      3300CC663300CC663300FFFFFF008080800066CCFF0066CCCC0066CCCC0066CC
      CC0066CCCC0066CCCC00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080808000CC663300CC663300CC663300CC66
      3300CC663300CC663300CC996600F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CCCC9900CC663300CC996600FFFFFF00FFFFFF00CC996600CC663300EAEA
      EA00FFFFFF00EAEAEA00CC663300CC996600CC996600CC663300EAEAEA00FFFF
      FF00EAEAEA00CC663300CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008080800066CCCC0066CCCC0066CCCC0066CC
      CC0066CCCC0066CCCC00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080808000CC663300CC663300CC663300CC66
      3300CC663300CC663300CC663300CC996600F8F8F800FFFFFF00FFFFFF00FFFF
      FF00E3E3E300CC663300CC663300F1F1F100FFFFFF00FFCCCC00CC663300CC99
      3300F0CAA600CC996600CC663300CC663300CC663300CC663300CC996600F0CA
      A600CC996600CC663300D7D7D700FFFFFF00C0C0C000B2B2B200B2B2B200B2B2
      B200B2B2B200FFFFFF0080808000FFFFFF00CC663300CC663300CC663300CC66
      3300CC663300CC663300FFFFFF008080800066CCCC0066CCCC0066CCCC0066CC
      CC0066CCCC0066CCCC00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080808000CC663300CC663300CC663300CC99
      6600F1F1F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC993300CC663300F0CAA600FFFFFF00FFFFFF00F0CAA600CC99
      6600CC663300CC663300CC996600CC663300CC663300CC996600CC996600CC66
      3300CC996600F0CAA600FFFFFF00FFFFFF00B2B2B200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008080800066CCCC0066CCCC0066CCCC0066CC
      CC0066CCCC0066CCCC00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF008686
      860080808000808080008080800080808000CC663300CC663300CC996600CC66
      3300CC996600F1F1F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC996600CC663300CC999900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D7D7D700CC999900CC999900CCCC9900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B2B2B200FFFFFF00CC996600CC99
      6600CC996600FFFFFF0080808000FFFFFF00CC663300CC663300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008080800066CCCC0066CCCC0066CCCC0066CC
      CC0066CCCC0066CCCC00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF008080
      8000FFFFFF00DDDDDD0086868600D7D7D700CC663300CC663300EAEAEA00CC99
      6600CC663300CC996600F1F1F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F0CAA600CC663300CC996600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D7D7D70080808000808080008080800077777700C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B2B2B200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF008686
      86008080800080808000808080008080800066CCCC0066CCCC0066CCCC0066CC
      CC0066CCCC0066CCCC00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF008080
      8000DDDDDD0086868600DDDDDD00FFFFFF00CC663300CC663300FFFFFF00EAEA
      EA00CC996600CC663300CC996600F1F1F100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DDDDDD00CC663300CC993300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EAEAEA00808080008080800096969600969696008080800080808000DDDD
      DD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B2B2B200FFFFFF00CC996600CC99
      6600CC996600FFFFFF0080808000FFFFFF00CC663300CC663300FFFFFF008080
      8000FFFFFF00DDDDDD0086868600D7D7D70066CCCC0066CCCC0066CCCC0066CC
      CC0066CCCC0066CCCC00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF008080
      800086868600DDDDDD00FFFFFF00FFFFFF00CC996600CC663300FFFFFF00FFFF
      FF00EAEAEA00CC993300CC663300CC996600F1F1F100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F0CAA600CC663300CC996600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00969696008080800086868600EAEAEA00EAEAEA0086868600808080008686
      8600FFFFFF00FFFFFF00FFFFFF00FFFFFF00B2B2B200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000DDDDDD0086868600DDDDDD00FFFFFF0066CCCC0066CCCC0066CCCC0066CC
      CC0066CCCC0066CCCC00FFFFFF00969696008080800080808000808080008686
      8600E3E3E300FFFFFF00FFFFFF00FFFFFF00F8F8F800CC996600FFFFFF00FFFF
      FF00FFFFFF00EAEAEA00CC993300CC663300CC993300F0CAA600FFFFFF00FFFF
      FF00E3E3E300CC996600CC663300CC999900FFFFFF00FFFFFF00FFFFFF00CCCC
      CC008080800080808000D7D7D700FFFFFF00FFFFFF00CCCCCC00808080008080
      8000C0C0C000FFFFFF00FFFFFF00FFFFFF00B2B2B200FFFFFF00CC996600CC99
      6600FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800086868600DDDDDD00FFFFFF00FFFFFF0066CCCC0066CCCC0066CCCC0066CC
      CC0066CCCC0066CCCC0099CCFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EAEAEA00CC996600CC663300CC663300CC663300CC99
      3300CC663300CC663300CC993300F1F1F100FFFFFF00FFFFFF00FFFFFF008686
      860080808000A4A0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00A4A0A0008080
      800086868600FFFFFF00FFFFFF00FFFFFF00B2B2B200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0096969600808080008080800080808000808080008686
      8600E3E3E300FFFFFF00FFFFFF00FFFFFF0066CCCC0066CCCC0066CCCC0066CC
      CC0066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CC
      CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F8F8F800CCCC9900CC663300CC663300CC66
      3300CC663300CC996600EAEAEA00FFFFFF00FFFFFF00FFFFFF00DDDDDD008080
      800086868600F1F1F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1F1008686
      860080808000DDDDDD00FFFFFF00FFFFFF00B2B2B200FFFFFF00CC996600CC99
      6600FFFFFF00E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0066CCCC0066CCCC0066CCCC0066CC
      CC0066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CC
      CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F800DDDDDD00DDDD
      DD00F1F1F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B2B2B2008080
      8000D7D7D700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCC
      CC0080808000B2B2B200FFFFFF00FFFFFF00B2B2B200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B2B2B200E3E3E300B2B2B200E3E3E300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0066CCCC0066CCCC00F0FBFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0FBFF0066CCCC0066CC
      CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0096969600B2B2
      B200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A4A0A00096969600FFFFFF00FFFFFF00B2B2B200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B2B2B200B2B2B200EAEAEA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0066CCFF0066CCCC00FFFFFF008686
      86008080800080808000808080008080800086868600FFFFFF0066CCCC0066CC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A4A0A000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F1F1F100A4A0A000FFFFFF00FFFFFF00C0C0C000B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B200EAEAEA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1
      F10086868600808080008080800086868600F1F1F100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Left = 260
    Top = 389
  end
  object PopupMenu1: TPopupMenu
    Left = 588
    Top = 261
    object N12: TMenuItem
      Action = AInsPictBuf
    end
    object N15: TMenuItem
      Action = AInsPictFile
    end
    object N14: TMenuItem
      Action = ADelPict
    end
    object N16: TMenuItem
      Action = ASaveToClip
    end
    object N17: TMenuItem
      Action = ASaveToFile
    end
  end
  object PopupMenu2: TPopupMenu
    Images = ImageList1
    Left = 660
    Top = 261
    object Bold1: TMenuItem
      Action = FormatRichEditBold1
      AutoCheck = True
    end
    object Italic1: TMenuItem
      Action = FormatRichEditItalic1
      AutoCheck = True
    end
    object Underline1: TMenuItem
      Action = FormatRichEditUnderline1
      AutoCheck = True
    end
    object Cut1: TMenuItem
      Action = EditCut1
    end
    object Copy1: TMenuItem
      Action = EditCopy1
    end
    object Paste1: TMenuItem
      Action = EditPaste1
    end
    object Bullets1: TMenuItem
      Action = FormatRichEditBullets1
      AutoCheck = True
    end
    object N18: TMenuItem
      Caption = '-'
    end
    object N19: TMenuItem
      Action = AaddSt
    end
    object N20: TMenuItem
      Caption = '-'
    end
    object N21: TMenuItem
      Action = AStyleText1
    end
    object N22: TMenuItem
      Action = AStyleText2
    end
    object N23: TMenuItem
      Action = AStyleText3
    end
    object N24: TMenuItem
      Caption = '-'
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 740
    Top = 269
  end
  object OpenPictureDialog1: TOpenPictureDialog
    InitialDir = '..'
    Title = #1047#1072#1074#1072#1085#1090#1072#1078#1080#1090#1080' '#1084#1072#1083#1102#1085#1086#1082
    Left = 908
    Top = 417
  end
  object SavePictureDialog1: TSavePictureDialog
    DefaultExt = '.jpeg'
    InitialDir = '..'
    Title = #1047#1073#1077#1088#1077#1075#1090#1080' '#1084#1072#1083#1102#1085#1086#1082
    Left = 908
    Top = 489
  end
  object OpenTextFileDialog1: TOpenTextFileDialog
    DefaultExt = '.csv'
    InitialDir = '..'
    Left = 628
    Top = 441
  end
  object SaveTextFileDialog1: TSaveTextFileDialog
    DefaultExt = '.csv'
    InitialDir = '..'
    Left = 636
    Top = 513
  end
  object FindDialog1: TFindDialog
    OnFind = FindDialog1Find
    Left = 364
    Top = 485
  end
  object ReplaceDialog1: TReplaceDialog
    OnFind = ReplaceDialog1Find
    OnReplace = ReplaceDialog1Replace
    Left = 436
    Top = 485
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 
      #1042#1089#1110' '#1092#1072#1081#1083#1080'|*.*|'#1058#1077#1082#1089#1090'|*.txt,*.doc,*.docx|'#1052#1072#1083#1102#1085#1082#1080'|*.jpg,*.jpeg,*.ti' +
      'ff,*.gif'
    InitialDir = '..'
    Title = #1042#1110#1076#1082#1088#1080#1090#1080' '#1092#1072#1081#1083' '#1076#1083#1103' '#1072#1088#1093#1110#1074#1072#1094#1110#1111
    Left = 412
    Top = 205
  end
  object SaveDialog1: TSaveDialog
    Left = 412
    Top = 261
  end
end
