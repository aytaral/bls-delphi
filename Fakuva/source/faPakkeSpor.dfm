object FrmPakkeSporing: TFrmPakkeSporing
  Left = 333
  Top = 258
  BorderStyle = bsDialog
  Caption = 'Posten Pakkesporing'
  ClientHeight = 474
  ClientWidth = 686
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
  object Wb: TWebBrowser
    Left = 8
    Top = 8
    Width = 669
    Height = 429
    TabOrder = 0
    ControlData = {
      4C00000025450000572C00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object BtnOK: TButton
    Left = 584
    Top = 444
    Width = 95
    Height = 25
    Cancel = True
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
end
