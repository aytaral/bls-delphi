object frmWebFirmaInfo: TfrmWebFirmaInfo
  Left = 265
  Top = 176
  Width = 905
  Height = 737
  Caption = 'Online Firmainformasjon'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 676
    Width = 897
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      897
      34)
    object btnLukk: TButton
      Left = 810
      Top = 4
      Width = 83
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Lukk'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = btnLukkClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 897
    Height = 676
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 1
    object wbInfo: TWebBrowser
      Left = 5
      Top = 5
      Width = 887
      Height = 666
      Align = alClient
      TabOrder = 0
      ControlData = {
        4C000000AD5B0000D54400000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
end
