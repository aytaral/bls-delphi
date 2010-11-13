object frmFakturaSort: TfrmFakturaSort
  Left = 529
  Top = 371
  ActiveControl = btnOK
  BorderStyle = bsDialog
  Caption = 'Sortering av produktlinjer'
  ClientHeight = 128
  ClientWidth = 311
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
  object rgSort: TRadioGroup
    Left = 8
    Top = 8
    Width = 153
    Height = 81
    Caption = 'Sorter produktlinjene etter:'
    ItemIndex = 0
    Items.Strings = (
      'Varenummer'
      'Beskrivelse'
      'Innsettingsrekkef'#248'lge')
    TabOrder = 0
  end
  object rgAsc: TRadioGroup
    Left = 176
    Top = 8
    Width = 125
    Height = 81
    Caption = 'Sorteringsrekkef'#248'lge:'
    ItemIndex = 0
    Items.Strings = (
      'Stigende'
      'Synkende')
    TabOrder = 1
  end
  object btnAvbryt: TButton
    Left = 216
    Top = 96
    Width = 85
    Height = 25
    Cancel = True
    Caption = '&Avbryt'
    ModalResult = 2
    TabOrder = 3
  end
  object btnOK: TButton
    Left = 125
    Top = 96
    Width = 85
    Height = 25
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
end
