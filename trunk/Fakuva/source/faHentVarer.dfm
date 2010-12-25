object FrmHentVarer: TFrmHentVarer
  Left = 679
  Top = 384
  BorderStyle = bsDialog
  Caption = 'Hent varer'
  ClientHeight = 85
  ClientWidth = 265
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 14
  object EditFnr: TLabeledEdit
    Left = 8
    Top = 24
    Width = 249
    Height = 22
    EditLabel.Width = 213
    EditLabel.Height = 14
    EditLabel.Caption = 'Oppgi fakturanr som varene skal hentes fra:'
    TabOrder = 0
    OnKeyPress = EditFnrKeyPress
  end
  object BtnOk: TButton
    Left = 89
    Top = 54
    Width = 81
    Height = 25
    Caption = '&OK'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 1
  end
  object BtnAvbryt: TButton
    Left = 177
    Top = 54
    Width = 81
    Height = 25
    Cancel = True
    Caption = '&Avbryt'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 2
  end
end
