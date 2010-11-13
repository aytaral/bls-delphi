object frmKlient: TfrmKlient
  Left = 386
  Top = 208
  BorderStyle = bsDialog
  Caption = 'Registrering firma'
  ClientHeight = 461
  ClientWidth = 595
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
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 595
    Height = 46
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel1: TBevel
      Left = 0
      Top = 44
      Width = 595
      Height = 2
      Align = alBottom
      Shape = bsBottomLine
    end
    object Label1: TLabel
      Left = 14
      Top = 16
      Width = 51
      Height = 13
      Caption = 'Velg firma:'
    end
    object cbFirmaListe: TComboBox
      Left = 72
      Top = 12
      Width = 509
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cbFirmaListeChange
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 430
    Width = 595
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btnNytt: TButton
      Left = 8
      Top = 0
      Width = 83
      Height = 25
      Caption = 'Nytt Firma'
      TabOrder = 0
      OnClick = btnNyttClick
    end
    object btnSlett: TButton
      Left = 96
      Top = 0
      Width = 83
      Height = 25
      Caption = 'Slett Firma'
      Enabled = False
      TabOrder = 1
    end
    object btnOK: TButton
      Left = 416
      Top = 0
      Width = 83
      Height = 25
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 2
      OnClick = btnOKClick
    end
    object btnAvbryt: TButton
      Left = 504
      Top = 0
      Width = 83
      Height = 25
      Cancel = True
      Caption = '&Avbryt'
      ModalResult = 2
      TabOrder = 3
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 46
    Width = 595
    Height = 384
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 2
    object Pc: TPageControl
      Left = 8
      Top = 8
      Width = 579
      Height = 368
      ActivePage = tsLogo
      Align = alClient
      TabOrder = 0
      OnChange = PcChange
      object TabSheet1: TTabSheet
        Caption = 'Generelt'
        object GroupBox1: TGroupBox
          Left = 8
          Top = 172
          Width = 381
          Height = 73
          Caption = 'Telefonnummere:'
          TabOrder = 1
          object Label11: TLabel
            Left = 132
            Top = 20
            Width = 26
            Height = 13
            Caption = 'Faks:'
          end
          object Label12: TLabel
            Left = 252
            Top = 20
            Width = 28
            Height = 13
            Caption = 'Mobil:'
          end
          object Label13: TLabel
            Left = 12
            Top = 20
            Width = 40
            Height = 13
            Caption = 'Telefon:'
          end
          object DBEdit8: TDBEdit
            Left = 132
            Top = 36
            Width = 113
            Height = 21
            DataField = 'FAKS'
            DataSource = dsKlient
            TabOrder = 1
          end
          object DBEdit9: TDBEdit
            Left = 252
            Top = 36
            Width = 117
            Height = 21
            DataField = 'MOBIL'
            DataSource = dsKlient
            TabOrder = 2
          end
          object DBEdit10: TDBEdit
            Left = 12
            Top = 36
            Width = 113
            Height = 21
            DataField = 'TELEFON'
            DataSource = dsKlient
            TabOrder = 0
          end
        end
        object GroupBox2: TGroupBox
          Left = 8
          Top = 8
          Width = 381
          Height = 157
          Caption = 'Navn && Adresse:'
          TabOrder = 0
          object Label2: TLabel
            Left = 12
            Top = 20
            Width = 54
            Height = 13
            Caption = 'Firmanavn:'
          end
          object Label3: TLabel
            Left = 12
            Top = 60
            Width = 43
            Height = 13
            Caption = 'Adresse:'
          end
          object Label14: TLabel
            Left = 12
            Top = 104
            Width = 35
            Height = 13
            Caption = 'Postnr:'
          end
          object Label15: TLabel
            Left = 108
            Top = 104
            Width = 46
            Height = 13
            Caption = 'Poststed:'
          end
          object dbeNavn: TDBEdit
            Left = 12
            Top = 36
            Width = 355
            Height = 21
            DataField = 'NAVN'
            DataSource = dsKlient
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 12
            Top = 76
            Width = 355
            Height = 21
            DataField = 'ADRESSE'
            DataSource = dsKlient
            TabOrder = 1
          end
          object DBEdit11: TDBEdit
            Left = 12
            Top = 120
            Width = 89
            Height = 21
            DataField = 'POSTNR'
            DataSource = dsKlient
            TabOrder = 2
          end
          object DBEdit12: TDBEdit
            Left = 108
            Top = 120
            Width = 229
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'POSTSTED'
            DataSource = dsKlient
            ReadOnly = True
            TabOrder = 3
          end
          object btnPostnr: TButton
            Left = 342
            Top = 120
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 4
            OnClick = btnPostnrClick
          end
        end
        object GroupBox3: TGroupBox
          Left = 8
          Top = 252
          Width = 553
          Height = 73
          Caption = 'Internett:'
          TabOrder = 2
          object Label9: TLabel
            Left = 12
            Top = 20
            Width = 76
            Height = 13
            Caption = 'E-post adresse:'
          end
          object Label7: TLabel
            Left = 192
            Top = 20
            Width = 86
            Height = 13
            Caption = 'Internettadresse:'
          end
          object DBEdit6: TDBEdit
            Left = 12
            Top = 36
            Width = 169
            Height = 21
            DataField = 'EPOST'
            DataSource = dsKlient
            TabOrder = 0
          end
          object DBEdit4: TDBEdit
            Left = 192
            Top = 36
            Width = 349
            Height = 21
            DataField = 'URL'
            DataSource = dsKlient
            TabOrder = 1
          end
        end
        object GroupBox4: TGroupBox
          Left = 400
          Top = 8
          Width = 161
          Height = 237
          Caption = 'Firmaopplysninger:'
          TabOrder = 3
          object Label18: TLabel
            Left = 12
            Top = 20
            Width = 44
            Height = 13
            Caption = 'Firma ID:'
          end
          object Label10: TLabel
            Left = 12
            Top = 60
            Width = 82
            Height = 13
            Caption = 'Organisasjonsnr:'
          end
          object Label8: TLabel
            Left = 13
            Top = 100
            Width = 70
            Height = 13
            Caption = 'Kontonummer:'
          end
          object Label4: TLabel
            Left = 11
            Top = 184
            Width = 62
            Height = 13
            Caption = 'Selskaptype:'
          end
          object Label19: TLabel
            Left = 12
            Top = 140
            Width = 119
            Height = 13
            Caption = 'Forfallsdager p'#229' purring:'
          end
          object DBEdit15: TDBEdit
            Left = 12
            Top = 36
            Width = 137
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'IDKLIENT'
            DataSource = dsKlient
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit7: TDBEdit
            Left = 12
            Top = 76
            Width = 137
            Height = 21
            DataField = 'ORGNR'
            DataSource = dsKlient
            TabOrder = 1
          end
          object DBEdit5: TDBEdit
            Left = 12
            Top = 116
            Width = 137
            Height = 21
            DataField = 'BANKKONTO'
            DataSource = dsKlient
            TabOrder = 2
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 12
            Top = 200
            Width = 137
            Height = 21
            DataField = 'SELSKAPKODE'
            DataSource = dsKlient
            KeyField = 'KODE'
            ListField = 'SELSKAP'
            ListSource = dsSelskap
            TabOrder = 4
          end
          object DBEdit16: TDBEdit
            Left = 12
            Top = 156
            Width = 137
            Height = 21
            DataField = 'PURREFORFALL'
            DataSource = dsKlient
            TabOrder = 3
          end
        end
      end
      object tsLogo: TTabSheet
        Caption = 'Logo'
        ImageIndex = 2
        object Label5: TLabel
          Left = 16
          Top = 16
          Width = 35
          Height = 13
          Caption = 'Logofil:'
        end
        object Label6: TLabel
          Left = 60
          Top = 16
          Width = 181
          Height = 13
          Caption = '(Anbefalt st'#248'rrelse er 360*110 pixler)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object btnFinnLogo: TButton
          Left = 532
          Top = 12
          Width = 25
          Height = 21
          Caption = '...'
          TabOrder = 0
          OnClick = btnFinnLogoClick
        end
        object Panel3: TPanel
          Left = 12
          Top = 48
          Width = 545
          Height = 273
          BevelOuter = bvLowered
          Color = clAppWorkSpace
          ParentBackground = False
          TabOrder = 1
          object imgLogo: TImage
            Left = 1
            Top = 1
            Width = 543
            Height = 271
            Align = alClient
            Center = True
          end
        end
        object DBEdit3: TDBEdit
          Left = 256
          Top = 12
          Width = 269
          Height = 21
          Color = clBtnFace
          DataField = 'LOGO'
          DataSource = dsKlient
          ReadOnly = True
          TabOrder = 2
        end
      end
      object tsUtvidet: TTabSheet
        Caption = 'Utvidet'
        ImageIndex = 3
        object GroupBox5: TGroupBox
          Left = 8
          Top = 8
          Width = 225
          Height = 221
          Caption = 'Bankdetaljer:'
          TabOrder = 0
          object Label31: TLabel
            Left = 12
            Top = 108
            Width = 103
            Height = 13
            Caption = 'Banknavn & Adresse:'
            FocusControl = DBMemo4
            ShowAccelChar = False
          end
          object Label28: TLabel
            Left = 12
            Top = 64
            Width = 55
            Height = 13
            Caption = 'IBAN Kode:'
            FocusControl = DBEdit22
          end
          object Label27: TLabel
            Left = 12
            Top = 20
            Width = 63
            Height = 13
            Caption = 'SWIFT Kode:'
            FocusControl = DBEdit21
          end
          object DBMemo4: TDBMemo
            Left = 12
            Top = 124
            Width = 197
            Height = 73
            DataField = 'BANKNAVN'
            DataSource = dsKlient
            ScrollBars = ssVertical
            TabOrder = 2
          end
          object DBEdit22: TDBEdit
            Left = 12
            Top = 80
            Width = 197
            Height = 21
            DataField = 'IBAN'
            DataSource = dsKlient
            TabOrder = 1
          end
          object DBEdit21: TDBEdit
            Left = 12
            Top = 36
            Width = 197
            Height = 21
            DataField = 'SWIFT'
            DataSource = dsKlient
            TabOrder = 0
          end
        end
        object GroupBox6: TGroupBox
          Left = 243
          Top = 8
          Width = 173
          Height = 109
          Caption = 'Produktnummerering:'
          TabOrder = 1
          object Label17: TLabel
            Left = 16
            Top = 16
            Width = 133
            Height = 13
            Caption = 'Produktnummer ved import:'
          end
          object Label16: TLabel
            Left = 16
            Top = 56
            Width = 110
            Height = 13
            Caption = 'Neste produktnummer:'
          end
          object DBEdit14: TDBEdit
            Left = 16
            Top = 32
            Width = 137
            Height = 21
            DataField = 'IMPORTNR'
            DataSource = dsKlient
            TabOrder = 0
          end
          object DBEdit13: TDBEdit
            Left = 16
            Top = 72
            Width = 137
            Height = 21
            DataField = 'NESTEPRODNR'
            DataSource = dsKlient
            TabOrder = 1
          end
        end
        object GroupBox8: TGroupBox
          Left = 8
          Top = 236
          Width = 273
          Height = 79
          Caption = 'Serier'
          TabOrder = 2
          object DBCtrlGrid1: TDBCtrlGrid
            Left = 8
            Top = 14
            Width = 258
            Height = 54
            AllowDelete = False
            AllowInsert = False
            DataSource = dsSerie
            PanelBorder = gbNone
            PanelHeight = 27
            PanelWidth = 241
            TabOrder = 0
            RowCount = 2
            object Label34: TLabel
              Left = 2
              Top = 8
              Width = 82
              Height = 13
              Caption = 'Startnummer for '
            end
            object DBText1: TDBText
              Left = 88
              Top = 8
              Width = 65
              Height = 17
              DataField = 'BESKRIVELSE'
              DataSource = dsSerie
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object DBEdit26: TDBEdit
              Left = 172
              Top = 2
              Width = 65
              Height = 21
              DataField = 'STARTNR'
              DataSource = dsSerie
              TabOrder = 0
            end
          end
        end
      end
      object tsRegnskap: TTabSheet
        Caption = 'Regnskap'
        ImageIndex = 1
        object GroupBox7: TGroupBox
          Left = 12
          Top = 12
          Width = 265
          Height = 201
          Caption = 'Systemkontoer:'
          TabOrder = 0
          object Label38: TLabel
            Left = 16
            Top = 144
            Width = 95
            Height = 13
            Caption = 'Konto for kontanter'
          end
          object Label30: TLabel
            Left = 16
            Top = 24
            Width = 129
            Height = 13
            Caption = 'Konto for kundefordringer:'
            FocusControl = DBEdit24
          end
          object Label29: TLabel
            Left = 16
            Top = 48
            Width = 127
            Height = 13
            Caption = 'Konto for leverand'#248'rgjeld:'
            FocusControl = DBEdit23
          end
          object Label32: TLabel
            Left = 16
            Top = 72
            Width = 98
            Height = 13
            Caption = 'Oppgj'#248'rskonto mva:'
            FocusControl = DBEdit25
          end
          object Label35: TLabel
            Left = 16
            Top = 96
            Width = 116
            Height = 13
            Caption = 'Konto for '#248'reavrunding:'
            FocusControl = DBEdit27
          end
          object Label36: TLabel
            Left = 16
            Top = 120
            Width = 67
            Height = 13
            Caption = 'Konto for salg'
            FocusControl = DBEdit28
          end
          object Label37: TLabel
            Left = 16
            Top = 168
            Width = 113
            Height = 13
            Caption = 'Konto for bankinnskudd'
          end
          object DBEdit30: TDBEdit
            Left = 159
            Top = 140
            Width = 86
            Height = 21
            DataField = 'KONTOKONTANT'
            DataSource = dsKlient
            TabOrder = 5
          end
          object DBEdit24: TDBEdit
            Left = 160
            Top = 20
            Width = 85
            Height = 21
            DataField = 'KONTOKUNDE'
            DataSource = dsKlient
            TabOrder = 0
          end
          object DBEdit23: TDBEdit
            Left = 160
            Top = 44
            Width = 85
            Height = 21
            DataField = 'KONTOLEVERANDOR'
            DataSource = dsKlient
            TabOrder = 1
          end
          object DBEdit25: TDBEdit
            Left = 160
            Top = 68
            Width = 85
            Height = 21
            DataField = 'KONTOMVA'
            DataSource = dsKlient
            TabOrder = 2
          end
          object DBEdit27: TDBEdit
            Left = 160
            Top = 92
            Width = 85
            Height = 21
            DataField = 'KONTOAVRUNDING'
            DataSource = dsKlient
            TabOrder = 3
          end
          object DBEdit28: TDBEdit
            Left = 159
            Top = 116
            Width = 86
            Height = 21
            DataField = 'KONTOSALG'
            DataSource = dsKlient
            TabOrder = 4
          end
          object DBEdit29: TDBEdit
            Left = 159
            Top = 164
            Width = 86
            Height = 21
            DataField = 'KONTOBANK'
            DataSource = dsKlient
            TabOrder = 6
          end
        end
        object GroupBox10: TGroupBox
          Left = 12
          Top = 219
          Width = 317
          Height = 105
          Caption = 'Bilagsnummerering:'
          TabOrder = 1
          object DBCheckBox2: TDBCheckBox
            Left = 44
            Top = 28
            Width = 221
            Height = 17
            Caption = 'Bruk serier for bilagsnummerrering'
            DataField = 'BILAGSERIER'
            DataSource = dsKlient
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object Button1: TButton
            Left = 24
            Top = 60
            Width = 269
            Height = 25
            Action = acBilagSerier
            TabOrder = 1
          end
        end
      end
      object tsStatus: TTabSheet
        Caption = 'Fakturastatus'
        ImageIndex = 4
        object Label33: TLabel
          Left = 12
          Top = 8
          Width = 96
          Height = 13
          Caption = 'Tilgjengelige status:'
        end
        object GroupBox9: TGroupBox
          Left = 12
          Top = 148
          Width = 545
          Height = 173
          Caption = 'Valg status:'
          TabOrder = 0
          object Label23: TLabel
            Left = 16
            Top = 20
            Width = 35
            Height = 13
            Caption = 'Status:'
          end
          object Label24: TLabel
            Left = 120
            Top = 20
            Width = 28
            Height = 13
            Caption = 'Tittel:'
          end
          object Label25: TLabel
            Left = 380
            Top = 20
            Width = 33
            Height = 13
            Caption = 'Gebyr:'
          end
          object Label26: TLabel
            Left = 456
            Top = 20
            Width = 53
            Height = 13
            Caption = 'Rentesats:'
          end
          object Label22: TLabel
            Left = 16
            Top = 64
            Width = 30
            Height = 13
            Caption = 'Tekst:'
          end
          object DBEdit20: TDBEdit
            Left = 16
            Top = 36
            Width = 97
            Height = 21
            DataField = 'STATUS'
            DataSource = dsStatus
            TabOrder = 0
          end
          object DBEdit17: TDBEdit
            Left = 120
            Top = 36
            Width = 253
            Height = 21
            DataField = 'OVERSKRIFT'
            DataSource = dsStatus
            TabOrder = 1
          end
          object DBEdit18: TDBEdit
            Left = 380
            Top = 36
            Width = 69
            Height = 21
            DataField = 'GEBYR'
            DataSource = dsStatus
            TabOrder = 2
          end
          object DBEdit19: TDBEdit
            Left = 456
            Top = 36
            Width = 73
            Height = 21
            DataField = 'RENTESATS'
            DataSource = dsStatus
            TabOrder = 3
          end
          object DBCheckBox1: TDBCheckBox
            Left = 484
            Top = 60
            Width = 49
            Height = 17
            Caption = 'Aktiv'
            DataField = 'AKTIV'
            DataSource = dsStatus
            TabOrder = 4
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBMemo2: TDBMemo
            Left = 16
            Top = 80
            Width = 513
            Height = 81
            DataField = 'TEKST'
            DataSource = dsStatus
            ScrollBars = ssVertical
            TabOrder = 5
          end
        end
        object dbgStatus: TJvDBGrid
          Left = 12
          Top = 24
          Width = 545
          Height = 111
          DataSource = dsStatus
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'STATUS'
              Title.Caption = 'Status'
              Width = 105
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OVERSKRIFT'
              Title.Caption = 'Tittel'
              Width = 419
              Visible = True
            end>
        end
      end
      object tsTekst: TTabSheet
        Caption = 'Standardtekster'
        ImageIndex = 5
        object Label20: TLabel
          Left = 16
          Top = 168
          Width = 139
          Height = 13
          Caption = 'Standardtekst p'#229' kreditnota:'
        end
        object Label21: TLabel
          Left = 16
          Top = 12
          Width = 116
          Height = 13
          Caption = 'Standardtekst p'#229' ordre:'
        end
        object DBMemo1: TDBMemo
          Left = 16
          Top = 184
          Width = 537
          Height = 133
          DataField = 'KREDITNOTATEKST'
          DataSource = dsKlient
          TabOrder = 0
        end
        object DBMemo3: TDBMemo
          Left = 16
          Top = 28
          Width = 537
          Height = 133
          DataField = 'ORDRETEKST'
          DataSource = dsKlient
          TabOrder = 1
        end
      end
      object tsMva: TTabSheet
        Caption = 'Merverdiavgift'
        ImageIndex = 6
        object dbgMva: TJvDBGrid
          Left = 12
          Top = 12
          Width = 545
          Height = 309
          DataSource = dsMva
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          AutoAppend = False
          FixedCols = 3
          AutoSizeColumns = True
          AutoSizeColumnIndex = 4
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          AutoSizeRows = False
          RowsHeight = 19
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'MVAKODE'
              Title.Caption = 'M.k.'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BESKRIVELSE'
              Title.Caption = 'Beskrivelse'
              Width = 196
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SATS'
              Title.Caption = 'Sats'
              Width = 44
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'KONTONR'
              Title.Caption = 'Kontonr'
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'KONTONAVN'
              ReadOnly = True
              Title.Caption = 'Konto'
              Width = 216
              Visible = True
            end>
        end
      end
    end
  end
  object adoKlient: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 'select * from KLIENT'#13#10'where IDKLIENT = :IdKlient;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 356
    Top = 16
    object adoKlientIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoKlientNAVN: TStringField
      FieldName = 'NAVN'
      Size = 50
    end
    object adoKlientORGNR: TStringField
      FieldName = 'ORGNR'
      Size = 18
    end
    object adoKlientADRESSE: TStringField
      FieldName = 'ADRESSE'
      Size = 100
    end
    object adoKlientPOSTNR: TStringField
      FieldName = 'POSTNR'
      Size = 4
    end
    object adoKlientEPOST: TStringField
      FieldName = 'EPOST'
      Size = 50
    end
    object adoKlientURL: TStringField
      FieldName = 'URL'
      Size = 30
    end
    object adoKlientTELEFON: TStringField
      FieldName = 'TELEFON'
      Size = 14
    end
    object adoKlientFAKS: TStringField
      FieldName = 'FAKS'
      Size = 14
    end
    object adoKlientMOBIL: TStringField
      FieldName = 'MOBIL'
      Size = 14
    end
    object adoKlientLOGO: TStringField
      FieldName = 'LOGO'
      Size = 25
    end
    object adoKlientBANKKONTO: TStringField
      FieldName = 'BANKKONTO'
      Size = 15
    end
    object adoKlientSELSKAPKODE: TStringField
      FieldName = 'SELSKAPKODE'
      Size = 3
    end
    object adoKlientNESTEPRODNR: TIntegerField
      FieldName = 'NESTEPRODNR'
    end
    object adoKlientIMPORTNR: TIntegerField
      FieldName = 'IMPORTNR'
    end
    object adoKlientKREDITNOTATEKST: TMemoField
      FieldName = 'KREDITNOTATEKST'
      BlobType = ftMemo
    end
    object adoKlientPURREFORFALL: TIntegerField
      FieldName = 'PURREFORFALL'
    end
    object adoKlientKONTOKUNDE: TIntegerField
      FieldName = 'KONTOKUNDE'
    end
    object adoKlientKONTOLEVERANDOR: TIntegerField
      FieldName = 'KONTOLEVERANDOR'
    end
    object adoKlientSWIFT: TStringField
      FieldName = 'SWIFT'
      Size = 12
    end
    object adoKlientIBAN: TStringField
      FieldName = 'IBAN'
    end
    object adoKlientBANKNAVN: TMemoField
      FieldName = 'BANKNAVN'
      BlobType = ftMemo
    end
    object adoKlientKONTOMVA: TIntegerField
      FieldName = 'KONTOMVA'
    end
    object adoKlientKONTOAVRUNDING: TIntegerField
      FieldName = 'KONTOAVRUNDING'
    end
    object adoKlientKONTOSALG: TIntegerField
      FieldName = 'KONTOSALG'
    end
    object adoKlientKONTOBANK: TIntegerField
      FieldName = 'KONTOBANK'
    end
    object adoKlientKONTOKONTANT: TIntegerField
      FieldName = 'KONTOKONTANT'
    end
    object adoKlientBILAGSERIER: TSmallintField
      FieldName = 'BILAGSERIER'
    end
    object adoKlientORDRETEKST: TMemoField
      FieldName = 'ORDRETEKST'
      BlobType = ftMemo
    end
    object adoKlientPROGTYPE: TIntegerField
      FieldName = 'PROGTYPE'
    end
  end
  object dspKlient: TDataSetProvider
    DataSet = adoKlient
    UpdateMode = upWhereKeyOnly
    Left = 388
    Top = 16
  end
  object cdsKlient: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspKlient'
    Left = 420
    Top = 16
    object cdsKlientIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsKlientNAVN: TStringField
      FieldName = 'NAVN'
      Size = 50
    end
    object cdsKlientORGNR: TStringField
      FieldName = 'ORGNR'
      Size = 18
    end
    object cdsKlientADRESSE: TStringField
      FieldName = 'ADRESSE'
      Size = 100
    end
    object cdsKlientPOSTNR: TStringField
      FieldName = 'POSTNR'
      Size = 4
    end
    object cdsKlientEPOST: TStringField
      FieldName = 'EPOST'
      Size = 50
    end
    object cdsKlientURL: TStringField
      FieldName = 'URL'
      Size = 30
    end
    object cdsKlientTELEFON: TStringField
      FieldName = 'TELEFON'
      Size = 14
    end
    object cdsKlientFAKS: TStringField
      FieldName = 'FAKS'
      Size = 14
    end
    object cdsKlientMOBIL: TStringField
      FieldName = 'MOBIL'
      Size = 14
    end
    object cdsKlientLOGO: TStringField
      FieldName = 'LOGO'
      Size = 25
    end
    object cdsKlientBANKKONTO: TStringField
      FieldName = 'BANKKONTO'
      Size = 15
    end
    object cdsKlientSELSKAPKODE: TStringField
      FieldName = 'SELSKAPKODE'
      Size = 3
    end
    object cdsKlientNESTEPRODNR: TIntegerField
      FieldName = 'NESTEPRODNR'
    end
    object cdsKlientIMPORTNR: TIntegerField
      FieldName = 'IMPORTNR'
    end
    object cdsKlientPOSTSTED: TStringField
      FieldKind = fkLookup
      FieldName = 'POSTSTED'
      LookupDataSet = Dm.cdsPostnr
      LookupKeyFields = 'POSTNR'
      LookupResultField = 'POSTSTED'
      KeyFields = 'POSTNR'
      Size = 30
      Lookup = True
    end
    object cdsKlientKREDITNOTATEKST: TMemoField
      FieldName = 'KREDITNOTATEKST'
      BlobType = ftMemo
    end
    object cdsKlientPURREFORFALL: TIntegerField
      FieldName = 'PURREFORFALL'
    end
    object cdsKlientKONTOKUNDE: TIntegerField
      FieldName = 'KONTOKUNDE'
    end
    object cdsKlientKONTOLEVERANDOR: TIntegerField
      FieldName = 'KONTOLEVERANDOR'
    end
    object cdsKlientSWIFT: TStringField
      FieldName = 'SWIFT'
      Size = 12
    end
    object cdsKlientIBAN: TStringField
      FieldName = 'IBAN'
    end
    object cdsKlientBANKNAVN: TMemoField
      FieldName = 'BANKNAVN'
      BlobType = ftMemo
    end
    object cdsKlientKONTOMVA: TIntegerField
      FieldName = 'KONTOMVA'
    end
    object cdsKlientKONTOAVRUNDING: TIntegerField
      FieldName = 'KONTOAVRUNDING'
    end
    object cdsKlientKONTOSALG: TIntegerField
      FieldName = 'KONTOSALG'
    end
    object cdsKlientKONTOBANK: TIntegerField
      FieldName = 'KONTOBANK'
    end
    object cdsKlientKONTOKONTANT: TIntegerField
      FieldName = 'KONTOKONTANT'
    end
    object cdsKlientBILAGSERIER: TSmallintField
      FieldName = 'BILAGSERIER'
    end
    object cdsKlientORDRETEKST: TMemoField
      FieldName = 'ORDRETEKST'
      BlobType = ftMemo
    end
    object cdsKlientPROGTYPE: TIntegerField
      FieldName = 'PROGTYPE'
    end
  end
  object dsKlient: TDataSource
    DataSet = cdsKlient
    Left = 452
    Top = 16
  end
  object adoSelskap: TADODataSet
    Connection = Dm.adoConn
    CommandText = 'select * from SELSKAPTYPE'
    Parameters = <>
    Left = 532
    Top = 46
  end
  object dsSelskap: TDataSource
    DataSet = adoSelskap
    Left = 560
    Top = 46
  end
  object OpenPictureDialog: TOpenPictureDialog
    Left = 500
    Top = 46
  end
  object adoFirmaListe: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 'select IDKLIENT, NAVN from KLIENT'#13#10'order by NAVN;'
    Parameters = <>
    Left = 84
    Top = 8
    object adoFirmaListeIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object adoFirmaListeNAVN: TStringField
      FieldName = 'NAVN'
      Size = 50
    end
  end
  object adoStatus: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select * from STATUS'#13#10'where IDKLIENT = :IdKlient'#13#10'and IDSTATUS >' +
      ' 10'#13#10'order by IDSTATUS;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 261
    Top = 355
    object adoStatusIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoStatusIDSTATUS: TIntegerField
      FieldName = 'IDSTATUS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoStatusSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 25
    end
    object adoStatusOVERSKRIFT: TStringField
      FieldName = 'OVERSKRIFT'
      Size = 80
    end
    object adoStatusTEKST: TMemoField
      FieldName = 'TEKST'
      BlobType = ftMemo
    end
    object adoStatusGEBYR: TFloatField
      FieldName = 'GEBYR'
    end
    object adoStatusRENTESATS: TFloatField
      FieldName = 'RENTESATS'
    end
    object adoStatusAKTIV: TSmallintField
      FieldName = 'AKTIV'
    end
  end
  object dspStatus: TDataSetProvider
    DataSet = adoStatus
    UpdateMode = upWhereKeyOnly
    Left = 289
    Top = 355
  end
  object cdsStatus: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStatus'
    BeforeOpen = cdsStatusBeforeOpen
    Left = 317
    Top = 355
    object cdsStatusIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object cdsStatusIDSTATUS: TIntegerField
      FieldName = 'IDSTATUS'
    end
    object cdsStatusSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 25
    end
    object cdsStatusOVERSKRIFT: TStringField
      FieldName = 'OVERSKRIFT'
      Size = 80
    end
    object cdsStatusTEKST: TMemoField
      FieldName = 'TEKST'
      BlobType = ftMemo
    end
    object cdsStatusGEBYR: TFloatField
      FieldName = 'GEBYR'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
    object cdsStatusRENTESATS: TFloatField
      FieldName = 'RENTESATS'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
    object cdsStatusAKTIV: TSmallintField
      FieldName = 'AKTIV'
    end
  end
  object dsStatus: TDataSource
    DataSet = cdsStatus
    Left = 345
    Top = 355
  end
  object adoMva: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select MK.*, M.BESKRIVELSE, M.SATS, K.NAVN AS KONTONAVN'#13#10'from MV' +
      'AKONTO MK'#13#10'join MVA M on (MK.MVAKODE = M.MVAKODE)'#13#10'left join KON' +
      'TO K on (MK.KONTONR = K.KONTONR and K.IDKLIENT = MK.IDKLIENT)'#13#10'w' +
      'here MK.IDKLIENT = :IdKlient'#13#10'and M.AKTIV = 1'#13#10'order by MK.MVAKO' +
      'DE;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 260
    Top = 318
    object adoMvaIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoMvaMVAKODE: TIntegerField
      FieldName = 'MVAKODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoMvaKONTONR: TIntegerField
      FieldName = 'KONTONR'
    end
    object adoMvaBESKRIVELSE: TStringField
      FieldName = 'BESKRIVELSE'
      ProviderFlags = []
      Size = 40
    end
    object adoMvaSATS: TFloatField
      FieldName = 'SATS'
      ProviderFlags = []
    end
    object adoMvaKONTONAVN: TStringField
      FieldName = 'KONTONAVN'
      ProviderFlags = []
      Size = 80
    end
  end
  object dspMva: TDataSetProvider
    DataSet = adoMva
    Options = [poDisableInserts, poDisableDeletes]
    UpdateMode = upWhereKeyOnly
    Left = 288
    Top = 318
  end
  object cdsMva: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMva'
    BeforeOpen = cdsMvaBeforeOpen
    Left = 316
    Top = 318
    object cdsMvaIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsMvaMVAKODE: TIntegerField
      FieldName = 'MVAKODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsMvaKONTONR: TIntegerField
      FieldName = 'KONTONR'
    end
    object cdsMvaBESKRIVELSE: TStringField
      FieldName = 'BESKRIVELSE'
      ProviderFlags = []
      Size = 40
    end
    object cdsMvaSATS: TFloatField
      FieldName = 'SATS'
      ProviderFlags = []
      DisplayFormat = '0.00'
    end
    object cdsMvaKONTONAVN: TStringField
      FieldName = 'KONTONAVN'
      ProviderFlags = []
      Size = 80
    end
  end
  object dsMva: TDataSource
    DataSet = cdsMva
    Left = 344
    Top = 318
  end
  object slMvaUpdate: TblsList
    Lines.Strings = (
      'insert into MVAKONTO'
      'select $IdKlient AS IDKLIENT, MVAKODE, null as KONTONR'
      'from MVA'
      
        'where MVAKODE not in (select MVAKODE from MVAKONTO where IDKLIEN' +
        'T = $IdKlient)'
      'and AKTIV = 1;')
    Left = 376
    Top = 318
  end
  object adoSerie: TADODataSet
    Connection = Dm.adoConn
    BeforeOpen = adoSerieBeforeOpen
    CommandText = 'select * from SERIE'#13#10'where IDKLIENT = :IdKlient;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 532
    Top = 78
  end
  object dsSerie: TDataSource
    DataSet = adoSerie
    Left = 560
    Top = 78
  end
  object ActionList: TActionList
    Left = 552
    Top = 8
    object acBilagSerier: TAction
      Caption = 'Rediger nummerseirer'
      OnExecute = acBilagSerierExecute
    end
  end
end
