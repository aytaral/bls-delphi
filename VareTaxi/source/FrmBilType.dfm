object BilTypeFrm: TBilTypeFrm
  Left = 508
  Top = 400
  BorderStyle = bsDialog
  Caption = 'Redigering av biltyper'
  ClientHeight = 226
  ClientWidth = 293
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
  object Lb: TListBox
    Left = 8
    Top = 8
    Width = 197
    Height = 209
    ExtendedSelect = False
    ItemHeight = 13
    TabOrder = 0
  end
  object BtnNy: TButton
    Left = 212
    Top = 8
    Width = 75
    Height = 25
    Caption = '&Ny'
    TabOrder = 1
    OnClick = BtnNyClick
  end
  object BtnSlett: TButton
    Left = 212
    Top = 36
    Width = 75
    Height = 25
    Caption = '&Slett'
    TabOrder = 2
    OnClick = BtnSlettClick
  end
  object BtnLukk: TButton
    Left = 212
    Top = 192
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Lukk'
    ModalResult = 2
    TabOrder = 3
    OnClick = BtnLukkClick
  end
  object BtnOpp: TButton
    Left = 212
    Top = 72
    Width = 75
    Height = 25
    Caption = '&Opp'
    TabOrder = 4
    OnClick = BtnOppClick
  end
  object BtnNed: TButton
    Left = 212
    Top = 100
    Width = 75
    Height = 25
    Caption = 'N&ed'
    TabOrder = 5
    OnClick = BtnNedClick
  end
end
