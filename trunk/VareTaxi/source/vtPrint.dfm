object frmPrint: TfrmPrint
  Left = 440
  Top = 326
  ActiveControl = BtnOK
  BorderStyle = bsDialog
  Caption = 'Skriv ut'
  ClientHeight = 226
  ClientWidth = 372
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object BtnLukk: TButton
    Left = 280
    Top = 194
    Width = 85
    Height = 25
    Cancel = True
    Caption = '&Avbryt'
    ModalResult = 2
    TabOrder = 4
  end
  object BtnOK: TButton
    Left = 188
    Top = 194
    Width = 85
    Height = 25
    Caption = '&Skriv ut'
    Default = True
    ModalResult = 1
    TabOrder = 3
    OnClick = BtnOKClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 357
    Height = 85
    Caption = 'Prim'#230'r skriver:'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 50
      Width = 33
      Height = 13
      Caption = 'Kopier:'
    end
    object LblPrimPrinter: TLabel
      Left = 56
      Top = 24
      Width = 285
      Height = 13
      AutoSize = False
      Caption = 'Samsung Laser MP-1450'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 24
      Width = 29
      Height = 13
      Caption = 'Navn:'
    end
    object BtnPrint1: TButton
      Left = 256
      Top = 45
      Width = 87
      Height = 25
      Caption = 'Egenskaper'
      TabOrder = 1
      OnClick = BtnPrint1Click
    end
    object EditAnt1: TSpinEdit
      Left = 56
      Top = 46
      Width = 65
      Height = 22
      MaxValue = 10
      MinValue = 0
      TabOrder = 0
      Value = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 100
    Width = 357
    Height = 85
    Caption = 'Sekund'#230'r skriver:'
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 50
      Width = 33
      Height = 13
      Caption = 'Kopier:'
    end
    object LblSekPrinter: TLabel
      Left = 56
      Top = 24
      Width = 107
      Height = 13
      Caption = 'Ingen skriver valgt'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 24
      Width = 29
      Height = 13
      Caption = 'Navn:'
    end
    object BtnPrint2: TButton
      Left = 256
      Top = 45
      Width = 87
      Height = 25
      Caption = 'Egenskaper'
      TabOrder = 1
      OnClick = BtnPrint2Click
    end
    object EditAnt2: TSpinEdit
      Left = 56
      Top = 46
      Width = 65
      Height = 22
      Enabled = False
      MaxValue = 10
      MinValue = 0
      TabOrder = 0
      Value = 1
    end
  end
  object cbAltPrinter: TCheckBox
    Left = 12
    Top = 196
    Width = 149
    Height = 17
    Caption = 'Bruk sekund'#230'r skriver'
    TabOrder = 2
    OnClick = cbAltPrinterClick
  end
  object DlgPrinter: TPrinterSetupDialog
    Left = 8
    Top = 156
  end
end
