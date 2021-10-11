object Form1: TForm1
  Left = 223
  Top = 125
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1080#1084#1091#1083#1103#1090#1086#1088' '#1076#1077#1092#1088#1072#1075#1084#1077#1085#1090#1072#1094#1080#1080
  ClientHeight = 387
  ClientWidth = 739
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Label5: TLabel
    Left = 384
    Top = 256
    Width = 338
    Height = 16
    BiDiMode = bdLeftToRight
    Caption = #1054#1075#1088#1072#1085#1080#1095#1077#1085#1080#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072' '#1085#1077#1087#1077#1088#1077#1084#1077#1097#1072#1077#1084#1099#1093' '#1073#1083#1086#1082#1086#1074':'
    ParentBiDiMode = False
  end
  object Label6: TLabel
    Left = 392
    Top = 320
    Width = 150
    Height = 16
    Caption = #1056#1072#1079#1084#1077#1088#1085#1086#1089#1090#1100' '#1084#1072#1090#1088#1080#1094#1099':'
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 8
    Width = 369
    Height = 369
    ColCount = 36
    DefaultColWidth = 10
    DefaultRowHeight = 10
    FixedCols = 0
    RowCount = 36
    FixedRows = 0
    GridLineWidth = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
    ScrollBars = ssNone
    TabOrder = 0
    OnMouseDown = StringGrid1MouseDown
    OnSelectCell = StringGrid1SelectCell
  end
  object GroupBox1: TGroupBox
    Left = 384
    Top = 0
    Width = 345
    Height = 113
    Caption = ' '#1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1103' '
    Color = clMoneyGreen
    ParentColor = False
    TabOrder = 1
    object Label1: TLabel
      Left = 26
      Top = 22
      Width = 150
      Height = 16
      Caption = #1047#1072#1087#1086#1083#1085#1077#1085#1085#1099#1077' '#1073#1083#1086#1082#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 26
      Top = 43
      Width = 224
      Height = 16
      Caption = #1063#1072#1089#1090#1080#1095#1085#1086' '#1079#1072#1087#1086#1083#1085#1077#1085#1085#1099#1077' '#1073#1083#1086#1082#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 26
      Top = 86
      Width = 131
      Height = 16
      Caption = #1057#1080#1089#1090#1077#1084#1085#1099#1077' '#1073#1083#1086#1082#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 26
      Top = 65
      Width = 104
      Height = 16
      Caption = #1055#1091#1089#1090#1099#1077' '#1073#1083#1086#1082#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object ComboBox1: TComboBox
    Left = 384
    Top = 280
    Width = 217
    Height = 24
    ItemHeight = 16
    ItemIndex = 0
    TabOrder = 2
    Text = #1041#1077#1079' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1080#1103
    OnChange = FormShow
    Items.Strings = (
      #1041#1077#1079' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1080#1103
      #1054#1076#1085#1072' '#1087#1088#1086#1074#1077#1088#1082#1072
      #1044#1074#1077' '#1087#1088#1086#1074#1077#1088#1082#1080
      #1058#1088#1080' '#1087#1088#1086#1074#1077#1088#1082#1080)
  end
  object BitBtn1: TBitBtn
    Left = 608
    Top = 280
    Width = 121
    Height = 25
    Caption = #1055#1077#1088#1077#1088#1080#1089#1086#1074#1072#1090#1100
    TabOrder = 3
    OnClick = FormShow
  end
  object GroupBox2: TGroupBox
    Left = 384
    Top = 120
    Width = 345
    Height = 129
    Caption = ' '#1054#1087#1090#1080#1084#1080#1079#1072#1094#1080#1103' '
    TabOrder = 4
    object BitBtn3: TBitBtn
      Left = 16
      Top = 56
      Width = 313
      Height = 25
      Caption = #1064#1072#1075' 2: '#1086#1087#1090#1080#1084#1080#1079#1072#1094#1080#1103' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103' '#1073#1083#1086#1082#1086#1074
      Enabled = False
      TabOrder = 0
      OnClick = step2
      Margin = 5
    end
    object BitBtn2: TBitBtn
      Left = 16
      Top = 24
      Width = 313
      Height = 25
      Caption = #1064#1072#1075' 1: '#1087#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100' '#1079#1072#1087#1086#1083#1085#1077#1085#1085#1099#1077' '#1073#1083#1086#1082#1080
      TabOrder = 1
      OnClick = step1
      Margin = 5
    end
    object BitBtn4: TBitBtn
      Left = 16
      Top = 88
      Width = 313
      Height = 25
      Caption = #1064#1072#1075' 3: '#1079#1072#1082#1086#1085#1095#1080#1090#1100' '#1076#1077#1092#1088#1072#1075#1084#1077#1085#1090#1072#1094#1080#1102
      Enabled = False
      TabOrder = 2
      OnClick = BitBtn4Click
      Margin = 5
    end
  end
  object Button1: TButton
    Left = 384
    Top = 352
    Width = 345
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 5
    OnClick = Button1Click
  end
  object SpinEdit1: TSpinEdit
    Left = 552
    Top = 311
    Width = 49
    Height = 26
    MaxValue = 36
    MinValue = 2
    TabOrder = 6
    Value = 36
    OnChange = SpinEdit1Change
  end
end
