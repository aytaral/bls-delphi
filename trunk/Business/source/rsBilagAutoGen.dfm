object frmBilagAutoGen: TfrmBilagAutoGen
  Left = 368
  Top = 192
  BorderStyle = bsDialog
  Caption = 'Automatisk generering av bilag'
  ClientHeight = 564
  ClientWidth = 759
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 532
    Width = 759
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object btnGenerer: TButton
      Left = 553
      Top = 0
      Width = 101
      Height = 25
      Caption = '&Generer bilag'
      TabOrder = 0
      OnClick = btnGenererClick
    end
    object btnAvbryt: TButton
      Left = 660
      Top = 0
      Width = 90
      Height = 25
      Caption = '&Lukk'
      ModalResult = 2
      TabOrder = 1
    end
    object btnVelgAlle: TButton
      Left = 8
      Top = 0
      Width = 101
      Height = 25
      Caption = 'Merk alle'
      TabOrder = 2
      OnClick = btnVelgAlleClick
    end
    object btnFjernMerking: TButton
      Left = 112
      Top = 0
      Width = 101
      Height = 25
      Caption = 'Fjern merking'
      TabOrder = 3
      OnClick = btnFjernMerkingClick
    end
    object cbTilhorende: TCheckBox
      Left = 236
      Top = 4
      Width = 221
      Height = 17
      Caption = 'Generer bilag for tilh'#248'rende innbetalinger'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 759
    Height = 77
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 20
      Top = 44
      Width = 100
      Height = 13
      Caption = 'Vis data for perioden'
    end
    object Bevel1: TBevel
      Left = 0
      Top = 75
      Width = 759
      Height = 2
      Align = alBottom
      Shape = bsBottomLine
    end
    object Label2: TLabel
      Left = 20
      Top = 12
      Width = 635
      Height = 21
      Caption = 
        'Automatisk generering av bilag for utg'#229'ende fakturaer og innbeta' +
        'linger i valgt periode'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Image1: TImage
      Left = 696
      Top = 12
      Width = 53
      Height = 53
    end
    object Label3: TLabel
      Left = 244
      Top = 44
      Width = 8
      Height = 13
      Caption = 'til'
    end
    object dtpStart: TDateTimePicker
      Left = 132
      Top = 40
      Width = 101
      Height = 21
      Date = 38909.902875150460000000
      Time = 38909.902875150460000000
      TabOrder = 0
      OnChange = dtpStartChange
    end
    object dtpSlutt: TDateTimePicker
      Left = 264
      Top = 40
      Width = 101
      Height = 21
      Date = 38909.903001724540000000
      Time = 38909.903001724540000000
      TabOrder = 1
      OnChange = dtpStartChange
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 77
    Width = 759
    Height = 455
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 2
    object Pc: TPageControl
      Left = 8
      Top = 8
      Width = 743
      Height = 439
      ActivePage = tsFaktura
      Align = alClient
      TabOrder = 0
      OnChange = PcChange
      object tsFaktura: TTabSheet
        Caption = 'Fakturaer'
        object blsBorderPanel1: TblsBorderPanel
          Left = 0
          Top = 0
          Width = 735
          Height = 411
          Align = alClient
          BorderWidth = 5
          Caption = 'blsBorderPanel1'
          TabOrder = 0
          object dbgFaktura: TJvDBGrid
            Left = 6
            Top = 6
            Width = 723
            Height = 399
            Align = alClient
            DataSource = dsFaktura
            Options = [dgTitles, dgColumnResize, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            PopupMenu = popFaktura
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbgFakturaDrawColumnCell
            MultiSelect = True
            SelectColumn = scGrid
            AutoSizeColumns = True
            AutoSizeColumnIndex = 3
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <
              item
                ControlName = 'DBCheckBox1'
                FieldName = 'VALGT'
                FitCell = fcCellSize
              end>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'FAKTURANR'
                Title.Caption = '  Fakturanr'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FAKTURADATO'
                Title.Caption = 'Fakturadato'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FORFALLDATO'
                Title.Caption = 'Forfallsdato'
                Width = 80
                Visible = True
              end
              item
                Alignment = taLeftJustify
                Expanded = False
                FieldName = 'KUNDENR'
                Title.Caption = 'Kundenr'
                Width = 68
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NAVN'
                Title.Caption = 'Kundenavn'
                Width = 345
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SUMTOT'
                Title.Caption = 'Total'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                Width = 10
                Visible = True
              end>
          end
        end
      end
      object tsInnbetaling: TTabSheet
        Caption = 'Innbetalinger'
        ImageIndex = 1
        object blsBorderPanel2: TblsBorderPanel
          Left = 0
          Top = 0
          Width = 735
          Height = 411
          Align = alClient
          BorderWidth = 5
          Caption = 'blsBorderPanel1'
          TabOrder = 0
          object dbgInnbetaling: TJvDBGrid
            Left = 6
            Top = 6
            Width = 723
            Height = 399
            Align = alClient
            DataSource = dsInnbetaling
            Options = [dgTitles, dgColumnResize, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            PopupMenu = popInnbetaling
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbgInnbetalingDrawColumnCell
            MultiSelect = True
            AutoSizeColumns = True
            AutoSizeColumnIndex = 5
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'DATO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Caption = ' Dato'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BELOP'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Caption = 'Bel'#248'p'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FAKTURANR'
                Title.Caption = 'Fakturanr'
                Width = 62
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'FORFALLDATO'
                Title.Caption = 'Forfall'
                Width = 68
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'KUNDENR'
                Title.Caption = 'Kundenr'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NAVN'
                Title.Caption = 'Kundenavn'
                Width = 309
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SUMTOT'
                Title.Caption = 'Faktura sum'
                Width = 90
                Visible = True
              end>
          end
        end
      end
    end
  end
  object adoFaktura: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select FAKTURANR, FAKTURADATO, FORFALLDATO, F.KUNDENR, K.NAVN, S' +
      'UMTOT, IDBILAG, IDFAKTURA'#13#10'from FAKTURA F'#13#10'left join KONTAKT K o' +
      'n F.KUNDENR = K.KONTAKTNR and K.IDKLIENT = F.IDKLIENT'#13#10'where F.I' +
      'DKLIENT = :IdKlient'#13#10'and F.FAKTURADATO between :Start and :Slutt' +
      #13#10'and F.IDBILAG is null'#13#10'order by FAKTURANR;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'Start'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 6
        Value = 38718d
      end
      item
        Name = 'Slutt'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 6
        Value = 39082d
      end>
    Left = 596
    Top = 320
    object adoFakturaIDFAKTURA: TIntegerField
      FieldName = 'IDFAKTURA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoFakturaFAKTURANR: TIntegerField
      FieldName = 'FAKTURANR'
    end
    object adoFakturaFAKTURADATO: TDateField
      FieldName = 'FAKTURADATO'
    end
    object adoFakturaKUNDENR: TIntegerField
      FieldName = 'KUNDENR'
    end
    object adoFakturaNAVN: TStringField
      FieldName = 'NAVN'
      Size = 80
    end
    object adoFakturaSUMTOT: TFloatField
      FieldName = 'SUMTOT'
    end
    object adoFakturaFORFALLDATO: TDateField
      FieldName = 'FORFALLDATO'
    end
    object adoFakturaIDBILAG: TIntegerField
      FieldName = 'IDBILAG'
    end
  end
  object dspFaktura: TDataSetProvider
    DataSet = adoFaktura
    UpdateMode = upWhereKeyOnly
    Left = 624
    Top = 320
  end
  object cdsFaktura: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFaktura'
    Left = 652
    Top = 320
    object cdsFakturaFAKTURANR: TIntegerField
      DisplayWidth = 12
      FieldName = 'FAKTURANR'
    end
    object cdsFakturaFAKTURADATO: TDateField
      DisplayWidth = 15
      FieldName = 'FAKTURADATO'
    end
    object cdsFakturaKUNDENR: TIntegerField
      DisplayWidth = 10
      FieldName = 'KUNDENR'
    end
    object cdsFakturaNAVN: TStringField
      DisplayWidth = 64
      FieldName = 'NAVN'
      Size = 80
    end
    object cdsFakturaSUMTOT: TFloatField
      DisplayWidth = 12
      FieldName = 'SUMTOT'
      DisplayFormat = '#,##0.00'
    end
    object cdsFakturaFORFALLDATO: TDateField
      FieldName = 'FORFALLDATO'
    end
    object cdsFakturaIDBILAG: TIntegerField
      FieldName = 'IDBILAG'
    end
    object cdsFakturaIDFAKTURA: TIntegerField
      FieldName = 'IDFAKTURA'
    end
  end
  object dsFaktura: TDataSource
    DataSet = cdsFaktura
    Left = 680
    Top = 320
  end
  object popFaktura: TTBXPopupMenu
    Left = 648
    Top = 161
    object TBXItem2: TTBXItem
      Action = acKobleFakturaBilag
    end
  end
  object popInnbetaling: TTBXPopupMenu
    Left = 676
    Top = 161
    object TBXItem1: TTBXItem
      Action = acKobleInnbetalingBilag
    end
  end
  object adoInnbetaling: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select I.DATO, I.BELOP, F.FAKTURANR, F.FORFALLDATO, F.KUNDENR, K' +
      '.NAVN, F.SUMTOT, F.IDFAKTURA, I.IDBILAG, I.IDINNBETALING'#13#10'from I' +
      'NNBETALING I'#13#10'join FAKTURA F on I.IDFAKTURA = F.IDFAKTURA'#13#10'left ' +
      'join KONTAKT K on F.KUNDENR = K.KONTAKTNR and K.IDKLIENT =  F.ID' +
      'KLIENT'#13#10'where F.IDKLIENT = :IdKlient'#13#10'and I.DATO between :Start ' +
      'and :Slutt'#13#10'and I.IDBILAG is null'#13#10'order by I.DATO;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'Start'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 6
        Value = Null
      end
      item
        Name = 'Slutt'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 6
        Value = Null
      end>
    Left = 596
    Top = 353
    object adoInnbetalingIDINNBETALING: TIntegerField
      FieldName = 'IDINNBETALING'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoInnbetalingDATO: TDateField
      FieldName = 'DATO'
    end
    object adoInnbetalingBELOP: TFloatField
      FieldName = 'BELOP'
    end
    object adoInnbetalingFAKTURANR: TIntegerField
      FieldName = 'FAKTURANR'
    end
    object adoInnbetalingFORFALLDATO: TDateField
      FieldName = 'FORFALLDATO'
    end
    object adoInnbetalingKUNDENR: TIntegerField
      FieldName = 'KUNDENR'
    end
    object adoInnbetalingNAVN: TStringField
      FieldName = 'NAVN'
      Size = 80
    end
    object adoInnbetalingSUMTOT: TFloatField
      FieldName = 'SUMTOT'
    end
    object adoInnbetalingIDBILAG: TIntegerField
      FieldName = 'IDBILAG'
    end
    object adoInnbetalingIDFAKTURA: TIntegerField
      FieldName = 'IDFAKTURA'
    end
  end
  object dspInnbetaling: TDataSetProvider
    DataSet = adoInnbetaling
    UpdateMode = upWhereKeyOnly
    Left = 624
    Top = 353
  end
  object cdsInnbetaling: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInnbetaling'
    Left = 652
    Top = 353
    object cdsInnbetalingDATO: TDateField
      FieldName = 'DATO'
    end
    object cdsInnbetalingBELOP: TFloatField
      FieldName = 'BELOP'
      DisplayFormat = '#,##0.00'
    end
    object cdsInnbetalingFAKTURANR: TIntegerField
      FieldName = 'FAKTURANR'
    end
    object cdsInnbetalingFORFALLDATO: TDateField
      FieldName = 'FORFALLDATO'
    end
    object cdsInnbetalingKUNDENR: TIntegerField
      FieldName = 'KUNDENR'
    end
    object cdsInnbetalingNAVN: TStringField
      FieldName = 'NAVN'
      Size = 80
    end
    object cdsInnbetalingSUMTOT: TFloatField
      FieldName = 'SUMTOT'
      DisplayFormat = '#,##0.00'
    end
    object cdsInnbetalingIDBILAG: TIntegerField
      FieldName = 'IDBILAG'
    end
    object cdsInnbetalingIDINNBETALING: TIntegerField
      FieldName = 'IDINNBETALING'
    end
    object cdsInnbetalingIDFAKTURA: TIntegerField
      FieldName = 'IDFAKTURA'
    end
  end
  object dsInnbetaling: TDataSource
    DataSet = cdsInnbetaling
    Left = 680
    Top = 353
  end
  object ActionList: TActionList
    Left = 620
    Top = 161
    object acKobleFakturaBilag: TAction
      Caption = 'Koble faktura til eksisterende bilag'
      OnExecute = acKobleFakturaBilagExecute
    end
    object acKobleInnbetalingBilag: TAction
      Caption = 'Koble innbetaling til eksisterende bilag'
      OnExecute = acKobleInnbetalingBilagExecute
    end
  end
end
