object frmKonto: TfrmKonto
  Left = 493
  Top = 263
  BorderStyle = bsDialog
  Caption = 'Registrering konto'
  ClientHeight = 286
  ClientWidth = 417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 254
    Width = 417
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      417
      32)
    object btnAvbryt: TButton
      Left = 323
      Top = 0
      Width = 83
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Avbryt'
      ModalResult = 2
      TabOrder = 1
    end
    object btnOK: TButton
      Left = 235
      Top = 0
      Width = 83
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = btnOKClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 34
    Align = alTop
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 2
    object TBXDock1: TTBXDock
      Left = 0
      Top = 0
      Width = 417
      Height = 34
      object TBXToolbar1: TTBXToolbar
        Left = 0
        Top = 0
        Caption = 'TBXToolbar1'
        Images = Dm.ImageList24
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object TBXItem7: TTBXItem
          Action = acNy
        end
        object TBXItem6: TTBXItem
          Action = DataSetPost1
        end
        object TBXItem5: TTBXItem
          Action = DataSetCancel1
        end
        object TBXSeparatorItem1: TTBXSeparatorItem
          Blank = True
          Size = 2
        end
        object TBXItem4: TTBXItem
          Action = acFirst
        end
        object TBXItem3: TTBXItem
          Action = acPrior
        end
        object TBXItem2: TTBXItem
          Action = acNext
        end
        object TBXItem1: TTBXItem
          Action = acLast
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 34
    Width = 417
    Height = 220
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 12
      Width = 42
      Height = 13
      Caption = 'Kontonr:'
      FocusControl = dbeKontonr
    end
    object Label2: TLabel
      Left = 12
      Top = 56
      Width = 56
      Height = 13
      Caption = 'Kontonavn:'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 94
      Top = 12
      Width = 90
      Height = 13
      Caption = 'Avgiftsbehandling:'
      FocusControl = dbeKontonr
    end
    object dbeKontonr: TDBEdit
      Left = 12
      Top = 28
      Width = 77
      Height = 21
      DataField = 'KONTONR'
      DataSource = dsKonto
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 12
      Top = 72
      Width = 393
      Height = 21
      DataField = 'NAVN'
      DataSource = dsKonto
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 94
      Top = 28
      Width = 311
      Height = 21
      DataField = 'MVAKODE'
      DataSource = dsKonto
      DropDownRows = 10
      KeyField = 'MVAKODE'
      ListField = 'MVATEKST'
      ListSource = dsMva
      TabOrder = 1
    end
    object dbRes: TDBRadioGroup
      Left = 12
      Top = 104
      Width = 161
      Height = 85
      Caption = 'Krever reskontrof'#248'ring:'
      DataField = 'IDSERIE'
      DataSource = dsKonto
      Items.Strings = (
        'Ingen'
        'Kunder'
        'Leverand'#248'rer')
      ParentBackground = True
      TabOrder = 3
      Values.Strings = (
        '-'
        'KS'
        'LS')
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 188
      Top = 104
      Width = 217
      Height = 85
      Caption = 'Kontotype:'
      Columns = 2
      DataField = 'IDTYPE'
      DataSource = dsKonto
      Items.Strings = (
        'Balanse'
        'Aktiva'
        'Passiva'
        'Inntekt'
        'Kostnad')
      ParentBackground = True
      TabOrder = 4
      Values.Strings = (
        '10'
        '20'
        '30'
        '50'
        '60')
    end
    object DBCheckBox1: TDBCheckBox
      Left = 16
      Top = 200
      Width = 97
      Height = 17
      Caption = 'Inaktiv'
      DataField = 'AKTIV'
      DataSource = dsKonto
      TabOrder = 5
      ValueChecked = '0'
      ValueUnchecked = '1'
    end
  end
  object dsMaster: TDataSource
    DataSet = Dm.cdsKonto
    OnDataChange = dsMasterDataChange
    Left = 316
    Top = 36
  end
  object adoKonto: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select * from KONTO'#13#10'where IDKLIENT = :IdKlient'#13#10'and KONTONR = :' +
      'Kontonr;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Kontonr'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 232
    Top = 5
    object adoKontoIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoKontoKONTONR: TIntegerField
      FieldName = 'KONTONR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoKontoNAVN: TStringField
      FieldName = 'NAVN'
      Size = 80
    end
    object adoKontoMVAKODE: TIntegerField
      FieldName = 'MVAKODE'
    end
    object adoKontoIDSERIE: TStringField
      FieldName = 'IDSERIE'
      Size = 2
    end
    object adoKontoIDTYPE: TIntegerField
      FieldName = 'IDTYPE'
    end
    object adoKontoAKTIV: TSmallintField
      FieldName = 'AKTIV'
    end
  end
  object dspKonto: TDataSetProvider
    DataSet = adoKonto
    UpdateMode = upWhereKeyOnly
    Left = 260
    Top = 5
  end
  object cdsKonto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspKonto'
    BeforePost = cdsKontoBeforePost
    OnNewRecord = cdsKontoNewRecord
    Left = 288
    Top = 5
    object cdsKontoIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object cdsKontoKONTONR: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'KONTONR'
    end
    object cdsKontoNAVN: TStringField
      FieldName = 'NAVN'
      Size = 80
    end
    object cdsKontoMVAKODE: TIntegerField
      FieldName = 'MVAKODE'
    end
    object cdsKontoIDSERIE: TStringField
      FieldName = 'IDSERIE'
      Size = 2
    end
    object cdsKontoIDTYPE: TIntegerField
      FieldName = 'IDTYPE'
    end
    object cdsKontoAKTIV: TSmallintField
      FieldName = 'AKTIV'
    end
  end
  object dsKonto: TDataSource
    DataSet = cdsKonto
    OnDataChange = dsKontoDataChange
    Left = 316
    Top = 5
  end
  object adoMva: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select MVAKODE,'#13#10'  MVAKODE || '#39' - '#39' ||'#13#10'  BESKRIVELSE ||'#13#10'  CASE' +
      #13#10'    WHEN (M.Sats IS NULL) THEN '#39#39#13#10'    WHEN (M.Sats = 0) THEN ' +
      #39#39#13#10'    WHEN (M.Sats > 0) THEN '#39' ('#39' || CAST(CAST(Sats AS NUMERIC' +
      '(5,2)) AS VARCHAR(6)) || '#39' %)'#39#13#10'  END'#13#10'  AS MVATEKST'#13#10'from MVA M' +
      #13#10'order by MVAKODE;'
    Parameters = <>
    Left = 236
    Top = 77
  end
  object dsMva: TDataSource
    DataSet = adoMva
    Left = 268
    Top = 77
  end
  object ActionList: TActionList
    Images = Dm.ImageList24
    Left = 88
    Top = 4
    object acFirst: TDataSetFirst
      Category = 'Dataset'
      Caption = 'DataSetFirst1'
      ImageIndex = 0
      DataSource = Dm.dsKonto
    end
    object acPrior: TDataSetPrior
      Category = 'Dataset'
      Caption = 'DataSetPrior1'
      ImageIndex = 1
      DataSource = Dm.dsKonto
    end
    object acNext: TDataSetNext
      Category = 'Dataset'
      Caption = 'DataSetNext1'
      ImageIndex = 2
      DataSource = Dm.dsKonto
    end
    object acLast: TDataSetLast
      Category = 'Dataset'
      Caption = 'DataSetLast1'
      ImageIndex = 3
      DataSource = Dm.dsKonto
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      Enabled = False
      ImageIndex = 6
      DataSource = dsKonto
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      Enabled = False
      ImageIndex = 5
      DataSource = dsKonto
    end
    object acNy: TAction
      Caption = 'Ny konto'
      Hint = 'Ny konto'
      ImageIndex = 4
      ShortCut = 16462
      OnExecute = acNyExecute
    end
  end
end
