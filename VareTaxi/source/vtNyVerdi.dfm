object frmNyVerdi: TfrmNyVerdi
  Left = 493
  Top = 441
  BorderStyle = bsDialog
  Caption = 'Ny biltype'
  ClientHeight = 84
  ClientWidth = 309
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 34
    Height = 13
    Caption = 'Biltype:'
  end
  object EditVerdi: TEdit
    Left = 8
    Top = 24
    Width = 293
    Height = 21
    TabOrder = 0
  end
  object BtnLukk: TButton
    Left = 226
    Top = 54
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Avbryt'
    ModalResult = 2
    TabOrder = 1
  end
  object BtnOK: TButton
    Left = 144
    Top = 54
    Width = 75
    Height = 25
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
end
