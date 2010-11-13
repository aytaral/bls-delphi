object frmOrdre: TfrmOrdre
  Left = 235
  Top = 320
  BorderStyle = bsDialog
  Caption = 'Registrering tilbud & ordre'
  ClientHeight = 550
  ClientWidth = 828
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 828
    Height = 34
    Align = alTop
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 0
    object TBXDock1: TTBXDock
      Left = 0
      Top = 0
      Width = 828
      Height = 34
      object TBXToolbar1: TTBXToolbar
        Left = 0
        Top = 0
        Caption = 'Verkt'#248'ylinje'
        Images = ImageList
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object TBXItem1: TTBXItem
          Action = acNew
        end
        object TBXItem2: TTBXItem
          Action = acInsert
        end
        object TBXItem3: TTBXItem
          Action = acDelete
        end
        object TBXSeparatorItem1: TTBXSeparatorItem
        end
        object TBXItem5: TTBXItem
          Action = acUp
        end
        object TBXItem4: TTBXItem
          Action = acDown
        end
        object TBXSeparatorItem2: TTBXSeparatorItem
        end
        object TBXItem6: TTBXItem
          Action = acPrisInk
        end
        object TBXItem9: TTBXItem
          Action = acSort
        end
        object TBXItem10: TTBXItem
          Action = acFooter
        end
        object TBXSeparatorItem4: TTBXSeparatorItem
        end
        object TBXItem12: TTBXItem
          Action = acProdLinjer
        end
        object TBXSeparatorItem5: TTBXSeparatorItem
        end
        object TBXItem11: TTBXItem
          Action = acRenum
        end
        object TBXItem7: TTBXItem
          Action = acReferanse
        end
        object TBXSeparatorItem3: TTBXSeparatorItem
        end
        object TBXItem8: TTBXItem
          Action = acVisInn
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 34
    Width = 828
    Height = 452
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 1
    object pnlInfo: TPanel
      Left = 8
      Top = 8
      Width = 812
      Height = 113
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label4: TLabel
        Left = 424
        Top = 19
        Width = 38
        Height = 13
        Caption = 'Ordrenr'
      end
      object Label1: TLabel
        Left = 424
        Top = 43
        Width = 44
        Height = 13
        Caption = 'Kundenr.'
      end
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 84
        Height = 13
        Caption = 'Leveringsadresse'
      end
      object Label3: TLabel
        Left = 208
        Top = 0
        Width = 75
        Height = 13
        Caption = 'Fakturaadresse'
      end
      object Label9: TLabel
        Left = 424
        Top = 67
        Width = 50
        Height = 13
        Caption = 'Ordredato'
      end
      object Label8: TLabel
        Left = 596
        Top = 43
        Width = 50
        Height = 13
        Caption = 'Referanse'
      end
      object Label7: TLabel
        Left = 596
        Top = 67
        Width = 37
        Height = 13
        Caption = 'V'#229'r ref.'
      end
      object Label5: TLabel
        Left = 596
        Top = 91
        Width = 49
        Height = 13
        Caption = 'Deres ref.'
      end
      object Label6: TLabel
        Left = 424
        Top = 91
        Width = 41
        Height = 13
        Caption = 'Levering'
      end
      object Label10: TLabel
        Left = 596
        Top = 19
        Width = 31
        Height = 13
        Caption = 'Status'
      end
      object dbeOrdrenr: TDBEdit
        Left = 480
        Top = 16
        Width = 73
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'ORDRENR'
        DataSource = dsOrdre
        ReadOnly = True
        TabOrder = 0
      end
      object dbeKundenr: TDBEdit
        Left = 480
        Top = 40
        Width = 73
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'KUNDENR'
        DataSource = dsOrdre
        ReadOnly = True
        TabOrder = 1
      end
      object btnFinnKunde: TButton
        Left = 556
        Top = 40
        Width = 21
        Height = 21
        Caption = '...'
        TabOrder = 2
        OnClick = btnFinnKundeClick
      end
      object dbmLevAdr: TDBMemo
        Left = 0
        Top = 16
        Width = 201
        Height = 93
        TabStop = False
        Color = 16644338
        DataField = 'LEVERINGADR'
        DataSource = dsOrdre
        TabOrder = 3
      end
      object dbmFaktAdr: TDBMemo
        Left = 208
        Top = 16
        Width = 201
        Height = 93
        TabStop = False
        Color = 16644338
        DataField = 'FAKTURAADR'
        DataSource = dsOrdre
        TabOrder = 4
        OnChange = dbmFaktAdrChange
      end
      object DBEdit5: TDBEdit
        Left = 652
        Top = 40
        Width = 160
        Height = 21
        DataField = 'REFNR'
        DataSource = dsOrdre
        TabOrder = 6
      end
      object DBEdit2: TDBEdit
        Left = 652
        Top = 64
        Width = 160
        Height = 21
        DataField = 'EKSTERNREF'
        DataSource = dsOrdre
        TabOrder = 7
      end
      object dbcRef: TDBComboBox
        Left = 652
        Top = 88
        Width = 160
        Height = 21
        DataField = 'INTERNREF'
        DataSource = dsOrdre
        TabOrder = 8
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 652
        Top = 16
        Width = 160
        Height = 21
        DataField = 'IDORDRESTATUS'
        DataSource = dsOrdre
        KeyField = 'IDORDRESTATUS'
        ListField = 'STATUSTEKST'
        ListSource = dsStatus
        TabOrder = 5
      end
      object dbtOrdreDato: TJvDBDateTimePicker
        Left = 480
        Top = 64
        Width = 97
        Height = 21
        Date = 40495.735261770830000000
        Time = 40495.735261770830000000
        TabOrder = 9
        DropDownDate = 40495.000000000000000000
      end
      object dbtLevering: TJvDBDateTimePicker
        Left = 480
        Top = 88
        Width = 97
        Height = 21
        Date = 40495.735261770830000000
        Time = 40495.735261770830000000
        TabOrder = 10
        DropDownDate = 40495.000000000000000000
      end
    end
    object Panel5: TPanel
      Left = 8
      Top = 121
      Width = 812
      Height = 9
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
    end
    object dbgLinje: TJvDBGrid
      Left = 8
      Top = 130
      Width = 812
      Height = 314
      Align = alClient
      DataSource = dsLinje
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnColExit = dbgLinjeColExit
      OnEditButtonClick = acProdSokExecute
      AutoSizeColumns = True
      AutoSizeColumnIndex = 1
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'PRODNR'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TEKST'
          Width = 303
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENHET'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ANTALL'
          Title.Caption = 'Antall'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LEVERT'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INNPRIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MVA'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RABATT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 40
          Visible = True
        end
        item
          Color = clCream
          Expanded = False
          FieldName = 'SUMEKS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ReadOnly = True
          Width = 58
          Visible = True
        end
        item
          Color = clCream
          Expanded = False
          FieldName = 'SUMINK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ReadOnly = True
          Width = 58
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 486
    Width = 828
    Height = 64
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 2
    object Panel6: TPanel
      Left = 8
      Top = 0
      Width = 373
      Height = 57
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 2
      object Label13: TLabel
        Left = 12
        Top = 8
        Width = 43
        Height = 13
        Caption = 'Sum eks:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5197647
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 12
        Top = 22
        Width = 24
        Height = 13
        Caption = 'Mva:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5197647
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 12
        Top = 36
        Width = 32
        Height = 13
        Caption = 'Totalt:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5197647
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 52
        Top = 8
        Width = 65
        Height = 17
        Alignment = taRightJustify
        DataField = 'SUMEKS'
        DataSource = dsOrdre
        Transparent = True
      end
      object DBText2: TDBText
        Left = 52
        Top = 22
        Width = 65
        Height = 17
        Alignment = taRightJustify
        DataField = 'SUMMVA'
        DataSource = dsOrdre
        Transparent = True
      end
      object DBText3: TDBText
        Left = 52
        Top = 36
        Width = 65
        Height = 17
        Alignment = taRightJustify
        DataField = 'SUMTOT'
        DataSource = dsOrdre
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 172
        Top = 8
        Width = 37
        Height = 13
        Caption = 'Rabatt:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5197647
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 172
        Top = 22
        Width = 33
        Height = 13
        Caption = 'Avgift:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5197647
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 224
        Top = 8
        Width = 65
        Height = 17
        Alignment = taRightJustify
        DataField = 'SUMRAB'
        DataSource = dsOrdre
        Transparent = True
      end
      object DBText5: TDBText
        Left = 224
        Top = 22
        Width = 65
        Height = 17
        Alignment = taRightJustify
        DataField = 'SUMAVG'
        DataSource = dsOrdre
        Transparent = True
      end
      object Label21: TLabel
        Left = 172
        Top = 36
        Width = 53
        Height = 13
        Caption = 'Avrunding:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5197647
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText9: TDBText
        Left = 224
        Top = 36
        Width = 65
        Height = 17
        Alignment = taRightJustify
        DataField = 'AVRUNDING'
        DataSource = dsOrdre
        Transparent = True
      end
    end
    object btnAvbryt: TButton
      Left = 735
      Top = 31
      Width = 85
      Height = 25
      Cancel = True
      Caption = '&Avbryt'
      ModalResult = 2
      TabOrder = 1
    end
    object btnOK: TButton
      Left = 735
      Top = 0
      Width = 85
      Height = 25
      Caption = '&OK'
      Default = True
      Enabled = False
      ModalResult = 1
      TabOrder = 0
      OnClick = btnOKClick
    end
    object pnlFortjeneste: TPanel
      Left = 390
      Top = 0
      Width = 339
      Height = 57
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 3
      object lblFortjenesteP: TLabel
        Left = 115
        Top = 36
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00 %'
      end
      object Label20: TLabel
        Left = 12
        Top = 36
        Width = 74
        Height = 13
        Caption = 'Fortjeneste %:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5197647
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 12
        Top = 22
        Width = 60
        Height = 13
        Caption = 'Fortjeneste:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5197647
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 12
        Top = 8
        Width = 58
        Height = 13
        Caption = 'Sum innpris:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5197647
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblSumInn: TLabel
        Left = 115
        Top = 8
        Width = 22
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
      end
      object lblFortjeneste: TLabel
        Left = 115
        Top = 22
        Width = 22
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
      end
    end
  end
  object ActionList: TActionList
    Images = ImageList
    Left = 664
    Top = 8
    object acNew: TAction
      Caption = 'Nytt produkt'
      Hint = 'Legg til nytt produkt'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = acNewExecute
    end
    object acInsert: TAction
      Caption = 'Sett inn ordrelinje'
      Hint = 'Sett inn ordrelinje'
      ImageIndex = 1
      ShortCut = 45
      OnExecute = acInsertExecute
    end
    object acDelete: TAction
      Caption = 'Slett ordrelinje'
      Hint = 'Slett valgt ordrelinje'
      ImageIndex = 2
      ShortCut = 16430
      OnExecute = acDeleteExecute
    end
    object acUp: TAction
      Caption = 'Flytt opp'
      Hint = 'Flytt produktlinjen opp'
      ImageIndex = 3
      OnExecute = acUpExecute
    end
    object acDown: TAction
      Caption = 'Flytt ned'
      Hint = 'Flytt produktlinjen ned'
      ImageIndex = 4
      OnExecute = acDownExecute
    end
    object acPrisInk: TAction
      Caption = 'Pris ink. mva.'
      Hint = 'Regn om pris til ink. mva.'
      ImageIndex = 5
      OnExecute = acPrisInkExecute
    end
    object acReferanse: TAction
      Caption = 'Rediger referanser'
      Hint = 'Rediger listen over referanser'
      ImageIndex = 11
      OnExecute = acReferanseExecute
    end
    object acProdSok: TAction
      Caption = 'acProdSok'
      ShortCut = 16454
      OnExecute = acProdSokExecute
    end
    object acVisInn: TAction
      AutoCheck = True
      Caption = 'Vis innpris & fortjeneste'
      Checked = True
      Hint = 'Vis innpris & fortjeneste'
      ImageIndex = 9
      OnExecute = acVisInnExecute
    end
    object acSort: TAction
      Caption = 'Sortering'
      Hint = 'Sorter ordrelinjer'
      ImageIndex = 6
      OnExecute = acSortExecute
    end
    object acFooter: TAction
      Caption = 'Ordretekst'
      Hint = 'Rediger ordretekst'
      ImageIndex = 7
      OnExecute = acFooterExecute
    end
    object acRenum: TAction
      Caption = 'Endre Ordrenummer'
      Hint = 'Endre Ordrenummer'
      ImageIndex = 8
      OnExecute = acRenumExecute
    end
    object acProdLinjer: TAction
      Caption = 'Hent produktlinjer fra annen ordre'
      Hint = 'Hent produktlinjer fra annen faktura'
      ImageIndex = 10
    end
  end
  object adoLinje: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select * from ORDRELINJE'#13#10'where IDORDRE = :IdOrdre'#13#10'order by SOR' +
      'TID;'
    Parameters = <
      item
        Name = 'IdOrdre'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 304
    object adoLinjeIDORDRE: TIntegerField
      FieldName = 'IDORDRE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoLinjeIDLINJE: TIntegerField
      FieldName = 'IDLINJE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoLinjeSORTID: TFloatField
      FieldName = 'SORTID'
    end
    object adoLinjePRODNR: TStringField
      FieldName = 'PRODNR'
      Size = 30
    end
    object adoLinjeTEKST: TStringField
      FieldName = 'TEKST'
      Size = 140
    end
    object adoLinjeENHET: TStringField
      FieldName = 'ENHET'
      Size = 15
    end
    object adoLinjeANTALL: TBCDField
      FieldName = 'ANTALL'
      Precision = 18
    end
    object adoLinjeINNPRIS: TFloatField
      FieldName = 'INNPRIS'
    end
    object adoLinjePRIS: TFloatField
      FieldName = 'PRIS'
    end
    object adoLinjeRABATT: TFloatField
      FieldName = 'RABATT'
    end
    object adoLinjeMVA: TFloatField
      FieldName = 'MVA'
    end
    object adoLinjeLEVERT: TFloatField
      FieldName = 'LEVERT'
    end
    object adoLinjeIDLEVERING: TIntegerField
      FieldName = 'IDLEVERING'
    end
    object adoLinjeAVGIFT: TFloatField
      FieldName = 'AVGIFT'
    end
  end
  object dspLinje: TDataSetProvider
    DataSet = adoLinje
    UpdateMode = upWhereKeyOnly
    Left = 68
    Top = 304
  end
  object cdsLinje: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'ixDefault'
        Fields = 'IDORDRE;SORTID'
        Options = [ixPrimary]
      end
      item
        Name = 'ixProdnr'
        Fields = 'IDORDRE;PRODNR'
      end
      item
        Name = 'ixProdnrDesc'
        Fields = 'IDORDRE;PRODNR'
        Options = [ixDescending]
      end
      item
        Name = 'ixLinjeID'
        Fields = 'IDORDRE;IDLINJE'
      end
      item
        Name = 'ixLinjeIDDesc'
        Fields = 'IDORDRE;IDLINJE'
        Options = [ixDescending]
      end
      item
        Name = 'ixTekst'
        Fields = 'IDORDRE;TEKST'
      end
      item
        Name = 'ixTekstDesc'
        Fields = 'IDORDRE;TEKST'
        Options = [ixDescending]
      end>
    IndexName = 'ixDefault'
    MasterFields = 'IDORDRE'
    MasterSource = dsOrdre
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspLinje'
    StoreDefs = True
    OnCalcFields = cdsLinjeCalcFields
    OnNewRecord = cdsLinjeNewRecord
    Left = 96
    Top = 304
    object cdsLinjeIDLINJE: TIntegerField
      FieldName = 'IDLINJE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsLinjeSORTID: TFloatField
      FieldName = 'SORTID'
    end
    object cdsLinjePRODNR: TStringField
      DisplayLabel = 'Produktnr'
      FieldName = 'PRODNR'
      Size = 30
    end
    object cdsLinjeTEKST: TStringField
      DisplayLabel = 'Beskrivelse'
      DisplayWidth = 140
      FieldName = 'TEKST'
      Size = 140
    end
    object cdsLinjeENHET: TStringField
      DisplayLabel = 'Enhet'
      FieldName = 'ENHET'
      Size = 15
    end
    object cdsLinjeANTALL: TBCDField
      FieldName = 'ANTALL'
      DisplayFormat = '0.0'
      Precision = 18
    end
    object cdsLinjeINNPRIS: TFloatField
      DisplayLabel = 'Innpris'
      FieldName = 'INNPRIS'
      DisplayFormat = '#,##0.00'
    end
    object cdsLinjePRIS: TFloatField
      DisplayLabel = 'Pris eks'
      FieldName = 'PRIS'
      DisplayFormat = '#,##0.00'
    end
    object cdsLinjeRABATT: TFloatField
      DisplayLabel = 'Rabatt'
      FieldName = 'RABATT'
      DisplayFormat = '0.0%'
    end
    object cdsLinjeMVA: TFloatField
      DisplayLabel = 'Mva'
      FieldName = 'MVA'
      DisplayFormat = '0 %'
      EditFormat = '0'
    end
    object cdsLinjeSUMEKS: TFloatField
      DisplayLabel = 'Sum eks'
      FieldKind = fkCalculated
      FieldName = 'SUMEKS'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object cdsLinjeSUMINK: TFloatField
      DisplayLabel = 'Sum ink'
      FieldKind = fkCalculated
      FieldName = 'SUMINK'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object cdsLinjeIDORDRE: TIntegerField
      FieldName = 'IDORDRE'
    end
    object cdsLinjeLEVERT: TFloatField
      DisplayLabel = 'Levert'
      FieldName = 'LEVERT'
      DisplayFormat = '0.0'
    end
    object cdsLinjeIDLEVERING: TIntegerField
      FieldName = 'IDLEVERING'
    end
    object cdsLinjeAVGIFT: TFloatField
      FieldName = 'AVGIFT'
    end
  end
  object dsLinje: TDataSource
    DataSet = cdsLinje
    OnDataChange = dsLinjeDataChange
    Left = 124
    Top = 304
  end
  object spNyIdLinje: TADOStoredProc
    Connection = Dm.adoConn
    CursorType = ctStatic
    ProcedureName = 'NY_IDORDRELINJE'
    Parameters = <>
    Left = 160
    Top = 304
    object spNyIdLinjeIDORDRELINJE: TIntegerField
      FieldName = 'IDORDRELINJE'
    end
  end
  object adoOrdre: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select IDORDRE, ORDRENR, KUNDENR, FAKTURAADR, LEVERINGADR, ORDRE' +
      'DATO, LEVERINGSDATO, EKSTERNREF, INTERNREF, '#13#10'REFNR, TEKST, LOGO' +
      'FIL, SUMAVG, SUMEKS, SUMRAB, SUMMVA, SUMTOT, AVRUNDING, BRUKER, ' +
      'REGDATO, IDORDRESTATUS'#13#10'from ORDRE O'#13#10'where O.IDKLIENT = :IdKlie' +
      'nt '#13#10'and O.IDORDRE = :IdOrdre;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdOrdre'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 264
    object adoOrdreIDORDRE: TIntegerField
      FieldName = 'IDORDRE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoOrdreORDRENR: TIntegerField
      FieldName = 'ORDRENR'
    end
    object adoOrdreKUNDENR: TIntegerField
      FieldName = 'KUNDENR'
    end
    object adoOrdreFAKTURAADR: TMemoField
      FieldName = 'FAKTURAADR'
      BlobType = ftMemo
    end
    object adoOrdreLEVERINGADR: TMemoField
      FieldName = 'LEVERINGADR'
      BlobType = ftMemo
    end
    object adoOrdreORDREDATO: TDateField
      FieldName = 'ORDREDATO'
    end
    object adoOrdreLEVERINGSDATO: TDateField
      FieldName = 'LEVERINGSDATO'
    end
    object adoOrdreEKSTERNREF: TStringField
      FieldName = 'EKSTERNREF'
      Size = 30
    end
    object adoOrdreINTERNREF: TStringField
      FieldName = 'INTERNREF'
      Size = 30
    end
    object adoOrdreREFNR: TStringField
      FieldName = 'REFNR'
    end
    object adoOrdreTEKST: TMemoField
      FieldName = 'TEKST'
      BlobType = ftMemo
    end
    object adoOrdreLOGOFIL: TStringField
      FieldName = 'LOGOFIL'
      Size = 25
    end
    object adoOrdreSUMAVG: TFloatField
      FieldName = 'SUMAVG'
    end
    object adoOrdreSUMEKS: TFloatField
      FieldName = 'SUMEKS'
    end
    object adoOrdreSUMRAB: TFloatField
      FieldName = 'SUMRAB'
    end
    object adoOrdreSUMMVA: TFloatField
      FieldName = 'SUMMVA'
    end
    object adoOrdreSUMTOT: TFloatField
      FieldName = 'SUMTOT'
    end
    object adoOrdreAVRUNDING: TFloatField
      FieldName = 'AVRUNDING'
    end
    object adoOrdreBRUKER: TStringField
      FieldName = 'BRUKER'
    end
    object adoOrdreREGDATO: TDateTimeField
      FieldName = 'REGDATO'
    end
    object adoOrdreIDORDRESTATUS: TIntegerField
      FieldName = 'IDORDRESTATUS'
    end
  end
  object dspOrdre: TDataSetProvider
    DataSet = adoOrdre
    UpdateMode = upWhereKeyOnly
    Left = 68
    Top = 264
  end
  object cdsOrdre: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrdre'
    Left = 96
    Top = 264
    object cdsOrdreIDORDRE: TIntegerField
      FieldName = 'IDORDRE'
    end
    object cdsOrdreORDRENR: TIntegerField
      FieldName = 'ORDRENR'
    end
    object cdsOrdreKUNDENR: TIntegerField
      FieldName = 'KUNDENR'
    end
    object cdsOrdreFAKTURAADR: TMemoField
      FieldName = 'FAKTURAADR'
      BlobType = ftMemo
    end
    object cdsOrdreLEVERINGADR: TMemoField
      FieldName = 'LEVERINGADR'
      BlobType = ftMemo
    end
    object cdsOrdreORDREDATO: TDateField
      FieldName = 'ORDREDATO'
    end
    object cdsOrdreLEVERINGSDATO: TDateField
      FieldName = 'LEVERINGSDATO'
    end
    object cdsOrdreEKSTERNREF: TStringField
      FieldName = 'EKSTERNREF'
      Size = 30
    end
    object cdsOrdreINTERNREF: TStringField
      FieldName = 'INTERNREF'
      Size = 30
    end
    object cdsOrdreREFNR: TStringField
      FieldName = 'REFNR'
    end
    object cdsOrdreTEKST: TMemoField
      FieldName = 'TEKST'
      BlobType = ftMemo
    end
    object cdsOrdreLOGOFIL: TStringField
      FieldName = 'LOGOFIL'
      Size = 25
    end
    object cdsOrdreSUMAVG: TFloatField
      FieldName = 'SUMAVG'
      DisplayFormat = '#,##0.00'
    end
    object cdsOrdreSUMEKS: TFloatField
      FieldName = 'SUMEKS'
      DisplayFormat = '#,##0.00'
    end
    object cdsOrdreSUMRAB: TFloatField
      FieldName = 'SUMRAB'
      DisplayFormat = '#,##0.00'
    end
    object cdsOrdreSUMMVA: TFloatField
      FieldName = 'SUMMVA'
      DisplayFormat = '#,##0.00'
    end
    object cdsOrdreSUMTOT: TFloatField
      FieldName = 'SUMTOT'
      DisplayFormat = '#,##0.00'
    end
    object cdsOrdreAVRUNDING: TFloatField
      FieldName = 'AVRUNDING'
      DisplayFormat = '0.00'
    end
    object cdsOrdreBRUKER: TStringField
      FieldName = 'BRUKER'
    end
    object cdsOrdreREGDATO: TDateTimeField
      FieldName = 'REGDATO'
    end
    object cdsOrdreIDORDRESTATUS: TIntegerField
      FieldName = 'IDORDRESTATUS'
    end
  end
  object dsOrdre: TDataSource
    DataSet = cdsOrdre
    Left = 124
    Top = 264
  end
  object ImageList: TImageList
    Height = 24
    Width = 24
    Left = 696
    Top = 8
    Bitmap = {
      494C01010C000E00080018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B7818300B9848500B9838500B9838400B9838400B8838400B883
      8400B8838400B9838400B9838400B78183000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6820000D682
      0000D6820000D6820000D6820000D6820000D6820000D6820000D6820000D682
      0000D6820000D6820000D6820000D6820000D6820000D6820000D6820000D682
      0000D6820000D682000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BC8A8A00FFFEE000FBE9C700FCE7BF00FAE2B400F8DCA700F7D8
      9D00F6D69A00FADE9C00FDDE9C00B88384000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6820000FFEAD100FEE8
      CE00FFE7CC00FFE5C900FEE4C500FFE2C300FEE1C000FEE0BD00FEDEBA00FEDE
      B800FEDCB500FEDBB300FEDAB100FED9AF00FED8AD00FED8AC00FED7AB00FED7
      AB00FED7AB00FED7AB00D6820000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BC898A00FFF8E100F5E2CA00989EDA004461EC000939FC00435F
      E6009492C000F2D09800F7D79A00B8838400A4787400A4787400A4787400A478
      7400A4787400A4787400A4787400A4787400A4787400A4787400A4787400A478
      7400A4787400A47874008C5D5C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6820000FEEBD500FEEA
      D200FEE8CE00FEE6CB00FEE5C900FFE4C500FEE2C300FEE1C000FEE0BD00FEDE
      BA00FEDDB800FEDCB600FEDBB400FEDAB100FED9AF00FED8AD00FED7AC00FED7
      AB00FED7AB00FED7AB00D6820000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD8E8B00FFFDEC009AA3E4000738FE000033FF000033FF000033
      FF000737FD009796C100F7D79A00B8838400A4787400ECDED100F9F0E000F5EA
      DA00F5EADA00F4E8D400F4E8D400F4E8D400F4E8D400F4E8D400F4E8D400F4E8
      D400F4E8D400EEE0CE008C5D5C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6820000FFECD800FFEB
      D500FFE9D200FEE9CF00FEE7CC00FEE5C800FEE4C600FEE2C300FEE1C000FEE0
      BD00FEDEBA00FEDDB800FEDCB600FFDBB400FEDBB100FED9B000FED8AE00FED8
      AC00FED7AC00FED7AB00D6820000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFF7E700FFF7E700FFEF
      D600FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDEB500FFDEB500FFD6
      AD00FFD6AD00FFD6AD00CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BE978E00FFFFF8004566F5000033FF000033FF000033FF000033
      FF000033FF004461E600F8D9A000B8838400A4787400ECDED100F5EADA00F5EA
      DA00F2E6D800F2E6D800F2E6D800F0E2D000F2E6D800EEE0CE00F2E6D800EEE0
      CE00F4E8D400EADAC8008C5D5C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6820000FEEEDC00FEEC
      D900FEEBD500FFEAD300FFE7CD00FFE7CD00FEE5C900FEE4C600FEE4C600FEE4
      C600FEDFBE00FEDFBB00FEDDB9000000000000000000FEDAB100000000000000
      0000FED8AC00FED7AB00D6820000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFF7E700FFF7
      E700FFEFD600FFEFD600FFE7C600FFDEB500FFDEB500FFDEB500FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C59B8D00FFFFFF000A3AFE000033FF000033FF000033FF000033
      FF000033FF000A3AFC00FADDAB00B8838400A4787400ECDED100F5EDE900F5EA
      DA00F5EADA00F5EADA00F2E6D800F2E6D800EEE2D100EEE0CE00EEE0CE00F0E2
      D000F2E6D800E9D9C7008C5D5C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6820000FEEFDF00FEEE
      DC00FFEDD900FEEDD8009B8DB5002623980005059000050590008A7CAD00FEE4
      C600FEE4C600FEE0BE00FEDFBB00FFDDB800FEDCB60000000000FEDAB200FED9
      B000FED8AE00FED8AD00D6820000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700FFF7E700FFEFD600FFE7C600FFE7
      C600FFD6AD00FFDEB500CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D9AA8E00FFFFFF004669FB000033FF000033FF000033FF000033
      FF000033FF004663EC00FFE7B700B9838400B4817600ECDED100F9F2E900F3DD
      C400F5C89800F5C89800F4C89700F4C89700F5C89800F4C89700F4C89700F6DA
      BC00F2E6D800E9D9C7008C5D5C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6820000FFF1E200FFF0
      DF00FEEEDC00CDBFCA00050590007A6EAC00FFE7CD00EED8C9004841A000695E
      A600FEE3C400FEE1C100FEE0BE00FEDFBC00FEDEB90000000000FFDCB400FEDB
      B200FEDAB100FED9AE00D6820000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700FFEFD600FFE7C600FFE7
      C600FFD6AD00FFDEB500CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFAF9000FFFFFF009FB1FD000738FF000033FF000033FF000033
      FF000738FE009DA8E000E7D0B400B8828400B4817600ECE1DA00F9F2E900F8E4
      CF00F9DCC000F9DCC000F9DCC000F8DCBD00F8DCBD00F6DABC00F6DABC00F3DD
      C400F0E2D000EADAC8008C5D5C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6820000FFF3E500FFF1
      E200FFF0DF006963AE0016149500FEEDD800FFECD800FFE7CD00BCABBD000505
      9000CDB7BC00FEE3C400FEE1C100FEE0BE00FEDFBB0000000000FFDCB700FEDB
      B500FEDAB200FEDAB000D6820000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFEFD600FFEF
      D600FFE7C600FFE7C600CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E4B59500FFFFFF00FFFFFF009FB2FF00476BFD000A3BFE004668
      F700969CDF00D7C0AD00C0A29400B6818500B4817600ECE1DA00FBF6F100F5ED
      E900F5EADA00F5EADA00F2E6D800F2E6D800F2E6D800F0E2D000F0E2D000EADA
      C800EEE2D100E6D8C700976A6500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6820000FFF4E800FFF3
      E500FEF2E300FFF0DF00FFEEDC00FFEDD900FFECD800FEEDD800EED8C9000505
      90008A7DAF00FEE4C700FEE3C400FEE1C200FEE0BF0000000000FEDEB900FEDD
      B600FEDBB500FFDAB200D6820000000000000000000000000000DEBD9400DEBD
      9400DEBD9400DEBD9400DEBD9400DEBD9400CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700FFEFD600FFE7C600CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E4B69600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFD00FAF4
      ED00CCA69A00B6857E00B3857F00BE837400BA8E8500F2E8E200FBF6F100F8DC
      BD00F1C18D00F1C18D00F1C18D00F1C18D00F5C48F00F5C48F00E7B88500DCC3
      A900D8D0C400DACCBE00976A6500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6820000FFF5EB00FFF4
      E800FFF3E600FFF2E300ACA2C50026249A000505900026249A00AC9FC0002623
      9900695FA800FFE5CA00FEE4C700FEE3C400FFE2C10000000000FFDFBC00FEDE
      B900FEDCB700FEDCB500D6820000000000000000000000000000FFD6AD00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      E700FFEFD600FFEFD600CE63000000000000B7818300B7818300B7818300B781
      8300B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      830000000000EDC19A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F8
      FB00C09A9A00DCA16A00DEA0650000000000BA8E8500F5EDE900F9F2E900F5ED
      E900E6D8C700E1D5C800EADAC800F2E6D800EEE0CE00E1D5C800CABCAD00B5AA
      9F00B5AA9F00BFB4A8008A615C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6820000FFF7ED00FFF6
      EB00FFF4E800BCB3CE00050590008A82BB00FEEDD800FEEDD8004743A3001614
      94005851A600FFE8CD00FEE5CA00FFE4C700FEE3C40000000000FFE0BE00FEDF
      BC00FEDEBA00FEDDB700D6820000000000000000000000000000FFD6AD00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7E700FFEFD600CE63000000000000B7818300FEEED400F7E3C500F8E2
      BD00F7DEB400F5D9AA00F4D49F00F3D29900F2D29800F7D89B00F3D19800B781
      830000000000EEC19900FCFBFC00FBF6F300FBF6F300FBF6F300FDFAF700F2E7
      E100C1978F00C68F7B000000000000000000CB9A8200F5EDE900F9F8F400E6D8
      C700D0C1B100BFB4A800CABCAD00DACCBE00DBCBB800C7B7A600AA9B8C00948A
      8000948A8000A0988F0083605C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6820000FEF8F100FFF7
      EE00FEF6EB005855AD0026259B00FFF2E200FFF0E000FEEDD800DDCECE000505
      90005851A700FFE9D000FFE7CE00FFE6CA00FFE4C80000000000FEE2C200FEE0
      BF00FFE0BC00FEDEBA00D6820000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFEFD600CE63000000000000B7818300FDEFD900F6E3CB00F4DF
      C400F4DBBB00F2D7B200F1D3A900EFCE9F00EECB9700F3D29900F3D19800B781
      830000000000ECBB9100DAA68600DCA88700DCA88700DCA88700DCA88700E0AC
      8800C08D7E0000000000056F090000000000CB9A8200F5EDE900F9F8F400748D
      B700C0996F00A8876300AA896500B8946D00B8946D00A5856100557299004B61
      8D0058576F0089837C006C4F4C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6820000FFFAF300FFF8
      F100FEF7EE0026259C005855AE00FFF3E600FFF0E000FFF0E000FFF0E0002624
      9A005852A800FFEAD400FFE9D100FFE7CE00FFE6CB0000000000FEE3C500FFE2
      C100FEE1BF00FEDFBD00D6820000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DE7B0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CE63000000000000B7818300EDD3BE00AC572A00AB57
      2900AB562700AB552500AB542400AA532200AA521F00C47E4800F3D19800B781
      8300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000007770E0006770C00DCA88700F7F0EC00F9FAF9007EA2
      CB00748DB7009E9A9F009D9895009A959100928E8C005572990079B7D90073BC
      E300353C6B005C5968005B434100000000000000000000000000000000000000
      00005B56560046424200464242004642420000000000D6820000FFFAF500FFF9
      F300FFF8F10026259D004845A900FFF4E900FFF3E600FFF0E000FFF0E0002624
      9B007971B200FEEDD800FEEBD400FFE9D100FEE8CE0000000000FEE5C800FEE3
      C500FEE2C200FEE0C000D6820000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000CE63000000000000BA8E8500FFF7EB00B76C44009933
      0000993300009933000099330000993300009B360300E7BD8900F3D29B00B781
      8300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000D89190007760D00DCA88700F9F8F400F9FAF9005F6D
      9900CBEFF6009AADC5009E9A9F00959392005572990089D2EB005572990074B5
      DD0062A1D000333766005142520000000000000000008F8F9000545454005454
      54005B5656003B3A3C00353537005B56560000000000D6820000FFFBF700FFFA
      F500FFFCFA006966B70026259D00FFF5EC00FFF3E600FFF3E600FFF3E6001615
      9500ACA2C500FEEDD800FEEDD800FFEBD500FEEAD10000000000FEE6CB00FFE5
      C800FEE4C500FEE2C200D6820000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE63000000000000BA8E8500FFFFFD00ECD4C3009B37
      040099330000993300009933000099330000C17E5100F4D9A900F5D5A300B781
      8300000000000000000000000000047009000470090000000000000000000000
      000000000000000000000D96190006770C00E3B18E00F9F2E900F9FAF900B6B6
      C80070799A00CBEFF6009FC1D5005572990090DEF2005572990086D9F7005572
      99006BACDB00558CC1002F3160002F3160002F3160008F8F9000BEBEBF00BEBE
      BF005B565600524D4E005B5656005B56560000000000D6820000FEFCFA00FFFC
      F800FFFCFA00DED8E400161596008A87C400FFF8F100FFF8F1007A74B8004844
      A600FFF0E000FFF0E000FEEDD800FFECD800FFEAD40000000000FEE8CE00FFE7
      CB00FFE5C800FFE3C600D6820000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D67310000000000000000000CB9A8200FFFFFD00FBF4EC00C88E
      7000993300009933000099330000A1431200F0D2B000F6DDB400F6D9AC00B781
      83000000000000000000006A01001F9A31000470090000000000000000000000
      0000000000000A8812000C98180006730A00E3B18E00FBF6F100F9FAF900F9FA
      F900BABACA007383A200B8ECF5007291B6005572990089D7F000557299007BCD
      F3005572990066B5EC005BA9E800509DE5004690E1008F8F9000BEBEBF00BEBE
      BF005B5656005B5656005F5A5A005F5A5A0000000000D6820000FFFDFC00FFFC
      FA00FFFCFA00FFFCFA00CDC7DE003736A30005059000050590006966B700FFF3
      E600FFF0E000FFF0E000FEEDD800FFECD800FEECD70000000000FFE9D200FFE8
      CE00FEE6CB00FEE5C900D6820000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      000000000000000000000000000000000000DCA88700FFFFFD00FEF9F500F8EE
      E800A4481A009933000099330000D19D7C00F7E0C500FCE4BF00F8DDB400B781
      830000000000016D0500249C3A004FD37B000470090000670000056F0A00097A
      10000983110010A51B000A8B1300056F0A00EDBD9200FBF6F100F9FAF900F9FA
      F900F9FAF900BABACA006B81A100A5E9F4006789B3005572990081CEEE005572
      990070C1F00066B5EC005BA9E800509DE5004690E1008F8F9000C7C8C800C7C8
      C8005B5656006B6767006B6767006B67670000000000D6820000FFFEFD00FFFE
      FC00FFFCFA00FFFCFA00FFFCFA00FFF8F100FFF8F100FFF8EF00FEF6ED00FFF4
      E900FFF4E700FFF2E400FEF0E0000000000000000000FFEDD800000000000000
      0000FEE8CF00FEE6CC00D6820000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      000000000000000000000000000000000000DCA88700FFFFFD00FFFFFF00FFFE
      FE00DAB19C0099330000AD582D00FAEBD800FAEAD200F0E2C700D2B7A500B781
      83000D7C16002EA8480058E2890059E4890031B44E0018942900149122000F97
      1C0010A81D000DA01A000470090000000000EDBD9200FBF6F100F9FAF900F9FA
      F900F9FAF900F9FAF900BABACA006480A10094E2F1006586B00081CEEE007BCD
      F30070C1F00066B5EC005BA9E800509DE5004690E1008F8F9000EFEFEF00EFEF
      EF005B56560076747400767474007674740000000000D6820000FFFFFF00FFFE
      FE00FFFEFC00FFFCFA00FFFCF800FFFBF600FFF9F400FEF9F100FFF8EF00FFF6
      EC00FFF5EA00FFF3E700FEF3E400FEF1E100FFEFDE00FEEEDB00FFECD800FEEB
      D500FFEAD200FFE8CF00D6820000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      000000000000000000000000000000000000E3B18E00FFFFFD00FFFFFF00FFFF
      FF00FFFEFE00AF5F3600E7CAB800F7EADC00DFC2B300C7A89800BA958A00B781
      8300168823005DE78E0060EC930049D371003ACB5C002FC74C001DB8320010AD
      20000D9C1900047009000000000000000000EDBD9200DCA88700DCA88700E3B1
      8E00DCA88700E3B18E00DBA78600A5847E005E7EA000C4EBF60086D9F7007BCD
      F30070C1F00066B5EC005BA9E800509DE5004690E1008F8F9000F9F8F400EFEF
      EF005B56560081808000818080008180800000000000D6820000FFFFFF00FFFF
      FF00FFFEFE00FFFEFC00FFFCFA00FFFCF800FFFBF700FFFAF400FFF9F200FFF8
      F000FFF6EC00FEF5EA00FFF4E700FFF2E400FFF1E100FFF0DE00FFEEDB00FEED
      D800FFEBD500FEEAD200D6820000000000000000000000000000FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00DEBD940000000000000000000000
      000000000000000000000000000000000000E3B18E00FFFFFD00FFFFFF00FFFF
      FF00FFFFFF00F6EDE700FFFEFA00ECDFD800B8857A00B8857A00B8857A00C084
      7100000000000470090045D06A002BBB45000470090004700900047009000470
      0900047009000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000055729900C3ECFB00BDE6
      F90070C1F00066B5EC005BA9E800509DE5003B5D9B008F8F9000EFEFEF00F1F1
      F1005B5656008F8F90008F8F90008F8F900000000000D6820000FFFFFF00FFFF
      FF00FFFFFF00FFFEFE00FFFEFC00FFFDFA00FFFCF900FFFBF600FFFAF400FFF9
      F200FFF7EF00FEF6ED00FFF5EA00FFF4E800FEF2E500FEF1E100FFEFDE00FEEE
      DB00FEEDD900FEEBD500D6820000000000000000000000000000FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C0000000000000000000000
      000000000000000000000000000000000000EDBD9200FFFFFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E9E2E400B8857A00E8AC6900DD9E64000000
      000000000000000000000470090027B740000470090000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006A96
      C000679AC9006195C9005A8DC700556DA400000000008F8F90008F8F90008F8F
      90005B5656008F8F9000767474007C7C7C000000000000000000D6820000D682
      0000D6820000D6820000D6820000D6820000D6820000D6820000D6820000D682
      0000D6820000D6820000D6820000D6820000D6820000D6820000D6820000D682
      0000D6820000D68200000000000000000000000000000000000000000000FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD000000000000000000000000000000
      000000000000000000000000000000000000EDBD9200FBF6F300FBF6F300FBF6
      F300FBF6F300FBF6F300FBF6F300E4D0C800B8857A00CD957B00000000000000
      0000000000000000000000000000047009000470090000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005B5656005B5656005B5656005B5656000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDBD9200DCA88700DCA88700DCA8
      8700DCA88700DCA88700DCA88700DCA88700B8857A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000669A0000669A0000669A0000669A0000669A000066
      9A0000669A0000669A0000669A0000669A0000669A0000669A0000669A000066
      9A0000669A0000669A0000669A0000669A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A97F7900B389
      7B00B3897B00B3897B0000669A0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000669A000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D1E2
      D30067956600E5F3E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000000000000000000000000000000000000000000000000000007308000073
      0800000000000000000000000000000000000000000000000000A97F7A00F2DE
      C800F7E3CA00F5DFC20000669A0000CCFF0000CCFF0081818100818181008181
      8100818181008181810081818100818181008181810081818100818181008181
      81008181810000CCFF0000CCFF0000669A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C3E1C4001072
      1B002276230029802E00DEEDDE00000000000000000000000000000000000000
      00000000000000000000000000000000000005710A0005710A0005710A000571
      0A0005710A0005710A00000000000000000000009A0000009A0000009A000000
      9A0000009A0000009A0000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A0000009A0000009A000000000000000000000084000000
      840000000000000000000000000000000000000000000000C000000084000000
      000000000000000000000000000000000000000000000073080084FF840084C6
      6B00007308000000000000000000000000000000000000000000A97F7A00F2E0
      CE00F8E7CF00F5E2C80000669A0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000669A000000000000000000000000000000
      00000000000000000000000000000000000000000000C4E0C80014701700348C
      340069AC71002679270029842800DAEFDB000000000000000000000000000000
      00000000000000000000000000000000000005710A0045D16C003AC75B002FBE
      4B0024B53A0005710A00000000000000000000009A000335FB000738FB001140
      FB00204CFB00365DFC005073FC006F8CFD0094A9FD00BDCAFE00ECF0FF00FDFE
      FF00FDFEFF00FDFEFF00FDFEFF0000009A000000000000000000848484000000
      8400000084000000000000000000000000000000000000008400000084000000
      000000000000000000000000000000000000000000000073080084FF840084C6
      6B00007308000000000000000000000000000000000000000000A97F7A00F3E3
      D200F9E9D400F6E4CD0000669A0000669A0000669A0000669A0000669A000066
      9A0000669A0000669A0000669A0000669A0000669A0000669A0000669A000066
      9A0000669A0000669A0000669A0000669A000000000000000000000000000000
      000000000000000000000000000000000000BBDBC60016771A00368A310061A4
      5A00208624005BA862002080230025832500D8EEDE0000000000000000000000
      00000000000000000000000000000000000005710A0052DB7E0047D26E003CC9
      5E0030BF4D0005710A00000000000000000000009A000335FB000738FB001140
      FB00204CFB00365DFC005073FC006F8CFD0094A9FD00BDCAFE00ECF0FF00FDFE
      FF00FDFEFF00FDFEFF00FDFEFF0000009A000000000000000000000000008484
      8400000084000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000073080084FF840084C66B0084C6
      6B00009C00000073080000000000000000000000000000000000A97F7B00F4E6
      D800FAECDA00F8E7D300F6E4CC00F5E1C700F5DFC200F4DCBC00F3D9B600F2D7
      B000F1D4AB00F1D2A600F0CFA000EECD9A00EECC9700EECC9700EFCD9700EDCB
      9600B3897B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0DBBF00107A1300278D29004C9B40000C77
      0700007500000B7C1000519D52001C82190021852300DAEAD900000000000000
      00000000000000000000000000000000000005710A0058E0870053DC800049D3
      70003DCA600005710A00000000000000000000009A000335FB000738FB001140
      FB00204CFB00365DFC005073FC006F8CFD0094A9FD00BDCAFE00ECF0FF00FDFE
      FF00FDFEFF00FDFEFF00FDFEFF0000009A000000000000000000000000000000
      0000848484000000840000008400000000000000000000000000000000000000
      0000000000000000000000000000000000000073080084FF840084C66B00009C
      0000009C00000073080000000000000000000000000000000000AA807B00F5E9
      DD00FBEFE000F8EAD900F7E6D200F6E4CD00F5E1C800F4DEC200F4DCBC00F3D9
      B600F2D7B100F1D4AC00F1D2A600F0CFA000EECC9900EECC9700EFCD9700EDCB
      9600B3897B000000000000000000000000000000000000000000000000000000
      00000000000000000000BFE3C00018810F00298F2000369C3C00057607000078
      0000017D01000177010008770700409F3D001E871800288E2800D1F0D3000000
      00000000000000000000000000000000000005710A0058E0870058E0870055DD
      82004AD5730005710A00000000000000000000009A000335FB000738FB001140
      FB00204CFB00365DFC005073FC006F8CFD0094A9FD00BDCAFE00ECF0FF00FDFE
      FF00FDFEFF00FDFEFF00FDFEFF0000009A000000000000000000000000000000
      0000000000008484840000008400000084000000000000000000000000000000
      00000000000000000000000000000073080084FF8400009C0000009C0000009C
      0000009C0000009C000000730800000000000000000000000000AD837D00F5EC
      E300FBF2E600DF993E00DF993E00DF993E00DF993E00DF993E00DF993E00DF99
      3E00DF993E00DF993E00DF993E00DF993E00DF993E00DF993E00EFCD9700EDCB
      9600B3897B000000000000000000000000000000000000000000000000000000
      000000000000BFDFBF000E8912002292210030A13B0002830100057F0200017D
      01000084000000820000017A01000F81080042A340001286120023942700D5EE
      D7000000000000000000000000000000000005710A0005710A0005710A000571
      0A0005710A0005710A00000000000000000000009A0000009A0000009A000000
      9A0000009A0000009A0000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A0000009A0000009A000000000000000000000000000000
      0000000000000000000084848400000084000000840000000000000000000000
      0000000000000000000000730800007308000073080000730800007308000073
      0800007308000073080000730800007308000000000000000000B2887E00F7EF
      E800FCF5EC00FAEFE400F9ECDD00F8E9D800F7E7D300F6E4CD00F5E1C700F5DF
      C100F4DCBC00F3D9B700F1D7B000F1D4AB00F0D2A500F0CF9F00EFCD9A00EDCA
      9600B3897B000000000000000000000000000000000000000000000000000000
      0000B7E5B7001590150010940F00219A1F000487070002880000018500000087
      0000018400000488000000890200008B00000C8E0B002E992800088606002894
      2C00CEF0D3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      8400000000000000000000000000848484000000840000008400000000000000
      0000000000000000000000000000000000000000000000000000109421000073
      0800000000000000000000000000000000000000000000000000B68B8000F8F2
      EE00FDF8F100FAF3EA00F9EFE300F9ECDD00F8E9D800F7E6D200F6E4CC00F5E1
      C600F4DFC100F4DCBC00F3D9B600F2D6B000F1D4AA00F0D1A400F0D09F00EDCB
      9800B3897B00000000000000000000000000000000000000000000000000B7E3
      BC0016961600058C05001098100000880000008D0000028C0000018E0000008D
      0400018E0100028D060000890500008D0600008C00000488010019971000028A
      000029992800D4EDC80000000000000000000000000000000000000000000000
      000005710A0005710A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      C000000000000000000000000000000000008484840000008400000084000000
      0000000000000000000000000000000000000000000000000000109421000073
      0800000000000000000000000000000000000000000000000000BA8E8200FAF6
      F400FEFCF800DF993E00DF993E00DF993E00DF993E00DF993E00DF993E00DF99
      3E00DF993E00DF993E00DF993E00DF993E00DF993E00DF993E00F1D2A500EECD
      9E00B3897B000000000000000000000000000000000000000000B7E3B7001396
      1500009000000991010000930000009400000294000008920000029400000093
      07000094010000940200009B020000900200068B060000990000009700000094
      0000009800001C9E190000000000000000000000000000000000000000000571
      0A0052D87E0054D9810005710A0005710A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000000000000000000000000000000000000000000000000000109421000073
      0800000000000000000000000000000000000000000000000000BE928300FBF8
      F700FFFFFE00FEFAF600FCF5EF00FAF2EA00FAF0E300F9ECDD00F9E9D800F8E7
      D200F6E4CD00F5E1C700F5DEC100F4DCBC00F3D9B600F2D7B000F2D5AB00EFCF
      A400B3897B0000000000000000000000000000000000000000009CDD9C002497
      24002CA328002A9E270031983100009402000299000008980100029E00000097
      0200009D0200039A0500059D000000A00000059B0000099109002E9A29002A9F
      2E00279B2900299B2E0000000000000000000000000000000000000000000571
      0A0059E488005AE38A0059E0880049CA6F0005710A0005710A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000005710A0005710A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000109421000073
      0800000000000000000000000000000000000000000000000000C2968500FBF8
      F700FFFFFF00FFFEFC00FEF9F400FCF6EF00FBF3EA00FAEFE300F9EDDD00F8E9
      D700F8E7D200F6E4CC00F5E0C500F5DDBF00F4DBB900F3D8B400F2D7B000F0D2
      A900B3897B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000E8C070000A6020000A2060000A5000000A8
      050000A8000002A8000003A3000000A2000000A600002E923300000000000000
      000000000000000000000000000000000000000000000000000005710A0032B5
      4D0049D571004CD6750052DB7D0058E288005DE78F0005710A0005710A000000
      0000000000000000000000000000000000000000000000000000000000000571
      0A003BB75C0005710A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000109421000073
      0800000000000000000000000000000000000000000000000000C6998600FBF8
      F700FFFFFF00DF993E00DF993E00DF993E00DF993E00DF993E00DF993E00DF99
      3E00DF993E00DF993E00DF993E00DF993E00DF993E00DF993E00F3D8B200F1D5
      AE00B3897B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001090080000B1040000AE030000A7000000AC
      000000AE000000B3000000AB000000A9000000AD000027A02700000000000000
      000000000000000000000000000000000000000000000000000005710A0034C5
      520038C658003DCA5F0046D36D003CBE5D0005710A0005710A00000000000000
      000000000000000000000000000000000000000000000000000005710A004FCD
      78003288420005710A0000000000000000000000000000000000840000008400
      0000840000008400000000000000000000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000109421000073
      0800000000000000000000000000000000000000000000000000CA9C8800FBF8
      F700FFFFFF00FFFFFF00FFFFFF00FFFEFC00FEF9F500FCF6EF00FBF2EA00FAEF
      E300F9ECDD00F8E9D600F7E5CE00F5E1C600F3DEBF00F3DAB900F1D8B300EAD0
      AC00B3897B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000069A090000B4050000B5000000B3000000B2
      000000B3000000B7000000AE040000B2020000AE000028A72800000000000000
      0000000000000000000000000000000000000000000005710A001396210024B7
      3B0029B942002FBE4C0038C758002DB1470005710A0000000000000000000000
      0000000000000000000000000000000000000000000005710A0052D87E003FBE
      610005710A000000000000000000000000000000000000000000848484008400
      0000840000000000000000000000000000000000000084000000840000008484
      8400000000000000000000000000000000000000000000000000109421000073
      0800000000000000000000000000000000000000000000000000CEA08900FCF9
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFC00FEF9F500FCF5EF00FBF2
      E900FAF0E400F9EDDE00F8EBD700F6E6CF00F5E2C700F4DEBF00F2D9B900EAD1
      AF00B3897B000000000000000000000000000000000000000000000000000000
      000000000000000000000000000011A50C000DC30F0000BB000000BD000000BC
      000000B7060000BC000000BC010000BB01000ABE0A0029A62900000000000000
      0000000000000000000000000000000000000000000005710A0005710A000571
      0A0005710A0021B4370026B73E0030C34E0023A6380005710A00000000000000
      000000000000000000000000000005710A0005710A005BE48C004ED076000571
      0A00000000000000000000000000000000000000000000000000000000008400
      0000840000000000000000000000000000000000000084000000840000000000
      0000000000000000000000000000000000000000000000000000109421000073
      0800000000000000000000000000000000000000000000000000D2A38A00FCF9
      F700FFFFFF00DF993E00DF993E00DF993E00DF993E00DF993E00DF993E00DF99
      3E00DF993E00DF993E00DF993E00DF993E00DF993E00DF993E00F4DFC100EDD6
      B800B3897B000000000000000000000000000000000000000000000000000000
      000000000000000000000000000012A912001FD3230000C4000001C6000002C0
      000002C4000001C5000000C6000000BF000022CE220030A62C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000005710A0005710A0018AD2A001EB0320028BC410020A7350005710A000571
      0A0005710A0005710A0005710A0047CC6D005EE9900050D67C0005710A000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400840000008400000084000000840000008400000084000000848484000000
      0000000000000000000000000000000000000000000000000000109421000073
      0800000000000000000000000000000000000000000000000000D7A78C00FCF9
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFC00FDF9
      F400FCF6EF00FDF7EF00FAF3E800F9EFE100F9ECDB00F7E8D200F5E2C900EED6
      BB00B3897B000000000000000000000000000000000000000000000000000000
      000000000000000000000000000017AD17003ADD370000C5000004C7000007C9
      000007C8000004C9000000C7000004C9020035D935002BAB3000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000005710A0005710A0012A7200016AA27001DB2320027BC400027B5
      40002AB544003ACA5B0041D1650044D2690042CB670005710A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000109421000073
      0800000000000000000000000000000000000000000000000000DAAB8D00FCF9
      F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFD
      FB00FDFAF500FEFBF600FAF5EF00FBF4EB00FAF1E400F9EDDC00F7E7D300F5DE
      BE00B3897B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001AB81B0052E851000CD2090000CB000000CD
      000000CF000000CA000000D1000017D7140046E345002CBA2F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000005710A0005710A000DA11A0011A71F0014AA25001BB0
      2F0022B6370027BA40002DBD480029AF420005710A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008400000000000000000000008400000084848400000000000000
      0000000000000000000000000000000000000000000000000000109421000073
      0800000000000000000000000000000000000000000000000000DEAD8E00FDFA
      F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFDFC00FFFDFB00FDF9F300FCF5EB00FAF0E100F9EBD800F7E6CE00F6E2
      C700B3897B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001CB21C0078EA740056EC540049E34C004EE3
      4D0049E44F004BE14C004EE7500058E858005EE05E002AB62E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000005710A0005710A001F8428000B9616000E99
      1A00119D1F00159C240005710A0005710A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000109421000073
      0800000000000000000000000000000000000000000000000000DEAD8E00FDFA
      F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFEFD00FEFBF700FDF7EF00FBF2E600F9EEDC00F8E8D200F6E4
      CA00B3897B000000000000000000000000000000000000000000000000000000
      000000000000000000000000000016C1100015AD160014A5190015AA16001DA9
      170016AB18001AAC19001CA4190013A9180010B0100033C42D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000005710A0005710A000571
      0A0005710A0005710A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084000000840000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000109421000073
      0800000000000000000000000000000000000000000000000000DEAD8E00FFFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFCFA00FDF9F200FBF4E900FBF0E000F9EAD600F8E5
      CD00B3897B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000109421000073
      0800000000000000000000000000000000000000000000000000DAA48200DAA4
      8200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA4
      8200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA4
      8200B3897B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000109421000073
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B48D
      8A00B28A8800B18A8700B1888500B0878400AF868300AE858200AE848100AD83
      8000AB817F00AA807D00AA807C00A97F7B00A97D7A00A87C7900A77B7800A77B
      7800A77A7700A679760000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B58E
      8B00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00A77A770000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B58F
      8C00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFE
      FD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFE
      FD00FEFEFD00A77B78000000000000000000CC670100CC670100CC670100CC67
      0100CC670100CC670100CC670100CC670100CC670100CC670100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000016C1100015AD160014A5190015AA16001DA9
      170016AB18001AAC19001CA4190013A9180010B0100033C42D00000000000000
      000000000000000000000000000000000000000000000000000000000000B792
      8E00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFC
      FB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFC
      FB00FEFCFB00A97D79000000000000000000FFFBF600FEF8F000FFF6EB00FEF2
      E400FEEFDD00FEEBD600FFE9D000FEE6CA00FEE4C500CC670100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009A0000009A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009A0000009A000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001CB21C0078EA740056EC540049E34C004EE3
      4D0049E44F004BE14C004EE7500058E858005EE05E002AB62E00000000000000
      000000000000000000000000000000000000000000000000000000000000B893
      9000FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFB
      F800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFB
      F800FEFBF800A97E7A000000000000000000FEFCF800FEF9F300FFF7EE00FFF3
      E700FFF1E100FEEDDA00FEEAD400FEE8CD00FEE5C700CC670100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009A001244FF000C30E60000009A000000000000000000000000000000
      00000000000000000000000000000000000000009A000028F200002CF9000000
      9A00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001AB81B0052E851000CD2090000CB000000CD
      000000CF000000CA000000D1000017D7140046E345002CBA2F00000000000000
      000000000000000000000000000000000000000000000000000000000000B994
      9200FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFA
      F600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFA
      F600FEFAF600AA7F7C000000000000000000FFFDFB00FFFBF700FFF8F100FFF6
      EA00FFF2E500FEEFDD00FEECD600FEE9D100FEE6CA00CC670100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9A001A4BFF001645FF001444FF000D2FE50000009A0000000000000000000000
      000000000000000000000000000000009A000027F0000030FF000030FF00002E
      FD0000009A000000000000000000000000000000000000000000000000000000
      000000000000000000000000000017AD17003ADD370000C5000004C7000007C9
      000007C8000004C9000000C7000004C9020035D935002BAB3000000000000000
      000000000000000000000000000000000000000000000000000000000000BB97
      9300FEF9F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9
      F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9
      F400FEF9F400AA807D000000000000000000FFFEFD00FFFCF900FFFAF400FFF7
      EE00FFF5E800FFF1E100FEEEDB00FEEBD400FEE8CE00CC670100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9A001740F1001A4BFF001746FF001646FF000E30E40000009A00000000000000
      0000000000000000000000009A000129EF000030FF00002EFF000030FF000023
      E70000009A000000000000000000000000000000000000000000000000000000
      000000000000000000000000000012A912001FD3230000C4000001C6000002C0
      000002C4000001C5000000C6000000BF000022CE220030A62C00000000000000
      000000000000000000000000000000000000000000000000000000000000BB98
      9500FEF8F100FEF8F100F6F4EA0089BB87002F923500178A200084B98100F8F5
      EC00FEF8F100FEF8F100FEF8F100FEF8F100FEF8F100FEF8F100FEF8F100FEF8
      F100FEF8F100AB827F000000000000000000FFFFFF00FFFDFC00FFFBF700FFF9
      F200FFF5EC00FFF2E500FEF0DE00FEECD700FEE9D100CC670100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009A001940F0001C4CFF001847FF001646FF000F32E70000009A000000
      00000000000000009A00002BF7000232FF000331FF000131FF000023E4000000
      9A00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000011A50C000DC30F0000BB000000BD000000BC
      000000B7060000BC000000BC010000BB01000ABE0A0029A62900000000000000
      000000000000000000000000000000000000000000000000000000000000BD99
      9600FEF6EF00FEF6EF00DDE4D00084B9860069CC720001A610000B891500E7EA
      DA00FEF6EF00FEF6EF00FEF6EF00FEF6EF00FEF6EF00FEF6EF00FEF6EF00FEF6
      EF00FEF6EF00AD83800000000000000000009933000099330000993300009933
      00009933000099330000993300009933000099330000CC670100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009A001A40EF001D4DFF001948FF001848FF001238EF000000
      9A0000009A00002BF800002FFF00002EFF000232FF000324E50000009A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000069A090000B4050000B5000000B3000000B2
      000000B3000000B7000000AE040000B2020000AE000028A72800000000000000
      000000000000000000000000000000000000000000000000000000000000BD9B
      9800FEF5ED00FEF5ED00DFE4D0007DB57F0063C76C0001A310000B881500E8E9
      D900FEF5ED00FEF5ED00FEF5ED00FEF5ED00FEF5ED00FEF5ED00FEF5ED00FEF5
      EC00FDF4EC00AD84810000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000066
      00000000000000000000CC670100993300009933000099330000993300009933
      0000993300009933000099330000993300000000000000000000000000000000
      0000000000000000000000009A001B42F0001E4EFF001B4AFF001949FF000E38
      F6000431FD000131FF00002EFF000030FF000027F10000009A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001090080000B1040000AE030000A7000000AC
      000000AE000000B3000000AB000000A9000000AD000027A02700000000000000
      000000000000000000000000000000000000000000000000000000000000BF9D
      9A00FEF4EA00FEF4EA00E4E6D2007EB6800063C86D0001A30F000B881500EDEB
      DB00FEF4EA00FEF4EA00FEF4EA00FEF4EA00FEF4EA00FEF4EA00FEF4EA00FDF3
      E900FDF3E900AF85820000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006600000066
      00000000000000000000CC670100FFFBF600FFF8F100FEF6EC00FFF3E600FFF0
      DF00FFECD800FEEAD200FEE7CC00FEE4C7000000000000000000000000000000
      000000000000000000000000000000009A001B42EF001F4FFF001745FF000E3D
      FF000939FF000634FF000333FF000128F00000009A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000E8C070000A6020000A2060000A5000000A8
      050000A8000002A8000003A3000000A2000000A600002E923300000000000000
      000000000000000000000000000000000000000000000000000000000000AF9A
      8D00E8E7D400E8E7D400CAD6B90083B483006DCE7A0004A714000B871500D3DC
      C200E8E8D500E8E8D500E8E8D500FEF3E800FEF3E800FEF3E800FDF2E700FDF2
      E700FDF1E600AF87840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000066000045D16B000066
      00000000000000000000CC670100FFFBF800FEF9F300FFF7EE00FFF4E800FEF1
      E100FEEEDB00FEEBD500FEE8CE00FEE5C9000000000000000000000000000000
      00000000000000000000000000000000000000009A001B45F5001747FF001342
      FF000F3EFF000C3CFF000830F00000009A000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009CDD9C002497
      24002CA328002A9E270031983100009402000299000008980100029E00000097
      0200009D0200039A0500059D000000A00000059B0000099109002E9A29002A9F
      2E00279B2900299B2E00000000000000000000000000000000008B498E0043A5
      52001D9A33001E9831001790230061B96D0052C6640013AD260012981F000E88
      18000C8816000B8815000B89150083B67B00FFF1E500FEF1E500FEF1E500FEF0
      E400F9ECDE00B188860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000066000058E087004AD473000066
      00000000000000000000CC670100FFFCF900FFF9F500FFF7F000FEF5EA00FFF2
      E400FEEFDE00FFECD700FFE9D100FEE7CB000000000000000000000000000000
      00000000000000000000000000000000000000009A001F4DFC001D4CFF001A48
      FF001544FF001443FF00143CF00000009A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7E3B7001396
      1500009000000991010000930000009400000294000008920000029400000093
      07000094010000940200009B020000900200068B060000990000009700000094
      0000009800001C9E19000000000000000000000000000000000066A56700AEFD
      CB003ADB6B003DD5680036D05E0023C0440021B73B0024B43A0015B02A000BAC
      1E0004A5130001A30F0001A711000B851400FEEFE200FEEFE200FDEFE100F9EA
      DB00F0E2D100B28A870000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000006600004ED879000066
      00000000000000000000CC670100FFFCFA00FFFBF800FEF9F200FEF6ED00FFF4
      E700FFF0E100FEEDD900FEEAD400FEE7CD000000000000000000000000000000
      000000000000000000000000000000009A002A58FC002756FF002251FF00204F
      FF001D4DFF001D4CFF001E4EFF00173EEF0000009A0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B7E3
      BC0016961600058C05001098100000880000008D0000028C0000018E0000008D
      0400018E0100028D060000890500008D0600008C00000488010019971000028A
      000029992800D4EDC8000000000000000000000000000000000061A46400D3FF
      E7008AEDAC008DEAAA0089E6A3007ADC920041C55D0023B9400056C969006ED0
      7C0068CB740064C76D0063C96C00228E2B00FEEEE000FDEDDF00F8E8D800EFE0
      CE00E5D6C100B38C890000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006600000066
      00000000000000000000CC670100FFFDFC00FFFBF800FFF9F500FFF7EF00FFF4
      E900FFF1E300FFEEDC00FFECD500FFE9D0000000000000000000000000000000
      0000000000000000000000009A002C56F4003160FF002B5AFF00295AFF002047
      F1001F46F1002454FF00204FFF001F4FFF00183FF00000009A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B7E5B7001590150010940F00219A1F000487070002880000018500000087
      0000018400000488000000890200008B00000C8E0B002E992800088606002894
      2C00CEF0D3000000000000000000000000000000000000000000814E860075B0
      77007BB27D007BB27D0076AD7400BFD6BD0080DF980026C34A0062BB6F007BB2
      7E007EB582007EB582007EB582008AB67F00FDECDC00F7E6D500EEDECB00E4D4
      BE00D9C9B100B58E8B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000066
      00000000000000000000CC670100993300009933000099330000993300009933
      0000993300009933000099330000993300000000000000000000000000000000
      00000000000000009A00325EF7003666FF003361FF003365FF00274FF0000000
      9A0000009A002047EF002656FF002251FF002151FF001840EF0000009A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFDFBF000E8912002292210030A13B0002830100057F0200017D
      01000084000000820000017A01000F81080042A340001286120023942700D5EE
      D70000000000000000000000000000000000000000000000000000000000AD9E
      8E00E0DDC100E0DDC100C5CDAA0071AD73008DEAA9003ED5680013922600CCD2
      B000E0DDC100DFDDC000DFDDC000FDEAD900F6E5D200EDDCC700E3D2BB00D8C8
      AE00CCBDA100B68F8C0000000000000000009933000099330000993300009933
      00009933000099330000993300009933000099330000CC670100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009A003865F7003C6DFF003867FF003869FF00284DE70000009A000000
      00000000000000009A001E41E7002757FF002352FF002252FF001A42F0000000
      9A00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BFE3C00018810F00298F2000369C3C00057607000078
      0000017D01000177010008770700409F3D001E871800288E2800D1F0D3000000
      000000000000000000000000000000000000000000000000000000000000C6A7
      A300FFECDA00FFECDA00E6E0C5007AB27C0093EFB20048DD7600229B3600EEE3
      CC00FEEBD900FEEBD900FCE9D700F6E3CF00EDDAC400E2D0B800D7C6AB00D9CB
      B400E5D4C100BB9894000000000000000000FFFBF600FEF8F000FFF6EB00FEF2
      E400FEEFDD00FEEBD600FFE9D000FEE6CA00FEE4C500CC670100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9A00406EFB004172FF003E6DFF003E6FFF002A4CE40000009A00000000000000
      0000000000000000000000009A001D40E4002859FF002452FF002353FF001C45
      F30000009A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0DBBF00107A1300278D29004C9B40000C77
      0700007500000B7C1000519D52001C82190021852300DAEAD900000000000000
      000000000000000000000000000000000000000000000000000000000000C7A8
      A400FFEAD800FFEAD800E0DBBE007BB17C0092F3B60049E8820024A03C00E7DE
      C400FEE9D700FCE7D400F5E1CC00F7EEE400FEFEFE00FEFEFD00FEF8F200F2E0
      D600C5A59F00000000000000000000000000FEFCF800FEF9F300FFF7EE00FFF3
      E700FFF1E100FEEDDA00FEEAD400FEE8CD00FEE5C700CC670100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9A004676FD004576FF004475FF002E51E50000009A0000000000000000000000
      000000000000000000000000000000009A001E41E500295AFF002758FF001E48
      F30000009A000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BBDBC60016771A00368A310061A4
      5A00208624005BA862002080230025832500D8EEDE0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C7A8
      A500FFE9D500FFE9D500DED9B9007DB47F00D2FFE700ACFECC0046A85600E5DC
      C000FBE6D100F4DFC900EBD7BE00F4EDE300FEFDFC00FEF7F000EAD5CC00BF9C
      980000000000000000000000000000000000FFFDFB00FFFBF700FFF8F100FFF6
      EA00FFF2E500FEEFDD00FEECD600FEE9D100FEE6CA00CC670100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009A004471F8003356E50000009A000000000000000000000000000000
      00000000000000000000000000000000000000009A002144E800244DF1000000
      9A00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C4E0C80014701700348C
      340069AC71002679270029842800DAEFDB000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C8AA
      A700FFE8D300FFE8D300F6E4CC0083B0750060A3620064A464008AB37900F4E1
      C900F3DDC600EAD5BB00DFCAAF00FAF6F100FEF6EE00DFC6BE00D2BAB7000000
      000000000000000000000000000000000000FFFEFD00FFFCF900FFFAF400FFF7
      EE00FFF5E800FFF1E100FEEEDB00FEEBD400FEE8CE00CC670100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009A0000009A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009A0000009A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C3E1C4001072
      1B002276230029802E00DEEDDE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C9AB
      A800FFE7D100FFE7D100FFE7D100FFE6D000FEE6D000FEE6CF00FAE2CB00F3DB
      C300E9D3B800DEC9AC00E5D6C200FAF0E700D4B8B100D9C5C400000000000000
      000000000000000000000000000000000000FFFFFF00FFFDFC00FFFBF700FFF9
      F200FFF5EC00FFF2E500FEF0DE00FEECD700FEE9D100CC670100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D1E2
      D30067956600E5F3E70000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CAAB
      A800FFE6CF00FFE6CF00FFE6CF00FEE5CE00FEE5CE00FAE1C900F1DAC000E8D1
      B600DDC7AA00D5C1A300F0E1D700CDAFAB00DECDCC0000000000000000000000
      000000000000000000000000000000000000CC670100CC670100CC670100CC67
      0100CC670100CC670100CC670100CC670100CC670100CC670100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CAAC
      A900C9ABA800C9ABA800C9AAA700C9A9A600C8A8A500C7A8A500C6A7A400C5A6
      A300C5A5A200C4A4A100CFB4B200E7DAD9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFF800FFFFFFC00003FF
      FFFFFFF800FFFFFF800001FFFFFFFFF8000001FF800001FF0001FFF8000001FF
      800001FF0001FFF8000001FF800001FF0001FFF8000001FF800001FF0001FFF8
      000001FF800001FF0001FFF8000001FF800001FF0001FFF8000001FF800001C0
      0001FFF8000001FF800001C000010008010001FF800001C000010008030001FF
      800001C000010008050001FF800001C00001000FFC0001F0800001C00001000F
      FC000180800001C00001000E7C000000800001C00003000C78000000800001C0
      007F000800000000800001C0007F000001000000800001C0007F000003000000
      800001C0007F000807FF8000800001C0007F001C7FFFE080C00003E000FF003E
      7FFFFFF0FFFFFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000FFFFFFFF
      FFFFFFFFFFC00000FFE3FFFFFFFFC01FCFC00000FFC1FF030000CF9F87C00000
      FF80FF030000C79F87C00000FF007F030000E3FF03C00007FE003F030000F1FF
      03C00007FC001F030000F8FE01C00007F8000F030000FC7C00C00007F00007FF
      FFFFCE3FCFC00007E00003F3FFFFCF1FCFC00007C00003E0FFFFC01FCFC00007
      C00003E03FF3FFFFCFC00007FE003FC01FE3FFFFCFC00007FE003FC03FC3C30F
      CFC00007FE003F807F87C78FCFC00007FE003F803E0FE79FCFC00007FE003FF0
      001FE01FCFC00007FE003FF8003FF33FCFC00007FE003FFC007FF33FCFC00007
      FE003FFE00FFF87FCFC00007FE003FFF83FFF87FCFC00007FFFFFFFFFFFFFCFF
      CFC00007FFFFFFFFFFFFFCFFCFFFFFFFE00003FFFFFFFFFFFFFFFFFFE00003FF
      FFFFFFFFFFFFFFFFE00003003FFFFFFFFFFE003FE00003003FFFF9FF9FFE003F
      E00003003FFFF0FF0FFE003FE00003003FFFE07E07FE003FE00003003FFFE03C
      07FE003FE00003003FFFF0180FFE003FE00003003FFFF8001FFE003FE00003FF
      EC00FC003FFE003FE00003FFCC00FE007FFE003FE00003FF8C00FF00FFC00003
      C00003FF0C00FF00FFC00003C00003FF8C00FE007FE00003C00003FFCC00FC00
      3FF00007C00003FFEC00F8001FF8000FE00003003FFFF0180FFC001FE0000300
      3FFFE03C07FE003FE00007003FFFE07E07FF007FE0000F003FFFF0FF0FFF80FF
      E0001F003FFFF9FF9FFFC1FFE0003F003FFFFFFFFFFFE3FFE0007F003FFFFFFF
      FFFFFFFFE000FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object adoRef: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select * from REFERANSE'#13#10'where IDKLIENT = :IdKlient'#13#10'order by RE' +
      'F;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 684
    Top = 124
    object adoRefIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object adoRefREF: TStringField
      FieldName = 'REF'
      Size = 30
    end
    object adoRefSTANDARD: TSmallintField
      FieldName = 'STANDARD'
    end
  end
  object adoStatus: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 'select * '#13#10'from ORDRESTATUS'#13#10'order by IDORDRESTATUS'
    Parameters = <>
    Left = 688
    Top = 56
    object adoStatusIDORDRESTATUS: TIntegerField
      FieldName = 'IDORDRESTATUS'
    end
    object adoStatusSTATUSTEKST: TStringField
      FieldName = 'STATUSTEKST'
    end
  end
  object dsStatus: TDataSource
    DataSet = adoStatus
    Left = 720
    Top = 56
  end
end
