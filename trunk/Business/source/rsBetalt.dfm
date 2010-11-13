object frmBetalt: TfrmBetalt
  Left = 362
  Top = 340
  BorderStyle = bsDialog
  Caption = 'Registrering av innbetaling'
  ClientHeight = 320
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnAvbryt: TButton
    Left = 382
    Top = 289
    Width = 83
    Height = 25
    Cancel = True
    Caption = '&Avbryt'
    ModalResult = 2
    TabOrder = 3
    OnClick = btnAvbrytClick
  end
  object btnOK: TButton
    Left = 294
    Top = 289
    Width = 83
    Height = 25
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
    OnClick = btnOKClick
  end
  object GroupBox2: TGroupBox
    Left = 240
    Top = 8
    Width = 225
    Height = 193
    Caption = 'Alternativer:'
    TabOrder = 5
    object Label8: TLabel
      Left = 16
      Top = 142
      Width = 67
      Height = 13
      Caption = 'Fakturabel'#248'p:'
    end
    object DBText1: TDBText
      Left = 140
      Top = 142
      Width = 65
      Height = 17
      Alignment = taRightJustify
      DataField = 'SUMTOT'
      DataSource = Dm.dsFaktura
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 35
      Top = 41
      Width = 161
      Height = 13
      Caption = 'Videre purring vil ikke v'#230're mulig.'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 126
      Width = 89
      Height = 13
      Caption = 'Tidligere innbetalt:'
    end
    object Label3: TLabel
      Left = 16
      Top = 158
      Width = 106
      Height = 13
      Caption = 'Purregebyr og renter:'
    end
    object lblRenter: TLabel
      Left = 35
      Top = 81
      Width = 135
      Height = 13
      Caption = 'Renter og gebyr ikke betalt.'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 140
      Top = 158
      Width = 65
      Height = 17
      Alignment = taRightJustify
      DataField = 'PURREBELOP'
      DataSource = dsPurre
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 140
      Top = 126
      Width = 65
      Height = 17
      Alignment = taRightJustify
      DataField = 'SUM'
      DataSource = dsTInnbetaling
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cbOppgjort: TCheckBox
      Left = 16
      Top = 25
      Width = 201
      Height = 17
      Caption = 'Anse fakturaen som ferdig oppgjort.'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object cbNullstill: TCheckBox
      Left = 16
      Top = 64
      Width = 185
      Height = 17
      Caption = 'Nullstill purrerente og -gebyr.'
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 223
    Height = 193
    Caption = 'Dato for innbetaling:'
    TabOrder = 4
    object calDato: TMonthCalendar
      Left = 14
      Top = 22
      Width = 193
      Height = 153
      Date = 38728.897826909720000000
      ShowTodayCircle = False
      TabOrder = 0
      WeekNumbers = True
    end
  end
  object btnInnbet: TButton
    Left = 8
    Top = 289
    Width = 89
    Height = 25
    Caption = 'Innbetalinger'
    TabOrder = 1
    OnClick = btnInnbetClick
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 207
    Width = 457
    Height = 74
    Caption = 'Innbetalt bel'#248'p'
    TabOrder = 0
    object Label7: TLabel
      Left = 14
      Top = 20
      Width = 77
      Height = 13
      Caption = 'Innbetalt bel'#248'p:'
    end
    object Label4: TLabel
      Left = 100
      Top = 20
      Width = 69
      Height = 13
      Caption = 'Betalingstype:'
    end
    object Label5: TLabel
      Left = 204
      Top = 20
      Width = 54
      Height = 13
      Caption = 'Kommentar'
    end
    object DBEdit1: TDBEdit
      Left = 204
      Top = 39
      Width = 239
      Height = 21
      DataField = 'KOMMENTAR'
      DataSource = dsInnbetaling
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 100
      Top = 39
      Width = 98
      Height = 21
      DataField = 'IDBETALINGTYPE'
      DataSource = dsInnbetaling
      KeyField = 'IDBETALINGTYPE'
      ListField = 'BETALING'
      ListSource = Dm.dsBetalingType
      TabOrder = 1
    end
    object editBelop: TblsAlignEdit
      Left = 14
      Top = 39
      Width = 80
      Height = 21
      TabOrder = 0
      Text = '0,00'
      OnChange = editBelopChange
      Alignment = taRightJustify
      EditType = etFloat
      DisplayMask = '#,##0.00'
    end
  end
  object adoPurre: TADODataSet
    Connection = Dm.adoConn
    CommandText = 
      'select PURREGEBYR + PURRERENTER as PURREBELOP'#13#10'from faktura '#13#10'wh' +
      'ere IDFAKTURA = :IdFaktura;'
    Parameters = <
      item
        Name = 'IdFaktura'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 160
    Top = 4
    object adoPurrePURREBELOP: TFloatField
      FieldName = 'PURREBELOP'
      DisplayFormat = '#,##0.00'
    end
  end
  object dsPurre: TDataSource
    DataSet = adoPurre
    Left = 192
    Top = 4
  end
  object adoTInnbetaling: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select SUM(BELOP) from INNBETALING'#13#10'where IDFAKTURA = :IdFaktura' +
      ';'
    Parameters = <
      item
        Name = 'IdFaktura'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 160
    Top = 36
    object adoTInnbetalingSUM: TFloatField
      FieldName = 'SUM'
      DisplayFormat = '#,##0.00'
    end
  end
  object dsTInnbetaling: TDataSource
    DataSet = adoTInnbetaling
    Left = 192
    Top = 36
  end
  object adoInnbetaling: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 'select * from INNBETALING'#13#10'where IDINNBETALING = -1;'
    Parameters = <>
    Left = 160
    Top = 288
    object adoInnbetalingIDINNBETALING: TIntegerField
      FieldName = 'IDINNBETALING'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoInnbetalingIDFAKTURA: TIntegerField
      FieldName = 'IDFAKTURA'
    end
    object adoInnbetalingDATO: TDateField
      FieldName = 'DATO'
    end
    object adoInnbetalingBELOP: TFloatField
      FieldName = 'BELOP'
    end
    object adoInnbetalingKOMMENTAR: TStringField
      FieldName = 'KOMMENTAR'
      Size = 60
    end
    object adoInnbetalingIDBILAG: TIntegerField
      FieldName = 'IDBILAG'
    end
    object adoInnbetalingIDBETALINGTYPE: TIntegerField
      FieldName = 'IDBETALINGTYPE'
    end
  end
  object dspInnbetaling: TDataSetProvider
    DataSet = adoInnbetaling
    UpdateMode = upWhereKeyOnly
    Left = 192
    Top = 288
  end
  object cdsInnbetaling: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInnbetaling'
    OnNewRecord = cdsInnbetalingNewRecord
    Left = 224
    Top = 288
    object cdsInnbetalingIDINNBETALING: TIntegerField
      FieldName = 'IDINNBETALING'
    end
    object cdsInnbetalingIDFAKTURA: TIntegerField
      FieldName = 'IDFAKTURA'
    end
    object cdsInnbetalingDATO: TDateField
      FieldName = 'DATO'
    end
    object cdsInnbetalingBELOP: TFloatField
      FieldName = 'BELOP'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
    object cdsInnbetalingKOMMENTAR: TStringField
      FieldName = 'KOMMENTAR'
      Size = 60
    end
    object cdsInnbetalingIDBILAG: TIntegerField
      FieldName = 'IDBILAG'
    end
    object cdsInnbetalingIDBETALINGTYPE: TIntegerField
      FieldName = 'IDBETALINGTYPE'
    end
  end
  object dsInnbetaling: TDataSource
    DataSet = cdsInnbetaling
    Left = 256
    Top = 288
  end
end
