object frmService: TfrmService
  Left = 368
  Top = 373
  ActiveControl = cbBil
  BorderStyle = bsDialog
  Caption = 'Registrering av kj'#248'ret'#248'ykostnad'
  ClientHeight = 307
  ClientWidth = 400
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
  object Panel2: TPanel
    Left = 0
    Top = 277
    Width = 400
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      400
      30)
    object btnAvbryt: TButton
      Left = 303
      Top = 0
      Width = 87
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Avbryt'
      ModalResult = 2
      TabOrder = 1
    end
    object btnOK: TButton
      Left = 211
      Top = 0
      Width = 87
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&OK'
      Default = True
      TabOrder = 0
      OnClick = btnOKClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 12
    Top = 12
    Width = 377
    Height = 77
    Caption = 'Kj'#248'ret'#248'y:'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 67
      Height = 13
      Caption = 'Velg kj'#248'ret'#248'y:'
    end
    object cbBil: TComboBox
      Left = 16
      Top = 40
      Width = 345
      Height = 21
      Style = csDropDownList
      DropDownCount = 10
      TabOrder = 0
      OnChange = cbBilChange
    end
    object btnSok: TButton
      Left = 338
      Top = 40
      Width = 21
      Height = 21
      Caption = '...'
      TabOrder = 1
      Visible = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 12
    Top = 100
    Width = 377
    Height = 165
    Caption = 'Detaljer:'
    TabOrder = 1
    object Label4: TLabel
      Left = 16
      Top = 20
      Width = 57
      Height = 13
      Caption = 'Beskrivelse:'
    end
    object Label6: TLabel
      Left = 16
      Top = 64
      Width = 44
      Height = 13
      Caption = 'Kategori:'
    end
    object Label2: TLabel
      Left = 16
      Top = 108
      Width = 27
      Height = 13
      Caption = 'Dato:'
    end
    object Label3: TLabel
      Left = 241
      Top = 108
      Width = 75
      Height = 13
      Caption = 'Kilometerstand:'
    end
    object Label5: TLabel
      Left = 132
      Top = 108
      Width = 45
      Height = 13
      Caption = 'Totalpris:'
    end
    object dbeBeskrivelse: TDBEdit
      Left = 16
      Top = 36
      Width = 345
      Height = 21
      DataField = 'BESKRIVELSE'
      DataSource = dsService
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 80
      Width = 345
      Height = 21
      DataField = 'IDSERVICETYPE'
      DataSource = dsService
      KeyField = 'IDSERVICETYPE'
      ListField = 'SERVICETYPE'
      ListSource = dsServiceType
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 240
      Top = 124
      Width = 121
      Height = 21
      DataField = 'KMSTAND'
      DataSource = dsService
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 132
      Top = 124
      Width = 101
      Height = 21
      DataField = 'PRIS'
      DataSource = dsService
      TabOrder = 3
    end
    object JvDBDateTimePicker1: TJvDBDateTimePicker
      Left = 16
      Top = 124
      Width = 110
      Height = 21
      Date = 40495.768774375000000000
      Time = 40495.768774375000000000
      TabOrder = 2
      DropDownDate = 40495.000000000000000000
      DataField = 'DATO'
      DataSource = dsService
    end
  end
  object adoService: TADODataSet
    Connection = dmData.adoConn
    CommandText = 'select * from SERVICE'#13#10'where IDSERVICE = :IdService;'
    Parameters = <
      item
        Name = 'IdService'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 16
    Top = 264
    object adoServiceIDSERVICE: TIntegerField
      FieldName = 'IDSERVICE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoServiceIDBIL: TIntegerField
      FieldName = 'IDBIL'
    end
    object adoServiceIDSERVICETYPE: TIntegerField
      FieldName = 'IDSERVICETYPE'
    end
    object adoServiceDATO: TDateField
      FieldName = 'DATO'
    end
    object adoServiceKMSTAND: TIntegerField
      FieldName = 'KMSTAND'
    end
    object adoServiceBESKRIVELSE: TStringField
      FieldName = 'BESKRIVELSE'
      Size = 150
    end
    object adoServicePRIS: TBCDField
      FieldName = 'PRIS'
      Precision = 18
    end
    object adoServiceBRUKER: TStringField
      FieldName = 'BRUKER'
      Size = 10
    end
    object adoServiceREGDATE: TDateTimeField
      FieldName = 'REGDATE'
    end
  end
  object dspService: TDataSetProvider
    DataSet = adoService
    UpdateMode = upWhereKeyOnly
    Left = 48
    Top = 264
  end
  object cdsService: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspService'
    Left = 80
    Top = 264
    object cdsServiceIDSERVICE: TIntegerField
      FieldName = 'IDSERVICE'
    end
    object cdsServiceIDBIL: TIntegerField
      FieldName = 'IDBIL'
    end
    object cdsServiceIDSERVICETYPE: TIntegerField
      FieldName = 'IDSERVICETYPE'
    end
    object cdsServiceDATO: TDateField
      FieldName = 'DATO'
    end
    object cdsServiceKMSTAND: TIntegerField
      FieldName = 'KMSTAND'
    end
    object cdsServiceBESKRIVELSE: TStringField
      FieldName = 'BESKRIVELSE'
      Size = 150
    end
    object cdsServicePRIS: TBCDField
      FieldName = 'PRIS'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Precision = 18
    end
    object cdsServiceBRUKER: TStringField
      FieldName = 'BRUKER'
      Size = 10
    end
    object cdsServiceREGDATE: TDateTimeField
      FieldName = 'REGDATE'
    end
  end
  object dsService: TDataSource
    DataSet = cdsService
    Left = 112
    Top = 264
  end
  object adoBil: TADODataSet
    Connection = dmData.adoConn
    CursorType = ctStatic
    CommandText = 
      'select REGNR || '#39'   '#39' || MERKE as BILMERKE, IDBIL '#13#10'from BIL'#13#10'wh' +
      'ere AKTIV = 1'#13#10'order by MERKE;'
    Parameters = <>
    Left = 284
    Top = 48
    object adoBilBILMERKE: TStringField
      FieldName = 'BILMERKE'
      Size = 51
    end
    object adoBilIDBIL: TIntegerField
      FieldName = 'IDBIL'
    end
  end
  object adoServiceType: TADODataSet
    Connection = dmData.adoConn
    CommandText = 'select * from SERVICETYPE'
    Parameters = <>
    Left = 324
    Top = 224
  end
  object dsServiceType: TDataSource
    DataSet = adoServiceType
    Left = 356
    Top = 224
  end
end
