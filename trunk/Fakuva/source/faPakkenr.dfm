object FrmPakkeNr: TFrmPakkeNr
  Left = 450
  Top = 590
  BorderStyle = bsDialog
  Caption = 'Pakkenummer'
  ClientHeight = 99
  ClientWidth = 254
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  object BtnOK: TButton
    Left = 78
    Top = 68
    Width = 83
    Height = 25
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
    OnClick = BtnOKClick
  end
  object BtnAvbryt: TButton
    Left = 166
    Top = 68
    Width = 83
    Height = 25
    Cancel = True
    Caption = '&Avbryt'
    ModalResult = 2
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 241
    Height = 53
    Caption = 'Nummerserie:'
    TabOrder = 2
    object EditID: TEdit
      Left = 12
      Top = 19
      Width = 29
      Height = 22
      TabStop = False
      TabOrder = 0
      Text = 'CK'
    end
    object EditNr: TEdit
      Left = 44
      Top = 19
      Width = 73
      Height = 22
      TabStop = False
      MaxLength = 9
      TabOrder = 1
      Text = '000000000'
      OnKeyPress = EditNrKeyPress
    end
    object EditNo: TEdit
      Left = 119
      Top = 19
      Width = 29
      Height = 22
      TabStop = False
      TabOrder = 2
      Text = 'NO'
    end
    object BtnNr: TButton
      Left = 156
      Top = 18
      Width = 75
      Height = 25
      Caption = #216'k nummer'
      TabOrder = 3
      OnClick = BtnNrClick
    end
  end
  object TblPost: TTable
    DatabaseName = 'FakuvaDir'
    TableName = 'Pakke.DB'
    Left = 8
    Top = 64
    object TblPostPakkeNr: TStringField
      FieldName = 'PakkeNr'
    end
  end
end
