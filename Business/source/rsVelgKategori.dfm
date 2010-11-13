object frmVelgKat: TfrmVelgKat
  Left = 542
  Top = 217
  Width = 245
  Height = 430
  BorderStyle = bsSizeToolWin
  Caption = 'Velg kategori'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tvKat: TTreeView
    Left = 0
    Top = 0
    Width = 237
    Height = 374
    Align = alClient
    AutoExpand = True
    HideSelection = False
    HotTrack = True
    Indent = 19
    TabOrder = 0
    OnChange = tvKatChange
    OnDblClick = tvKatDblClick
    OnEditing = tvKatEditing
  end
  object Panel2: TPanel
    Left = 0
    Top = 374
    Width = 237
    Height = 29
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      237
      29)
    object btnOK: TButton
      Left = 67
      Top = 3
      Width = 82
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&OK'
      Default = True
      Enabled = False
      ModalResult = 1
      TabOrder = 0
    end
    object btnAvbryt: TButton
      Left = 155
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
