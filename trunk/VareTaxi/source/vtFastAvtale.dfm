object frmFastAvtale: TfrmFastAvtale
  Left = 463
  Top = 529
  BorderStyle = bsDialog
  Caption = 'Fast avtale'
  ClientHeight = 166
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  DesignSize = (
    361
    166)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 39
    Width = 57
    Height = 13
    Caption = 'Beskrivelse:'
  end
  object Label2: TLabel
    Left = 8
    Top = 84
    Width = 26
    Height = 13
    Caption = 'Dato:'
  end
  object Label3: TLabel
    Left = 112
    Top = 84
    Width = 20
    Height = 13
    Caption = 'Pris:'
  end
  object btnOK: TButton
    Left = 200
    Top = 136
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&OK'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 3
    OnClick = btnOKClick
  end
  object btnCancel: TButton
    Left = 280
    Top = 136
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Lukk'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 4
    OnClick = btnCancelClick
  end
  object adpDBDateTimePicker1: TadpDBDateTimePicker
    Left = 8
    Top = 100
    Width = 93
    Height = 21
    Date = 39444.449943900470000000
    Time = 39444.449943900470000000
    TabOrder = 1
    DataField = 'Dato'
    DataSource = DM.dsAvtale
    ReadOnly = False
  end
  object dbeAvtale: TDBEdit
    Left = 8
    Top = 56
    Width = 345
    Height = 21
    DataField = 'Beskrivelse'
    DataSource = DM.dsAvtale
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 112
    Top = 100
    Width = 77
    Height = 21
    DataField = 'Avtalepris'
    DataSource = DM.dsAvtale
    TabOrder = 2
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 361
    Height = 30
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 26
        Width = 357
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 344
      Height = 26
      AutoSize = True
      BorderWidth = 1
      Caption = 'ToolBar1'
      EdgeBorders = []
      EdgeOuter = esNone
      Flat = True
      Images = DM.TBilder
      TabOrder = 0
      object TBNy: TToolButton
        Left = 0
        Top = 0
        Hint = 'Legg til ny post'
        Caption = 'TBNy'
        ImageIndex = 0
        ParentShowHint = False
        ShowHint = True
        OnClick = TBNyClick
      end
      object TBPrint: TToolButton
        Left = 23
        Top = 0
        Hint = 'Skriv ut skjermbilde'
        Caption = 'TBPrint'
        ImageIndex = 3
        ParentShowHint = False
        ShowHint = True
        OnClick = TBPrintClick
      end
      object ToolButton3: TToolButton
        Left = 46
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 15
        Style = tbsSeparator
      end
    end
  end
end
