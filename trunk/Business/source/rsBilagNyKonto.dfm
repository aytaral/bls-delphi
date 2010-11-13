object frmBilagNyKonto: TfrmBilagNyKonto
  Left = 623
  Top = 530
  BorderStyle = bsDialog
  Caption = 'Opprettelse av ny konto'
  ClientHeight = 179
  ClientWidth = 292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 292
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    object Bevel1: TBevel
      Left = 0
      Top = 39
      Width = 292
      Height = 2
      Align = alBottom
      Shape = bsBottomLine
    end
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 214
      Height = 13
      Caption = 'Velg type konto du '#248'nsker '#229' opprette:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 292
    Height = 100
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel2: TBevel
      Left = 0
      Top = 98
      Width = 292
      Height = 2
      Align = alBottom
      Shape = bsBottomLine
    end
    object rbKonto: TRadioButton
      Left = 48
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Hovedbok'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rbKunde: TRadioButton
      Left = 48
      Top = 40
      Width = 113
      Height = 17
      Caption = 'Kunde'
      TabOrder = 1
    end
    object rbLev: TRadioButton
      Left = 48
      Top = 64
      Width = 113
      Height = 17
      Caption = 'Leverand'#248'r'
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 141
    Width = 292
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      292
      38)
    object btnOK: TButton
      Left = 113
      Top = 7
      Width = 84
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&OK'
      Default = True
      ModalResult = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnLukk: TButton
      Left = 201
      Top = 7
      Width = 84
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = '&Avbryt'
      ModalResult = 2
      TabOrder = 1
    end
  end
end
