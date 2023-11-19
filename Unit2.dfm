object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1042#1080#1073#1110#1088' '#1089#1090#1080#1083#1102' '#1087#1088#1086#1075#1088#1072#1084#1080
  ClientHeight = 442
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 405
    Width = 434
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 401
    ExplicitWidth = 628
    DesignSize = (
      434
      37)
    object Button1: TButton
      Left = 358
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object ListBox1: TListBox
    Left = 0
    Top = 8
    Width = 433
    Height = 385
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemHeight = 25
    ParentFont = False
    Sorted = True
    TabOrder = 1
    OnClick = ListBox1Click
  end
end
