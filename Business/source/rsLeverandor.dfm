object frmLeverandor: TfrmLeverandor
  Left = 374
  Top = 327
  ActiveControl = dbeNavn
  BorderStyle = bsDialog
  Caption = 'Registrering leverand'#248'r'
  ClientHeight = 523
  ClientWidth = 611
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
    Top = 491
    Width = 611
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      611
      32)
    object Label15: TLabel
      Left = 8
      Top = 0
      Width = 43
      Height = 11
      Caption = 'Opprettet:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7105644
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 8
      Top = 12
      Width = 47
      Height = 11
      Caption = 'Sist endret:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7105644
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 60
      Top = 0
      Width = 36
      Height = 11
      AutoSize = True
      DataField = 'REGDATO'
      DataSource = dsLev
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7105644
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 60
      Top = 12
      Width = 36
      Height = 11
      AutoSize = True
      DataField = 'ENDRETDATO'
      DataSource = dsLev
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7105644
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnAvbryt: TButton
      Left = 523
      Top = 2
      Width = 83
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Avbryt'
      ModalResult = 2
      TabOrder = 1
    end
    object btnOK: TButton
      Left = 435
      Top = 2
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
    Top = 34
    Width = 611
    Height = 457
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 0
    object Pc: TPageControl
      Left = 5
      Top = 5
      Width = 601
      Height = 447
      ActivePage = tsKunde
      Align = alClient
      Images = Dm.ImageListPC
      TabOrder = 0
      OnChange = PcChange
      object tsKunde: TTabSheet
        Caption = 'Generelt'
        ImageIndex = -1
        object GroupBox1: TGroupBox
          Left = 8
          Top = 8
          Width = 379
          Height = 269
          Caption = 'Navn && Adresse:'
          TabOrder = 0
          object Label1: TLabel
            Left = 15
            Top = 20
            Width = 29
            Height = 13
            Caption = 'Navn:'
          end
          object Label13: TLabel
            Left = 15
            Top = 69
            Width = 63
            Height = 13
            Caption = 'Postadresse:'
          end
          object Label14: TLabel
            Left = 15
            Top = 166
            Width = 75
            Height = 13
            Caption = 'Bes'#248'ksadresse:'
          end
          object Label2: TLabel
            Left = 291
            Top = 20
            Width = 69
            Height = 13
            Caption = 'Leverand'#248'rnr:'
          end
          object dbeNavn: TDBEdit
            Left = 14
            Top = 36
            Width = 269
            Height = 21
            DataField = 'NAVN'
            DataSource = dsLev
            TabOrder = 0
          end
          object DBEdit10: TDBEdit
            Left = 14
            Top = 85
            Width = 349
            Height = 21
            DataField = 'POSTADR1'
            DataSource = dsLev
            TabOrder = 2
          end
          object DBEdit11: TDBEdit
            Left = 14
            Top = 133
            Width = 117
            Height = 21
            DataField = 'POSTNR'
            DataSource = dsLev
            TabOrder = 4
          end
          object DBEdit12: TDBEdit
            Left = 134
            Top = 133
            Width = 201
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'POSTSTED'
            DataSource = dsLev
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit13: TDBEdit
            Left = 14
            Top = 109
            Width = 349
            Height = 21
            DataField = 'POSTADR2'
            DataSource = dsLev
            TabOrder = 3
          end
          object DBEdit14: TDBEdit
            Left = 14
            Top = 182
            Width = 349
            Height = 21
            DataField = 'BESOKADR1'
            DataSource = dsLev
            TabOrder = 7
          end
          object DBEdit15: TDBEdit
            Left = 14
            Top = 206
            Width = 349
            Height = 21
            DataField = 'BESOKADR2'
            DataSource = dsLev
            TabOrder = 8
          end
          object DBEdit16: TDBEdit
            Left = 14
            Top = 230
            Width = 117
            Height = 21
            DataField = 'BESOKPOSTNR'
            DataSource = dsLev
            TabOrder = 9
          end
          object DBEdit17: TDBEdit
            Left = 134
            Top = 230
            Width = 201
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'BESOKPSTED'
            DataSource = dsLev
            ReadOnly = True
            TabOrder = 10
          end
          object Button1: TButton
            Left = 338
            Top = 133
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 6
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 338
            Top = 230
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 11
            OnClick = Button2Click
          end
          object DBEdit2: TDBEdit
            Left = 290
            Top = 36
            Width = 73
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'KONTAKTNR'
            DataSource = dsLev
            ReadOnly = True
            TabOrder = 1
          end
        end
        object GroupBox3: TGroupBox
          Left = 8
          Top = 292
          Width = 379
          Height = 113
          Caption = 'Internett:'
          TabOrder = 1
          object Label3: TLabel
            Left = 14
            Top = 20
            Width = 61
            Height = 13
            Caption = 'Hjemmeside:'
          end
          object Label4: TLabel
            Left = 14
            Top = 60
            Width = 35
            Height = 13
            Caption = 'E-post:'
          end
          object DBEdit3: TDBEdit
            Left = 14
            Top = 36
            Width = 349
            Height = 21
            DataField = 'WEB'
            DataSource = dsLev
            TabOrder = 0
          end
          object DBEdit4: TDBEdit
            Left = 14
            Top = 76
            Width = 349
            Height = 21
            DataField = 'EPOST'
            DataSource = dsLev
            TabOrder = 1
          end
        end
        object GroupBox4: TGroupBox
          Left = 404
          Top = 212
          Width = 178
          Height = 193
          Caption = 'Kontaktinfo:'
          TabOrder = 3
          object Label5: TLabel
            Left = 14
            Top = 20
            Width = 40
            Height = 13
            Caption = 'Telefon:'
          end
          object Label6: TLabel
            Left = 14
            Top = 100
            Width = 44
            Height = 13
            Caption = 'Telefaks:'
          end
          object Label7: TLabel
            Left = 14
            Top = 60
            Width = 28
            Height = 13
            Caption = 'Mobil:'
          end
          object Label8: TLabel
            Left = 14
            Top = 140
            Width = 74
            Height = 13
            Caption = 'Kontaktperson:'
          end
          object DBEdit5: TDBEdit
            Left = 14
            Top = 36
            Width = 149
            Height = 21
            DataField = 'TELEFON'
            DataSource = dsLev
            TabOrder = 0
          end
          object DBEdit6: TDBEdit
            Left = 14
            Top = 116
            Width = 149
            Height = 21
            DataField = 'FAKS'
            DataSource = dsLev
            TabOrder = 2
          end
          object DBEdit7: TDBEdit
            Left = 14
            Top = 76
            Width = 149
            Height = 21
            DataField = 'MOBIL'
            DataSource = dsLev
            TabOrder = 1
          end
          object DBEdit8: TDBEdit
            Left = 14
            Top = 156
            Width = 149
            Height = 21
            DataField = 'KONTAKT'
            DataSource = dsLev
            TabOrder = 3
          end
        end
        object GroupBox5: TGroupBox
          Left = 404
          Top = 8
          Width = 178
          Height = 193
          Caption = 'Informasjon:'
          TabOrder = 2
          object Label9: TLabel
            Left = 14
            Top = 100
            Width = 93
            Height = 13
            Caption = 'Leverand'#248'rgruppe:'
          end
          object Label11: TLabel
            Left = 14
            Top = 20
            Width = 82
            Height = 13
            Caption = 'Organisasjonsnr:'
          end
          object Label12: TLabel
            Left = 14
            Top = 60
            Width = 27
            Height = 13
            Caption = 'Land:'
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 14
            Top = 116
            Width = 149
            Height = 21
            DataField = 'IDGRUPPE'
            DataSource = dsLev
            DropDownAlign = daRight
            KeyField = 'IDGRUPPE'
            ListField = 'GRUPPE'
            ListSource = dsGruppe
            NullValueKey = 46
            TabOrder = 2
          end
          object dbeOrgnr: TDBEdit
            Left = 14
            Top = 36
            Width = 149
            Height = 21
            DataField = 'ORGNR'
            DataSource = dsLev
            TabOrder = 0
            OnChange = dbeOrgnrChange
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 14
            Top = 76
            Width = 149
            Height = 21
            DataField = 'LAND'
            DataSource = dsLev
            KeyField = 'LAND'
            ListField = 'LAND'
            ListSource = dsLand
            TabOrder = 1
          end
          object DBCheckBox1: TDBCheckBox
            Left = 16
            Top = 164
            Width = 97
            Height = 17
            Caption = 'Aktiv'
            DataField = 'AKTIV'
            DataSource = dsLev
            TabOrder = 3
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
      end
      object tsMerknader: TTabSheet
        Caption = '&Merknader'
        DesignSize = (
          593
          418)
        object GroupBox2: TGroupBox
          Left = 8
          Top = 7
          Width = 574
          Height = 398
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Kundeinformasjon:'
          TabOrder = 0
          DesignSize = (
            574
            398)
          object DBMemo1: TDBMemo
            Left = 14
            Top = 24
            Width = 546
            Height = 358
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataField = 'INFO'
            DataSource = dsLev
            ScrollBars = ssVertical
            TabOrder = 0
            ExplicitHeight = 349
          end
        end
      end
      object tsOkonomi: TTabSheet
        Caption = 'Kreditt'
        ImageIndex = -1
        object GroupBox6: TGroupBox
          Left = 8
          Top = 8
          Width = 309
          Height = 81
          Caption = 'Betingelser:'
          TabOrder = 0
          object Label17: TLabel
            Left = 16
            Top = 20
            Width = 67
            Height = 13
            Caption = 'Forfallsdager:'
          end
          object Label18: TLabel
            Left = 96
            Top = 20
            Width = 80
            Height = 13
            Caption = 'Innvilget kreditt:'
          end
          object Label19: TLabel
            Left = 208
            Top = 20
            Width = 56
            Height = 13
            Caption = 'Rabatt i %:'
          end
          object DBEdit18: TDBEdit
            Left = 16
            Top = 36
            Width = 69
            Height = 21
            DataField = 'FORFALLSDAGER'
            DataSource = dsLev
            TabOrder = 0
          end
          object DBEdit19: TDBEdit
            Left = 96
            Top = 36
            Width = 101
            Height = 21
            DataField = 'KREDITT'
            DataSource = dsLev
            TabOrder = 1
          end
          object DBEdit20: TDBEdit
            Left = 208
            Top = 36
            Width = 73
            Height = 21
            DataField = 'RABATT'
            DataSource = dsLev
            TabOrder = 2
          end
        end
      end
      object tsKontakt: TTabSheet
        Caption = 'Kontakter'
        ImageIndex = -1
        DesignSize = (
          593
          418)
        object GroupBox11: TGroupBox
          Left = 8
          Top = 5
          Width = 574
          Height = 398
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Person informasjon:'
          TabOrder = 0
          object JvDBGrid1: TJvDBGrid
            Left = 14
            Top = 24
            Width = 545
            Height = 359
            DataSource = dsPerson
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            AutoSizeColumns = True
            AutoSizeColumnIndex = 4
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'NAVN'
                Title.Caption = 'Navn'
                Width = 130
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EPOST'
                Title.Caption = 'E-post'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TELEFON'
                Title.Caption = 'Telefon'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MOBIL'
                Title.Caption = 'Mobil'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INFO'
                Title.Caption = 'Informasjon'
                Width = 164
                Visible = True
              end>
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 611
    Height = 34
    Align = alTop
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 2
    object TBXDock1: TTBXDock
      Left = 0
      Top = 0
      Width = 611
      Height = 34
      object TBXToolbar1: TTBXToolbar
        Left = 0
        Top = 0
        Caption = 'TBXToolbar1'
        DockMode = dmCannotFloatOrChangeDocks
        Images = Dm.ImageList24
        TabOrder = 0
        object TBXItem6: TTBXItem
          Action = acNy
        end
        object TBXItem5: TTBXItem
          Action = DataSetCancel1
        end
        object TBXItem7: TTBXItem
          Action = DataSetPost1
        end
        object TBXSeparatorItem1: TTBXSeparatorItem
          Blank = True
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
        object TBXSeparatorItem2: TTBXSeparatorItem
          Blank = True
        end
        object TBXItem9: TTBXItem
          Action = acSettings
        end
        object TBXItem8: TTBXItem
          Action = acWebInfo
        end
      end
    end
  end
  object ActionList1: TActionList
    Images = Dm.ImageList24
    Left = 573
    Top = 3
    object acFirst: TDataSetFirst
      Category = 'Dataset'
      Caption = 'DataSetFirst1'
      ImageIndex = 0
      DataSource = Dm.dsLev
    end
    object acPrior: TDataSetPrior
      Category = 'Dataset'
      Caption = 'DataSetPrior1'
      ImageIndex = 1
      DataSource = Dm.dsLev
    end
    object acNext: TDataSetNext
      Category = 'Dataset'
      Caption = 'DataSetNext1'
      ImageIndex = 2
      DataSource = Dm.dsLev
    end
    object acLast: TDataSetLast
      Category = 'Dataset'
      Caption = 'DataSetLast1'
      ImageIndex = 3
      DataSource = Dm.dsLev
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      Enabled = False
      ImageIndex = 5
      DataSource = dsLev
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      Enabled = False
      ImageIndex = 6
      DataSource = dsLev
    end
    object acNy: TAction
      Category = 'Dataset'
      Caption = 'Ny'
      ImageIndex = 4
      OnExecute = acNyExecute
    end
    object acWebInfo: TAction
      Caption = 'acWebInfo'
      ImageIndex = 7
      OnExecute = acWebInfoExecute
    end
    object acSettings: TAction
      Caption = 'Grupper'
      Hint = 'Endre grupper'
      ImageIndex = 8
      OnExecute = acSettingsExecute
    end
  end
  object adoLev: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select * from KONTAKT'#13#10'where IDKLIENT = :IdKlient'#13#10'and KONTAKTNR' +
      ' = :Knr;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'Knr'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 10720
      end>
    Left = 292
    Top = 492
    object adoLevIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoLevKONTAKTNR: TIntegerField
      FieldName = 'KONTAKTNR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoLevIDSERIE: TStringField
      FieldName = 'IDSERIE'
      Size = 2
    end
    object adoLevNAVN: TStringField
      FieldName = 'NAVN'
      Size = 80
    end
    object adoLevPOSTADR1: TStringField
      FieldName = 'POSTADR1'
      Size = 60
    end
    object adoLevPOSTADR2: TStringField
      FieldName = 'POSTADR2'
      Size = 60
    end
    object adoLevPOSTNR: TStringField
      FieldName = 'POSTNR'
      Size = 6
    end
    object adoLevBESOKADR1: TStringField
      FieldName = 'BESOKADR1'
      Size = 60
    end
    object adoLevBESOKADR2: TStringField
      FieldName = 'BESOKADR2'
      Size = 60
    end
    object adoLevBESOKPOSTNR: TStringField
      FieldName = 'BESOKPOSTNR'
      Size = 6
    end
    object adoLevLAND: TStringField
      FieldName = 'LAND'
      Size = 25
    end
    object adoLevORGNR: TStringField
      FieldName = 'ORGNR'
      Size = 25
    end
    object adoLevTELEFON: TStringField
      FieldName = 'TELEFON'
      Size = 14
    end
    object adoLevFAKS: TStringField
      FieldName = 'FAKS'
      Size = 14
    end
    object adoLevMOBIL: TStringField
      FieldName = 'MOBIL'
      Size = 14
    end
    object adoLevEPOST: TStringField
      FieldName = 'EPOST'
      Size = 50
    end
    object adoLevWEB: TStringField
      FieldName = 'WEB'
      Size = 50
    end
    object adoLevBANKKONTO: TStringField
      FieldName = 'BANKKONTO'
      Size = 15
    end
    object adoLevKONTAKT: TStringField
      FieldName = 'KONTAKT'
      Size = 30
    end
    object adoLevFORFALLSDAGER: TIntegerField
      FieldName = 'FORFALLSDAGER'
    end
    object adoLevKREDITT: TFloatField
      FieldName = 'KREDITT'
    end
    object adoLevRABATT: TFloatField
      FieldName = 'RABATT'
    end
    object adoLevINFO: TMemoField
      FieldName = 'INFO'
      BlobType = ftMemo
    end
    object adoLevIDGRUPPE: TIntegerField
      FieldName = 'IDGRUPPE'
    end
    object adoLevIDKUNDETYPE: TIntegerField
      FieldName = 'IDKUNDETYPE'
    end
    object adoLevIDUTSENDELSE: TIntegerField
      FieldName = 'IDUTSENDELSE'
    end
    object adoLevREGDATO: TDateTimeField
      FieldName = 'REGDATO'
    end
    object adoLevENDRETDATO: TDateTimeField
      FieldName = 'ENDRETDATO'
    end
    object adoLevAKTIV: TSmallintField
      FieldName = 'AKTIV'
    end
  end
  object dspLev: TDataSetProvider
    DataSet = adoLev
    UpdateMode = upWhereKeyOnly
    Left = 324
    Top = 492
  end
  object cdsLev: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLev'
    Left = 356
    Top = 492
    object cdsLevIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object cdsLevKONTAKTNR: TIntegerField
      FieldName = 'KONTAKTNR'
    end
    object cdsLevIDSERIE: TStringField
      FieldName = 'IDSERIE'
      Size = 2
    end
    object cdsLevNAVN: TStringField
      FieldName = 'NAVN'
      Size = 80
    end
    object cdsLevPOSTADR1: TStringField
      FieldName = 'POSTADR1'
      Size = 60
    end
    object cdsLevPOSTADR2: TStringField
      FieldName = 'POSTADR2'
      Size = 60
    end
    object cdsLevPOSTNR: TStringField
      FieldName = 'POSTNR'
      OnSetText = cdsLevPOSTNRSetText
      Size = 6
    end
    object cdsLevBESOKADR1: TStringField
      FieldName = 'BESOKADR1'
      Size = 60
    end
    object cdsLevBESOKADR2: TStringField
      FieldName = 'BESOKADR2'
      Size = 60
    end
    object cdsLevBESOKPOSTNR: TStringField
      FieldName = 'BESOKPOSTNR'
      OnSetText = cdsLevBESOKPOSTNRSetText
      Size = 6
    end
    object cdsLevLAND: TStringField
      FieldName = 'LAND'
      Size = 25
    end
    object cdsLevORGNR: TStringField
      FieldName = 'ORGNR'
      Size = 25
    end
    object cdsLevTELEFON: TStringField
      FieldName = 'TELEFON'
      Size = 14
    end
    object cdsLevFAKS: TStringField
      FieldName = 'FAKS'
      Size = 14
    end
    object cdsLevMOBIL: TStringField
      FieldName = 'MOBIL'
      Size = 14
    end
    object cdsLevEPOST: TStringField
      FieldName = 'EPOST'
      Size = 50
    end
    object cdsLevWEB: TStringField
      FieldName = 'WEB'
      Size = 50
    end
    object cdsLevBANKKONTO: TStringField
      FieldName = 'BANKKONTO'
      Size = 15
    end
    object cdsLevKONTAKT: TStringField
      FieldName = 'KONTAKT'
      Size = 30
    end
    object cdsLevINFO: TMemoField
      FieldName = 'INFO'
      BlobType = ftMemo
    end
    object cdsLevIDGRUPPE: TIntegerField
      FieldName = 'IDGRUPPE'
    end
    object cdsLevIDKUNDETYPE: TIntegerField
      FieldName = 'IDKUNDETYPE'
    end
    object cdsLevREGDATO: TDateTimeField
      FieldName = 'REGDATO'
    end
    object cdsLevENDRETDATO: TDateTimeField
      FieldName = 'ENDRETDATO'
    end
    object cdsLevPOSTSTED: TStringField
      FieldKind = fkLookup
      FieldName = 'POSTSTED'
      LookupDataSet = Dm.cdsPostnr
      LookupKeyFields = 'POSTNR'
      LookupResultField = 'POSTSTED'
      KeyFields = 'POSTNR'
      Size = 30
      Lookup = True
    end
    object cdsLevBESOKPSTED: TStringField
      FieldKind = fkLookup
      FieldName = 'BESOKPSTED'
      LookupDataSet = Dm.cdsPostnr
      LookupKeyFields = 'POSTNR'
      LookupResultField = 'POSTSTED'
      KeyFields = 'BESOKPOSTNR'
      Size = 30
      Lookup = True
    end
    object cdsLevFORFALLSDAGER: TIntegerField
      FieldName = 'FORFALLSDAGER'
    end
    object cdsLevRABATT: TFloatField
      FieldName = 'RABATT'
    end
    object cdsLevIDUTSENDELSE: TIntegerField
      FieldName = 'IDUTSENDELSE'
    end
    object cdsLevKREDITT: TFloatField
      FieldName = 'KREDITT'
    end
    object cdsLevAKTIV: TSmallintField
      FieldName = 'AKTIV'
    end
  end
  object dsLev: TDataSource
    DataSet = cdsLev
    OnDataChange = dsLevDataChange
    Left = 388
    Top = 492
  end
  object adoGruppe: TADODataSet
    Connection = Dm.adoConn
    CommandText = 
      'select IDGRUPPE, GRUPPE'#13#10'from GRUPPE'#13#10'where IDSERIE = '#39'LS'#39' '#13#10'and' +
      ' IDKLIENT = :IdKlient'#13#10'order by GRUPPE'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 521
    Top = 191
  end
  object dsGruppe: TDataSource
    DataSet = adoGruppe
    Left = 553
    Top = 191
  end
  object dsMasterLev: TDataSource
    DataSet = Dm.cdsLev
    OnDataChange = dsMasterLevDataChange
    Left = 540
    Top = 4
  end
  object adoLand: TADODataSet
    Connection = Dm.adoConn
    CommandText = 'select LAND '#13#10'from LAND'#13#10'order by LAND'
    Parameters = <>
    Left = 521
    Top = 156
  end
  object dsLand: TDataSource
    DataSet = adoLand
    Left = 553
    Top = 156
  end
  object adoPerson: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select * '#13#10'from PERSON'#13#10'where IDKLIENT = :IdKlient'#13#10'and KONTAKTN' +
      'R = :Kontaktnr;'
    Parameters = <
      item
        Name = 'IdKlient'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Kontaktnr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 56
    Top = 392
    object adoPersonIDPERSON: TIntegerField
      FieldName = 'IDPERSON'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoPersonIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object adoPersonKONTAKTNR: TIntegerField
      FieldName = 'KONTAKTNR'
    end
    object adoPersonNAVN: TStringField
      FieldName = 'NAVN'
      Size = 80
    end
    object adoPersonEPOST: TStringField
      FieldName = 'EPOST'
      Size = 50
    end
    object adoPersonTELEFON: TStringField
      FieldName = 'TELEFON'
      Size = 14
    end
    object adoPersonMOBIL: TStringField
      FieldName = 'MOBIL'
      Size = 14
    end
    object adoPersonINFO: TStringField
      FieldName = 'INFO'
      Size = 100
    end
  end
  object dspPerson: TDataSetProvider
    DataSet = adoPerson
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 392
  end
  object cdsPerson: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPerson'
    OnNewRecord = cdsPersonNewRecord
    Left = 120
    Top = 392
    object cdsPersonIDPERSON: TIntegerField
      FieldName = 'IDPERSON'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPersonIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object cdsPersonKONTAKTNR: TIntegerField
      FieldName = 'KONTAKTNR'
    end
    object cdsPersonNAVN: TStringField
      FieldName = 'NAVN'
      Size = 80
    end
    object cdsPersonEPOST: TStringField
      FieldName = 'EPOST'
      Size = 50
    end
    object cdsPersonTELEFON: TStringField
      FieldName = 'TELEFON'
      Size = 14
    end
    object cdsPersonMOBIL: TStringField
      FieldName = 'MOBIL'
      Size = 14
    end
    object cdsPersonINFO: TStringField
      FieldName = 'INFO'
      Size = 100
    end
  end
  object dsPerson: TDataSource
    DataSet = cdsPerson
    Left = 152
    Top = 392
  end
end
