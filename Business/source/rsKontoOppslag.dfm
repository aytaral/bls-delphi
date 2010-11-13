object frmKontoOppslag: TfrmKontoOppslag
  Left = 329
  Top = 215
  ActiveControl = editKonto
  BorderStyle = bsDialog
  Caption = 'Oppslag p'#229' konto'
  ClientHeight = 633
  ClientWidth = 696
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
  object Panel1: TPanel
    Left = 0
    Top = 600
    Width = 696
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      696
      33)
    object btnLukk: TButton
      Left = 603
      Top = 0
      Width = 85
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Lukk'
      Default = True
      ModalResult = 2
      TabOrder = 0
    end
    object btnPreview: TButton
      Left = 9
      Top = 0
      Width = 93
      Height = 25
      Caption = '&Forh'#229'ndsvis'
      Enabled = False
      TabOrder = 1
      OnClick = btnPreviewClick
    end
    object btnPrint: TButton
      Left = 108
      Top = 0
      Width = 93
      Height = 25
      Caption = '&Skriv ut'
      Enabled = False
      TabOrder = 2
      OnClick = btnPrintClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 696
    Height = 93
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 8
    ParentBackground = False
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 680
      Height = 77
      Align = alClient
      Caption = 'Konto:'
      TabOrder = 0
      DesignSize = (
        680
        77)
      object Label5: TLabel
        Left = 13
        Top = 20
        Width = 51
        Height = 13
        Caption = 'S'#248'ketekst:'
      end
      object Label2: TLabel
        Left = 212
        Top = 17
        Width = 56
        Height = 13
        Caption = 'Kontonavn:'
      end
      object editKonto: TEdit
        Left = 13
        Top = 36
        Width = 166
        Height = 21
        TabOrder = 0
        OnEnter = editKontoEnter
        OnExit = editKontoExit
        OnKeyDown = editKontoKeyDown
        OnKeyPress = editKontoKeyPress
      end
      object btnSokKonto: TButton
        Left = 185
        Top = 36
        Width = 21
        Height = 21
        Caption = '...'
        TabOrder = 1
        OnClick = btnSokKontoClick
      end
      object editKontonavn: TEdit
        Left = 212
        Top = 36
        Width = 453
        Height = 21
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        OnChange = editKontonavnChange
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 93
    Width = 696
    Height = 507
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 2
    object Pc: TPageControl
      Left = 8
      Top = 8
      Width = 680
      Height = 486
      ActivePage = tsTrans
      Align = alClient
      TabOrder = 0
      OnChange = PcChange
      object tsTrans: TTabSheet
        Caption = 'Transaksjoner'
        ImageIndex = 1
        object blsBorderPanel1: TblsBorderPanel
          Left = 0
          Top = 0
          Width = 672
          Height = 458
          Align = alClient
          BorderWidth = 5
          Caption = 'blsBorderPanel1'
          TabOrder = 0
          object dbgTrans: TJvDBGrid
            Left = 6
            Top = 41
            Width = 660
            Height = 364
            TabStop = False
            Align = alClient
            DataSource = dsTrans
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = dbgTransDblClick
            TitleButtons = True
            OnTitleBtnClick = dbgTransTitleBtnClick
            OnTitleBtnDblClick = dbgTransTitleBtnDblClick
            AlternateRowColor = clCream
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
                Expanded = False
                FieldName = 'BILAGNR'
                Title.Caption = 'Bilagnr.'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATO'
                Title.Caption = 'Dato'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERIODENR'
                Title.Caption = 'P.'
                Width = 26
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MVAKODE'
                Title.Caption = 'M.k.'
                Width = 26
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IDTEKST'
                Title.Caption = 'T.k.'
                Width = 26
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TEKST'
                Title.Caption = 'Tekst'
                Width = 215
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FAKTURANR'
                Title.Caption = 'Fakturanr'
                Width = 85
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DEBET'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Alignment = taRightJustify
                Title.Caption = 'Debet'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'KREDIT'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Alignment = taRightJustify
                Title.Caption = 'Kredit'
                Width = 80
                Visible = True
              end>
          end
          object Panel6: TPanel
            Left = 6
            Top = 405
            Width = 660
            Height = 47
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object Panel4: TPanel
              Left = 0
              Top = 8
              Width = 660
              Height = 39
              Align = alBottom
              BevelOuter = bvLowered
              TabOrder = 0
              object Label6: TLabel
                Left = 14
                Top = 5
                Width = 84
                Height = 13
                Caption = 'Inng'#229'ende saldo:'
              end
              object Label7: TLabel
                Left = 234
                Top = 5
                Width = 79
                Height = 13
                Caption = 'Utg'#229'ende saldo:'
              end
              object lblDebet: TLabel
                Left = 550
                Top = 20
                Width = 24
                Height = 13
                Alignment = taRightJustify
                Caption = '0,00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lblKredit: TLabel
                Left = 629
                Top = 20
                Width = 24
                Height = 13
                Alignment = taRightJustify
                Caption = '0,00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 124
                Top = 5
                Width = 80
                Height = 13
                Caption = 'Denne perioden:'
              end
              object Label11: TLabel
                Left = 519
                Top = 5
                Width = 55
                Height = 13
                Alignment = taRightJustify
                Caption = 'Sum debet:'
              end
              object Label12: TLabel
                Left = 599
                Top = 6
                Width = 54
                Height = 13
                Alignment = taRightJustify
                Caption = 'Sum kredit:'
              end
              object lblInn: TLabel
                Left = 74
                Top = 20
                Width = 24
                Height = 13
                Alignment = taRightJustify
                Caption = '0,00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lblPeriode: TLabel
                Left = 180
                Top = 20
                Width = 24
                Height = 13
                Alignment = taRightJustify
                Caption = '0,00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lblUt: TLabel
                Left = 289
                Top = 20
                Width = 24
                Height = 13
                Alignment = taRightJustify
                Caption = '0,00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
          end
          object Panel7: TPanel
            Left = 6
            Top = 6
            Width = 660
            Height = 35
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object Label1: TLabel
              Left = 3
              Top = 8
              Width = 59
              Height = 13
              Caption = 'Fra periode:'
            end
            object Label3: TLabel
              Left = 202
              Top = 8
              Width = 53
              Height = 13
              Caption = 'Til periode:'
            end
            object editPStart: TJvSpinEdit
              Left = 69
              Top = 4
              Width = 41
              Height = 21
              MaxValue = 13.000000000000000000
              MinValue = 1.000000000000000000
              Value = 1.000000000000000000
              TabOrder = 0
              OnChange = editPStartChange
            end
            object editPSlutt: TJvSpinEdit
              Left = 261
              Top = 4
              Width = 41
              Height = 21
              MaxValue = 13.000000000000000000
              MinValue = 1.000000000000000000
              Value = 13.000000000000000000
              TabOrder = 1
              OnChange = editPSluttChange
            end
            object editAarSlutt: TJvSpinEdit
              Left = 308
              Top = 4
              Width = 54
              Height = 21
              MaxValue = 2100.000000000000000000
              MinValue = 1970.000000000000000000
              Value = 2006.000000000000000000
              TabOrder = 2
              OnChange = editKontonavnChange
            end
            object editAarStart: TJvSpinEdit
              Left = 116
              Top = 4
              Width = 55
              Height = 21
              MaxValue = 2100.000000000000000000
              MinValue = 1970.000000000000000000
              Value = 2006.000000000000000000
              TabOrder = 3
              OnChange = editKontonavnChange
            end
          end
        end
      end
      object tsMndtall: TTabSheet
        Caption = 'M'#229'nedstall'
        ImageIndex = 1
        object blsBorderPanel2: TblsBorderPanel
          Left = 0
          Top = 0
          Width = 672
          Height = 458
          Align = alClient
          Caption = 'blsBorderPanel2'
          TabOrder = 0
          object blsBorderPanel3: TblsBorderPanel
            Left = 1
            Top = 1
            Width = 670
            Height = 456
            Align = alClient
            BorderWidth = 5
            Caption = 'blsBorderPanel3'
            TabOrder = 0
            object dbgMnd: TJvDBGrid
              Left = 6
              Top = 6
              Width = 658
              Height = 444
              Align = alClient
              DataSource = dsMnd
              Options = [dgAlwaysShowEditor, dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              AlternateRowColor = clCream
              AutoSizeColumns = True
              AutoSizeColumnIndex = 1
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
              Columns = <
                item
                  Expanded = False
                  Title.Caption = ' '
                  Width = 10
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Periodenavn'
                  Title.Caption = 'Periode'
                  Width = 273
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Aar2'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Alignment = taRightJustify
                  Width = 181
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Aar1'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Alignment = taRightJustify
                  Width = 180
                  Visible = True
                end
                item
                  Expanded = False
                  Title.Caption = ' '
                  Width = 10
                  Visible = True
                end>
            end
          end
        end
      end
    end
    object Panel5: TPanel
      Left = 8
      Top = 494
      Width = 680
      Height = 5
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
    end
  end
  object dsTrans: TDataSource
    DataSet = cdsTrans
    Left = 116
    Top = 187
  end
  object adoKonto: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select O.KONTONR, O.NAVN, O.MVAKODE, 1 as KTYPE'#13#10'from KONTO O'#13#10'w' +
      'here O.IDKLIENT = :IdKlient1'#13#10'  union'#13#10'select K.KONTAKTNR as KON' +
      'TONR,'#13#10'       K.NAVN,'#13#10'       0 as MVAKODE,'#13#10'       case K.IDSER' +
      'IE'#13#10'         when '#39'KS'#39' then 2'#13#10'         when '#39'LS'#39' then 3'#13#10'      ' +
      '   else 0'#13#10'       end as KTYPE'#13#10'from KONTAKT K'#13#10'where K.IDKLIENT' +
      ' = :IdKlient2'
    Parameters = <
      item
        Name = 'IdKlient1'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'IdKlient2'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 352
    Top = 27
  end
  object dspKonto: TDataSetProvider
    DataSet = adoKonto
    Left = 380
    Top = 27
  end
  object cdsKonto: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'KONTONR'
        DataType = ftInteger
      end
      item
        Name = 'NAVN'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'MVAKODE'
        DataType = ftInteger
      end
      item
        Name = 'KTYPE'
        DataType = ftInteger
      end>
    IndexDefs = <>
    PacketRecords = 500
    Params = <
      item
        DataType = ftInteger
        Precision = 10
        Name = 'IdKlient1'
        ParamType = ptInput
        Size = 4
        Value = 1
      end
      item
        DataType = ftInteger
        Precision = 10
        Name = 'IdKlient2'
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    ProviderName = 'dspKonto'
    StoreDefs = True
    BeforeOpen = cdsKontoBeforeOpen
    Left = 408
    Top = 27
    object cdsKontoKONTONR: TIntegerField
      FieldName = 'KONTONR'
    end
    object cdsKontoNAVN: TStringField
      FieldName = 'NAVN'
      Size = 80
    end
    object cdsKontoMVAKODE: TIntegerField
      FieldName = 'MVAKODE'
    end
    object cdsKontoKTYPE: TIntegerField
      FieldName = 'KTYPE'
    end
  end
  object adoTrans: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select B.IDBILAG, B.BILAGNR, B.DATO, B.PERIODENR, B.AAR, P.MVAKO' +
      'DE, P.IDTEKST, P.TEKST, P.FAKTURANR,'#13#10'case when P.BELOP >= 0 the' +
      'n P.BELOP'#13#10'     else 0'#13#10'   end AS DEBET,'#13#10'case when P.BELOP < 0 ' +
      'then P.BELOP'#13#10'     else 0'#13#10'   end AS KREDIT'#13#10'from POSTERING P'#13#10'j' +
      'oin BILAG B on (P.IDBILAG = B.IDBILAG)'#13#10'where B.IDKLIENT = :IdKl' +
      'ient'#13#10'and CAST(CAST(B.AAR as FLOAT) + (CAST(B.PERIODENR as FLOAT' +
      ') / 100) as NUMERIC(15,4)) between :PStart and :PSlutt'#13#10'and ((P.' +
      'Kontonr = :Konto) or (P.KONTAKTNR = :Kontaktnr))'#13#10'order by B.BIL' +
      'AGNR;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PStart'
        DataType = ftBCD
        NumericScale = 4
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'PSlutt'
        DataType = ftBCD
        NumericScale = 4
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'Konto'
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
    Left = 32
    Top = 187
  end
  object dspTrans: TDataSetProvider
    DataSet = adoTrans
    UpdateMode = upWhereKeyOnly
    Left = 60
    Top = 187
  end
  object cdsTrans: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'IxBilagnr'
        Fields = 'BILAGNR'
      end
      item
        Name = 'IxBilagnr_desc'
        Fields = 'BILAGNR'
        Options = [ixDescending]
      end
      item
        Name = 'IxDebet'
        Fields = 'DEBET'
      end
      item
        Name = 'IxDebet_desc'
        Fields = 'DEBET'
        Options = [ixDescending]
      end
      item
        Name = 'IxKredit'
        Fields = 'KREDIT'
      end
      item
        Name = 'IxKredit_desc'
        Fields = 'KREDIT'
        Options = [ixDescending]
      end
      item
        Name = 'IxDato'
        Fields = 'DATO'
      end
      item
        Name = 'IxDato_desc'
        Fields = 'DATO'
        Options = [ixDescending]
      end
      item
        Name = 'IxPeriode'
        Fields = 'PERIODENR'
      end
      item
        Name = 'IxPeriode_desc'
        Fields = 'PERIODENR'
        Options = [ixDescending]
      end>
    PacketRecords = 100
    Params = <>
    ProviderName = 'dspTrans'
    StoreDefs = True
    BeforeOpen = cdsTransBeforeOpen
    Left = 88
    Top = 187
    object cdsTransBILAGNR: TIntegerField
      FieldName = 'BILAGNR'
    end
    object cdsTransDATO: TDateField
      FieldName = 'DATO'
    end
    object cdsTransPERIODENR: TSmallintField
      FieldName = 'PERIODENR'
    end
    object cdsTransAAR: TSmallintField
      FieldName = 'AAR'
    end
    object cdsTransMVAKODE: TIntegerField
      FieldName = 'MVAKODE'
    end
    object cdsTransIDTEKST: TIntegerField
      FieldName = 'IDTEKST'
    end
    object cdsTransTEKST: TStringField
      FieldName = 'TEKST'
      Size = 50
    end
    object cdsTransFAKTURANR: TStringField
      FieldName = 'FAKTURANR'
      Size = 25
    end
    object cdsTransDEBET: TBCDField
      FieldName = 'DEBET'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsTransKREDIT: TBCDField
      FieldName = 'KREDIT'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsTransIDBILAG: TIntegerField
      FieldName = 'IDBILAG'
    end
  end
  object spSaldo: TADOStoredProc
    Connection = Dm.adoConn
    CursorType = ctStatic
    ProcedureName = 'INN_SALDO'
    Parameters = <
      item
        Name = 'IDKLIENT'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end
      item
        Name = 'KONTONR'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end
      item
        Name = 'AAR'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end
      item
        Name = 'PERIODE'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 4
        Value = Null
      end>
    Left = 32
    Top = 219
    object spSaldoSALDO: TBCDField
      FieldName = 'SALDO'
      Precision = 15
      Size = 2
    end
  end
  object frRpt: TfrxReport
    Version = '4.5.37'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Forvalgt'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39300.834776099500000000
    ReportOptions.Name = 'Kontoutskrift'
    ReportOptions.LastChange = 39337.899798321770000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      'end.          ')
    ShowProgress = False
    OnGetValue = frRptGetValue
    Left = 32
    Top = 260
    Datasets = <
      item
        DataSet = frRpt.adoFirma
        DataSetName = 'adoFirma'
      end
      item
        DataSet = frRpt.adoTrans
        DataSetName = 'adoTrans'
      end>
    Variables = <
      item
        Name = ' Standard'
        Value = Null
      end
      item
        Name = 'IdKlient'
        Value = Null
      end
      item
        Name = 'Konto'
        Value = Null
      end
      item
        Name = 'StartPeriode'
        Value = Null
      end
      item
        Name = 'SluttPeriode'
        Value = Null
      end
      item
        Name = 'StartAar'
        Value = Null
      end
      item
        Name = 'SluttAar'
        Value = Null
      end
      item
        Name = 'Kontonavn'
        Value = Null
      end
      item
        Name = 'Innsaldo'
        Value = Null
      end
      item
        Name = 'Periode'
        Value = Null
      end
      item
        Name = 'Utsaldo'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object adoFirma: TfrxADOQuery
        UserName = 'adoFirma'
        CloseDataSource = True
        IgnoreDupParams = False
        Params = <
          item
            Name = 'IdKlient'
            DataType = ftInteger
            Expression = '<IdKlient>'
          end>
        SQL.Strings = (
          
            'select K.NAVN, K.ADRESSE, K.POSTNR, P.POSTSTED, K.TELEFON, K.FAK' +
            'S'
          'from KLIENT K     '
          
            'left join POSTNR P on K.POSTNR = P.POSTNR                       ' +
            '                                                                ' +
            '                   '
          
            'where IDKLIENT = :IdKlient                                      ' +
            '                   ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 40
        pTop = 20
        Parameters = <
          item
            Name = 'IdKlient'
            DataType = ftInteger
            Expression = '<IdKlient>'
          end>
      end
      object adoTrans: TfrxADOQuery
        UserName = 'adoTrans'
        CloseDataSource = True
        IgnoreDupParams = False
        Params = <
          item
            Name = 'IdKlient'
            DataType = ftInteger
            Expression = '<IdKlient>'
          end
          item
            Name = 'PStart'
            DataType = ftBCD
            Expression = '<StartAar>+(<StartPeriode>/100)'
          end
          item
            Name = 'PSlutt'
            DataType = ftBCD
            Expression = '<SluttAar>+(<SluttPeriode>/100)'
          end
          item
            Name = 'Konto'
            DataType = ftInteger
            Expression = '<Konto>'
          end
          item
            Name = 'Kontaktnr'
            DataType = ftInteger
            Expression = '<Konto>'
          end>
        SQL.Strings = (
          
            'select B.IDBILAG, B.BILAGNR, B.DATO, B.PERIODENR, B.AAR, P.MVAKO' +
            'DE, P.IDTEKST, P.TEKST, P.FAKTURANR,'
          'case when P.BELOP >= 0 then P.BELOP'
          '     else 0'
          '   end AS DEBET,'
          'case when P.BELOP < 0 then P.BELOP'
          '     else 0'
          '   end AS KREDIT'
          'from POSTERING P'
          'join BILAG B on (P.IDBILAG = B.IDBILAG)'
          'where B.IDKLIENT = :IdKlient'
          
            'and CAST(CAST(B.AAR as FLOAT) + (CAST(B.PERIODENR as FLOAT) / 10' +
            '0) as NUMERIC(15,4)) between :PStart and :PSlutt'
          'and ((P.Kontonr = :Konto) or (P.KONTAKTNR = :Kontaktnr))'
          'order by B.BILAGNR;                                  ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 116
        pTop = 20
        Parameters = <
          item
            Name = 'IdKlient'
            DataType = ftInteger
            Expression = '<IdKlient>'
          end
          item
            Name = 'PStart'
            DataType = ftBCD
            Expression = '<StartAar>+(<StartPeriode>/100)'
          end
          item
            Name = 'PSlutt'
            DataType = ftBCD
            Expression = '<SluttAar>+(<SluttPeriode>/100)'
          end
          item
            Name = 'Konto'
            DataType = ftInteger
            Expression = '<Konto>'
          end
          item
            Name = 'Kontaktnr'
            DataType = ftInteger
            Expression = '<Konto>'
          end>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo5: TfrxMemoView
          Left = 22.677180000000000000
          Top = 45.015770000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8 = (
            '[adoFirma."NAVN"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 532.913730000000000000
          Top = 22.677180000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Konto:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 604.724800000000000000
          Top = 22.677180000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[Konto] [Kontonavn]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 532.913730000000000000
          Top = 41.574830000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'adoPostering'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'mm.dd.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            'Periode:')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          Left = 608.504330000000000000
          Top = 41.574830000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'adoPostering'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          Memo.UTF8 = (
            '[StartPeriode] : [StartAar] - [SluttPeriode] : [SluttAar]')
          ParentFont = False
          WordWrap = False
        end
        object Memo13: TfrxMemoView
          Left = 22.677180000000000000
          Top = 18.897650000000000000
          Width = 204.094620000000000000
          Height = 26.456710000000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Kontoutskrift')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 41.574830000000000000
        Top = 514.016080000000000000
        Width = 793.701300000000000000
        object Memo14: TfrxMemoView
          Left = 64.252010000000000000
          Top = 11.338590000000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Skrevet ut [Date] [Time]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 18.897650000000000000
          Top = 7.559059999999990000
          Width = 755.906000000000000000
          Height = 3.779530000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 18.897650000000000000
          Top = 11.338590000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #194#169' BLS')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 612.283860000000000000
          Top = 11.338590000000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Side [Page#] av [TotalPages#]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        Height = 37.795300000000000000
        Top = 192.756030000000000000
        Width = 793.701300000000000000
        object Memo6: TfrxMemoView
          Left = 18.897650000000000000
          Top = 3.779529999999990000
          Width = 755.906000000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 15790320
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 26.456710000000000000
          Top = 7.559059999999990000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Bilagnr')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 604.724800000000000000
          Top = 7.559059999999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Debet')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 517.795610000000000000
          Top = 7.559059999999990000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Fakturanr')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 192.756030000000000000
          Top = 7.559059999999990000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #195#8230'r')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999990000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Kode Tekst')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 695.433520000000000000
          Top = 7.559059999999990000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Kredit')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 79.370130000000000000
          Top = 7.559059999999990000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Dato')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 139.842610000000000000
          Top = 7.559059999999990000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Periode')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 234.330860000000000000
          Top = 7.559059999999990000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'M.k.')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 291.023810000000000000
        Width = 793.701300000000000000
        DataSet = frRpt.adoTrans
        DataSetName = 'adoTrans'
        RowCount = 0
        Stretched = True
        object Memo10: TfrxMemoView
          Left = 26.456710000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BILAGNR'
          DataSet = frRpt.adoTrans
          DataSetName = 'adoTrans'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[adoTrans."BILAGNR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo11: TfrxMemoView
          Left = 79.370130000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frRpt.adoTrans
          DataSetName = 'adoTrans'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[adoTrans."DATO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          Left = 143.622140000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frRpt.adoTrans
          DataSetName = 'adoTrans'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[adoTrans."PERIODENR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          Left = 181.417440000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frRpt.adoTrans
          DataSetName = 'adoTrans'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[adoTrans."AAR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          Left = 234.330860000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frRpt.adoTrans
          DataSetName = 'adoTrans'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'mm.dd.yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[adoTrans."MVAKODE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          Left = 275.905690000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frRpt.adoTrans
          DataSetName = 'adoTrans'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[adoTrans."IDTEKST"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo26: TfrxMemoView
          Left = 294.803340000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frRpt.adoTrans
          DataSetName = 'adoTrans'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'mm.dd.yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[adoTrans."TEKST"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          Left = 517.795610000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frRpt.adoTrans
          DataSetName = 'adoTrans'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'mm.dd.yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[adoTrans."FAKTURANR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo29: TfrxMemoView
          Left = 604.724800000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frRpt.adoTrans
          DataSetName = 'adoTrans'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[adoTrans."DEBET"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo35: TfrxMemoView
          Left = 691.653990000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frRpt.adoTrans
          DataSetName = 'adoTrans'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[adoTrans."KREDIT"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 120.944960000000000000
        Top = 370.393940000000000000
        Width = 793.701300000000000000
        object Memo27: TfrxMemoView
          Left = 26.456710000000000000
          Top = 56.692950000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Inng'#195#165'ende saldo:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 26.456710000000000000
          Top = 75.590600000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Denne perioden:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 26.456710000000000000
          Top = 94.488250000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Utg'#195#165'ende saldo:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 18.897650000000000000
          Top = 7.559059999999990000
          Width = 755.906000000000000000
          Height = 24.566929133858300000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 26.456710000000000000
          Top = 11.338590000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Sum:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 589.606680000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<adoTrans."DEBET">)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          Left = 684.094930000000000000
          Top = 11.338590000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[Sum(<adoTrans."KREDIT">)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          Left = 136.063080000000000000
          Top = 56.692950000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[Innsaldo]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 136.063080000000000000
          Top = 75.590600000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[Periode]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 136.063080000000000000
          Top = 94.488250000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[Utsaldo]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 136.063080000000000000
        Width = 793.701300000000000000
        PrintOnFirstPage = False
      end
    end
  end
  object frxRptConn: TfrxADOComponents
    DefaultDatabase = Dm.adoConn
    Left = 60
    Top = 260
  end
  object adoMnd: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    BeforeOpen = adoMndBeforeOpen
    CommandText = 
      'select B.PERIODENR, SUM('#13#10'  case when (B.AAR = :Aar22) then P.BE' +
      'LOP else 0 end) as AAR2,'#13#10'SUM('#13#10'  case when (B.AAR = :Aar11) the' +
      'n P.BELOP else 0 end) as AAR1'#13#10'from BILAG B'#13#10'join POSTERING P on' +
      ' (P.IDBILAG = B.IDBILAG)'#13#10'where B.IDKLIENT = :IdKlient'#13#10'and B.AA' +
      'R between :Aar1 and :Aar2'#13#10'and ((P.KONTONR = :Kontonr) or (P.KON' +
      'TAKTNR = :Kontaktnr))'#13#10'group by B.PERIODENR'
    Parameters = <
      item
        Name = 'Aar22'
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Aar11'
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Aar1'
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Aar2'
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Kontonr'
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
    Left = 584
    Top = 180
    object adoMndPERIODENR: TSmallintField
      FieldName = 'PERIODENR'
    end
    object adoMndAAR1: TBCDField
      FieldName = 'AAR1'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object adoMndAAR2: TBCDField
      FieldName = 'AAR2'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
  end
  object dsMnd: TDataSource
    DataSet = cdsMnd
    Left = 612
    Top = 216
  end
  object cdsMnd: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Periode'
        DataType = ftInteger
      end
      item
        Name = 'Periodenavn'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Aar1'
        DataType = ftFloat
      end
      item
        Name = 'Aar2'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'cdsMndIndex'
        Fields = 'Periode'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'cdsMndIndex'
    Params = <>
    StoreDefs = True
    Left = 584
    Top = 216
    Data = {
      640000009619E0BD010000001800000004000000000003000000640007506572
      696F646504000100000000000B506572696F64656E61766E0100490000000100
      0557494454480200020014000441617231080004000000000004416172320800
      0400000000000000}
    object cdsMndPeriode: TIntegerField
      FieldName = 'Periode'
    end
    object cdsMndPeriodenavn: TStringField
      FieldName = 'Periodenavn'
    end
    object cdsMndAar1: TFloatField
      FieldName = 'Aar1'
      DisplayFormat = '#,##0.00'
    end
    object cdsMndAar2: TFloatField
      FieldName = 'Aar2'
      DisplayFormat = '#,##0.00'
    end
  end
end
