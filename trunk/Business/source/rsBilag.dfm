object frmBilag: TfrmBilag
  Left = 264
  Top = 308
  BorderStyle = bsDialog
  Caption = 'Registrering bilag'
  ClientHeight = 566
  ClientWidth = 962
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 962
    Height = 34
    Align = alTop
    AutoSize = True
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object TBXDock1: TTBXDock
      Left = 0
      Top = 0
      Width = 962
      Height = 34
      object TBXToolbar1: TTBXToolbar
        Left = 0
        Top = 0
        Caption = 'Verkt'#248'ylinje'
        Images = ImageList24
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object TBXItem1: TTBXItem
          Action = acNyttBilag
        end
        object TBXItem5: TTBXItem
          Action = acSlettPost
        end
        object TBXSeparatorItem3: TTBXSeparatorItem
        end
        object TBXItem3: TTBXItem
          Action = acSok
        end
        object TBXSeparatorItem2: TTBXSeparatorItem
        end
        object TBXItem10: TTBXItem
          Action = acKontoOppslag
        end
        object TBXItem4: TTBXItem
          Action = acEndreNummer
        end
        object TBXItem14: TTBXItem
          Action = acVisDokFelt
        end
        object TBXSeparatorItem1: TTBXSeparatorItem
        end
        object TBXItem2: TTBXItem
          Action = acHurtigReg
        end
        object TBXSeparatorItem4: TTBXSeparatorItem
          Blank = True
        end
        object TBXItem9: TTBXItem
          Action = acFirst
        end
        object TBXItem7: TTBXItem
          Action = acPrior
        end
        object TBXItem6: TTBXItem
          Action = acNext
        end
        object TBXItem8: TTBXItem
          Action = acLast
        end
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 34
    Width = 962
    Height = 177
    Align = alTop
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 1
    object pnlBilag: TPanel
      Left = 0
      Top = 0
      Width = 962
      Height = 82
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 8
      TabOrder = 0
      object gbHeader: TGroupBox
        Left = 8
        Top = 8
        Width = 946
        Height = 66
        Align = alClient
        Caption = 'Bilagsinformasjon:'
        TabOrder = 0
        object Label1: TLabel
          Left = 14
          Top = 16
          Width = 41
          Height = 13
          Caption = 'Bilagsnr.'
        end
        object Label2: TLabel
          Left = 102
          Top = 16
          Width = 23
          Height = 13
          Caption = 'Dato'
        end
        object Label3: TLabel
          Left = 225
          Top = 16
          Width = 36
          Height = 13
          Caption = 'Periode'
        end
        object Label4: TLabel
          Left = 273
          Top = 16
          Width = 11
          Height = 13
          Caption = #197'r'
        end
        object lblSerie: TLabel
          Left = 341
          Top = 16
          Width = 45
          Height = 13
          Caption = 'Bilagserie'
          Visible = False
        end
        object dbeBilagnr: TDBEdit
          Left = 12
          Top = 32
          Width = 81
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'BILAGNR'
          DataSource = dsBilag
          ReadOnly = True
          TabOrder = 0
        end
        object editPeriode: TJvDBSpinEdit
          Left = 224
          Top = 32
          Width = 37
          Height = 21
          MaxValue = 13.000000000000000000
          TabOrder = 2
          AllowNull = False
          DataField = 'PERIODENR'
          DataSource = dsBilag
        end
        object editAar: TJvDBSpinEdit
          Left = 272
          Top = 32
          Width = 57
          Height = 21
          MaxLength = 4
          TabOrder = 3
          DataField = 'AAR'
          DataSource = dsBilag
        end
        object dtDato: TJvDateEdit
          Left = 100
          Top = 32
          Width = 117
          Height = 21
          DialogTitle = 'Velg dato'
          PopupAlign = epaLeft
          CalendarStyle = csDialog
          TabOrder = 1
          OnInvalidDate = dtDatoInvalidDate
          OnExit = dtDatoExit
        end
        object dblSerie: TDBLookupComboBox
          Left = 340
          Top = 32
          Width = 201
          Height = 21
          DataField = 'IDBILAGSERIE'
          DataSource = dsBilag
          KeyField = 'IDBILAGSERIE'
          ListField = 'BILAGSERIE'
          ListSource = dsBilagSerie
          NullValueKey = 46
          TabOrder = 4
          Visible = False
        end
        object dbeDokument: TDBEdit
          Left = 553
          Top = 32
          Width = 160
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'DOKUMENTCALC'
          DataSource = dsBilag
          PopupMenu = popDokument
          ReadOnly = True
          TabOrder = 5
        end
        object btnOpen: TBitBtn
          Left = 715
          Top = 31
          Width = 23
          Height = 23
          Action = acOpenDok
          Caption = '&'
          DoubleBuffered = True
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000420B0000420B0000000100000001000000730800087B
            080008841000088C100008A51800108C2100109C210018AD290031C64A0042D6
            6B0052D67B005AE78C0018A5C60018ADD60021ADD60029ADD60031B5DE0052BD
            E7004AC6E7004AC6EF009CDEEF00ADDEEF006BDEF70073DEF700A5EFF700FF00
            FF0084EFFF008CEFFF0094EFFF008CF7FF0094F7FF00A5F7FF0094FFFF009CFF
            FF00ADFFFF00C6FFFF00D6FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00191919191919
            19191919191919191919190F100E191919191919191919191919190F141A120E
            0C0C0C19191919191919190F11212017171717120E0C19191919190F11221D1B
            1B1B171717130E191919190F0F151E1E1B1B1B1B171713191919190F170F211D
            1D1D1B1B1B17170C1919190F1E0F1518181F1B1B1B17000C1919190F21170F0C
            0C0C151D1A000B000C19190F211E171717160F15000A09080019190F211E1E1E
            1E17170F0C0508060C19190F23202124241B1C17170207021919190E14232314
            0D0C0C0C0C03041919191919100F0C0C19191919030402191919191919191919
            1900010303011919191919191919191919191919191919191919}
          ParentDoubleBuffered = False
          TabOrder = 6
          TabStop = False
        end
      end
    end
    object pnlHurtigReg: TPanel
      Left = 0
      Top = 82
      Width = 962
      Height = 95
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 8
      TabOrder = 1
      object pcHurtigReg: TPageControl
        Left = 8
        Top = 8
        Width = 946
        Height = 79
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        TabStop = False
        object TabSheet1: TTabSheet
          Caption = 'Hurtigregistrering'
          object Label6: TLabel
            Left = 9
            Top = 8
            Width = 56
            Height = 13
            Caption = 'Debetkonto'
          end
          object Label7: TLabel
            Left = 89
            Top = 8
            Width = 21
            Height = 13
            Caption = 'M.k.'
          end
          object Label8: TLabel
            Left = 125
            Top = 8
            Width = 55
            Height = 13
            Caption = 'Kreditkonto'
          end
          object Label9: TLabel
            Left = 205
            Top = 8
            Width = 21
            Height = 13
            Caption = 'M.k.'
          end
          object Label10: TLabel
            Left = 241
            Top = 8
            Width = 63
            Height = 13
            Caption = 'Kode & Tekst'
            ShowAccelChar = False
          end
          object Label11: TLabel
            Left = 749
            Top = 8
            Width = 26
            Height = 13
            Caption = 'Bel'#248'p'
          end
          object Label20: TLabel
            Left = 549
            Top = 8
            Width = 47
            Height = 13
            Caption = 'Fakturanr'
          end
          object Label14: TLabel
            Left = 649
            Top = 8
            Width = 30
            Height = 13
            Caption = 'Forfall'
          end
          object btnLagre: TButton
            Left = 844
            Top = 21
            Width = 85
            Height = 25
            Action = acLagreBilag
            TabOrder = 9
          end
          object editDKonto: TEdit
            Left = 8
            Top = 24
            Width = 77
            Height = 21
            TabOrder = 0
            OnExit = editDKontoExit
          end
          object editKKonto: TEdit
            Left = 124
            Top = 24
            Width = 77
            Height = 21
            TabOrder = 2
            OnExit = editKKontoExit
          end
          object editTekst: TEdit
            Left = 268
            Top = 24
            Width = 269
            Height = 21
            TabOrder = 5
            OnExit = editTekstExit
            OnKeyDown = editTekstKeyDown
          end
          object editDMva: TblsAlignEdit
            Left = 88
            Top = 24
            Width = 25
            Height = 21
            TabOrder = 1
            OnExit = editDMvaExit
            EditType = etInteger
          end
          object editKMva: TblsAlignEdit
            Left = 204
            Top = 24
            Width = 25
            Height = 21
            TabOrder = 3
            OnExit = editKMvaExit
            EditType = etInteger
          end
          object editBelop: TblsAlignEdit
            Left = 748
            Top = 24
            Width = 85
            Height = 21
            Alignment = taRightJustify
            TabOrder = 8
            Text = '0,00'
            OnExit = editBelopExit
            EditType = etFloat
            DisplayMask = '#,##0.00'
          end
          object editFakturanr: TEdit
            Left = 548
            Top = 24
            Width = 97
            Height = 21
            TabOrder = 6
            OnExit = editFakturanrExit
            OnKeyPress = editFakturanrKeyPress
          end
          object editTekstId: TblsAlignEdit
            Left = 240
            Top = 24
            Width = 25
            Height = 21
            MaxLength = 3
            TabOrder = 4
            OnExit = editTekstIdExit
            EditType = etInteger
          end
          object editForfall: TJvDateEdit
            Left = 648
            Top = 24
            Width = 88
            Height = 21
            DialogTitle = 'Velg dato'
            PopupAlign = epaLeft
            CalendarStyle = csDialog
            TabOrder = 7
            OnInvalidDate = editForfallInvalidDate
            OnExit = editForfallExit
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 502
    Width = 962
    Height = 64
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      962
      64)
    object btnOK: TButton
      Left = 869
      Top = 0
      Width = 85
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&OK'
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnAvbryt: TButton
      Left = 869
      Top = 30
      Width = 85
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Avbryt'
      ModalResult = 2
      TabOrder = 1
    end
    object Panel7: TPanel
      Left = 8
      Top = 0
      Width = 649
      Height = 56
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 2
      object Label12: TLabel
        Left = 12
        Top = 7
        Width = 33
        Height = 13
        Caption = 'Debet:'
      end
      object Label13: TLabel
        Left = 12
        Top = 35
        Width = 30
        Height = 13
        Caption = 'Saldo:'
      end
      object Label16: TLabel
        Left = 328
        Top = 7
        Width = 32
        Height = 13
        Caption = 'Kredit:'
      end
      object Label18: TLabel
        Left = 328
        Top = 35
        Width = 30
        Height = 13
        Caption = 'Saldo:'
      end
      object lblDKonto: TLabel
        Left = 52
        Top = 7
        Width = 270
        Height = 13
        AutoSize = False
        Caption = 'XXX'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ShowAccelChar = False
      end
      object Label19: TLabel
        Left = 12
        Top = 21
        Width = 20
        Height = 13
        Caption = 'Mva'
      end
      object lblDMva: TLabel
        Left = 52
        Top = 21
        Width = 270
        Height = 13
        AutoSize = False
        Caption = 'XXX'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ShowAccelChar = False
      end
      object lblKKonto: TLabel
        Left = 368
        Top = 7
        Width = 270
        Height = 13
        AutoSize = False
        Caption = 'XXX'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ShowAccelChar = False
      end
      object Label17: TLabel
        Left = 328
        Top = 21
        Width = 20
        Height = 13
        Caption = 'Mva'
      end
      object lblKMva: TLabel
        Left = 368
        Top = 21
        Width = 270
        Height = 13
        AutoSize = False
        Caption = 'XXX'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ShowAccelChar = False
      end
      object lblDSaldo: TLabel
        Left = 52
        Top = 35
        Width = 270
        Height = 13
        AutoSize = False
        Caption = 'XXX'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object lblKSaldo: TLabel
        Left = 368
        Top = 35
        Width = 270
        Height = 13
        AutoSize = False
        Caption = 'XXX'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
    end
    object Panel5: TPanel
      Left = 664
      Top = 0
      Width = 197
      Height = 56
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 3
      object Label21: TLabel
        Left = 12
        Top = 7
        Width = 56
        Height = 13
        Caption = 'Sum Debet:'
      end
      object Label22: TLabel
        Left = 12
        Top = 35
        Width = 54
        Height = 13
        Caption = 'Differanse:'
      end
      object Label23: TLabel
        Left = 12
        Top = 21
        Width = 55
        Height = 13
        Caption = 'Sum Kredit:'
      end
      object lblDSum: TLabel
        Left = 86
        Top = 7
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object lblKSum: TLabel
        Left = 86
        Top = 21
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object lblDiff: TLabel
        Left = 86
        Top = 35
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 211
    Width = 962
    Height = 291
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 3
    object dbgPostering: TJvDBGrid
      Left = 8
      Top = 8
      Width = 946
      Height = 275
      TabStop = False
      Align = alClient
      DataSource = dsPostering
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentShowHint = False
      PopupMenu = popGrid
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnEnter = dbgPosteringEnter
      OnExit = dbgPosteringExit
      ShowCellHint = True
      OnShowCellHint = dbgPosteringShowCellHint
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Alignment = taCenter
          Color = clBtnFace
          Expanded = False
          FieldName = 'DK'
          Title.Caption = 'D/K'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KONTONR'
          Title.Caption = 'Kontonr'
          Width = 43
          Visible = True
        end
        item
          Color = clBtnFace
          Expanded = False
          FieldName = 'KONTONAVN'
          Title.Caption = 'Kontonavn'
          Width = 208
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MVAKODE'
          Title.Caption = 'M.k.'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KONTAKTNR'
          Title.Caption = 'Reskontro'
          Width = 54
          Visible = True
        end
        item
          Color = clBtnFace
          Expanded = False
          FieldName = 'KONTAKT'
          Title.Caption = 'Navn'
          Width = 175
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDTEKST'
          Title.Caption = 'Id'
          Width = 17
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TEKST'
          Title.Caption = 'Tekst'
          Width = 168
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FAKTURANR'
          Title.Caption = 'Fakturanr'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FORFALL'
          Title.Caption = 'Forfall'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BELOP'
          Title.Caption = 'Bel'#248'p'
          Width = 78
          Visible = True
        end>
    end
  end
  object ActionList: TActionList
    Images = ImageList24
    Left = 508
    Top = 4
    object acNyttBilag: TAction
      Caption = 'Nytt bilag'
      Hint = 'Nytt bilag'
      ImageIndex = 0
      ShortCut = 16462
      SecondaryShortCuts.Strings = (
        'F7')
      OnExecute = acNyttBilagExecute
    end
    object acHurtigReg: TAction
      AutoCheck = True
      Caption = 'Hurtigregistrering'
      Checked = True
      Hint = 'Skru av/p'#229' hurtigregistrering'
      ImageIndex = 3
      OnExecute = acHurtigRegExecute
    end
    object acSok: TAction
      Caption = 'S'#248'k konto'
      Hint = 'S'#248'k'
      ImageIndex = 4
      ShortCut = 16454
      OnExecute = acSokExecute
    end
    object acLagreBilag: TAction
      Caption = '&Lagre'
      OnExecute = acLagreBilagExecute
    end
    object acPosteringTekst: TAction
      Caption = '...'
      OnExecute = acPosteringTekstExecute
    end
    object acEndreNummer: TAction
      Caption = 'Endre bilagsnummer'
      Hint = 'Endre bilagsnummer'
      ImageIndex = 6
      OnExecute = acEndreNummerExecute
    end
    object acSlettPost: TAction
      Caption = 'Slett postering'
      Hint = 'Slett postering'
      ImageIndex = 5
      ShortCut = 16430
      OnExecute = acSlettPostExecute
    end
    object acFirst: TDataSetFirst
      Category = 'Dataset'
      Caption = 'G'#229' til f'#248'rste bilag'
      Enabled = False
      Hint = 'G'#229' til f'#248'rste bilag'
      ImageIndex = 7
      DataSource = Dm.dsBilag
    end
    object acPrior: TDataSetPrior
      Category = 'Dataset'
      Caption = 'DataSetPrior1'
      Enabled = False
      Hint = 'G'#229' til forrige bilag'
      ImageIndex = 8
      DataSource = Dm.dsBilag
    end
    object acNext: TDataSetNext
      Category = 'Dataset'
      Caption = 'DataSetNext1'
      Enabled = False
      Hint = 'G'#229' til neste bilag'
      ImageIndex = 9
      DataSource = Dm.dsBilag
    end
    object acLast: TDataSetLast
      Category = 'Dataset'
      Caption = 'DataSetLast1'
      Enabled = False
      Hint = 'G'#229' til siste bilag'
      ImageIndex = 10
      DataSource = Dm.dsBilag
    end
    object acKontoOppslag: TAction
      Caption = 'Oppslag p'#229' konto'
      ImageIndex = 11
      OnExecute = acKontoOppslagExecute
    end
    object acInvert: TAction
      Caption = 'Snu fortegn'
      OnExecute = acInvertExecute
    end
    object acOpenDok: TAction
      Caption = #197'pne'
      Hint = 'Legg ved bilagsdokument'
      ShortCut = 16463
      OnExecute = acOpenDokExecute
    end
    object acSlettDok: TAction
      Caption = 'Slett dokument'
      OnExecute = acSlettDokExecute
    end
    object acVisDokFelt: TAction
      AutoCheck = True
      Caption = 'Vis felt for dokument'
      Checked = True
      Hint = 'Vis/Skjul felt for '#229' linke dokument'
      ImageIndex = 12
      OnExecute = acVisDokFeltExecute
    end
  end
  object adoPostering: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select * from POSTERING'#13#10'where IDBILAG = :IdBilag'#13#10'order by IDPO' +
      'STERING;'
    Parameters = <
      item
        Name = 'IdBilag'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 32
    Top = 304
    object adoPosteringIDBILAG: TIntegerField
      FieldName = 'IDBILAG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoPosteringIDPOSTERING: TIntegerField
      FieldName = 'IDPOSTERING'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoPosteringIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object adoPosteringKONTONR: TIntegerField
      FieldName = 'KONTONR'
    end
    object adoPosteringMVAKODE: TIntegerField
      FieldName = 'MVAKODE'
    end
    object adoPosteringTEKST: TStringField
      FieldName = 'TEKST'
      Size = 50
    end
    object adoPosteringKONTAKTNR: TIntegerField
      FieldName = 'KONTAKTNR'
    end
    object adoPosteringFAKTURANR: TStringField
      FieldName = 'FAKTURANR'
      Size = 25
    end
    object adoPosteringIDTEKST: TIntegerField
      FieldName = 'IDTEKST'
    end
    object adoPosteringFORFALL: TDateField
      FieldName = 'FORFALL'
    end
    object adoPosteringBELOP: TBCDField
      FieldName = 'BELOP'
      Precision = 18
      Size = 2
    end
  end
  object dspPostering: TDataSetProvider
    DataSet = adoPostering
    UpdateMode = upWhereKeyOnly
    Left = 60
    Top = 304
  end
  object cdsPostering: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDBILAG'
    MasterFields = 'IDBILAG'
    MasterSource = dsBilag
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspPostering'
    OnCalcFields = cdsPosteringCalcFields
    OnNewRecord = cdsPosteringNewRecord
    Left = 88
    Top = 304
    object cdsPosteringIDBILAG: TIntegerField
      FieldName = 'IDBILAG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPosteringIDPOSTERING: TIntegerField
      FieldName = 'IDPOSTERING'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPosteringIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object cdsPosteringKONTONR: TIntegerField
      FieldName = 'KONTONR'
    end
    object cdsPosteringMVAKODE: TIntegerField
      FieldName = 'MVAKODE'
    end
    object cdsPosteringTEKST: TStringField
      FieldName = 'TEKST'
      Size = 50
    end
    object cdsPosteringKONTAKTNR: TIntegerField
      FieldName = 'KONTAKTNR'
    end
    object cdsPosteringFAKTURANR: TStringField
      FieldName = 'FAKTURANR'
      Size = 25
    end
    object cdsPosteringDK: TStringField
      FieldKind = fkCalculated
      FieldName = 'DK'
      Size = 1
      Calculated = True
    end
    object cdsPosteringMVATEKST: TStringField
      FieldKind = fkCalculated
      FieldName = 'MVATEKST'
      Size = 50
      Calculated = True
    end
    object cdsPosteringKONTONAVN: TStringField
      FieldKind = fkCalculated
      FieldName = 'KONTONAVN'
      Size = 80
      Calculated = True
    end
    object cdsPosteringKONTAKT: TStringField
      FieldKind = fkCalculated
      FieldName = 'KONTAKT'
      Size = 80
      Calculated = True
    end
    object cdsPosteringIDTEKST: TIntegerField
      FieldName = 'IDTEKST'
    end
    object cdsPosteringFORFALL: TDateField
      FieldName = 'FORFALL'
    end
    object cdsPosteringBELOP: TBCDField
      FieldName = 'BELOP'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsPostering: TDataSource
    DataSet = cdsPostering
    OnDataChange = dsPosteringDataChange
    Left = 116
    Top = 304
  end
  object dsBilag: TDataSource
    DataSet = cdsBilag
    OnDataChange = dsBilagDataChange
    Left = 760
    Top = 108
  end
  object adoBilag: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select * from BILAG'#13#10'where IDBILAG = :IdBilag'#13#10'and IDKLIENT = :I' +
      'dKlient;'
    Parameters = <
      item
        Name = 'IdBilag'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 676
    Top = 108
    object adoBilagIDBILAG: TIntegerField
      FieldName = 'IDBILAG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoBilagIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoBilagBILAGNR: TIntegerField
      FieldName = 'BILAGNR'
    end
    object adoBilagAAR: TSmallintField
      FieldName = 'AAR'
    end
    object adoBilagPERIODENR: TSmallintField
      FieldName = 'PERIODENR'
    end
    object adoBilagGODKJENT: TSmallintField
      FieldName = 'GODKJENT'
    end
    object adoBilagBRUKER: TStringField
      FieldName = 'BRUKER'
      Size = 10
    end
    object adoBilagREGDATO: TDateTimeField
      FieldName = 'REGDATO'
    end
    object adoBilagDATO: TDateField
      FieldName = 'DATO'
    end
    object adoBilagSYSID: TIntegerField
      FieldName = 'SYSID'
    end
    object adoBilagIDBILAGSERIE: TIntegerField
      FieldName = 'IDBILAGSERIE'
    end
    object adoBilagDOKUMENT: TStringField
      FieldName = 'DOKUMENT'
      Size = 50
    end
  end
  object dspBilag: TDataSetProvider
    DataSet = adoBilag
    UpdateMode = upWhereKeyOnly
    Left = 704
    Top = 108
  end
  object cdsBilag: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBilag'
    OnCalcFields = cdsBilagCalcFields
    Left = 732
    Top = 108
    object cdsBilagIDBILAG: TIntegerField
      FieldName = 'IDBILAG'
    end
    object cdsBilagIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object cdsBilagBILAGNR: TIntegerField
      FieldName = 'BILAGNR'
    end
    object cdsBilagAAR: TSmallintField
      FieldName = 'AAR'
    end
    object cdsBilagPERIODENR: TSmallintField
      FieldName = 'PERIODENR'
    end
    object cdsBilagGODKJENT: TSmallintField
      FieldName = 'GODKJENT'
    end
    object cdsBilagBRUKER: TStringField
      FieldName = 'BRUKER'
      Size = 10
    end
    object cdsBilagREGDATO: TDateTimeField
      FieldName = 'REGDATO'
    end
    object cdsBilagDATO: TDateField
      FieldName = 'DATO'
    end
    object cdsBilagSYSID: TIntegerField
      FieldName = 'SYSID'
    end
    object cdsBilagIDBILAGSERIE: TIntegerField
      FieldName = 'IDBILAGSERIE'
      OnChange = cdsBilagIDBILAGSERIEChange
    end
    object cdsBilagDOKUMENT: TStringField
      FieldName = 'DOKUMENT'
      Size = 50
    end
    object cdsBilagDOKUMENTCALC: TStringField
      FieldKind = fkCalculated
      FieldName = 'DOKUMENTCALC'
      Size = 50
      Calculated = True
    end
  end
  object adoTekst: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 'select * from BILAGTEKST'
    Parameters = <>
    Left = 732
    Top = 4
    object adoTekstIDTEKST: TIntegerField
      FieldName = 'IDTEKST'
    end
    object adoTekstTEKST: TStringField
      FieldName = 'TEKST'
      Size = 25
    end
  end
  object adoKonto: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select O.KONTONR, O.NAVN, O.MVAKODE, 1 as KTYPE'#13#10'from KONTO O'#13#10'w' +
      'here O.IDKLIENT = :IdKlient1'#13#10'and O.AKTIV = 1'#13#10'  union'#13#10'select K' +
      '.KONTAKTNR as KONTONR,'#13#10'       K.NAVN,'#13#10'       0 as MVAKODE,'#13#10'  ' +
      '     case K.IDSERIE'#13#10'         when '#39'KS'#39' then 2'#13#10'         when '#39'L' +
      'S'#39' then 3'#13#10'         else 0'#13#10'       end as KTYPE'#13#10'from KONTAKT K'#13 +
      #10'where K.IDKLIENT = :IdKlient2;'
    Parameters = <
      item
        Name = 'IdKlient1'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdKlient2'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 580
    Top = 3
  end
  object dspKonto: TDataSetProvider
    DataSet = adoKonto
    Left = 608
    Top = 3
  end
  object cdsKonto: TClientDataSet
    Aggregates = <>
    PacketRecords = 500
    Params = <>
    ProviderName = 'dspKonto'
    Left = 636
    Top = 3
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
  object adoMvaKonto: TADODataSet
    Connection = Dm.adoConn
    BeforeOpen = adoMvaKontoBeforeOpen
    CommandText = 
      'select M.MVAKODE, M.BESKRIVELSE, M.SATS, K.KONTONR'#13#10'from MVA M'#13#10 +
      'left join MVAKONTO K on (M.MVAKODE = K.MVAKODE and K.IDKLIENT = ' +
      ':IdKlient)'#13#10'where M.AKTIV = 1'#13#10'order by M.MVAKODE;'
    IndexFieldNames = 'MVAKODE'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 704
    Top = 4
    object adoMvaKontoMVAKODE: TIntegerField
      FieldName = 'MVAKODE'
    end
    object adoMvaKontoBESKRIVELSE: TStringField
      FieldName = 'BESKRIVELSE'
      Size = 40
    end
    object adoMvaKontoSATS: TFloatField
      FieldName = 'SATS'
      DisplayFormat = '0.0'
    end
    object adoMvaKontoKONTONR: TIntegerField
      FieldName = 'KONTONR'
    end
  end
  object ImageList24: TImageList
    Height = 24
    Width = 24
    Left = 536
    Top = 4
    Bitmap = {
      494C01010D000E00080018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      000000000000000000000000000000000000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFF7E700FFF7E700FFEF
      D600FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDEB500FFDEB500FFD6
      AD00FFD6AD00FFD6AD00CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFF7E700FFF7
      E700FFEFD600FFEFD600FFE7C600FFDEB500FFDEB500FFDEB500FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700FFF7E700FFEFD600FFE7C600FFE7
      C600FFD6AD00FFDEB500CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700FFEFD600FFE7C600FFE7
      C600FFD6AD00FFDEB500CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFEFD600FFEF
      D600FFE7C600FFE7C600CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEBD9400DEBD
      9400DEBD9400DEBD9400DEBD9400DEBD9400CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700FFEFD600FFE7C600CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFD6AD00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      E700FFEFD600FFEFD600CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFD6AD00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7E700FFEFD600CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFEFD600CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DE7B0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D673100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008B89880058606400817A
      8300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A7A9AA003E84C400297B
      BE00978994000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A35228005E8CB10052B9FF002D94
      F7002878B700938186007946300071391C0085432100964B25009D4F27009F50
      27009F5027009F5027009F502700A0512700A2512800A2522800A3522800A352
      2800A3522800A3522800A3522800A35228000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BCA3
      A2009C3930009B2E1700AB6A5900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AE7763009C3211009B36
      2400B99993000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD6F5A00992D0E009A362200BA9D
      9800000000000000000000000000000000000000000000000000000000000000
      0000B27F7F00951B1B000000000000000000A3522800CAE1F4005CBAFC0054B7
      FF002C94F5002A78B7009B8A9000A58F81008E480100D0B89D00E1C5A400E2C4
      A100DFBF9B00E0BF9900E5C29A00EECAA000F6D0A600FBD4A900FDD6AA00FED7
      AB00FED7AB00FED7AB00FED7AB00A35228000000000000000000000000000000
      00000000000000000000000000000000000000000000C7C5C500A65E5D009826
      1C00CD9E9700C99788009F473400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A3544200BF826E00D1A9
      A0009E332400A24E4900C5C1C100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A14C3700C38B7900CB9990009825
      1200A3544E00C5C0BF0000000000000000000000000000000000000000000000
      0000A96060008E0202000000000000000000A3522800FFFCF700C9E0F4005BBA
      FC0054B6FF002C93F4002A78B5009D8C910091532000B09E8A00BCA78F00BBA4
      8A00B69E8300B79D8000C2A58500D4B48F00E7C49C00F4CFA400FBD4A900FDD6
      AA00FED7AB00FED7AB00FED7AB00A35228000000000000000000000000000000
      000000000000000000000000000000000000BA9B9A00931F1C00B4635A00E4D4
      D300F5FFFF00CDA09400A0493900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A3544400C1857400F3FB
      FE00E8DEDF00BA716500941F1500B48985000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A04D3B00C7968900F4FEFF00E1CE
      CA00AC534500921C1500B99A9800000000000000000000000000000000000000
      0000AA6363008E0404000000000000000000A3522800FFFDFB00FFFBF700C8E0
      F4005BBAFC0054B6FF002B93F5002878B7009173680096897A00998977009784
      720095816E0099826F00A38B7300BB9F8000D4B48F00E6C39B00F2CDA300FAD4
      A800FDD6AA00FED7AB00FED7AB00A35228000000000000000000000000000000
      0000000000000000000000000000A660600097211F00CFA09D00F4FBFE00E8E2
      E100EAE8E900CB9B8F00A04B3D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A55B4C00BF837100EAE6
      E600E7DFDE00F3FAFF00D6B1AC009B2A2500A2505000C7C5C500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A14F3E00C6928300EAE7EA00E9E4
      E500F2F5F700CA948C0094180E00A86260000000000000000000000000000000
      0000AA6363008E0404000000000000000000A3522800FFFFFF00FFFEFC00FFFC
      F800C4DEF5005AB9FC004FB5FF004597E30066645D0087787000A57E6500B99C
      8B00BA9F9000BA9F9000BC9D8C00B7896500BE791600CD7B0000DE850000F191
      0000FB970000FE980000FE980000A35228000000000000000000000000000000
      000000000000C4BEBE0097313100AB4A4600E8D9D900F7FFFF00DCB29700CE89
      5D00EDEAE800CC9B9000921D10009F4A3B00A04B3600A04D3500A14F3500A14F
      3200AC715400000000000000000000000000000000000000000000000000AC70
      5400A04D2C00A14F3000A14E3000A14B2F00A04B330092231100C0827400EDE8
      E700CE8B5E00DAAB8D00F5FDFF00ECE2E300B0544D0094252500C2B7B6000000
      0000000000000000000000000000000000000000000000000000AE765B009F49
      28009F4C2C009F4B2C009E492C009F4A32008F1C0D00C7928700EDE9EA00CC89
      5C00DFBDA700F7FFFF00E1C7C500A0302B0098333300C6C4C400000000000000
      0000AA6363008E0404000000000000000000A3522800FFFFFF00FFFFFF00C0BF
      BF00BFBDBB00BAD9F2007CC1F100C8D3D900B3A19C00B69A8C00D0BDA600EBE3
      C600F9F7D800F9F7D600EBE3C500CFBAA700B89A8D00AC917B00C0A38200E2BF
      9800F7D1A600FDD6AA00FDD6AA00A35228000000000000000000000000000000
      0000C0B2B200911B1B00BD6F6E00F9F6F700F5F1ED00DEA57800CB651700CF83
      4C00ECEAED00E6D8D900D2AAA200D2ADA300D2AEA300D2AEA200D2B0A200CFA8
      9500A54D2600000000000000000000000000000000000000000000000000A248
      1C00CEA89500D4B6A800D4B5A800D5B6A900D5B5A900D3B0A600E3D4D300ECEA
      EE00D0865200CA641400DC9D6B00F2EBE400F9FBFB00C27D790090141400BCA3
      A3000000000000000000000000000000000000000000000000009E3D1400C89A
      8300D2AF9F00D1AC9E00D1AC9E00D1AC9F00CFA69A00E3D4D300ECE9EC00CE7D
      4400CC671900E0AB8400F7FAFB00F2EAE900AF53500092202000C2B5B5000000
      0000AA6363008E0404000000000000000000A3522800FFFFFF00FFFFFF00FFFF
      FF00FEFDFC00F5F2EF00D8D5D000B9ACA800C0A39400E7D3AF00FEE2B700FEE4
      BB00FEE4BB00FEE4BC00FEE4BE00FEE9D000E2D7D000B4968A00AF967B00D9B9
      9300F4CFA400FDD6AA00FDD6AA00A3522800000000000000000000000000C3BB
      BB00911C1C00C57F7E00FEFFFF00F5E7DA00E59C5D00DB7C2B00D5762A00D68C
      5300E5D2C800E7D9D300E9DDD800E6DAD400E3D5D100E0D1CC00E5DEE000E9E7
      E800AC5E3F00000000000000000000000000000000000000000000000000A752
      2C00E8E1E100E4DFE300DFCDC900E1D2CD00E4D6D000E7DAD300E7D8D100E5D0
      C600D78D5600D5762A00DA7B2A00E3975500F3E2D400FFFFFF00C98A87009017
      1600C1B4B3000000000000000000000000000000000000000000A1431E00E3D8
      D200E7E6EB00E1D6D200E5DAD700E6DDD900E9E1DE00E9DEDA00E6D4CD00D58A
      5000D4752800DC7C2A00E6A26700F7EFE700FAF9FB00B35A5800912020000000
      0000AB6766008E0404000000000000000000A3522800FFFFFF00FFFFFF004CB7
      4C004CB64C00F5F5F400D7D4D300B89B9200D1B99F00F9DCAA00FBEEC400FFFF
      DA00FFFFDB00FFFFE700FFFFF400FFFFFD00FFFFFF00C9B3A100B07E3E00D882
      0000F5930000FE980000FE980000A35228000000000000000000000000009B3D
      3D00BB6D6D00FEFFFF00FAE6D200F09F5100E98E3900E48E4000DE853B00D77E
      3500D1773100CB6F2B00C4662600BD5F2100B7561900AD460800C9998100E8E4
      E600AB5B3A00000000000000000000000000000000000000000000000000A64F
      2800E6E0E000D0AA9900AC460A00B4521400BC5D1C00C2642200C96B2700D074
      2D00D77D3500DE853A00E38C4000E98E3A00F09D4E00F9E1CA00FFFFFF00C177
      7600963030000000000000000000000000000000000000000000A0411D00E1D4
      D000D5B7AA00AE4B1100B7591E00BE622500C4692A00CA723000D27A3600D87E
      3600DE853A00E58D4000EA8D3800F2A86100FBF3E600F9F4F600AB4A4900A65E
      5E00AD6D6D008E0404000000000000000000A3522800FFFFFF00FFFFFF004CB7
      4C004CB64C00F5F5F500D8D5D400BFA39400E9D2AA00F2C79400FAE9BE00FFFF
      DA00FFFFDC00FFFFED00FFFFFD00FFFFF900FFFFE800E6DDC000B49B8A00D9BC
      9B00F4D1AA00FDD7AC00FDD7AC00A35228000000000000000000000000009924
      2400EDD8DA00FFF4E300FDAF5E00F8A04700F19E4D00EA954500E48D4000DE85
      3B00D77C3300D0752E00CB6C2900C4652200BD5C1C00B34C0A00CD9E8400E9E6
      E800AC5C3A00000000000000000000000000000000000000000000000000A64F
      2800E7E1E000D4B09D00B34F1000BB5A1A00C3652300CA6D2800D0742D00D77C
      3300DE853A00E48D4000EA944500F19C4C00F7A04800FDAC5800FFF1E000F0E0
      E1009B2928000000000000000000000000000000000000000000A0421D00E3D6
      D300D8B9AB00B24C0B00BB5A1A00C3632200C96C2600D0742D00D77B3100DE85
      3900E58E4100EB954600F19E4D00F9A04600FDB66D00FFFFFC00DDB6B500911B
      1B00AA6565008E0505000000000000000000A3522800FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00F8F8F800DCD4D400BA9F9100F7E0AF00EFBD8800FAD6A900FEE3
      B900FEE4BC00FEE4C000FEE4C500FEE4C300FEE4BE00F4F0CE00B79D8E00E2C6
      A700F7D6B100FDDAB100FDDAB100A35228000000000000000000000000009723
      2300EAD1D300FFF8EA00FFB66900FEA74B00F9A75300F29D4C00EC964600E58E
      4000DE843600D97D3000D2742B00CB6B2600C3631F00BA530E00D3A38700EAE8
      E900AB5B3A00000000000000000000000000000000000000000000000000A64F
      2800E8E2E300D8B39F00BA561300C2611D00C96B2400D0732B00D87A3000DE83
      3500E58D3F00EC964600F19C4C00F8A65300FEA74C00FFB56600FFF7E900ECD6
      D7009A2625000000000000000000000000000000000000000000A0411D00E3D8
      D400DBBEAE00BA530F00C3611E00CA6B2500D0732A00D87B3000DE833600E58D
      4000EC964700F29E4D00FAA75300FFA64900FEBF7C00FFFFFF00D9ADAC00931D
      1C00AA6666008E0505000000000000000000A3522800FFFFFF00FFFFFF00C0C0
      C000BFBFBF00FBFBFB00E8E0E000BA9F9100F9E4B400EFB98300F9CD9F00FCDC
      B100FEE4BB00FEE4BD00FEE4BD00FEE4BD00FEE4BB00FADEB300BA9A8200F090
      0000FB970000FE980000FE980000A35228000000000000000000000000009E49
      4900B4605F00FCFBFD00FFF5E300FFB46700FEA64900F9A65300F39E4C00EC99
      4A00E6975100E1914D00DB894700D4824200CE7A3C00C56C2D00D9AE9600EBE8
      EA00AC5B3B00000000000000000000000000000000000000000000000000A64F
      2900E8E2E200DDBDAC00C66E3100CD783B00D4824200DB894700E1904C00E597
      5100EB974A00F39D4B00F9A55100FEA64900FFB56700FFF2E000FEFEFF00B865
      64009B3F3F000000000000000000000000000000000000000000A0421D00E4D7
      D300E1C7B900C76E3100CD7A3E00D5834400DA8A4900E1924F00E7995400ED99
      4A00F39F4C00FAA65100FFA64800FEC07E00FFFFF800F4E9EA00A2363400AD73
      7300AD6D6D008E0404000000000000000000A3522800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00F7F5F500C0A49600EBD8B000F7D5A400F2CA9600F5D4
      A100FAEABF00FEFCD500FFFFDA00FFFFDA00FFFFD900E8DDBE00C7AD9D00F9E1
      C500FEE1C200FEDFBD00FEDFBD00A3522800000000000000000000000000C6C2
      C20093292900BB6C6B00FCFBFF00FFF6EB00FEC28100FFA74A00F9A14600F3B2
      7100F3E9E600F5F2F100F8F9F700F6F6F400F4F3F100F2EFEF00F3F5F800F2F1
      F000AD5F3F00000000000000000000000000000000000000000000000000A852
      2C00EFEBE700F3F7FA00F1EEEE00F5F2F100F7F5F400F8F8F700F6F4F400F2EA
      E700F3B27400F9A04500FFA64900FEC07F00FFF5EA00FCFDFF00BC6E6C009221
      2100C5BFBF000000000000000000000000000000000000000000A0421F00E9DE
      D500F5F9FD00F1F0F100F3F3F300F6F5F500F8F9F800F5F6F500F3EBE800F4AF
      6D00FAA04600FFA74B00FEC99200FFFEF900F5EBEB00A7434100973333000000
      0000AB6565008E0404000000000000000000A3522800FFFFFF00FFFFFF006E94
      FF006E94FF00FFFFFF00FEFEFE00CAAFA800D0B9A100FFFDE700FBEED900F4D0
      A000F2C99600F6D9AA00FAE7BD00FCF0C700FFFFD400C8B09D00DCC5B400FDE8
      CF00FFE5C900FFE2C300FFE2C300A35228000000000000000000000000000000
      0000C4BCBC0092282800B3595800F5EBEB00FFFFFF00FED4A600FFA54600FAB5
      6F00F8FAFC00E7D3D200CB948B00CB988D00CC9B8F00CC9D8F00CE9F9100CA98
      8500A34A2100000000000000000000000000000000000000000000000000A144
      1800C6937C00CC9F8D00CB9C8A00CB9B8B00CB998A00C8918500E0C6C400F8FA
      FC00FAB77400FFA44600FED1A100FFFFFF00F5EBEB00B45E5B0093222200C1B3
      B3000000000000000000000000000000000000000000000000009D3D1300C28B
      7000CB9E8B00CA9A8700CA998800CA988900C78F8100E4CDC900F9F9F700FAB1
      6800FEA84E00FEDCB600FFFFFF00ECD6D400A43A370098343400C6C2C2000000
      0000AA6363008E0404000000000000000000A3522800FFFFFF00FFFFFF006E94
      FF006E94FF00FFFFFF00FFFFFF00EFE7E600BA998800E5DBD300FFFFFF00FBE8
      C200F3C79100F2C49000F6D5A200FFEEBB00DCC7AB00BD977B00F6981000FF99
      0000FF990000FF990000FF990000A35228000000000000000000000000000000
      000000000000000000009C444400A3383500E5C6C600FFFFFF00FEE6C900FBC9
      9400FFFFFF00CF9D92008F1B1400A3574C00A3544500A3564500A4584500A359
      4200B17F6900000000000000000000000000000000000000000000000000B285
      7000A35A4200A45B4500A45C4500A45A4500A45C4C0090211900C1817300FEFF
      FD00FDCB9700FEE5C700FFFFFF00E7CCCA00A43B37009A3B3B00C6C4C4000000
      0000000000000000000000000000000000000000000000000000B2867000A050
      3400A1503700A15037009F4E3700A1523F008D191100C9918600FFFEF800FCCA
      9700FFEAD500FFFFFF00DBB4AF0097201C00A04A4A0000000000000000000000
      0000AA6363008E0404000000000000000000A3522800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C2753100BA9E9400CAB5A400E9D8
      B600F8E5B800F7E4B600E6D3AF00CBB09C00BFA39700EADBD000FFF3E500FEF0
      DE00FEEDD800FFE9D100FFE9D100A35228000000000000000000000000000000
      0000000000000000000000000000AF79790093181700C98B8700FAF6F600FFFF
      FF00FFFFFF00D2A39600A04B3D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A55B4C00C4887600FFFF
      FF00FFFFFF00FBF7F600CC938C00951D1500AD72710000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A04D3E00CD968700FFFFFF00FFFF
      FF00F7F0EF00BF766E008F120B00B1817E000000000000000000000000000000
      0000AA6363008E0404000000000000000000A3522800EAC07800EAC07800EAC0
      7800EAC07800EAC07800EAC07800EAC07800CC670100E0B77A00BF9B7E00BA9B
      8B00B99D8F00B99D8F00BF9F8F00CBA78600E4BC7B00EAC07800EAC07800EAC0
      7800EAC07800EAC07800EAC07800A35228000000000000000000000000000000
      000000000000000000000000000000000000BEAAA900972B2900AD4E4700E8CE
      CA00FFFFFF00D5A89C009F483900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1534400C88E7E00FFFF
      FF00EAD3CE00AF54470095272100BCA29F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A04D3B00CF9C8E00FFFFFF00DFBD
      B600A1392A00962C2700C0AFAD00000000000000000000000000000000000000
      0000AA6363008E0404000000000000000000A3522800CA6E1800D7771200D777
      1200D7771200D7771200D7771200D7771200D7771200D7771200D7771200D777
      1200D7771200D7771200D7771200FCC08000EE9E4000E5861600FCC08000EE9E
      40009E6A4E004E6ED400CA6E1800A35228000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AE7674009420
      1500C88B8200CB928300A0483500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A3564300BF7B6600CA90
      800098281800AC706B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A14C3700C2826E00C2817200921D
      0D00AD746D000000000000000000000000000000000000000000000000000000
      0000A96060008E0202000000000000000000A3522800C6773800D2833E00D283
      3E00D2833E00D2833E00D2833E00D2833E00D2833E00D2833E00D2833E00D283
      3E00D2833E00D2833E00D2833E00F6BB8000E2914000D4761600FCC08000E291
      40009E6A4E004E6ED400C6773800A35228000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C1B5
      B3009F473E00992A1300AE726200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B1827000982D0F009D43
      3400BFADAA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AF7A660097280B009E453600C2B6
      B300000000000000000000000000000000000000000000000000000000000000
      0000B485850098252500000000000000000000000000A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ABA7A6008C88
      8800C09596000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6820000D682
      0000D6820000D6820000D6820000D6820000D6820000D6820000D6820000D682
      0000D6820000D6820000D6820000D6820000D6820000D6820000D6820000D682
      0000D6820000D682000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ACA8A70086868A002A66
      9A004B7BA000C094940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6820000FFEAD100FEE8
      CE00FFE7CC00FFE5C900FEE4C500FFE2C300FEE1C000FEE0BD00FEDEBA00FEDE
      B800FEDCB500FEDBB300FEDAB100FED9AF00FED8AD00FED8AC00FED7AB00FED7
      AB00FED7AB00FED7AB00D6820000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009B9D9D005492C2002E99
      FF001B7CCB00557A9700C1959500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009A0000009A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009A0000009A000000
      00000000000000000000000000000000000000000000D6820000FEEBD500FEEA
      D200FEE8CE00FEE6CB00FEE5C900FFE4C500FEE2C300FEE1C000FEE0BD00FEDE
      BA00FEDDB800FEDCB600FEDBB400FEDAB100FED9AF00FED8AD00FED7AC00FED7
      AB00FED7AB00FED7AB00D6820000000000000000000000000000951A1A00AD6C
      6C00000000000000000000000000000000000000000000000000000000000000
      0000C1B2B0009D3F340097250F00A85F4B000000000000000000000000000000
      000000000000000000000000000000000000000000003DADFF0057C1FF004DB1
      FF003196FA00197CC90053799700C19495000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009A001244FF000C30E60000009A000000000000000000000000000000
      00000000000000000000000000000000000000009A000028F200002CF9000000
      9A000000000000000000000000000000000000000000D6820000FFECD800FFEB
      D500FFE9D200FEE9CF00FEE7CC00FEE5C800FEE4C600FEE2C300FEE1C000FEE0
      BD00FEDEBA00FEDDB800FEDCB600FFDBB400FEDBB100FED9B000FED8AE00FED8
      AC00FED7AC00FED7AB00D68200000000000000000000000000008D020200A34C
      4C0000000000000000000000000000000000000000000000000000000000AB6A
      690092190F00C1827A00C79385009B3923000000000000000000000000000000
      000000000000000000000000000000000000000000000000000041ABFF005DBF
      FE004DAFFF003196FA00197BC8005A7A9700C295940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9A001A4BFF001645FF001444FF000D2FE50000009A0000000000000000000000
      000000000000000000000000000000009A000027F0000030FF000030FF00002E
      FD0000009A0000000000000000000000000000000000D6820000FEEEDC00FEEC
      D900FEEBD500FFEAD300FFE7CD00FFE7CD00FEE5C900FEE4C600FEE4C600FEE4
      C600FEDFBE00FEDFBB00FEDDB9000000000000000000FEDAB100000000000000
      0000FED8AC00FED7AB00D68200000000000000000000000000008E040400A450
      50000000000000000000000000000000000000000000BFADAC0095252500A43D
      3400DCC0BC00F4FEFF00D0A89F009B3726000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042AB
      FE005CC0FE004DAFFF003096FA00197AC800587A9600C1949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9A001740F1001A4BFF001746FF001646FF000E30E40000009A00000000000000
      0000000000000000000000009A000129EF000030FF00002EFF000030FF000023
      E70000009A0000000000000000000000000000000000D6820000FEEFDF00FEEE
      DC00FFEDD900FEEDD8009B8DB5002623980005059000050590008A7CAD00FEE4
      C600FEE4C600FEE0BE00FEDFBB00FFDDB800FEDCB60000000000FEDAB200FED9
      B000FED8AE00FED8AD00D68200000000000000000000000000008E040400A450
      500000000000000000000000000000000000B28181008F0E0C00BF7A7600EFEE
      EF00ECEBEC00EAE7E800CDA197009B3B2C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042ACFE005CC0FE004DAFFF002E94FA00187AC7005F7C9700BB9396000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009A001940F0001C4CFF001847FF001646FF000F32E70000009A000000
      00000000000000009A00002BF7000232FF000331FF000131FF000023E4000000
      9A000000000000000000000000000000000000000000D6820000FFF1E200FFF0
      DF00FEEEDC00CDBFCA00050590007A6EAC00FFE7CD00EED8C9004841A000695E
      A600FEE3C400FEE1C100FEE0BE00FEDFBC00FEDEB90000000000FFDCB400FEDB
      B200FEDAB100FED9AE00D68200000000000000000000000000008E040400A450
      5000000000000000000000000000A1515100961E1C00D8B1B000F9FFFF00E4CA
      BA00CD875900EAE1DE00CFA39D008D140B00A04B3B009F4A36009F4C3500A04F
      3500A04E3000AD755A0000000000000000000000000000000000000000000000
      00000000000044ADFE005CBFFE004DB0FF002D94F8001979C600437397000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009A001A40EF001D4DFF001948FF001848FF001238EF000000
      9A0000009A00002BF800002FFF00002EFF000232FF000324E50000009A000000
      00000000000000000000000000000000000000000000D6820000FFF3E500FFF1
      E200FFF0DF006963AE0016149500FEEDD800FFECD800FFE7CD00BCABBD000505
      9000CDB7BC00FEE3C400FEE1C100FEE0BE00FEDFBB0000000000FFDCB700FEDB
      B500FEDAB200FEDAB000D68200000000000000000000000000008E040400A450
      500000000000C7C5C50099393900A33C3A00EADADA00F9FFFF00E4B79700CE6D
      2300CB743300EAE1DF00E6D8DB00CDA09800D0A69B00CFA69B00CEA89A00CFA9
      9B00CB9F8B00A1451B0000000000000000000000000000000000000000000000
      0000000000000000000046AEFE005CBFFE004CB0FF003F97ED00577B94000000
      00000000000000000000AE837E00AE837E00AE837E00AE837E00AE837E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000009A001B42F0001E4EFF001B4AFF001949FF000E38
      F6000431FD000131FF00002EFF000030FF000027F10000009A00000000000000
      00000000000000000000000000000000000000000000D6820000FFF4E800FFF3
      E500FEF2E300FFF0DF00FFEEDC00FFEDD900FFECD800FEEDD800EED8C9000505
      90008A7DAF00FEE4C700FEE3C400FEE1C200FEE0BF0000000000FEDEB900FEDD
      B600FEDBB500FFDAB200D68200000000000000000000000000008E040400A551
      510000000000993C3C00A7434200F5EDED00FAF7F300E8AD7900DD7E2C00D676
      2800D4834500E4D1C600E9E0DD00EAE4E000E8E0DE00E6DCDA00E3D8D600E7E4
      E600E8E4E300A7512C0000000000000000000000000000000000000000000000
      000000000000000000000000000046AFFE0066C5FF00A3CCF100BEB3AB008671
      7000A9807A00AE837E00E5D8BD00FFFFE200FFFFE200FFFFE000EEDFC600AE83
      7E00AE837E000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000009A001B42EF001F4FFF001745FF000E3D
      FF000939FF000634FF000333FF000128F00000009A0000000000000000000000
      00000000000000000000000000000000000000000000D6820000FFF5EB00FFF4
      E800FFF3E600FFF2E300ACA2C50026249A000505900026249A00AC9FC0002623
      9900695FA800FFE5CA00FEE4C700FEE3C400FFE2C10000000000FFDFBC00FEDE
      B900FEDCB700FEDCB500D68200000000000000000000000000008E030300A85B
      5B00B48B8B009E303000F2E5E600FEFEF700F3B17200EB8E3700E58D3F00DF86
      3C00D87F3700D27D3900CC743300C56C2D00C0652800B85C2200AF4C1000D0A8
      9500E6E2E200A64F290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DCBFB800C69E
      8E00D8BDA300FFFFDD00FFFFDD00FFFFDB00FFFFDA00FFFFDB00FFFFDD00FFFF
      E900DEC9B700AE837E0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000009A001B45F5001747FF001342
      FF000F3EFF000C3CFF000830F00000009A000000000000000000000000000000
      00000000000000000000000000000000000000000000D6820000FFF7ED00FFF6
      EB00FFF4E800BCB3CE00050590008A82BB00FEEDD800FEEDD8004743A3001614
      94005851A600FFE8CD00FEE5CA00FFE4C700FEE3C40000000000FFE0BE00FEDF
      BC00FEDEBA00FEDDB700D68200000000000000000000000000008E040400A75B
      5B00962D2D00D39D9E00FFFFFF00FDBE7D00F9A04400F39F4E00EC964700E58F
      4200DE863B00D87C3200D1752D00C96D2600C4642100BC5C1B00B24B0900D2A9
      9400E8E4E400A64F280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AE857F00DEC0
      A500FFF3C100FCF1C800FFFFDA00FFFFD900FFFFDA00FFFFE000FFFFE400FFFF
      EF00FFFFFF00DDCAC800AE837E00000000000000000000000000000000000000
      00000000000000000000000000000000000000009A001F4DFC001D4CFF001A48
      FF001544FF001443FF00143CF00000009A000000000000000000000000000000
      00000000000000000000000000000000000000000000D6820000FEF8F100FFF7
      EE00FEF6EB005855AD0026259B00FFF2E200FFF0E000FEEDD800DDCECE000505
      90005851A700FFE9D000FFE7CE00FFE6CA00FFE4C80000000000FEE2C200FEE0
      BF00FFE0BC00FEDEBA00D68200000000000000000000000000008E040400A85D
      5D0097323200D0979800FFFFFF00FEC68B00FFA64900FAA75400F39F4D00ED97
      4800E58F4100DF853700D97C3100D1742B00CB6C2600C4641F00B9530E00D6AE
      9800EAE4E600A64F290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AE837E00FFEF
      B900F5D4A500FBF0C600FFFFDB00FFFFDA00FFFFDD00FFFFEB00FFFFF500FFFF
      FB00FFFFFD00FFFFFE00AE837E00000000000000000000000000000000000000
      000000000000000000000000000000009A002A58FC002756FF002251FF00204F
      FF001D4DFF001D4CFF001E4EFF00173EEF0000009A0000000000000000000000
      00000000000000000000000000000000000000000000D6820000FFFAF300FFF8
      F100FEF7EE0026259C005855AE00FFF3E600FFF0E000FFF0E000FFF0E0002624
      9A005852A800FFEAD400FFE9D100FFE7CE00FFE6CB0000000000FEE3C500FFE2
      C100FEE1BF00FEDFBD00D68200000000000000000000000000008E030300A75B
      5B00B898980098232300ECD6D800FFFFFD00FEC68A00FFA54800FAA75100F4A0
      4D00ED994A00E8995400E1925100DB8B4A00D5844400CF7B3F00C66E2F00DBB8
      A600EAE4E500A64F290000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AE837E00ECD5B400F8D6
      A200F2C99700FCEDC400FFFFDB00FFFFDA00FFFFE000FFFFF000FFFFFE00FFFF
      FD00FFFFF500FFFFEB00E1D3B800AE837E000000000000000000000000000000
      0000000000000000000000009A002C56F4003160FF002B5AFF00295AFF002047
      F1001F46F1002454FF00204FFF001F4FFF00183FF00000009A00000000000000
      00000000000000000000000000000000000000000000D6820000FFFAF500FFF9
      F300FFF8F10026259D004845A900FFF4E900FFF3E600FFF0E000FFF0E0002624
      9B007971B200FEEDD800FEEBD400FFE9D100FEE8CE0000000000FEE5C800FEE3
      C500FEE2C200FEE0C000D68200000000000000000000000000008E040400A450
      5000000000009F4C4C009E333200EFDCDC00FFFFFF00FDCF9D00FFA94D00FBA2
      4600F5AA6200F3E7E000F5F5F600F9FBF800F7F7F500F4F5F400F2F1F100F3F7
      FA00F0EDE800A8522B0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AE837E00FFF3BF00F4CB
      9500F0C18E00F9E5BA00FEFDD700FFFFDC00FFFFDF00FFFFEC00FFFFF800FFFF
      F800FFFFEC00FFFFE000FFFFE300AE837E000000000000000000000000000000
      00000000000000009A00325EF7003666FF003361FF003365FF00274FF0000000
      9A0000009A002047EF002656FF002251FF002151FF001840EF0000009A000000
      00000000000000000000000000000000000000000000D6820000FFFBF700FFFA
      F500FFFCFA006966B70026259D00FFF5EC00FFF3E600FFF3E600FFF3E6001615
      9500ACA2C500FEEDD800FEEDD800FFEBD500FEEAD10000000000FEE6CB00FFE5
      C800FEE4C500FEE2C200D68200000000000000000000000000008E040400A450
      500000000000000000009F4A4A009C2B2A00E5C7C600FFFFFF00FEE1C000FFAC
      5400FBAC5B00F9F4ED00E9D8D800C9928900CC998D00CC9B8E00CC9C8E00CDA0
      9100C9968100A144180000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AE837E00FFF4C000F3C9
      9400EEB88400F5D5A500FDF3CB00FFFFDC00FFFFDD00FFFFE200FFFFE800FFFF
      E900FFFFE200FFFFDD00FFFFE300AE837E000000000000000000000000000000
      000000009A003865F7003C6DFF003867FF003869FF00284DE70000009A000000
      00000000000000009A001E41E7002757FF002352FF002252FF001A42F0000000
      9A000000000000000000000000000000000000000000D6820000FEFCFA00FFFC
      F800FFFCFA00DED8E400161596008A87C400FFF8F100FFF8F1007A74B8004844
      A600FFF0E000FFF0E000FEEDD800FFECD800FFEAD40000000000FEE8CE00FFE7
      CB00FFE5C800FFE3C600D68200000000000000000000000000008E040400A450
      5000000000000000000000000000A761610092171500D3A29F00FFFFFF00FFEF
      DC00FDC89100FFFAF000D2A59F008B0F0C009F4B3E009F4A39009F4B3700A04E
      3700A04D3300B07C640000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AE837E00FFF5C300F6D1
      9C00EEB27D00F1C59300F7E0B300FDF7D000FFFFDC00FFFFDD00FFFFDD00FFFF
      DD00FFFFDB00FFFFDA00FFFFE100AE837E000000000000000000000000000000
      9A00406EFB004172FF003E6DFF003E6FFF002A4CE40000009A00000000000000
      0000000000000000000000009A001D40E4002859FF002452FF002353FF001C45
      F30000009A0000000000000000000000000000000000D6820000FFFDFC00FFFC
      FA00FFFCFA00FFFCFA00CDC7DE003736A30005059000050590006966B700FFF3
      E600FFF0E000FFF0E000FEEDD800FFECD800FEECD70000000000FFE9D200FFE8
      CE00FEE6CB00FEE5C900D68200000000000000000000000000008E040400A450
      500000000000000000000000000000000000B89594008D101000B7646000F3E7
      E600FFFFFF00FFFFFF00D5A99F009B3B2C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AE837E00ECD5B400FDE6
      B200F3C99600F2C79200F3D09C00F8E3B500FCF5CD00FFFFDA00FFFFDC00FFFF
      DB00FFFFDB00FFFFDC00E2D3B800AE837E000000000000000000000000000000
      9A004676FD004576FF004475FF002E51E50000009A0000000000000000000000
      000000000000000000000000000000009A001E41E500295AFF002758FF001E48
      F30000009A0000000000000000000000000000000000D6820000FFFEFD00FFFE
      FC00FFFCFA00FFFCFA00FFFCFA00FFF8F100FFF8F100FFF8EF00FEF6ED00FFF4
      E900FFF4E700FFF2E400FEF0E0000000000000000000FFEDD800000000000000
      0000FEE8CF00FEE6CC00D68200000000000000000000000000008E040400A450
      50000000000000000000000000000000000000000000C4BCBC009B3939009C2D
      2300DAB1AB00FFFFFF00D9B0A6009A3726000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AE837E00FFFE
      D000FCF0D600F8E0BE00F4CF9D00F3CD9A00F6D8AA00FBEABF00FDF4CB00FCF7
      CF00FEF8D100FFFFDE00AE837E00000000000000000000000000000000000000
      000000009A004471F8003356E50000009A000000000000000000000000000000
      00000000000000000000000000000000000000009A002144E800244DF1000000
      9A000000000000000000000000000000000000000000D6820000FFFFFF00FFFE
      FE00FFFEFC00FFFCFA00FFFCF800FFFBF600FFF9F400FEF9F100FFF8EF00FFF6
      EC00FFF5EA00FFF3E700FEF3E400FEF1E100FFEFDE00FEEEDB00FFECD800FEEB
      D500FFEAD200FFE8CF00D68200000000000000000000000000008D020200A34C
      4C0000000000000000000000000000000000000000000000000000000000B282
      7F0091191100BB706400C78A7C009B3923000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AE837E00E0CA
      B200FFFFFF00FEF9F200F8E1BE00F1C48D00EEBA8500F1C49100F4D1A100F8DE
      B000FFF7C600DDC7AE00AE837E00000000000000000000000000000000000000
      00000000000000009A0000009A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009A0000009A000000
      00000000000000000000000000000000000000000000D6820000FFFFFF00FFFF
      FF00FFFEFE00FFFEFC00FFFCFA00FFFCF800FFFBF700FFFAF400FFF9F200FFF8
      F000FFF6EC00FEF5EA00FFF4E700FFF2E400FFF1E100FFF0DE00FFEEDB00FEED
      D800FFEBD500FEEAD200D682000000000000000000000000000098252500AF76
      7600000000000000000000000000000000000000000000000000000000000000
      0000C4BFBE00A14F450095200B00AA6855000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AE83
      7E00D9C6C000FFFFFF00FFF7D700F8DAA600F4CB9500F5CD9900F9D9A600FFF1
      BB00DEC2A900AE837E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6820000FFFFFF00FFFF
      FF00FFFFFF00FFFEFE00FFFEFC00FFFDFA00FFFCF900FFFBF600FFFAF400FFF9
      F200FFF7EF00FEF6ED00FFF5EA00FFF4E800FEF2E500FEF1E100FFEFDE00FEEE
      DB00FEEDD900FEEBD500D6820000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AE837E00AE837E00E8D5B400FFF9C500FFF5C000FFF5C200EED8B700AE83
      7E00AE837E000000000000000000000000000000000000000000000000000000
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
      00000000000000000000AE837E00AE837E00AE837E00AE837E00AE837E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000020A8200020A8200020A82000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B58E
      8B00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00A77A770000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B4B4B6006D6D7D00CFCFCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020A82000533E1000732CA00072FC000020A820000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B58F
      8C00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFE
      FD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFE
      FD00FEFEFD00A77B780000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004848770033337700B4B4B500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020A82005173FB000533E1000732CA00072FC000020A8200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B792
      8E00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFC
      FB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFC
      FB00FEFCFB00A97D790000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D8D8
      D800363674003F3F8100CCCCCC0000000000000000000000000000000000AF5C
      5900C86D5000D37C5400C06F5A00B9898A00BF8E8E00BF8C8C00BF8D8D00BF8D
      8D00BF8D8D00BF8D8D00BE8E9000BB7E7700D07F6400D0785300D2724700CB6C
      4700AC524E00E1DEDE0000000000000000000000000000000000000000000000
      0000020A82005173FB005173FB000533E1000732C900072FC000020A82000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B893
      9000FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFB
      F800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFB
      F800FEFBF800A97E7A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A1A1
      A3007575B9002C2C8100CCCCCC0000000000000000000000000000000000BE5C
      4400FFC47400FFAD5700E5986D00D2CCD100D9DCDE00D8D9DC00D9D1D100D9D1
      D100D9D1D100D9D1D100D7D4D600D9C0B400FFC09200FFA75500FF8F2A00FFA3
      3D00C5644300D5C5C50000000000000000000000000000000000000000000000
      000000000000020A82005173FB005173FB000533E0000732C900072FC000020A
      8200000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B994
      9200FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFA
      F600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFA
      F600FEFAF600AA7F7C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004B4B
      75009696EB001D1D7E00D1D1D10000000000000000000000000000000000C568
      4C00FFBA6C00FF9F4F00E2906700CCC2C800D5978B00D1908500D1C4C500D4C6
      C600D4C5C500D4C5C500D3C8CA00D5B1A600F89E7200FE944800FF852600FF95
      3300CE6F4600D1BBBB0000000000000000000000000000000000000000000000
      00000000000000000000020A82005173FB005173FB000533E0000732C900072F
      C000020A82000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BB97
      9300FEF9F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9
      F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9
      F400FEF9F400AA807D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDCDCE005959
      94007878FF002D2D6900D7D7D70000000000000000000000000000000000C364
      4700FFBC7100FFA35400E8997100D2D6DD00C8524500EA523600E7E3E000E2DD
      DC00E0D7D800E0D8D800E0DCDF00DCB9AE00F58C5D00FE924600FF8C2F00FF98
      3900CC6B4400D2BDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000020A82005173FB005173FB000533DF000732
      C800072FC000020A820000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BB98
      9500FEF8F100FEF8F100FEF8F100FEF8F100FEF8F100FEF8F100FEF8F100FEF8
      F100FEF8F100FEF8F100FEF8F100FEF8F100FEF8F100FEF8F100FEF8F100FEF8
      F100FEF8F100AB827F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E4E7200A9A9
      EB003D3DF50040406900DFDFDF0000000000000000000000000000000000C362
      4500FFBE7300FFA55800EA9E7600E1DFE400695A6B005C3B4500B4ADBA00E7E0
      E000F4ECE800EAE4E300E6E6E900E1BCAF00F3784900FD8E4300FF903400FF9B
      3C00CC694200D2BDBD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020A82005173FB005173FB000533
      DF000732C8000629BB00020A8200000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD99
      9600FEF6EF00FEF6EF00FEF6EF00FEF6EF00FEF6EF00FEF6EF00FEF6EF00FEF6
      EF00FEF6EF00FEF6EF00FEF6EF00FEF6EF00FEF6EF00FEF6EF00FEF6EF00FEF6
      EF00FEF6EF00AD83800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A0A0A300B3B3
      B400000000000000000000000000000000000000000092929B005C5CA6008484
      FF002A2AD800707085000000000000000000000000000000000000000000C360
      4400FFBF7600FFA65A00EBA27B00F1F0F3009A8F9800566B780085A4BD00909C
      B400C2B9C200F2EAE700F1F7F900E5BFB300F2663500FC8A3F00FF933A00FF9C
      3F00CC673F00D2BDBD0000000000000000000000000000000000000000000099
      CC000099CC0000000000000000000000000000000000020A82005173FB005173
      FB000533DE000732C8000629BB00020A82000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD9B
      9800FEF5ED00FEF5ED00FEF5ED00FEF5ED00FEF5ED00FEF5ED00FEF5ED00FEF5
      ED00FEF5ED00FEF5ED00FEF5ED00FEF5ED00FEF5ED00FEF5ED00FEF5ED00FEF5
      EC00FDF4EC00AD84810000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D4D4D500585874005C5CA6004E4E
      6B00000000000000000000000000000000009D9DA6003C3C8400B2B2FF003D3D
      FF001F1FAF009D9DA0000000000000000000000000000000000000000000C35F
      4100FFC17900FFA85D00EDA37E00EFF6FE00D3D9E600AEBED100DCFCFF008EC9
      EA00237BCA00718DB800F8F5F200EAC3B900EE4C1C00FB843A00FF983F00FF9E
      4200CC653C00D2BDBD00000000000000000000000000000000000099CC0000B9
      EC0000B9EC000099CC0000000000000000000000000000000000020A82005173
      FB005173FB000533DE000732C8000629BB00020A820000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BF9D
      9A00FEF4EA00FEF4EA00FEF4EA00FEF4EA00FEF4EA00FEF4EA00FEF4EA00FEF4
      EA00FEF4EA00FEF4EA00FEF4EA00FEF4EA00FEF4EA00FEF4EA00FEF4EA00FDF3
      E900FDF3E900AF85820000000000000000000000000000000000000000000000
      0000000000000000000000000000BEBEC00039396B009999D800AEAEFF004646
      64000000000000000000DDDDDD007B7B8B0049498D00A6A6F5004B4BFF003D3D
      FF001E1E7200CCCCCD000000000000000000000000000000000000000000C35E
      3F00FFC27B00FFB06900F6915500F2946700E98C5E00A48A8F00D7F1FD0043B7
      FF000095FF00007FE7007D728B00FF834500F6642000FD883600FF973C00FFA1
      4500CC643A00D2BDBD0000000000000000000000000000000000000000000099
      CC000099CC00000000000000000000000000000000000000000000000000020A
      82005173FB005173FB000533DD000732C7000629BB00020A8200000000000000
      000000000000000000000000000000000000000000000000000000000000C09E
      9B00FEF3E800FEF3E800FEF3E800FEF3E800FEF3E800FEF3E800FEF3E800FEF3
      E800FEF3E800FEF3E800FEF3E800FEF3E800FEF3E800FEF3E800FDF2E700FDF2
      E700FDF1E600AF87840000000000000000000000000000000000000000000000
      000000000000000000009797A00033337700ADADEB009494FF006E6EFF003F3F
      5C00A8A8AA006E6E7E00363669007575B900B4B4FF005050FF004343FF003232
      E20059597B00000000000000000000000000000000000000000000000000C35C
      3C00FFC37D00FFB97D00FDB87C00FCB27000FFB36900B68A730089CCE50090E6
      FF001DB3FF0000A6FF000480DB009A726200FFAE5F00FAA86100FCA05700FFA3
      4900CC623700D2BDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020A82005173FB005173FB000530D900020A82000153B800005CB8000000
      000000000000000000000000000000000000000000000000000000000000C1A0
      9C00FFF2E600FFF2E600FFF2E600FFF2E600FFF2E600FFF2E600FFF2E600FFF2
      E600FFF2E600FFF2E600FFF2E600FFF2E600FFF1E500FEF1E500FEF1E500FEF0
      E400F9ECDE00B188860000000000000000000000000000000000000000000000
      0000D8D8D80066667C005C5CA600BDBDFF008888FF007474FF007474FF003C3C
      84006C6CAD008C8CCF00BDBDFF008080FF004D4DFF004848FF004343FF001D1D
      9900ABABAD00000000000000000000000000000000000000000000000000C35A
      3900FFC27A00F6D8BF00F3EFEC00F3EBE600F6EFE700E7DAD8005A98B90084E6
      F3009EEDFF0021C3FF0004B9FF000C8CD9009E98A700F0E1D900E4C2A800FFA4
      4900CC603300D2BDBD0000000000000000000000000000000000000000000000
      0000000000000099CC00000000000099CC000000000000000000000000000000
      000000000000020A82005173FB00020A820000ACDF0000C9FC0000BFF2000099
      CC0000000000000000000000000000000000000000000000000000000000C2A1
      9E00FFF0E300FFF0E300FFF0E300FFF0E300FFF0E300FFF0E300FFF0E300FFF0
      E300FFF0E300FFF0E300FFF0E300FFF0E300FEEFE200FEEFE200FDEFE100F9EA
      DB00F0E2D100B28A87000000000000000000000000000000000000000000C2C2
      C300454570008C8CCF00ACACFF007F7FFF007979FF007474FF007A7AFF009A9A
      FF008A8AFF007272FF005858FF005353FF004D4DFF004848FF003636E2004949
      6C0000000000000000000000000000000000000000000000000000000000C359
      3800FFC27B00F4DCC700FAFFFF00FEFFFF00FEFFFF00FFFFFF00DEDAE20055A5
      C00097F6F90097F0FF0024D3FF0009C9FF002195D100BBB8CC00EFCAB100FFA5
      4A00CC5F3100D2BDBD0000000000000000000000000000000000000000000000
      0000000000000099CC000099CC000099CC000000000000000000000000000000
      00000000000000000000020A82000063BC0000CCFF0000B9EC0000A6D90000AC
      DF00009ED100000000000000000000000000000000000000000000000000C4A3
      9F00FFEFE100FFEFE100FFEFE100FFEFE100FFEFE100FFEFE100FFEFE100FFEF
      E100FFEFE100FFEFE100FFEFE100FEEEE000FEEEE000FDEDDF00F8E8D800EFE0
      CE00E5D6C100B38C8900000000000000000000000000000000009D9DA6003E3E
      7C00A1A1E2009B9BFF008E8EFF008F8FFF009191FF008D8DFF008F8FFF008B8B
      FF008787FF008282FF007676FF007272FF006464FF004D4DF50024247C00C7C7
      C70000000000000000000000000000000000000000000000000000000000C357
      3600FFC47D00F3D8C100FBFFFF00FFFFFF00FFFFFF00FFFEFE00FFFFFF00D5CF
      D9004EA8C2009AF7F90093F7FF0027E4FF0015DAFD00299ACC00B8918700FFAD
      4E00CC5E3000D2BDBD0000000000000000000000000000000000000000000000
      00000099CC0000C9FC0000CCFF0000C2F5000099CC0000000000000000000000
      00000000000000000000000000000085CC0000C6F90000A6D90000CCFF0000CC
      FF000099CC00000000000000000000000000000000000000000000000000C4A4
      A100FFEEDF00FFEEDF00FFEEDF00FFEEDF00FFEEDF00FFEEDF00FFEEDF00FFEE
      DF00FFEEDF00FFEEDE00FEEDDE00FEEDDE00FDECDC00F7E6D500EEDECB00E4D4
      BE00D9C9B100B58E8B00000000000000000000000000C2C2C30049498D00B3B3
      F500ADADFF00B3B3FF00AFAFFF00ACACFF00A9A9FF00A5A5FF00A1A1FF009E9E
      FF009A9AFF009797FF009393FF009090FF008888FF00303097009D9DA6000000
      000000000000000000000000000000000000000000000000000000000000C356
      3300FFC67F00F1D6C000FAFFFF00FFFFFF00FFFEFD00FFFBF900FFF9F600FFFF
      F900C7C3CD0045A8C300A3FCFD008CF8FF002AEFFF001AECFE003C99B300DA8E
      5000DA612900D2BDBD0000000000000000000000000000000000000000000099
      CC000099CC000099CC0000BFF200009ED1000099CC000099CC00000000000000
      0000000000000000000000000000000000000099CC0000B9EC0000CCFF0000CC
      FF000099CC00000000000000000000000000000000000000000000000000C5A5
      A200FFEDDC00FFEDDC00FFEDDC00FFEDDC00FFEDDC00FFEDDC00FFEDDC00FFED
      DC00FFEDDC00FEECDB00FEECDB00FDEAD900F6E5D200EDDCC700E3D2BB00D8C8
      AE00CCBDA100B68F8C00000000000000000000000000CDCDCE00363671008B8B
      D800C4C4FF00C2C2FF00BFBFFF00BCBCFF00B9B9FF00B6B6FF00B3B3FF00B1B1
      FF00AEAEFF00ABABFF00A8A8FF009B9BF500353597009D9DA600000000000000
      000000000000000000000000000000000000000000000000000000000000C355
      3000FFC78200EFD3BD00F9FEFF00FFFEFD00FFFBF900FFF9F600FFF5F300FFF4
      F000FFFBF100BEBBC50047ADC800A9FCFE007DF3FF0026F0FF001EF1FF0051A4
      AF00B53F2500D8C5C50000000000000000000000000000000000000000000000
      000000000000000000000099CC000000000000000000000000000099CC000099
      CC00000000000099CC000099CC0000000000000000000099CC000099CC0000B6
      E90000000000000000000000000000000000000000000000000000000000C6A7
      A300FFECDA00FFECDA00FFECDA00FFECDA00FFECDA00FFECDA00FFECDA00FFEB
      DA00FEEBD900FEEBD900FCE9D700F6E3CF00EDDAC400E2D0B800D7C6AB00D9CB
      B400E5D4C100BB98940000000000000000000000000000000000D8D8D8004E4E
      72006262AF00D0D0FF00CECEFF00CCCCFF00CACAFF00C8C8FF00C5C5FF00C3C3
      FF00C1C1FF00BFBFFF008585D8002B2B7500A8A8B00000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C352
      3000FFC88400EED1BA00F8FDFF00FFFCFA00FFF8F600FFF6F200FFF4EF00FFF1
      EB00FFEFE800FFF8EC00AFB4C20041B2CE00ACFDFF0073EEFF0022ECFF0021F3
      FF0044759000BDA8B20000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000099CC0000CC
      FF000099CC0000CCFF000099CC00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C7A8
      A400FFEAD800FFEAD800FFEAD800FFEAD800FFEAD800FFEAD800FFEAD700FEE9
      D700FEE9D700FCE7D400F5E1CC00F7EEE400FEFEFE00FEFEFD00FEF8F200F2E0
      D600C5A59F000000000000000000000000000000000000000000000000000000
      00008484940043438D00C9C9F500DCDCFF00DADAFF00D9D9FF00D7D7FF00ACAC
      E2007B7BC5003C3C7E0068688400CDCDCE000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C453
      3000FFCA8700ECCEB800F8F9FC00FFF9F500FFF5F200FFF3EE00FFF0EB00FFED
      E600FFECE500FFF1EB00FFF8F00096A7BD0048BDD700B5FDFF0065EAFF001DEA
      FF0024EAFC003A739D00CECCD300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000099CC0000CC
      FF0000CCFF0000CCFF000099CC00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C7A8
      A500FFE9D500FFE9D500FFE9D500FFE9D500FFE9D500FFE9D500FEE8D400FEE8
      D400FBE6D100F4DFC900EBD7BE00F4EDE300FEFDFC00FEF7F000EAD5CC00BF9C
      9800000000000000000000000000000000000000000000000000000000000000
      000000000000B7B7B80037377000B1B1E200EBEBFF00EBEBFF00ABABFF002D2D
      5C009D9DA600D8D8D80000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C24E
      2A00FFD68F00EFDBC300FBFFFF00FFFFFF00FFFFFE00FFFFFA00FFFCF600FFFC
      F500FFFDF800FFFFFB00FFFFFF00FFFFFF008BB3CD004FCFEB00B1FDFF0059E6
      FF001FEAFF0026DEF40047699500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000099CC0000C2F50000CC
      FF0000CCFF0000CCFF0000C9FC000099CC000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C8AA
      A700FFE8D300FFE8D300FFE8D300FFE8D300FFE7D200FEE7D200FEE7D200FBE4
      CE00F3DDC600EAD5BB00DFCAAF00FAF6F100FEF6EE00DFC6BE00D2BAB7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D8D8D80040406A007F7FB900FBFBFF00B4B4FF004646
      6400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AB40
      3700D5703B00D5876400D18E7B00D48E7800D28D7700D28B7500D18A7300D08A
      7300CF8A7300CF897300CD887200CF8B7500D48069005B566A0055D0EC00B3FE
      FF003BE2FF000ECAFF0030619900000000000000000000000000000000000000
      0000000000000000000000000000000000000099CC000099CC000099CC0000B9
      EC0000CCFF0000BFF2000099CC000099CC000099CC0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C9AB
      A800FFE7D100FFE7D100FFE7D100FFE6D000FEE6D000FEE6CF00FAE2CB00F3DB
      C300E9D3B800DEC9AC00E5D6C200FAF0E700D4B8B100D9C5C400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000076768C0050508D009D9DF5004646
      6400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DED7
      D700BA7F7F00B8717100B9767600B8767600B8767600B8767600B8767600B876
      7600B8767600B8767600B8767600B8767600BC767600B977770048638A0048D9
      F40020C6FA001E6CB1009895AA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      CC0000C6F9000099CC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CAAB
      A800FFE6CF00FFE6CF00FFE6CF00FEE5CE00FEE5CE00FAE1C900F1DAC000E8D1
      B600DDC7AA00D5C1A300F0E1D700CDAFAB00DECDCC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A8A8B00035356A007676
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CECACF003561
      9400365D9300A5A1B20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000099CC000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00
      0000000000000000FFFFFF000000000000000000FF0001000000000000000000
      FF0001000000000000000000FF0001000000000000000000FF00010000000000
      00000000FF0001000000000000000000FF0001000000000000000000C0000100
      0000000000000000C00001000000000000000000C00001000000000000000000
      C00001000000000000000000C00001000000000000000000C000010000000000
      00000000C00001000000000000000000C00003000000000000000000C0007F00
      0000000000000000C0007F000000000000000000C0007F000000000000000000
      C0007F000000000000000000C0007F000000000000000000E000FF0000000000
      00000000FFFFFF000000000000000000FFFFFFFFFFFFFFFFFF8FFFFFFFFFFFFF
      FFFFFFFFFF87FFFFFFFFFFFFFFFFFFFFFF000000FFE1FFFF87FFFF0FF3000000
      FF81FFFF81FFFF03F3000000FF01FFFF80FFFF01F3000000FE01FFFF803FFF00
      F3000000F80007E0001FC00033000000F00007E0000FC00013000000E00007E0
      0007C00013000000E00007E00007C00003000000E00007E00007C00003000000
      E00007E00007C00003000000E00007E00007C00003000000E00007E00007C000
      13000000F00007E0000FC00013000000FC0007E0001FC00073000000FE01FFFF
      807FFF00F3000000FF01FFFF80FFFF01F3000000FFC1FFFF83FFFF07F3000000
      FFE1FFFF87FFFF0FF3800001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFF
      FFFFC00003FFFFFF83FFFFFFFFFF800001FFFFFF81FFFFF9FF9F800001CFF0FF
      80FFFFF0FF0F800001CFE0FFC07FFFE07E07800001CF80FFE03FFFE03C078000
      01CF00FFF01FFFF0180F800001CE0003F81FFFF8001F800001C80003FC1C1FFC
      003F800001C80003FE0007FE007F800001C00003FFC003FF00FF800001C00003
      FFC001FF00FF800001C00003FFC001FE007F800001C00003FF8000FC003F8000
      01C80003FF8000F8001F800001CC0003FF8000F0180F800001CE0003FF8000E0
      3C07800001CF00FFFF8000E07E07800001CF80FFFFC001F0FF0F800001CFE0FF
      FFC001F9FF9F800001CFF0FFFFE003FFFFFF800001FFFFFFFFF007FFFFFFC000
      03FFFFFFFFFC1FFFFFFFFFFFFFFFFFFFE00003FFFFFFFFFFFFF8FFFFE00003FF
      FFF1FFFFFFF07FFFE00003FFFFF1FFFFFFF03FFFE00003FFFFE1E00003F01FFF
      E00003FFFFE1E00003F80FFFE00003FFFFE1E00003FC07FFE00003FFFFC1E000
      03FE03FFE00003FFFFC1E00003FF01FFE00003FFCF83E00003E780FFE00003FF
      0F03E00003C3C07FE00003FE0C03E00003E7E03FE00003FC0007E00003FFF01F
      E00003F00007E00003FAF80FE00003E0000FE00003F8FC07E00003C0000FE000
      03F07E07E0000380001FE00003E03F07E0000380003FE00003FDC98FE00003C0
      007FE00003FFC1FFE00007F000FFE00001FFC1FFE0000FF803FFE00001FF80FF
      E0001FFC0FFFE00001FF007FE0003FFF0FFFE00001FFE3FFE0007FFF8FFFFFFF
      C3FFF7FFE000FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object dsMaster: TDataSource
    DataSet = Dm.cdsBilag
    OnDataChange = dsMasterDataChange
    Left = 480
    Top = 4
  end
  object spSaldo: TADOStoredProc
    Connection = Dm.adoConn
    BeforeOpen = spSaldoBeforeOpen
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
    Left = 580
    Top = 38
    object spSaldoSALDO: TBCDField
      FieldName = 'SALDO'
      Precision = 15
      Size = 2
    end
  end
  object adoBilagSerie: TADODataSet
    Connection = Dm.adoConn
    CommandText = 
      'select IDBILAGSERIE, BILAGSERIE, STARTNR '#13#10'from BILAGSERIE'#13#10'wher' +
      'e IDKLIENT = :IdKlient'#13#10'order by IDBILAGSERIE;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 452
    Top = 70
  end
  object dsBilagSerie: TDataSource
    DataSet = adoBilagSerie
    Left = 492
    Top = 70
  end
  object popGrid: TTBXPopupMenu
    Left = 844
    Top = 283
    object TBXItem11: TTBXItem
      Action = acInvert
    end
    object TBXSeparatorItem5: TTBXSeparatorItem
    end
    object TBXItem12: TTBXItem
      Action = acSlettPost
    end
  end
  object popDokument: TTBXPopupMenu
    Left = 688
    Top = 72
    object TBXItem13: TTBXItem
      Action = acSlettDok
    end
  end
end
