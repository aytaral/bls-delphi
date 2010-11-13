object frmProdukt: TfrmProdukt
  Left = 368
  Top = 183
  ActiveControl = dbeProdnr
  BorderStyle = bsDialog
  Caption = 'Registrering produkt'
  ClientHeight = 479
  ClientWidth = 665
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
  object TBXDock1: TTBXDock
    Left = 0
    Top = 0
    Width = 665
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
        Action = DataSetCancel1
      end
      object TBXItem5: TTBXItem
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
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 447
    Width = 665
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      665
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
      DataSource = dsProd
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
      DataSource = dsProd
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7105644
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnAvbryt: TButton
      Left = 577
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
      Left = 489
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
    Width = 665
    Height = 413
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 2
    object Pc: TPageControl
      Left = 5
      Top = 5
      Width = 655
      Height = 403
      ActivePage = tsGeneral
      Align = alClient
      Images = Dm.ImageListPC
      TabOrder = 0
      OnChange = PcChange
      object tsGeneral: TTabSheet
        Caption = 'Generelt'
        ImageIndex = -1
        object GroupBox1: TGroupBox
          Left = 8
          Top = 8
          Width = 449
          Height = 153
          Caption = 'Produktbeskrivelse:'
          TabOrder = 0
          object Label1: TLabel
            Left = 14
            Top = 20
            Width = 51
            Height = 13
            Caption = 'Produktnr:'
          end
          object Label2: TLabel
            Left = 126
            Top = 20
            Width = 65
            Height = 13
            Caption = 'Produktnavn:'
          end
          object Label3: TLabel
            Left = 14
            Top = 60
            Width = 66
            Height = 13
            Caption = 'Spesifikasjon:'
          end
          object Label27: TLabel
            Left = 14
            Top = 100
            Width = 44
            Height = 13
            Caption = 'Kategori:'
          end
          object Label6: TLabel
            Left = 284
            Top = 100
            Width = 32
            Height = 13
            Caption = 'Enhet:'
          end
          object dbeProdnr: TDBEdit
            Left = 14
            Top = 36
            Width = 105
            Height = 21
            DataField = 'PRODUKTNR'
            DataSource = dsProd
            TabOrder = 0
          end
          object dbeNavn: TDBEdit
            Left = 126
            Top = 36
            Width = 307
            Height = 21
            DataField = 'NAVN'
            DataSource = dsProd
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 14
            Top = 76
            Width = 419
            Height = 21
            DataField = 'SPES'
            DataSource = dsProd
            TabOrder = 2
          end
          object dblKategori: TDBLookupComboBox
            Left = 14
            Top = 116
            Width = 237
            Height = 21
            DataField = 'KATEGORINR'
            DataSource = dsProd
            KeyField = 'KATNR'
            ListField = 'KATTRE'
            ListSource = dsKategori
            TabOrder = 3
          end
          object DBComboBox1: TDBComboBox
            Left = 284
            Top = 116
            Width = 150
            Height = 21
            DataField = 'ENHET'
            DataSource = dsProd
            ItemHeight = 13
            Items.Strings = (
              'Stk'
              'Timer'
              #197'r'
              'Mnd')
            TabOrder = 5
          end
          object btnKat: TButton
            Left = 254
            Top = 116
            Width = 23
            Height = 21
            Caption = '...'
            TabOrder = 4
            OnClick = btnKatClick
          end
        end
        object gbPris: TGroupBox
          Left = 8
          Top = 168
          Width = 449
          Height = 73
          Caption = 'Pris:'
          TabOrder = 1
          object Label8: TLabel
            Left = 15
            Top = 20
            Width = 37
            Height = 13
            Caption = 'Innpris:'
          end
          object Label9: TLabel
            Left = 268
            Top = 20
            Width = 40
            Height = 13
            Caption = 'Pris eks:'
          end
          object Label10: TLabel
            Left = 101
            Top = 20
            Width = 54
            Height = 13
            Caption = 'Avanse %:'
          end
          object Label11: TLabel
            Left = 182
            Top = 20
            Width = 60
            Height = 13
            Caption = 'Fortjeneste:'
          end
          object Label12: TLabel
            Left = 354
            Top = 20
            Width = 37
            Height = 13
            Caption = 'Pris ink:'
          end
          object DBEdit7: TDBEdit
            Left = 14
            Top = 36
            Width = 79
            Height = 21
            DataField = 'INNPRIS'
            DataSource = dsProd
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnExit = DBEdit7Exit
          end
          object DBEdit8: TDBEdit
            Left = 266
            Top = 36
            Width = 79
            Height = 21
            DataField = 'PRIS'
            DataSource = dsProd
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnExit = DBEdit8Exit
          end
          object editAvanse: TblsAlignEdit
            Left = 100
            Top = 36
            Width = 73
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = '0,0000'
            OnExit = editAvanseExit
            Alignment = taRightJustify
            EditType = etFloat
            DisplayMask = '0.0000'
          end
          object editFortjeneste: TblsAlignEdit
            Left = 180
            Top = 36
            Width = 79
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = '0'
            OnExit = editFortjenesteExit
            Alignment = taRightJustify
            EditType = etFloat
            DisplayMask = '#,##0.00'
          end
          object editInk: TblsAlignEdit
            Left = 352
            Top = 36
            Width = 81
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Text = '0,00'
            OnExit = editInkExit
            Alignment = taRightJustify
            EditType = etFloat
            DisplayMask = '#,##0.00'
          end
        end
        object GroupBox4: TGroupBox
          Left = 468
          Top = 8
          Width = 169
          Height = 233
          Caption = 'Egenskaper:'
          TabOrder = 3
          object Label4: TLabel
            Left = 14
            Top = 100
            Width = 32
            Height = 13
            Caption = 'Volum:'
          end
          object Label5: TLabel
            Left = 14
            Top = 60
            Width = 25
            Height = 13
            Caption = 'Vekt:'
          end
          object Label21: TLabel
            Left = 14
            Top = 20
            Width = 63
            Height = 13
            Caption = 'Produkttype:'
          end
          object Label20: TLabel
            Left = 14
            Top = 140
            Width = 76
            Height = 13
            Caption = 'Org. produktnr:'
          end
          object DBEdit4: TDBEdit
            Left = 14
            Top = 116
            Width = 140
            Height = 21
            DataField = 'VOLUM'
            DataSource = dsProd
            TabOrder = 2
          end
          object DBEdit5: TDBEdit
            Left = 14
            Top = 76
            Width = 140
            Height = 21
            DataField = 'VEKT'
            DataSource = dsProd
            TabOrder = 1
          end
          object DBCheckBox1: TDBCheckBox
            Left = 16
            Top = 202
            Width = 97
            Height = 17
            Caption = 'Utg'#229'tt produkt'
            Color = clBtnFace
            DataField = 'AKTIV'
            DataSource = dsProd
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 4
            ValueChecked = '0'
            ValueUnchecked = '1'
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 14
            Top = 36
            Width = 140
            Height = 21
            DataField = 'IDPRODTYPE'
            DataSource = dsProd
            KeyField = 'IDPRODTYPE'
            ListField = 'PRODTYPE'
            ListSource = dsProdType
            TabOrder = 0
          end
          object DBEdit13: TDBEdit
            Left = 14
            Top = 156
            Width = 140
            Height = 21
            DataField = 'ORGPRODNR'
            DataSource = dsProd
            TabOrder = 3
          end
        end
        object GroupBox8: TGroupBox
          Left = 468
          Top = 248
          Width = 169
          Height = 113
          Caption = 'Avgifter:'
          TabOrder = 4
          object Label7: TLabel
            Left = 15
            Top = 20
            Width = 74
            Height = 13
            Caption = 'Merverdiavgift:'
          end
          object Label19: TLabel
            Left = 15
            Top = 60
            Width = 62
            Height = 13
            Caption = 'Spes. avgift:'
          end
          object dbcMva: TDBComboBox
            Left = 14
            Top = 36
            Width = 140
            Height = 21
            Style = csDropDownList
            DataField = 'MVA'
            DataSource = dsProd
            ItemHeight = 13
            TabOrder = 0
            OnExit = dbcMvaExit
          end
          object DBEdit12: TDBEdit
            Left = 14
            Top = 76
            Width = 140
            Height = 21
            DataField = 'AVGIFT'
            DataSource = dsProd
            TabOrder = 1
          end
        end
        object GroupBox9: TGroupBox
          Left = 8
          Top = 248
          Width = 449
          Height = 113
          Caption = 'Leverand'#248'r:'
          TabOrder = 2
          object Label22: TLabel
            Left = 14
            Top = 20
            Width = 59
            Height = 13
            Caption = 'Leverand'#248'r:'
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 14
            Top = 36
            Width = 421
            Height = 21
            DataField = 'LEVERANDORNR'
            DataSource = dsProd
            KeyField = 'KONTAKTNR'
            ListField = 'NAVN'
            ListSource = dsLev
            TabOrder = 0
          end
        end
      end
      object tsBeskrivelse: TTabSheet
        Caption = 'Beskrivelse'
        DesignSize = (
          647
          374)
        object GroupBox2: TGroupBox
          Left = 8
          Top = 8
          Width = 630
          Height = 351
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Produktbeskrivelse:'
          TabOrder = 0
          DesignSize = (
            630
            351)
          object DBMemo1: TDBMemo
            Left = 14
            Top = 24
            Width = 602
            Height = 311
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataField = 'TEKST'
            DataSource = dsProd
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
      end
      object tsExtra: TTabSheet
        Caption = 'Utvidet informasjon'
        ImageIndex = -1
        object GroupBox10: TGroupBox
          Left = 8
          Top = 92
          Width = 449
          Height = 269
          Caption = 'Bilde:'
          TabOrder = 3
          object blsBorderPanel1: TblsBorderPanel
            Left = 2
            Top = 29
            Width = 445
            Height = 238
            Align = alClient
            BevelOuter = bvNone
            BorderWidth = 10
            Caption = 'blsBorderPanel1'
            TabOrder = 0
            object Panel4: TPanel
              Left = 10
              Top = 10
              Width = 425
              Height = 218
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object Shape1: TShape
                Left = 0
                Top = 0
                Width = 425
                Height = 218
                Align = alClient
                Pen.Color = clGray
              end
              object Img: TImage
                Left = 0
                Top = 0
                Width = 425
                Height = 218
                Align = alClient
                Center = True
              end
            end
          end
          object Panel3: TPanel
            Left = 2
            Top = 15
            Width = 445
            Height = 14
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object DBText3: TDBText
              Left = 48
              Top = 3
              Width = 36
              Height = 11
              AutoSize = True
              DataField = 'BILDE'
              DataSource = dsProd
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label29: TLabel
              Left = 12
              Top = 3
              Width = 30
              Height = 11
              Caption = 'Bildefil:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object GroupBox7: TGroupBox
          Left = 468
          Top = 92
          Width = 169
          Height = 269
          Caption = 'Leverand'#248'r status:'
          TabOrder = 2
          object Label17: TLabel
            Left = 14
            Top = 20
            Width = 73
            Height = 13
            Caption = 'Antall p'#229' lager:'
          end
          object Label14: TLabel
            Left = 14
            Top = 60
            Width = 80
            Height = 13
            Caption = 'Antall i bestilling:'
          end
          object Label18: TLabel
            Left = 14
            Top = 100
            Width = 70
            Height = 13
            Caption = 'Ankomst dato:'
          end
          object Label25: TLabel
            Left = 14
            Top = 140
            Width = 37
            Height = 13
            Caption = 'Rabatt:'
          end
          object Label28: TLabel
            Left = 14
            Top = 212
            Width = 44
            Height = 13
            Caption = 'Kategori:'
          end
          object DBText4: TDBText
            Left = 14
            Top = 228
            Width = 147
            Height = 13
            DataField = 'HOVEDKAT'
            DataSource = dsKatOrg
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object DBText5: TDBText
            Left = 14
            Top = 244
            Width = 147
            Height = 13
            DataField = 'UNDERKAT'
            DataSource = dsKatOrg
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label30: TLabel
            Left = 14
            Top = 180
            Width = 115
            Height = 13
            Caption = 'Leverand'#248'rens Prod.nr:'
          end
          object DBText6: TDBText
            Left = 14
            Top = 196
            Width = 147
            Height = 13
            DataField = 'LPRODNR'
            DataSource = dsProd
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object DBEdit10: TDBEdit
            Left = 14
            Top = 36
            Width = 140
            Height = 21
            DataField = 'LAGERANT'
            DataSource = dsProd
            TabOrder = 0
          end
          object DBEdit9: TDBEdit
            Left = 14
            Top = 76
            Width = 140
            Height = 21
            DataField = 'ANKANTALL'
            DataSource = dsProd
            TabOrder = 1
          end
          object DBEdit11: TDBEdit
            Left = 14
            Top = 116
            Width = 140
            Height = 21
            DataField = 'ANKDATO'
            DataSource = dsProd
            TabOrder = 2
          end
          object DBEdit14: TDBEdit
            Left = 14
            Top = 156
            Width = 140
            Height = 21
            DataField = 'RABATT'
            DataSource = dsProd
            TabOrder = 3
          end
        end
        object GroupBox5: TGroupBox
          Left = 8
          Top = 8
          Width = 449
          Height = 73
          Caption = 'Internett:'
          TabOrder = 0
          object Label26: TLabel
            Left = 14
            Top = 20
            Width = 60
            Height = 13
            Caption = 'Produktside:'
          end
          object DBEdit2: TDBEdit
            Left = 14
            Top = 36
            Width = 421
            Height = 21
            DataField = 'URL'
            DataSource = dsProd
            TabOrder = 0
          end
        end
        object GroupBox3: TGroupBox
          Left = 468
          Top = 8
          Width = 169
          Height = 73
          Caption = 'Nettbutikk'
          TabOrder = 1
          object DBCheckBox2: TDBCheckBox
            Left = 20
            Top = 20
            Width = 113
            Height = 33
            Caption = 'Vis i nettbutikk'
            DataField = 'INETTBUTIKK'
            DataSource = dsProd
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
            WordWrap = True
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Regnskap'
        ImageIndex = -1
        object GroupBox6: TGroupBox
          Left = 8
          Top = 8
          Width = 629
          Height = 77
          Caption = 'Regnskap:'
          TabOrder = 0
          object Label23: TLabel
            Left = 14
            Top = 20
            Width = 42
            Height = 13
            Caption = 'Kontonr:'
          end
          object Label24: TLabel
            Left = 162
            Top = 20
            Width = 56
            Height = 13
            Caption = 'Kontonavn:'
          end
          object DBEdit15: TDBEdit
            Left = 14
            Top = 36
            Width = 105
            Height = 21
            DataField = 'KONTONR'
            DataSource = dsProd
            TabOrder = 0
          end
          object btnKontoSok: TButton
            Left = 124
            Top = 35
            Width = 25
            Height = 23
            Caption = '...'
            TabOrder = 1
            OnClick = btnKontoSokClick
          end
          object DBEdit16: TDBEdit
            Left = 162
            Top = 36
            Width = 451
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'KONTONAVN'
            DataSource = dsProd
            ReadOnly = True
            TabOrder = 2
          end
        end
      end
    end
  end
  object adoProd: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select * from PRODUKT'#13#10'where IDKLIENT = :IdKlient'#13#10'and PRODUKTNR' +
      ' = :Pnr;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Pnr'
        DataType = ftString
        Precision = 30
        Size = 30
        Value = Null
      end>
    Left = 248
    Top = 2
    object adoProdIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoProdPRODUKTNR: TStringField
      FieldName = 'PRODUKTNR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object adoProdNAVN: TStringField
      FieldName = 'NAVN'
      Size = 60
    end
    object adoProdSPES: TStringField
      DisplayWidth = 80
      FieldName = 'SPES'
      Size = 80
    end
    object adoProdTEKST: TMemoField
      FieldName = 'TEKST'
      BlobType = ftMemo
    end
    object adoProdENHET: TStringField
      FieldName = 'ENHET'
      Size = 15
    end
    object adoProdVEKT: TFloatField
      FieldName = 'VEKT'
    end
    object adoProdVOLUM: TFloatField
      FieldName = 'VOLUM'
    end
    object adoProdMVA: TFloatField
      FieldName = 'MVA'
    end
    object adoProdINNPRIS: TFloatField
      FieldName = 'INNPRIS'
    end
    object adoProdPRIS: TFloatField
      FieldName = 'PRIS'
    end
    object adoProdAVGIFT: TFloatField
      FieldName = 'AVGIFT'
    end
    object adoProdRABATT: TFloatField
      FieldName = 'RABATT'
    end
    object adoProdORGPRODNR: TStringField
      FieldName = 'ORGPRODNR'
      Size = 30
    end
    object adoProdLAGERANT: TFloatField
      FieldName = 'LAGERANT'
    end
    object adoProdANKDATO: TDateField
      FieldName = 'ANKDATO'
    end
    object adoProdANKANTALL: TFloatField
      FieldName = 'ANKANTALL'
    end
    object adoProdREGDATO: TDateTimeField
      FieldName = 'REGDATO'
    end
    object adoProdENDRETDATO: TDateTimeField
      FieldName = 'ENDRETDATO'
    end
    object adoProdKONTONR: TIntegerField
      FieldName = 'KONTONR'
    end
    object adoProdAKTIV: TSmallintField
      FieldName = 'AKTIV'
    end
    object adoProdURL: TStringField
      FieldName = 'URL'
      Size = 75
    end
    object adoProdBILDE: TStringField
      FieldName = 'BILDE'
    end
    object adoProdKATEGORINR: TIntegerField
      FieldName = 'KATEGORINR'
    end
    object adoProdKATORGNR: TIntegerField
      FieldName = 'KATORGNR'
    end
    object adoProdLEVERANDORNR: TIntegerField
      FieldName = 'LEVERANDORNR'
    end
    object adoProdLPRODNR: TStringField
      FieldName = 'LPRODNR'
      Size = 30
    end
    object adoProdIDPRODTYPE: TIntegerField
      FieldName = 'IDPRODTYPE'
    end
    object adoProdINETTBUTIKK: TSmallintField
      FieldName = 'INETTBUTIKK'
    end
  end
  object dspProd: TDataSetProvider
    DataSet = adoProd
    UpdateMode = upWhereKeyOnly
    Left = 280
    Top = 2
  end
  object cdsProd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProd'
    OnCalcFields = cdsProdCalcFields
    Left = 312
    Top = 2
    object cdsProdIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object cdsProdPRODUKTNR: TStringField
      FieldName = 'PRODUKTNR'
      Size = 30
    end
    object cdsProdNAVN: TStringField
      FieldName = 'NAVN'
      Size = 60
    end
    object cdsProdSPES: TStringField
      DisplayWidth = 80
      FieldName = 'SPES'
      Size = 80
    end
    object cdsProdTEKST: TMemoField
      FieldName = 'TEKST'
      BlobType = ftMemo
    end
    object cdsProdENHET: TStringField
      FieldName = 'ENHET'
      Size = 15
    end
    object cdsProdVEKT: TFloatField
      FieldName = 'VEKT'
      DisplayFormat = '0.00'
    end
    object cdsProdVOLUM: TFloatField
      FieldName = 'VOLUM'
      DisplayFormat = '0.00'
    end
    object cdsProdMVA: TFloatField
      FieldName = 'MVA'
      DisplayFormat = '0.00'
    end
    object cdsProdINNPRIS: TFloatField
      FieldName = 'INNPRIS'
      DisplayFormat = '#,##0.00'
    end
    object cdsProdPRIS: TFloatField
      FieldName = 'PRIS'
      DisplayFormat = '#,##0.00'
    end
    object cdsProdAVGIFT: TFloatField
      FieldName = 'AVGIFT'
      DisplayFormat = '#,##0.00'
    end
    object cdsProdRABATT: TFloatField
      FieldName = 'RABATT'
      DisplayFormat = '#,##0.00'
    end
    object cdsProdORGPRODNR: TStringField
      FieldName = 'ORGPRODNR'
      Size = 30
    end
    object cdsProdLAGERANT: TFloatField
      FieldName = 'LAGERANT'
    end
    object cdsProdANKDATO: TDateField
      FieldName = 'ANKDATO'
    end
    object cdsProdANKANTALL: TFloatField
      FieldName = 'ANKANTALL'
    end
    object cdsProdREGDATO: TDateTimeField
      FieldName = 'REGDATO'
    end
    object cdsProdENDRETDATO: TDateTimeField
      FieldName = 'ENDRETDATO'
    end
    object cdsProdKONTONR: TIntegerField
      FieldName = 'KONTONR'
    end
    object cdsProdAKTIV: TSmallintField
      FieldName = 'AKTIV'
    end
    object cdsProdURL: TStringField
      FieldName = 'URL'
      Size = 75
    end
    object cdsProdBILDE: TStringField
      FieldName = 'BILDE'
    end
    object cdsProdKATEGORINR: TIntegerField
      FieldName = 'KATEGORINR'
    end
    object cdsProdKATORGNR: TIntegerField
      FieldName = 'KATORGNR'
    end
    object cdsProdLEVERANDORNR: TIntegerField
      FieldName = 'LEVERANDORNR'
    end
    object cdsProdLPRODNR: TStringField
      FieldName = 'LPRODNR'
      Size = 30
    end
    object cdsProdIDPRODTYPE: TIntegerField
      FieldName = 'IDPRODTYPE'
    end
    object cdsProdINETTBUTIKK: TSmallintField
      FieldName = 'INETTBUTIKK'
    end
    object cdsProdKONTONAVN: TStringField
      FieldKind = fkCalculated
      FieldName = 'KONTONAVN'
      Size = 80
      Calculated = True
    end
  end
  object dsProd: TDataSource
    DataSet = cdsProd
    OnDataChange = dsProdDataChange
    Left = 344
    Top = 2
  end
  object ActionList1: TActionList
    Images = Dm.ImageList24
    Left = 568
    Top = 4
    object acFirst: TDataSetFirst
      Category = 'Dataset'
      Caption = 'DataSetFirst1'
      ImageIndex = 0
      DataSource = Dm.dsProd
    end
    object acPrior: TDataSetPrior
      Category = 'Dataset'
      Caption = 'DataSetPrior1'
      ImageIndex = 1
      DataSource = Dm.dsProd
    end
    object acNext: TDataSetNext
      Category = 'Dataset'
      Caption = 'DataSetNext1'
      ImageIndex = 2
      DataSource = Dm.dsProd
    end
    object acLast: TDataSetLast
      Category = 'Dataset'
      Caption = 'DataSetLast1'
      ImageIndex = 3
      DataSource = Dm.dsProd
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'Lagre'
      Enabled = False
      Hint = 'Lagre endringer'
      ImageIndex = 6
      ShortCut = 16467
      DataSource = dsProd
    end
    object acNy: TAction
      Category = 'Dataset'
      Caption = 'Nytt produkt'
      Hint = 'Nytt produkt'
      ImageIndex = 4
      ShortCut = 16462
      OnExecute = acNyExecute
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'Angre endringer'
      Enabled = False
      Hint = 'Angre endringer'
      ImageIndex = 5
      ShortCut = 16474
      DataSource = dsProd
    end
  end
  object adoProdType: TADODataSet
    Connection = Dm.adoConn
    CommandText = 'select * from PRODUKTTYPE'#13#10'order by IDPRODTYPE'
    Parameters = <>
    Left = 533
    Top = 68
  end
  object dsProdType: TDataSource
    DataSet = adoProdType
    Left = 565
    Top = 68
  end
  object adoLev: TADODataSet
    Connection = Dm.adoConn
    CommandText = 
      'select KONTAKTNR, NAVN'#13#10'from KONTAKT'#13#10'where IDKLIENT = :IdKlient' +
      #13#10'and IDSERIE = '#39'LS'#39#13#10'order by Navn;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 33
    Top = 344
  end
  object dsLev: TDataSource
    DataSet = adoLev
    Left = 65
    Top = 344
  end
  object adoKategori: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select KATNR, KATTRE '#13#10'from KATEGORILISTE'#13#10'where IdKlient = :IdK' +
      'lient'#13#10'order by KATNAVN;'
    Parameters = <
      item
        Name = 'IdKlient'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 33
    Top = 187
  end
  object dsKategori: TDataSource
    DataSet = adoKategori
    Left = 65
    Top = 187
  end
  object adoKatOrg: TADODataSet
    Connection = Dm.adoConn
    CommandText = 
      'select IDKLIENT, KATORGNR, HOVEDKAT, UNDERKAT '#13#10'from KATEGORIORG' +
      #13#10'where IDKLIENT = :IdKlient'#13#10'and KATORGNR = :KatOrgNr;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'KatOrgNr'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 489
    Top = 408
  end
  object dspKatOrg: TDataSetProvider
    DataSet = adoKatOrg
    Left = 517
    Top = 408
  end
  object cdsKatOrg: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDKLIENT;KATORGNR'
    MasterFields = 'IDKLIENT;KATORGNR'
    MasterSource = dsProd
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspKatOrg'
    Left = 545
    Top = 408
  end
  object dsKatOrg: TDataSource
    DataSet = cdsKatOrg
    Left = 573
    Top = 408
  end
  object dsMaster: TDataSource
    DataSet = Dm.cdsProd
    OnDataChange = dsMasterProduktDataChange
    Left = 384
    Top = 8
  end
end
