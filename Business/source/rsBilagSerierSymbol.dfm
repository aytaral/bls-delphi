object frmBilagSerieSymbol: TfrmBilagSerieSymbol
  Left = 0
  Top = 0
  ActiveControl = btnOK
  BorderStyle = bsDialog
  Caption = 'Velg symbol'
  ClientHeight = 71
  ClientWidth = 186
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
  object cbImg: TComboBoxEx
    Left = 8
    Top = 8
    Width = 170
    Height = 22
    ItemsEx = <>
    Style = csExDropDownList
    ItemHeight = 16
    TabOrder = 0
    Images = Dm.ilBilagSerie
  end
  object btnOK: TButton
    Left = 8
    Top = 36
    Width = 82
    Height = 25
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object btnLukk: TButton
    Left = 96
    Top = 36
    Width = 82
    Height = 25
    Cancel = True
    Caption = '&Lukk'
    ModalResult = 2
    TabOrder = 2
  end
end
