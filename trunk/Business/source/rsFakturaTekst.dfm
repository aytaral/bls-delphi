object frmFakturaTekst: TfrmFakturaTekst
  Left = 536
  Top = 345
  BorderStyle = bsToolWindow
  Caption = 'Fakturatekst'
  ClientHeight = 121
  ClientWidth = 482
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 482
    Height = 92
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object dbmTekst: TDBMemo
      Left = 0
      Top = 0
      Width = 482
      Height = 92
      Align = alClient
      DataField = 'TEKST'
      DataSource = frmFaktura.dsFaktura
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 92
    Width = 482
    Height = 29
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      482
      29)
    object btnOK: TButton
      Left = 312
      Top = 3
      Width = 82
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object btnAvbryt: TButton
      Left = 400
      Top = 3
      Width = 82
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Avbryt'
      ModalResult = 2
      TabOrder = 1
    end
  end
end
