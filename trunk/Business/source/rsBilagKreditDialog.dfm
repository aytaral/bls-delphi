object frmBilagKreditDialog: TfrmBilagKreditDialog
  Left = 523
  Top = 360
  BorderStyle = bsDialog
  Caption = 'Utbetaling av kreditnota'
  ClientHeight = 145
  ClientWidth = 310
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 293
    Height = 93
    Caption = 'Velg oppgj'#248'rsform for kreditnota'
    TabOrder = 0
    object rbFaktura: TRadioButton
      Left = 16
      Top = 64
      Width = 261
      Height = 17
      Caption = 'Trukket fra annen faktura (Ingen bilag genereres)'
      TabOrder = 0
    end
    object rbBank: TRadioButton
      Left = 16
      Top = 24
      Width = 229
      Height = 17
      Caption = 'Kreditnotaen er utbetalt fra bank'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object rbKontant: TRadioButton
      Left = 16
      Top = 44
      Width = 229
      Height = 17
      Caption = 'Kreditnotaen er utbetalt kontant'
      TabOrder = 2
    end
  end
  object btnAvbryt: TButton
    Left = 214
    Top = 112
    Width = 87
    Height = 25
    Cancel = True
    Caption = '&Avbryt'
    ModalResult = 2
    TabOrder = 1
  end
  object btnOK: TButton
    Left = 122
    Top = 112
    Width = 87
    Height = 25
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
end
