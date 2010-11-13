object frmPostImport: TfrmPostImport
  Left = 445
  Top = 378
  BorderStyle = bsDialog
  Caption = 'Postnummer oppdatering'
  ClientHeight = 185
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object LblNedlasting: TLabel
    Left = 12
    Top = 68
    Width = 148
    Height = 13
    Caption = 'Laster ned fra www.posten.no'
  end
  object LblDatabase: TLabel
    Left = 12
    Top = 108
    Width = 125
    Height = 13
    Caption = 'Oppdaterer databasen ...'
  end
  object ProgressBar: TProgressBar
    Left = 12
    Top = 84
    Width = 393
    Height = 16
    TabOrder = 0
  end
  object BtnStart: TButton
    Left = 220
    Top = 152
    Width = 89
    Height = 25
    Hint = 'Download from URL'
    Caption = 'Start'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BtnStartClick
  end
  object BtnLukk: TButton
    Left = 316
    Top = 152
    Width = 89
    Height = 25
    Caption = '&Lukk'
    ModalResult = 2
    TabOrder = 2
  end
  object PbUpdate: TProgressBar
    Left = 12
    Top = 124
    Width = 393
    Height = 16
    Step = 1
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 416
    Height = 53
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 4
    object Bevel1: TBevel
      Left = 0
      Top = 50
      Width = 416
      Height = 3
      Align = alBottom
      Shape = bsBottomLine
    end
    object Label3: TLabel
      Left = 20
      Top = 8
      Width = 244
      Height = 13
      Caption = 'Oppdatering av postnummer og poststeder.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 20
      Top = 24
      Width = 131
      Height = 13
      Caption = 'Trykk <ESC> for '#229' avbryte'
    end
    object Image1: TImage
      Left = 364
      Top = 8
      Width = 32
      Height = 32
      AutoSize = True
    end
  end
  object ZipKit: TAbZipKit
    AutoSave = False
    DOSMode = False
    ExtractOptions = []
    Left = 340
    Top = 48
  end
  object adoPostnr: TADODataSet
    Connection = Dm.adoConn
    CommandText = 'select * from POSTNR'
    Parameters = <>
    Left = 308
    Top = 48
    object adoPostnrPOSTNR: TStringField
      FieldName = 'POSTNR'
      Size = 6
    end
    object adoPostnrPOSTSTED: TStringField
      FieldName = 'POSTSTED'
      Size = 30
    end
    object adoPostnrKOMMUNENR: TStringField
      FieldName = 'KOMMUNENR'
      Size = 4
    end
  end
end
