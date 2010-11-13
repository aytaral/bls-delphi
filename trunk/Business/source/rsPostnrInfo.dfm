object frmPostnrInfo: TfrmPostnrInfo
  Left = 368
  Top = 327
  BorderStyle = bsDialog
  Caption = 'Informasjon'
  ClientHeight = 396
  ClientWidth = 611
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  DesignSize = (
    611
    396)
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 484
    Top = 52
    Width = 48
    Height = 13
    AutoSize = True
    DataField = 'POSTNR'
    DataSource = dsPostnr
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 484
    Top = 76
    Width = 48
    Height = 13
    AutoSize = True
    DataField = 'POSTSTED'
    DataSource = dsPostnr
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 484
    Top = 100
    Width = 48
    Height = 13
    AutoSize = True
    DataField = 'KOMMUNENR'
    DataSource = dsPostnr
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText4: TDBText
    Left = 484
    Top = 124
    Width = 48
    Height = 13
    AutoSize = True
    DataField = 'KOMMUNE'
    DataSource = dsPostnr
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText5: TDBText
    Left = 484
    Top = 148
    Width = 48
    Height = 13
    AutoSize = True
    DataField = 'FYLKE'
    DataSource = dsPostnr
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 412
    Top = 52
    Width = 63
    Height = 13
    Caption = 'Postnummer:'
  end
  object Label2: TLabel
    Left = 412
    Top = 76
    Width = 46
    Height = 13
    Caption = 'Poststed:'
  end
  object Label3: TLabel
    Left = 412
    Top = 100
    Width = 60
    Height = 13
    Caption = 'Kommunenr:'
  end
  object Label4: TLabel
    Left = 412
    Top = 124
    Width = 50
    Height = 13
    Caption = 'Kommune:'
  end
  object Label5: TLabel
    Left = 412
    Top = 148
    Width = 29
    Height = 13
    Caption = 'Fylke:'
  end
  object Label7: TLabel
    Left = 407
    Top = 11
    Width = 176
    Height = 20
    Caption = 'Postnummer informasjon'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Button1: TButton
    Left = 511
    Top = 363
    Width = 91
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 379
    Height = 379
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 1
    object Shape1: TShape
      Left = 0
      Top = 0
      Width = 379
      Height = 379
      Align = alClient
      Pen.Color = clGray
    end
    object Image: TImage
      Left = 0
      Top = 0
      Width = 379
      Height = 379
      Align = alClient
      Center = True
    end
  end
  object adoPostnr: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 'select * from POSTADRESSE'#13#10'where postnr = :Postnr;'
    Parameters = <
      item
        Name = 'Postnr'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 6
        Size = 6
        Value = '3135'
      end>
    Left = 20
    Top = 24
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
    object adoPostnrKOMMUNE: TStringField
      FieldName = 'KOMMUNE'
      Size = 40
    end
    object adoPostnrFYLKE: TStringField
      FieldName = 'FYLKE'
      Size = 40
    end
  end
  object dsPostnr: TDataSource
    DataSet = adoPostnr
    Left = 52
    Top = 24
  end
end
