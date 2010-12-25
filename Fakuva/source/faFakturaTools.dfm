object FrmTools: TFrmTools
  Left = 466
  Top = 179
  ActiveControl = EditProsent
  BorderStyle = bsDialog
  Caption = 'Faktura Innstillinger'
  ClientHeight = 198
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 381
    Height = 149
    Caption = 'Forsikring:'
    TabOrder = 0
    object Label1: TLabel
      Left = 20
      Top = 28
      Width = 191
      Height = 14
      Caption = 'Velg vare som settes inn som forsikring'
    end
    object Label2: TLabel
      Left = 20
      Top = 80
      Width = 134
      Height = 14
      Caption = 'Angi prosent av fakturasum'
    end
    object EditVare: TEdit
      Left = 104
      Top = 48
      Width = 237
      Height = 22
      TabOrder = 1
    end
    object BtnSok: TButton
      Left = 344
      Top = 48
      Width = 21
      Height = 22
      Caption = '...'
      TabOrder = 2
      OnClick = BtnSokClick
    end
    object EditProsent: TblsAlignEdit
      Left = 20
      Top = 96
      Width = 141
      Height = 22
      TabOrder = 3
      Text = '0,00'
      Alignment = taRightJustify
      EditType = etFloat
      DisplayMask = '0.00'
    end
    object EditVarenr: TEdit
      Left = 20
      Top = 48
      Width = 81
      Height = 22
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 0
    end
  end
  object BtnOk: TButton
    Left = 212
    Top = 166
    Width = 85
    Height = 25
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
    OnClick = BtnOkClick
  end
  object BtnAvbryt: TButton
    Left = 304
    Top = 166
    Width = 85
    Height = 25
    Cancel = True
    Caption = '&Avbryt'
    ModalResult = 2
    TabOrder = 2
  end
end
