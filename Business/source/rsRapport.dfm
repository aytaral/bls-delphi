object frmRapport: TfrmRapport
  Left = 388
  Top = 230
  BorderStyle = bsDialog
  Caption = 'Rapporter'
  ClientHeight = 448
  ClientWidth = 509
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
    Top = 414
    Width = 509
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      509
      34)
    object btnPreview: TButton
      Left = 139
      Top = 4
      Width = 87
      Height = 25
      Action = acPreview
      Anchors = [akTop, akRight]
      Default = True
      Enabled = False
      TabOrder = 0
    end
    object btnLukk: TButton
      Left = 415
      Top = 4
      Width = 87
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Lukk'
      ModalResult = 2
      TabOrder = 1
    end
    object btnPrint: TButton
      Left = 323
      Top = 4
      Width = 87
      Height = 25
      Action = acPrint
      Anchors = [akTop, akRight]
      Enabled = False
      TabOrder = 2
    end
    object btnSave: TButton
      Left = 231
      Top = 4
      Width = 87
      Height = 25
      Action = acLagre
      Anchors = [akTop, akRight]
      Enabled = False
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 89
    Top = 0
    Width = 420
    Height = 414
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 3
    TabOrder = 1
    ExplicitLeft = 85
    ExplicitWidth = 424
    object Panel5: TPanel
      Left = 3
      Top = 3
      Width = 414
      Height = 408
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 418
      object Pc: TPageControl
        Left = 0
        Top = 0
        Width = 414
        Height = 408
        ActivePage = tsSalg
        Align = alClient
        Style = tsFlatButtons
        TabOrder = 0
        OnChange = PcChange
        ExplicitWidth = 418
        object tsSalg: TTabSheet
          Caption = 'tsSalg'
          object lvSalg: TListView
            Left = 0
            Top = 0
            Width = 406
            Height = 180
            Align = alTop
            BorderWidth = 2
            Columns = <>
            HideSelection = False
            IconOptions.AutoArrange = True
            LargeImages = ImageList
            ReadOnly = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnDblClick = acPreviewExecute
            OnInfoTip = lvKundeInfoTip
            OnSelectItem = lvSalgSelectItem
          end
          object GroupBox1: TGroupBox
            Left = 0
            Top = 185
            Width = 406
            Height = 192
            Align = alClient
            Caption = 'Rapport innstillinger:'
            TabOrder = 1
            ExplicitLeft = -1
            ExplicitTop = 186
            object pnlSalgPeriode: TPanel
              Left = 2
              Top = 15
              Width = 402
              Height = 31
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              Visible = False
              object Label5: TLabel
                Left = 12
                Top = 10
                Width = 57
                Height = 13
                Caption = 'Periode fra:'
              end
              object Label7: TLabel
                Left = 178
                Top = 10
                Width = 8
                Height = 13
                Caption = 'til'
              end
              object dtStart: TDateTimePicker
                Left = 75
                Top = 6
                Width = 97
                Height = 21
                Date = 40493.916544988420000000
                Time = 40493.916544988420000000
                TabOrder = 0
              end
            end
            object dtSlutt: TDateTimePicker
              Left = 194
              Top = 22
              Width = 97
              Height = 21
              Date = 40493.916544988420000000
              Time = 40493.916544988420000000
              TabOrder = 1
            end
          end
          object Panel6: TPanel
            Left = 0
            Top = 180
            Width = 406
            Height = 5
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
          end
        end
        object tsKunde: TTabSheet
          Caption = 'tsKunde'
          ImageIndex = 1
          object lvKunde: TListView
            Left = 0
            Top = 0
            Width = 406
            Height = 180
            Align = alTop
            BorderWidth = 2
            Columns = <>
            HideSelection = False
            IconOptions.AutoArrange = True
            LargeImages = ImageList
            ReadOnly = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnDblClick = acPreviewExecute
            OnInfoTip = lvKundeInfoTip
            OnSelectItem = lvKundeSelectItem
          end
          object GroupBox2: TGroupBox
            Left = 0
            Top = 185
            Width = 406
            Height = 192
            Align = alClient
            Caption = 'Rapport innstillinger:'
            TabOrder = 1
            object pnlKundeSort: TPanel
              Left = 2
              Top = 15
              Width = 402
              Height = 29
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              Visible = False
              object Label4: TLabel
                Left = 12
                Top = 10
                Width = 48
                Height = 13
                Caption = 'Sortering:'
              end
              object cbKSort: TComboBox
                Left = 76
                Top = 6
                Width = 149
                Height = 21
                Style = csDropDownList
                ItemIndex = 0
                TabOrder = 0
                Text = 'Kundenummer'
                Items.Strings = (
                  'Kundenummer'
                  'Kundenavn')
              end
            end
          end
          object Panel4: TPanel
            Left = 0
            Top = 180
            Width = 406
            Height = 5
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
          end
        end
        object tsLev: TTabSheet
          Caption = 'tsLev'
          ImageIndex = 2
          object lvLev: TListView
            Left = 0
            Top = 0
            Width = 406
            Height = 180
            Align = alTop
            BorderWidth = 2
            Columns = <>
            HideSelection = False
            IconOptions.AutoArrange = True
            LargeImages = ImageList
            ReadOnly = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnDblClick = acPreviewExecute
            OnInfoTip = lvKundeInfoTip
            OnSelectItem = lvLevSelectItem
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 185
            Width = 406
            Height = 192
            Align = alClient
            Caption = 'Rapport innstillinger:'
            TabOrder = 1
            object pnlLevSort: TPanel
              Left = 2
              Top = 15
              Width = 402
              Height = 29
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              Visible = False
              object Label2: TLabel
                Left = 12
                Top = 10
                Width = 48
                Height = 13
                Caption = 'Sortering:'
              end
              object cbLSort: TComboBox
                Left = 76
                Top = 6
                Width = 149
                Height = 21
                Style = csDropDownList
                ItemIndex = 0
                TabOrder = 0
                Text = 'Leverand'#248'rnummer'
                Items.Strings = (
                  'Leverand'#248'rnummer'
                  'Leverand'#248'rnavn')
              end
            end
          end
          object Panel7: TPanel
            Left = 0
            Top = 180
            Width = 406
            Height = 5
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
          end
        end
        object tsProdukt: TTabSheet
          Caption = 'tsProdukt'
          ImageIndex = 3
          object lvProd: TListView
            Left = 0
            Top = 0
            Width = 406
            Height = 180
            Align = alTop
            BorderWidth = 2
            Columns = <>
            HideSelection = False
            IconOptions.AutoArrange = True
            LargeImages = ImageList
            ReadOnly = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnDblClick = acPreviewExecute
            OnInfoTip = lvKundeInfoTip
            OnSelectItem = lvProdSelectItem
          end
          object GroupBox4: TGroupBox
            Left = 0
            Top = 185
            Width = 406
            Height = 192
            Align = alClient
            Caption = 'Rapport innstillinger:'
            TabOrder = 1
            object pnlProdSort: TPanel
              Left = 2
              Top = 15
              Width = 402
              Height = 29
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              Visible = False
              object Label6: TLabel
                Left = 12
                Top = 10
                Width = 48
                Height = 13
                Caption = 'Sortering:'
              end
              object cbPSort: TComboBox
                Left = 76
                Top = 6
                Width = 149
                Height = 21
                Style = csDropDownList
                ItemIndex = 0
                TabOrder = 0
                Text = 'Produktnummer'
                Items.Strings = (
                  'Produktnummer'
                  'Produktnavn')
              end
            end
          end
          object Panel8: TPanel
            Left = 0
            Top = 180
            Width = 406
            Height = 5
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
          end
        end
        object tsRegnskap: TTabSheet
          Caption = 'tsRegnskap'
          ImageIndex = 4
          ExplicitWidth = 410
          object lvReg: TListView
            Left = 0
            Top = 0
            Width = 406
            Height = 180
            Align = alTop
            BorderWidth = 2
            Columns = <>
            HideSelection = False
            IconOptions.AutoArrange = True
            LargeImages = ImageList
            ReadOnly = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnDblClick = acPreviewExecute
            OnInfoTip = lvKundeInfoTip
            OnSelectItem = lvRegSelectItem
            ExplicitWidth = 410
          end
          object Panel9: TPanel
            Left = 0
            Top = 180
            Width = 406
            Height = 5
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitWidth = 410
          end
          object GroupBox5: TGroupBox
            Left = 0
            Top = 185
            Width = 406
            Height = 192
            Align = alClient
            Caption = 'Rapport innstillinger:'
            TabOrder = 2
            ExplicitWidth = 410
            object pnlPerPeriode: TPanel
              Left = 2
              Top = 58
              Width = 402
              Height = 27
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              Visible = False
              ExplicitWidth = 406
              object Label1: TLabel
                Left = 16
                Top = 4
                Width = 59
                Height = 13
                Caption = 'Per periode:'
              end
              object editPeriode: TJvSpinEdit
                Left = 97
                Top = 1
                Width = 50
                Height = 21
                MaxValue = 13.000000000000000000
                Value = 13.000000000000000000
                TabOrder = 0
              end
            end
            object pnlBilag: TPanel
              Left = 2
              Top = 85
              Width = 402
              Height = 54
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              Visible = False
              ExplicitWidth = 406
              object Label8: TLabel
                Left = 155
                Top = 30
                Width = 8
                Height = 13
                Caption = 'til'
              end
              object Label10: TLabel
                Left = 155
                Top = 4
                Width = 8
                Height = 13
                Caption = 'til'
              end
              object editBStart: TblsAlignEdit
                Left = 97
                Top = 27
                Width = 50
                Height = 21
                Alignment = taRightJustify
                Color = clBtnFace
                MaxLength = 8
                TabOrder = 0
                Text = '0'
                EditType = etInteger
              end
              object editBSlutt: TblsAlignEdit
                Left = 171
                Top = 27
                Width = 50
                Height = 21
                Alignment = taRightJustify
                Color = clBtnFace
                MaxLength = 8
                TabOrder = 1
                Text = '0'
                EditType = etInteger
              end
              object editBPStart: TJvSpinEdit
                Left = 97
                Top = 1
                Width = 50
                Height = 21
                MaxValue = 13.000000000000000000
                Value = 1.000000000000000000
                TabOrder = 2
              end
              object editBPSlutt: TJvSpinEdit
                Left = 171
                Top = 1
                Width = 50
                Height = 21
                MaxValue = 13.000000000000000000
                MinValue = 1.000000000000000000
                Value = 13.000000000000000000
                TabOrder = 3
              end
              object rbPeriode: TRadioButton
                Left = 16
                Top = 3
                Width = 78
                Height = 17
                Caption = 'Periode fra'
                Checked = True
                TabOrder = 4
                TabStop = True
                OnClick = rbPeriodeClick
              end
              object rbNummer: TRadioButton
                Left = 16
                Top = 29
                Width = 81
                Height = 17
                Caption = 'Bilagsnr fra'
                TabOrder = 5
                OnClick = rbNummerClick
              end
            end
            object pnlPeriode: TPanel
              Left = 2
              Top = 139
              Width = 402
              Height = 31
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 2
              Visible = False
              ExplicitWidth = 406
              object Label3: TLabel
                Left = 155
                Top = 5
                Width = 8
                Height = 13
                Caption = 'til'
              end
              object Label12: TLabel
                Left = 16
                Top = 4
                Width = 57
                Height = 13
                Caption = 'Periode fra:'
              end
              object editPStart: TJvSpinEdit
                Left = 97
                Top = 1
                Width = 50
                Height = 21
                MaxValue = 13.000000000000000000
                MinValue = 1.000000000000000000
                Value = 1.000000000000000000
                TabOrder = 0
              end
              object editPSlutt: TJvSpinEdit
                Left = 171
                Top = 1
                Width = 50
                Height = 21
                MaxValue = 13.000000000000000000
                MinValue = 1.000000000000000000
                Value = 13.000000000000000000
                TabOrder = 1
              end
            end
            object pnlAar: TPanel
              Left = 2
              Top = 15
              Width = 402
              Height = 43
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 3
              Visible = False
              ExplicitWidth = 406
              object Label15: TLabel
                Left = 16
                Top = 15
                Width = 37
                Height = 13
                Caption = 'Velg '#229'r:'
              end
              object editAar: TJvSpinEdit
                Left = 97
                Top = 12
                Width = 50
                Height = 21
                MaxValue = 2100.000000000000000000
                MinValue = 1970.000000000000000000
                Value = 2006.000000000000000000
                TabOrder = 0
              end
            end
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 89
    Height = 414
    Align = alLeft
    AutoSize = True
    BevelInner = bvLowered
    BevelOuter = bvNone
    BorderWidth = 7
    TabOrder = 2
    object TBXDock1: TTBXDock
      Left = 8
      Top = 8
      Width = 73
      Height = 398
      AllowDrag = False
      Position = dpLeft
      object TBXToolbar1: TTBXToolbar
        Left = 0
        Top = 0
        Caption = 'TBXToolbar1'
        DockPos = -4
        Images = ImageList
        Options = [tboImageAboveCaption, tboSameWidth]
        Stretch = True
        TabOrder = 0
        object TBXItem4: TTBXItem
          Action = acSalg
          DisplayMode = nbdmImageAndText
          GroupIndex = 1
          Layout = tbxlGlyphTop
        end
        object TBXSeparatorItem1: TTBXSeparatorItem
          Blank = True
          Size = 2
        end
        object TBXItem3: TTBXItem
          Action = acKunde
          DisplayMode = nbdmImageAndText
          GroupIndex = 1
          Layout = tbxlGlyphTop
        end
        object TBXSeparatorItem2: TTBXSeparatorItem
          Blank = True
          Size = 2
        end
        object TBXItem2: TTBXItem
          Action = acLeverandor
          DisplayMode = nbdmImageAndText
          GroupIndex = 1
          Layout = tbxlGlyphTop
        end
        object TBXSeparatorItem3: TTBXSeparatorItem
          Blank = True
          Size = 2
        end
        object TBXItem1: TTBXItem
          Action = acProdukt
          DisplayMode = nbdmImageAndText
          GroupIndex = 1
          Layout = tbxlGlyphTop
        end
        object TBXSeparatorItem4: TTBXSeparatorItem
          Blank = True
          Size = 2
        end
        object TBXItem5: TTBXItem
          Action = acRegnskap
        end
      end
    end
  end
  object frReport: TfrxReport
    Version = '4.10.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Forvalgt'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39307.931099976850000000
    ReportOptions.LastChange = 39307.931099976850000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    OnGetValue = frReportGetValue
    Left = 108
    Top = 168
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object adoData: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    Parameters = <>
    Left = 436
    Top = 48
  end
  object frxData: TfrxDBDataset
    UserName = 'frxData'
    CloseDataSource = False
    DataSet = adoData
    BCDToCurrency = False
    Left = 436
    Top = 76
  end
  object ImageList: TImageList
    Height = 24
    Width = 24
    Left = 128
    Top = 36
    Bitmap = {
      494C01010A000E00080018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5E5E500C8C8
      C800CECECE00E8E8E80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9E9E900C9CACA005D7C96002C7A
      B40052677B00A2A2A200D5D5D500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D7D7D7007A8C9B001E72B3002489D30066C9
      FA0062BDF1002C72A600646F7A00B0B0B000DDDDDD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD00BEBEBE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDF00969EA6002B72A800258CD2003499DC003398DB0061C3
      F60075CDFA0079D2FF0050ADE50030679100787D8200BCBCBC00E3E3E3000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFBFBF00A1A1A10087776600827667008B898700A9A9A900BABA
      BA00BFBFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E4E4
      E400AFB2B5003D719C002286CE00379BDD003686E0003467E50040A3E00062C3
      F60070CAF80070C9F7006FCDFC0073D0FF00419BD700396283008A8B8D00C7C7
      C700E7E7E7000000000000000000000000000000000000000000000000000000
      0000BABABA008A878400B7A38E00D8BD9C00BD873C00C5975500B08F61008C7A
      63007E786E0087898500AAAAAA00BBBBBB00BFBFBF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700C2C3C4005377
      95001F7FC500399DDE003D9FDF003E92E1003357E8003868E80047A0E50062C4
      F6006CC7F6005CA8D000DFAF9E00A2B9C9006FCEFC006CCAFA003589C3004762
      7A009B9B9B00D2D2D200EAEAEA00000000000000000000000000BFBFBF00AEAE
      AE00847A6E00DAC8B300F3F3F500DBC1A600BC863B00CA9E6200CDA66A00D9B9
      7F00D6B981004F8233004D7D3F005B72510072796D0095959400B0B0B000BDBD
      BD00BFBFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8E8E80072879A002178BB003A9F
      DE0041A4E20044A5E30048A8E300469AE500385DEB003A5FEB004FA4EA0061C2
      F60065C2F5006EA4C500FFE8DA00FFEFE300E5C0B1008EBAD5006ED0FF0062BF
      F2002D77AF005D6A7900B2B2B200E9E9E90000000000BEBEBE00989796009C89
      7000EADCC600F1EEE700F3F3F500DCC2A600BC863B00DEC29700DED0AF00CEB2
      8700D8BB83004B81300051964A00479E4C004DAF5D004E965E0053879E005971
      7C007A8082009E9E9E00BABABA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BED2E2003397D90044A4E5003B78
      E600469AE7004EADE80051B0E8004278EB003A5CEB004B8CEC005DBCEE0060C1
      F5005EBCF2007BA3BF00FFF0E500FABFA700FEEBDF00FFE2CD00D3B7AE007DBF
      E40072CFFD004DACE60069778500E7E7E700BFBFBF008A858000C1A98300EBDF
      C300EEE6D500F0ECE600F3F3F500DBC1A600BC863B00E2C8A200EFE4C800D9C1
      9C00D7BB83004B813000B4E2C000B0DDBF007CB27D004F9B61006BC0EA006ABC
      E3006DBADD0061A0BB0075808400BFBFBF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BCD1E20048ABE5003B6AE900395C
      EB004C9AEB0056B3EB005AB7EE005AB3EF005297EE0060BDF10064C0F1005FC0
      F50056B6ED0078A0BC00FFEAE000FDE8DE00FBC8B400FBC2AA00FFECDD00FFC5
      A70077BDE60060BEF10065758500E7E7E700BEBEBE00A5917400E9DAB700ECE0
      C500EDE6D500F0ECE600F3F3F500DBC1A600BC863B00E3CCAA00F2EBD600DBC5
      A500D7BB83004B813000BFE6C700D0F5DE009EC9A2004E9B600069B4DD0096C6
      E3007CB2D1006CB4D60066798000BFBFBF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDD2E20051B4EA00406EEC003D62
      ED00487FED0060BFF1004AA6DE005EB9ED0066C3F30068C3F4006AC5F5005DBE
      F3004EAFE900729BB900FFF6F000FBCBBA00FAC5B100FDE8DD00FBC0A700E1C0
      B2005EC1F6005CB8EF0065758500E7E7E700BEBEBE00A5917500EADBB700ECE1
      C500EFE7D600F1EDE700F3F3F500DCC2A600BC863B00E3CCAB00F5EEDF00E1CD
      AF00D8BB83004B813000C5E5CA00D7F2E000A2C9A3004E9B60006FB7DE00C0E7
      FD00B9E0F6006EB3D40066798000BFBFBF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDD2E20051A3ED003F64ED004168
      EE0060BBF1003F98D200328AC60063BEF0006BC6F6006DC8F7006FC9F8005ABD
      F20045A6E4006A9DC300FFE9DB00FFFFFF00FFF6F000FCC0A900FDD5C300CDBE
      BA0057BCF50055B4EB0065758500E7E7E700BEBEBE00A5917500E9DAB700ECE1
      C500EEE6D500F0EDE600F3F3F500DBC1A600BC863B00C7985500D0AA6E00D6B3
      7C00D7BC83004B813000C3DDC300DFF1E300AACAA8004E9B600072B8DF00CFEC
      FC00C9E5F50070B4D40066798000BFBFBF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDD2E3005EB8F100579DF0005DA9
      F30068C4F300489DD300469CD1006AC3F30070CAF80073CDFB006AC4F30054B9
      EF003D9EDF003DA3E300659DC700DCC3BA00C0B1EB00F1F3FD00FFF3EC00C9BC
      BA004FB6F1004FAFE80065758500E7E7E700BEBEBE00A5917500EADBB700ECE1
      C500EFE7D600F1EDE700F3F3F500DCC2A600BC863B00C6985200D1AD6D00DCC0
      8600D8BC84004B813000478F3E0055A256005DAC63004F9D630072B8DE00D7EC
      F900DDEFFA0074B6D60066798000BFBFBF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDD2E30066C3F4006AC6F5006CC8
      F6006DC7F60056AADA0055A8D80070C9F70074CDFA00419DD800187CC5002C91
      D7004AAFEB0047AAE800379BDD003AA3DF003348DF00BFA1CF00FFFEF700C7BD
      BD0047AEED0048A9E50065758500E7E7E700BEBEBE00A5917500E9DAB700ECE1
      C500EEE6D500F0ECE600F3F3F500DBC1A600BC863B00C6985200D0AD6D00DCC0
      8600D7BC84004B81300042903C0046A854004ABE6B004FA066006EC4EE0067B9
      E20072BADF0078C0E10066798000BFBFBF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDD2E3006BC7F6006FC9F80070CA
      F90071CAF80062B4E00065B6E00052ACE2002383C8003195D700379ADC003397
      DA002F93D8003A9EDF004EB3ED003EA2E1003495DC003A92DA0098A3B700C0A8
      A6003DA7E80041A2E10065758500E7E7E700BEBEBE00A5917500E9DAB700ECE1
      C500EEE6D500F0ECE600F3F3F500DBC1A600BC863B00C6985200D0AD6C00DCC0
      8600D7BC84004B81300042903C0046A854004ABE6B004FA0660075CCF5007DCF
      F60085D3F60088D1EF0066798000BFBFBF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDD2E3006FCAF80071CCFA0073CD
      FA0077CFFC0069BAE400449AD0002582C40042A3E00043A4E20041A2E1003FA1
      E0003D9FDF003A9DDD003799DC0046AAE7004EB3ED00359BDC002D96DC003A9A
      DB003D9FDF00389BDD0065758500E7E7E700BEBEBE00A5917500E9DAB700ECE0
      C500EDE6D500F0ECE600F3F3F500DBC1A600BC863B00C6985200D0AD6D00DCC0
      8600D7BC84004B81300042903C0046A854004ABE6B004FA0660075CCF5007DCF
      F60085D3F60087D1EF0066798000BFBFBF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BED2E30072CDFA0078D1FD006CC6
      F5003794D2003F99D4003089C6002E88C600338AC700409CD60049A9E50049A9
      E50047A8E40046A5E20044A5E30041A2E10040A1E1004FB3EC0047ACE9002E93
      D7003095D9002F93D80065758500E7E7E700BEBEBE00A5917500EADBB700ECE1
      C500EEE7D600F1EDE700F3F3F500DCC2A600BC863B00C6985200D1AD6D00DCC1
      8600D8BC84004B81300042903C0046A854004ABE6B004FA0660075CCF5007DD1
      F80085D4F80088D1EF0066798000BFBFBF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BED3E30074CEFA00419DD7003895
      D4005CB9ED005BB9EF0054B0E600479FD5003E95CE003C93CC00439AD2004DA8
      DF0050AFE9004FAEE8004EADE6004CACE7004AA9E60047A7E30048A9E50054B7
      F0003DA4E300248AD30066778600E7E7E700BEBEBE00A5917500E9DAB700ECE1
      C500EDE6D500F0EDE600F1EEED00D8BB9900C3945400C8995800CFA96A00DABC
      8200D6BA82005083320046903D0048A754004ABE6B004FA0660075CCF5007DD0
      F60085D3F60088D1EF0066798000BFBFBF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BCD1E2002E8DCD0063BEF20066C2
      F30063BFF20062BEF20061BDF10060BCF00059B3E60052A6D800499ED200489E
      D20052A7D90056B1E70056B4EC0055B3EB0053B2EB0052B0E8004FAEE9004DAC
      E60055B6ED0041A6E600818F9D00E9E9E900BEBEBE00A5917500E9DAB700ECE1
      C500E9DCC600E0CBB200E1CEBB00E9E3E300EAE6EB00E9E3E600E4D8D300D4B6
      9300D9C0A500C6CFBF00B5C5AE00A4BC9A006A9C5B00689C790078AFC70070AF
      CA006BB0CC0067AFCD006D7E8400BFBFBF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8E9E9007F9FB9003C95D4006AC5
      F6006BC6F60067C2F30067C2F40066C0F20065C1F30064BFF2005FB7E7005AAD
      DC0051A5D70054A8D8005CB2E1005DB8EC005AB9EF005AB7EE005BB9EF0052B1
      EA003185C3008DA1B300E7E7E70000000000BEBEBE00A5927500E1CBA300D8BE
      9E00E2D1C100EDEAE900EBE9EA00EBE9ED00EBE6EB00E0CDBE00E0CBB600E9E3
      E100ECE9ED00E9E7EC00B9C6B30095AD8B00C0CBC200EAE8EE00EBE8F000D1D9
      E30084A2B20077838900B9B9B900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9DCDF00659D
      CB0048A4DF0071CCFA006DC7F7006CC7F5006BC4F6006AC5F40069C4F50068C2
      F30066BBE70062B2DE0059ACDA0061B2DE0066BCE80062BEF2003691D0006E8F
      AA00DEDEDF00000000000000000000000000BFBFBF00948D84009E9B9700A5A3
      A3009F9D9D0097939300A9937E00C4A27D0096887A00948E8C00A19C9C009BA0
      900085A5750085967600B3B3A700E2DADB00D1D4DA00A3C0D00080A1B0007482
      8800B6B6B6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C5CBD2004D92C70058B5E90074CEFB0070CAF8006EC8F8006EC9F6006DC8
      F7006CC8F7006AC4F3006DBEE90068B9E3003E97CF005688B100CDCFD2000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A7A5A300B2B1B000BFBFBF0000000000BFBFBF00A9A9
      A800A1A29F00BDBDBD00BBBBBB00B8B8B8009295970078868B00B6B6B600BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AABDCD004291CB0067C1F30077D0FC0072CCF90072CA
      F80071CBF90075CEFC0058B6EB004486B800B5BCC20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EAEAEA008AA6BE004298D30072CBF90079D3
      FE0069C4F5003B8BC30099A9B700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0E1E2006FA1CA003D90
      CB007C98AE00E1E2E20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C4
      C300AEA9A800AAA5A300B6B5B500D9D9D9000000000000000000000000000000
      000000000000000000000000000000000000E1E2E200AFB0B400C1C1C100E8E8
      E800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E2E2E2009392
      920075695E006D6660009D9D9D00E7E7E7000000000000000000E8E8E800DFDF
      DF00E0E0E000E9E9E90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E600C5C5C6009B9AA900CECECF00E8E8
      E8000000000000000000000000000000000000000000DBDBDA00B2978D00CB7B
      6200D2705200D98F7100B97C67008D7D7800C1C1C100EAEAEA00000000000000
      0000000000000000000000000000000000008EB4D100229CC9004C7A8A00AFAF
      AF00E7E7E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CCCCCC00A184
      6600E69E5500CE72190062554C00E0E0E00000000000E3E3E3009494A0004247
      87004A4C7C00ADADAE00E9E9E900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EAEAEA00E2E2E200B7B7BA0064619B002C28CD00223EE7003852C2007C7B
      9A00CECECE00E9E9E9000000000000000000E3E2E200C29B8B00FFBA9200FFA2
      7B00E6664100FEAA8300FFBD9500EC8E6C0088675F00CECECE00E7E7E700ADB0
      B300B1B1B200E0E0E00000000000E5E7E7004C98D10012EAFF001FEDF600447E
      93009B9B9D00BFBFC000BEBEBF00D7D7D7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C9C9C900A988
      6700E59B5100D372150068584A00E0E0E00000000000C3C3C5000C29BF000C48
      F8001C5BE3004B4C7E00E4E4E400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EAEAEA00DADA
      DA00A3A1A4005350A2002320E1001E1EF0001F1FE900234CE9002C89F500338A
      F6003D5EC8009595A900EAEAEA0000000000CCB8B000FFBE9600FFD4AC00EFA4
      7F00DA603D00E98E6900FECEA700FD997200C44B2C007D797E006A8BA2004A9D
      CF00356A92007B828900CECECE00CACDD0002B9ADF0013E3FF001BFFFF001CEA
      FB002DA3BE0038A1B8003F92A700ABAEB000A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A35228000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B8B8B800A785
      6200E3964800D270130068574A00E0E0E00000000000B4B4B9000932D3000C4B
      FC002471F70042448000E3E3E300000000000000000000000000000000000000
      000000000000000000000000000000000000E9E9E900D4D4D4009D9793009975
      5000AD734A001D1DF4001D1FF1001F1EE900211EE000234CE9002C89F400369D
      F8003FAEFD005C6AAF00E8E8E80000000000EDBDA500FFCEA700F8BF9900E788
      6300E7856100F5B99300EB936E00DE654000DD4D26006C70870060CCFE007FD8
      FF00379FE700247DBB00516A7F005F7D99000EACFA0014E3FF0018E9FF0017EF
      FF001AFBFF001CFFFF0026C4D500AFB2B400A3522800FFF7EE00FEF5EB00FFF4
      E700FFF2E400FEF0DF00FFEFDC00FEECD700FFEBD400FFE9D000FEE7CC00FEE5
      C800FFE3C500FFE1C100FEDFBE00FEDEBA00FEDDB700FEDBB400FEDAB100FED9
      AF00FFD8AD00FED7AB00FED7AB00A35228000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B1B1B100A782
      5E00E2934500D270130068574D00DFDFDF0000000000B2B2B7000D3BD4001256
      FB002D7CF80049498100E5E5E500000000000000000000000000000000000000
      00000000000000000000E7E7E700C9C9C900928D87009E754D00C3813700C583
      3500B27544001E1DEE001F1FE900211EE000231ED800234CE8002C88F400369D
      F8003FAEFD005C69AF00E8E8E80000000000F5C7A800F5B08A00E57E5900E88B
      6600F7C8A400FFDEB900EC987400DD633F00E052290094808A0066D1FF0073CD
      F5004495E5003976EB00238CDC00089FE8000DCAFF0013DBFF0014DDFF0015E0
      FF0016E5FF0018F4FF003C9DB700C8C8C900A3522800FEF8F000FFF6ED00FFF5
      E900FFF3E60073737300FEEFDE00FEEEDB00FFECD70073737300FFE7CF00FFE6
      CB00FEE4C70073737300FFE1BF00FEDFBC00FEDDB90073737300FEDBB300FEDA
      B000FED8AE0073737300FED7AB00A3522800C5C4C300AAA6A300A9A5A200A9A5
      A200A9A5A200A9A5A200A9A5A200A9A5A200A9A5A200A9A5A2008B868200A580
      5A00E08F3F00D27015005C4C40009D989400A29D98007A7680001143D5001861
      FC003386FC0050518300E6E6E600000000000000000000000000000000000000
      0000E4E4E400BCBCBC006F7F6A00447B220096812500C6843600C5833500C37F
      3200B07141001F1EE700211FE000231FD800241FD100244CE7002C89F500369D
      F9003FAEFD005C69AF00E8E8E80000000000F4CAAF00E7825D00E8876200F0A3
      7E00F5C8A400FFEEC800FAC9A200DF6A4500DE512900878497005FCBFF006EC8
      F2004A86E800207BE50006BEFC000BCAFF0010CDFF0010CEFF0011D2FF0012D6
      FF0013DDFF0016E7FF004487A100CBCBCB00A3522800FFF9F200FFF7EF007373
      7300737373007373730073737300737373007373730073737300737373007373
      7300737373007373730073737300737373007373730073737300737373007373
      7300737373007373730073737300A3522800A3826200CE6D0C00D0741800D074
      1700D0741700D0741700D0741700D0741700D0721400D1731400B5661B00A47E
      5700DF8C3A00D3701600553D2A00BE651400D17213008A4D35001650DA001F6F
      FD003E94FE0050518100E6E6E600000000000000000000000000E6E6E600B1B2
      B100667A5F00437F1B00469307004896030097832300C5833500C3803200C07B
      2E00AD6D3D00211DE000231FD800241ED200241ED400223EE700296BEE00369C
      F8003FAEFD005C69AF00E8E8E80000000000EBC4B300E0704B00E8886400F09F
      7A00F2B18B00F7CBA600F5B89300EB7C5500D45636006CA1CA005EC4FB0066C0
      ED0059A4ED00288FE80006C1F40003C7FE000AC0FF000DC3FF000EC8FF000FCC
      FF0010D1FF0012DFFF002F94B600B2B2B400A3522800FFFAF400FEF9F1007373
      7300FFF6EB00FFF4E700C0CCFB000033FF000B227D00FEECD8009AD79A000099
      00000E470E00FFE4C800EBBFBF00CC6667005D2A2B00FFDEBA00A5CFFA003499
      FF001A457100FED9AE00FED8AD00A3522800A2826100DFA26600F3E0CB00F0E3
      CA00EBE6CB00E8E7C900E7E7C800E7E5C500EBD9BB00EBDEBD00C9C3A800A47C
      5400DD873400D5711C005A483E00E2C3A600FDDBB600A8919D001752D9002173
      FD0046A1FD004E4E7D00E6E6E600000000000000000000000000A5A9A5004284
      16004795050048970300489603004795030096822300C3803200C17C2F00BD77
      2A00AA683900221CDA002224DC00223FE900225EF300226AF8002261F5002555
      EF003274F2005E68B100E9E9E90000000000E9DEDA00DF836600E37A5600E98C
      6700F19E7700E8805900F38F6400FFB88B00A499A10060C0F6005AB9F00058B5
      E90068C5F40063AEF20051AEEB0023B9EC0002C4FB0008BAFF000ABCFF000BC2
      FF000CCCFF000EDAFF001BA8CE00AEB1B400A3522800FFFBF600737373007373
      7300FFF6ED00FFF4E900C0CCFB000033FF000B227D00FFEDDA009AD79A000099
      00000E470E00FEE6CA00EBBFBF00CC6667005D2A2B00FEDFBB00A5CFFA003499
      FF001A457100FED9B000FED8AE00A3522800A2826100DFA36600EFE6D100EBEB
      D500E9EDD700E8EED700E7EDD500E8EBD200E9E7CB00E8E8CC00C9C8B200A37A
      5100DB832E00D57220005B493E00E1C5A900FDDBB800A9929F001C5AD8002578
      FD004AA7FD00484A7C00E4E4E400000000000000000000000000929D8C004795
      03004897030048960300479403004793030095812100C17C2F00BD772A00BA72
      2600B66D2300846BAC003E52E4002352F0002264F600226AF8002268F8002A53
      E7005E63B300C4C4CA00000000000000000000000000E8D4CE00E49A8100EB7D
      5800EA734900E86B4300DC8C6F0091B4C4003B9AD6002F84BE003490CF003896
      D50057B2E70060BEEE0069BDF00062B4EB001DC5F10001BDFF0006AFFF0009BA
      FF002AA0D7005DACD50084B6D200D9DADB00A3522800FFFCF800FFFAF5007373
      7300FFF8EF00FEF5EC00C0CCFB000033FF000B227D00FFEEDD009AD79A000099
      00000E470E00FEE7CD00EBBFBF00CC6667005D2A2B00FFE0BE00A5CFFA003499
      FF001A457100FEDAB200FED9AF00A3522800A2826100DDA56900EBEBD500E7F1
      DC00E7F4E000E8F4DF00EBF3DE00E9F0DA00E9EDD600ECEDD700CBC6B300A377
      4C00D9802A00D975290059493F00DAB89D00F1C8A5009B8194002368E1003189
      FE0050ADFE0042437700E2E2E200000000000000000000000000929C8C004695
      030048960300479503004793030046910200947F2000BD772A00BA722600B66C
      2100B4691F00EBC79100F9E4BB00CCBDC8008481D600434CBF008887AE00D8D8
      D900EAEAEA000000000000000000000000000000000000000000EBE9E800D0BA
      B700798EA9007C97B2004285B8002488CC002781C0001E74B5001C7BC2000F6E
      B800227FC400308DCD003290CF003E91D2002EAFE00005CAFD0001AAFF00308B
      BE00BABFC500000000000000000000000000A3522800FFFCF900737373007373
      7300FFF8F100FEF7EE00C0CCFB000033FF000B227D00FFEFDE009AD79A000099
      00000E470E00FFE8CF00EBBFBF00CC6667005D2A2B00FEE1C000A5CFFA003499
      FF001A457100FFDBB300FEDAB100A3522800A2826100DBA76A00E9EDD800E6F5
      E100E6F7E500E8F7E700ECF7E600EAF3E000ECF2DF00EEE3D100CBB3A600A276
      4900D77C2400DA7831005A4A4000DAB69900F0DFBE0094839C002566D800276E
      E2003A81E5003F3E7500E0E0E000000000000000000000000000929D8C004694
      0300479403004793030046910200458F0200937E1F00BA722600B66D2100B367
      1C00B1651B00EBC79100FCE7BA00FCECC200FBEEC5009C8F8000EAEAEA000000
      000000000000000000000000000000000000000000000000000000000000CBD0
      D5001C8CD900208DD6003D9FDC0064BFEF0064C0F30041A6E6001C89D600076E
      BC001579C5002D90D50045A2DD0048A2DB002A89C8000A9BD8001C9BEA00687E
      8F0000000000000000000000000000000000A3522800FFFDFB00FFFBF9007373
      7300FFF9F300FFF8F000C0CCFB000033FF000B227D00FFF1E1009AD79A000099
      00000E470E00FFE9D100FFE7CD00FEE6CA00FEE4C600FEE2C300A5CFFA003499
      FF001A457100FEDCB500FEDAB300A3522800A2826100DCA86A00E9EED800E6F6
      E200E7F8E600EBF9EB00EDF9EC00EEF6E800EDDFD000EBD9CA00CBD0C700A174
      4600D6791F00DC7B3A005B4B4200D8CAB200F0E8D300BBA1A400323174005453
      69003635560059557300E5E5E500000000000000000000000000929C8C004693
      03004793030046910200458F0200448D0200927C1E00B66D2100B3671D00AF62
      1800AE611700EBC79100FCE7BA00FBEBC200FAEDC5009E908100EAEAEA000000
      0000000000000000000000000000000000000000000000000000E0E0E1008196
      A8003491D10061BBEE006DC8F70053B3EC002E99E200288DD5003F8AC600227E
      C5001B85D3002992DB00349ADF0053B2EB005AB5EA003E99D5002C8BCF005D72
      8200DFDFDF00000000000000000000000000A3522800FFFDFD00737373007373
      7300FFFAF500FFF9F100C0CCFB000033FF000B227D00FEF2E3009AD79A000099
      00000E470E00FFEAD400FFE8D000FEE7CC00FEE5C900FFE3C500A5CFFA003499
      FF001A457100FEDCB700FEDBB400A3522800A2826100DBA86A00E9EDD800E6F6
      E200E7F7E600EBF7EB00EDEBE000ECDBCF00EEE6D700EDF6EC00CDD5CF008461
      3E00885C3100A26744005C504900D9D3C400EED4BD00F3D8BE00AEA39800D7D8
      D8008B89860080695800E7E7E700000000000000000000000000929C8C004591
      020046910200458F0200448D0200448B0100917A1C00B3681C00AF621800AC5E
      1400AC5D1400EBC79100FCE7BA00FBEBC100FAEDC5009E908100EAEAEA000000
      000000000000000000000000000000000000E9E9E900ACB3B8006188A2005DB3
      DF0071CCFB005AB7ED003CA1E3002995DE004995CC00A6B2BE00E4D3C400BDC3
      C8005388B3001A77BC002288D000208EDA003EA3E4005BB9EF0054B2EA004479
      9E007F868C00C7C7C700E6E6E60000000000A3522800FFFEFD00FFFDFC007373
      7300FFFBF700FFF9F400C0CCFB000033FF000B227D00FFF3E6009AD79A000099
      00000E470E00FEECD700FEEAD200FEE8CE00FEE6CB00FEE4C700A5CFFA003499
      FF001A457100FEDDB900FEDDB600A3522800A2826100DCA06600EBE0D100EBE9
      D600EAE5D600EBDACF00F1E2DA00E3DCD200D2D9D100D9E2DA00D9E1DB004D4E
      4C00B4B4B40068686800817B7600ECD2BE00EFDBC500AD9D9000827E7B00C7C7
      C7008987860067594B00D5D5D500EAEAEA000000000000000000929C8C00448F
      0200458F0200448D0200438B01004389010090781B00B0631800AD5E1400AA5A
      1100AB5B1200EBC79100FCE7BA00FBEBC200FAEDC5009E908100EAEAEA000000
      0000000000000000000000000000000000008FA5B8004490C40061C2F7005FBC
      EE0047A7E30044A7E6004CA8E20093AFC500E6D5C800FFEED800FFF3DF00FFFF
      F10083A2B50000548F006B8DA900769DBD003991CF0041A4E40050AFEA005ABB
      F2004CA0D4004A708A0094979A00D8D8D800A3522800FFFEFF00737373007373
      7300FFFCF800FFFAF600C0CCFB000033FF000B227D00FEF4E8009AD79A000099
      00000E470E00FFEDD900FFEBD500FFE9D100FEE8CD00FEE6CA00FEE3C600FEE2
      C200FEE1BE00FEDEBB00FFDDB800A3522800A2826100DFA36600F3E1CC00F3E2
      CD00F2E3CD00EFDFCD00DED3CC00B1B0AE007D797700645C5B00646463006F70
      6E008C8C8C005D5D5D0068605900CFBEB200B6AEA400D4D4D300C7C7C700AEAF
      AE00C0C0C000ABACAB006D6D6D00CCCCCC000000000000000000929D8C00448D
      0200448D0200438B010043890100428701008F761A00AD5F1500B1641B00BD77
      2E00CE924800D49C5400DBA96700E2BB8100ECD09E00A0938400000000000000
      000000000000000000000000000000000000C1D2E000AFC8DD00B1C4D4005A88
      AE002F94DA004BB2F00080B8DA00FCDCC400FFF8E300FFF1D400FFE9CB00FFF6
      E50082AFC9000176B90096B5C300FEE9C80099A9BA0046ABE9003CA2E5002671
      A900628BA9005E9CC8005E8AAD00CECFD000A3522800FFFFFF00FFFEFE007373
      7300FFFDFA00FFFCF800C0CCFB000033FF000B227D00FFF5EB009AD79A000099
      00000E470E00FEEEDB00FEECD800FFEAD400FFE8D000FFE6CC00FFE5C800FFE3
      C400FEE1C000FEDFBE00FFDEBA00A3522800A2826100E0A46600EFE6D100EBEC
      D700E9EED800EAEDD700B7B5AD00E3E3E300D7D4D300B099980067605F00615F
      5E00B9B9B900D0D0D000A3A3A300706A6400AEABA900F1F1F100D7D7D700A9A9
      A900C2C3C200D8D8D800CECECD009C9C9C000000000000000000929C8C00438B
      0100438B010043890100428701004185000083831F00C0843900D3995000DBA6
      5D00DDA96000DCA85F00D49C5400B38B5C00A6988900D7D6D500000000000000
      0000000000000000000000000000000000000000000000000000DDDFE2004B8C
      BC003BA0E4002894DE006EA8D100FFE5C400FFE5C000AF91A0009C7E9D00FCE4
      C900D4DCD30076AECB00A8C0CB00FFECCD00A6AFBA002C94DB00369FE5003087
      C300767C8400DDDEDF00DAE0E500E6E6E700A3522800FFFFFF00737373007373
      7300FFFDFB00FFFCF900FFFAF600FFF9F300FFF8F000FFF6ED009AD79A000099
      00000E470E00FFEFDE00FFEEDA00FEEBD600FEEAD200FEE8CE00FEE6CA00FEE4
      C700FEE2C300FEE0BF00FEDFBC00A3522800A2826100DDA76900E9EDD900E6F5
      E100E8F6E500E7F5E2009A9A9900BDBEBE00BBBBBB00B6B6B600838383006665
      6500B3B4B400C1C1C100CCCCCC007777760083838300C8C8C800949494005753
      50009C908600CFCFCF00CFCFCF00A4A4A4000000000000000000929C8C004289
      0100438901004287010041850000418300006DA73100A6D06600AAC45F00B1B5
      5600A89C44009F8B7300C8C5C300E8E8E8000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007C95A90050B5
      F30051B1EB0037A3E8006CA8CB00D3A8970063589C000218B000001EB4008F80
      A200FFEBC200FEE6CB00F4DECA00FFE4C400A1ACB700329AE00048AAE70051B7
      F50037709900AAAAAB000000000000000000A3522800FFFFFF00FFFFFF007373
      7300FFFEFC00FFFDFB00FFFBF800FEFBF500FFF9F200FFF7EF00FFF6EC00FEF4
      E800FFF2E400FFF0E000FFEFDD00FEEDD900FFEBD500FEE9D100FEE7CD00FFE5
      C900FEE3C500FEE2C100FFE0BE00A3522800A2826100DBA96B00E6F3DF00E8F8
      E700ECF8EC00EBF8EA00979A9700AEAEAE00C4C4C400F2F4F3009C9C9C007171
      7000A8A8A800B2B2B200BDBEBE00C8C8C900B4B4B400A0A09F007E7E7D00B4A7
      9C00B8AA9E00C1C2C1008D8D8D00D7D7D7000000000000000000929D8C004288
      0100428701004185000040830000408200006DA73100A6D36800A6D36800A6D3
      68007AAE4400D2D3D20000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BAC8D40056A2D0006DCE
      FF005EBCF00055B6ED003969BA001F28A400001DB900213BBF000D40CF001243
      C500A591A300FFE4B900FFEBC400FFD8AC009A95A1003B9CDE0057B8F00063C1
      F60056B6EC005A718300D7D7D70000000000A3522800EAC07800EAC07800EAC0
      7800EAC07800EAC07800EAC07800EAC07800EAC07800EAC07800EAC07800EAC0
      7800EAC07800EAC07800EAC07800EAC07800EAC07800EAC07800EAC07800EAC0
      7800EAC07800EAC07800EAC07800A3522800A2826100DBA96B00E6F5E000E9F8
      E800EFF9EF00EBF9EA00B7BAB0009F9F9E00A2A2A1009A9A9A0066666600AAAA
      AA00A4A4A400AEAEAE00AAAAAA009999980096949100868280007B7B7A00C8BB
      AF00B0A49A0087878600A6A6A500EAEAEA000000000000000000929C8C004186
      0000418500004183000040820000408100006DA73100A5D26700A5D26700A5D2
      67007AAE4400D3D3D30000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A3C1DB0055ABE10077D1
      FE0072CDFC0066C1F0002654BB00001ABC00636EC200D9D3D8007488CB001260
      E6002B6AD600B59FA100CFA6960090758F00547AB00055B0E9006BC8FA0072CF
      FF005ABDF300698EA800DFDFE00000000000A3522800CA6E1800D7771200D777
      1200D7771200D7771200D7771200D7771200D7771200D7771200D7771200D777
      1200D7771200D7771200D7771200FCC08000EE9E4000E5861600FCC08000EE9E
      4000AE7A4E004E6ED400CA6E1800A3522800A2826100DBA56900E7EFDB00E6F7
      E400E9F6E600E9EBDC00F2E7E000FDFDFD00F7F5F400E4DCD300E3ECE800D7E4
      E300C5CAC700C0B9B400D2D2D100EFEAE500FCF5EF00FCF3EC00DAD2CA00F4EA
      DE00C79C7000967C6300E7E7E700000000000000000000000000929C8C004084
      0000418300003F8200003C8100003D8902004D9B130068AA2D0074B0390081B7
      46006DA33700D7D7D70000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5E7E900B7CBDC0069A5
      D10061BAEC007AD7FF006FC6F2001E5BC6009290C200FFFFE100D0C7C7003586
      F300258DFF002C64CD003D62B2004597DC0065C8FB0078D8FF0067C7FB00579C
      CA0099AABA00DDDFE1000000000000000000A3522800C6773800D2833E00D283
      3E00D2833E00D2833E00D2833E00D2833E00D2833E00D2833E00D2833E00D283
      3E00D2833E00D2833E00D2833E00F6BB8000E2914000D4761600FCC08000E291
      40009E6A4E004E6ED400C6773800A3522800A2826100E3994600EFBF8200EFC0
      8200EFBF8200F4C88D00FCD59E00FBD69F00FBD69F00FAD29A00F2C58900F1C3
      8700F4C78D00FBD59D00FBD69F00FCD59D00FBD29800FBD19500FBCF9400F8CD
      9100E29844009F816200E9E9E900000000000000000000000000A7ADA2003D80
      06003B8602003E930400439F070045A4070045A6080043A007004B911C006C8B
      5600ABB2A600E9E9E90000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7E8
      E9009EBDD6005FA8D70071CFF70070CAF600638BCA009CA7D0006CA6F000307B
      DF00376CBD00408EDA0065C4F90079DAFF0074D5FF0059A6D5007C98AE00D2D8
      DD000000000000000000000000000000000000000000A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A352280000000000A2826100D9730000E27C0000E27C
      0000E27C0000E27C0000E27C0000E27C0000E27C0000E27C0000E27C0000E27C
      0000E27C0000E27C0000E27C0000E27C0000E27C0000E27C0000E27C0000E27C
      0000D8720000A0816200E9E9E900000000000000000000000000E9E9E900DBDB
      DA00D3D4D100C5C8C300B7BDB300AFB6AA00A7B0A000BCC0B900E4E4E400EAEA
      EA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6DEE40086B0D10065B5E20069C4F4002C7CD7005175AC00ACB1
      C400C6CBD40061B1E10080DDFF005DB8EB006B95B400BBC2C900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A58F7800CD690500D5791D00D67B
      1F00D67B1F00D67B1F00D67B1F00D67B1F00D67B1F00D67B1F00D67B1F00D67B
      1F00D67B1F00D67B1F00D67B1F00D67B1F00D67B1F00D67B1F00D67B1F00D477
      1A00CC660100A6948200EAEAEA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C1D1DF0070AED9006896B400E0E0E1000000
      00000000000095BBD900609DC700A3B3C100E6E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6D5D500AA805800B26F2D00B270
      2E00B2702E00B2702E00B2702E00B2702E00B2702E00B2702E00B2702E00B270
      2E00B2702E00B2702E00B2702E00B2702E00B2702E00B2702E00B2702E00B16F
      2B00A9845E00DBDBDB0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A6A9AB0087898B008A8C8E009293
      94009E9E9E00AEAEAE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AAABAA008F91
      8F00878A8700878A87008A8C8A00929292009D9D9D00AAAAAA00B6B6B600BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BCBCBC00B1B1B100A0A0A000959595008C8C8C00858585008382
      8300838383008D8D8D00A9A9A900BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AFAFAF0099999900AAAAAA00BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B8BABB006F91A80096B7C4007FA1B7007291
      A900647F94005D6A750063696F006E7277007E80820091919200A2A2A200B1B1
      B100B9B9B900BDBDBD0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000879588002E7B32001B8B
      25001F932C0024973400299339002F8A3C00337D3D003C6E41004B694D006270
      620084858400A5A5A500BBBBBB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B8B8B8009292
      92006F6F70005E5E5E00575757005453530051505000504E4E004D4C4C004746
      4700424242003D3D3E004F4F50009E9E9E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B6B6B600778189002C75AA00408CBB00495B6A0089898900B2B2B2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B3B6B90088AECA00AEF6FF0089E4FF0094E4
      FF0095DFFF0087B5CC007B9DB0007693A5006B809000697E8D00637C8F005B6F
      7E00626F7A006D747A0093949400000000000000000000000000000000000000
      000000000000000000000000000000000000BABDBA002E9533000CBF1F0019C9
      310028D4450034DF570040E8650046EC6E0046ED6F0040E7670031CE4E0022B0
      38001C8728003463370076797600B2B2B2000000000000000000000000000000
      000000000000000000000000000000000000000000009B9B9B00565656004E4D
      4D006260600066646300525251006D6B6A007A78760072706E00686664005E5D
      5C00565655004F4F4F0036363700828282000000000000000000000000000000
      0000BFBFBF00BDBDBD0000000000000000000000000000000000BBBBBB009093
      9600356C9500268ED300389DDF0076D2FE0069C4F60035739F005D636A009696
      9600B8B8B8000000000000000000000000000000000000000000B2A7A200837A
      76008C8786009E9E9E00B7B7B700A5ABAF008FB8D40090E5FE006BD4F6006CD5
      FC006AC6E80066A1B90067A0B90068A0BA006CAAC90079CCF40087D9FF008BD1
      F8008ECCF0007BB1D400626F7900000000000000000000000000000000000000
      000000000000000000000000000000000000B7BCB70024982C0010BE24001DC3
      36002DCF4A003ADA5E0046E56F0052F07F0051EF7E003DDD650042E76A0035DD
      570026D5420014C028001E6D23008F908F000000000000000000000000000000
      000000000000000000000000000000000000AFAFB0004F4F4F00605F5E006F6E
      6B00696866004C4A4B00363537004B4A4B00575656006362600061605F005756
      5500504F4F004B4B4A003A3A3A00848484000000000000000000000000000000
      0000998C88007F7E7D009D9D9D00B5B5B500BCBCBC00A3A3A4004A6D88002687
      CA003793E000336CE40045A9E4006DC9F9006FC7F40077CDF70053B4E8003561
      82006E6F7200A1A1A100BCBCBC00000000000000000000000000D7A28D00E08E
      7000BF8370009D6A5800856054007065670092B9D30093EBFF0078DAF60074D6
      F70060ABC7005D99B10062A5C20062B5DB0061C3F1005BC9FC0056C4F90052C1
      F8005CCAFF0081CCF5006E798100000000000000000000000000000000000000
      000000000000000000000000000000000000BDBEBD003C99410012BD250020C6
      3A0030D24F003DDE63004CE977005CFD900053DF7B0048A551003DD7620037DA
      5A0027CB430018CC310010901C00858885000000000000000000000000000000
      0000000000000000000000000000000000009C9C9D004B4B4B0061605F005A59
      58004A494900454445004F4D4E00474547005352510049484A00545353005655
      54004D4C4C00484848003B3B3C0097979700000000000000000000000000A498
      9500E5664200D866450092503F0076605A005A6D7D00277EBB003B9FE00042A6
      E1003A75E700375EEA004CA0EA0068C6F70065ABD100F2D0BF00A8C3D20070CD
      FC00449CD2003E5B710080808000B0B0B0000000000000000000CCA69800F9C7
      B300FFF9F400FFE8DC00FFD0BC00C0A29F009DC6DE008DE8FD007DE0FA0073CC
      E700687C84005A90AF004AACDF004FB2E6004BACDF004CABDF004EADE10057BD
      F0005CC8FE0073BDE500747B8200000000000000000000000000000000000000
      0000B9BABA009C9C9C00AFAFAF00000000000000000074A6750011B1220021CA
      3B002FD14E003DDD620050ED7A004CF4810061C77700C7D1BD0041C1580033DC
      580027CB430018C930001A862300989998000000000000000000000000000000
      000000000000000000000000000000000000A9AAAA004C4B4C00575755004645
      460056555500505254004D4E50005E6062005D5B5C0052515100424143004F4E
      4E004B4B4A004343430050505000B7B7B700000000000000000000000000C666
      4D00DE603C00F3916D00F88B630053749C00399EE0003F8BE6004AAAE6004EAD
      E8003F6EEB00406EEB005BBCF00060BFF30074ACCE00FFE9DC00FFE3D200E6D2
      C70091C1DC0069C9FC00337CAF008F8F8F000000000000000000C6ADA300EFBF
      AA00FFFDF800FFEEDD00FFF9E500C9D4D900A1D0E7008FE9FA0081E2F9007DD9
      F400AE9398006E454900457B940060C7EF0059BCEB0050B0E1004DADE00056BF
      F00062CEFF0077B6DA007C818500000000000000000000000000000000000000
      0000738A98002A6F9C005B656C00A5A5A50000000000B4B9B4003D9D41001DC8
      33002CD24B0039D95C0044EB70003ECE5700BBCB9900FFF4EA006BB7680020CC
      450026D0430014BF280047774900B8B8B800000000000000000000000000BFBF
      BF00A6A5A5009A99990099999900A09F9F00AAAAAA004E4E4F00454444003D3E
      3F005A565600B4A39E0058515000A6948E00A799930037383A003A3A3C004A4A
      4900484948003C3C3D0094949400000000000000000000000000A99E9B00DC5C
      3900D9593600F1967100F6936B004293C8003F78EB003C64EB0053ADEB005BB8
      EE0055A2EF005CB0EF0064C1F40058B8EF006DA7CB00FFE7DB00FDD5C500FCCB
      B500FFE0C70099BBD1004DADE5008B8B8B000000000000000000C7AFA500EFBA
      A400FFF9F200FFEBDC00FFF4E500BECAD400A3D7EA0093EEFB0087E6FA007BDC
      F400A3879500984D5000391F2000244659004AA3D1004DACE1004CABE0005FC2
      FB0063D0FF0072ADCF0086898B0000000000000000000000000000000000B5B7
      B8004083AE002A9EEF000E6BAC00405B6D008C8C8C00BCBCBC009EA79F00218D
      320023CD3B0034E0550029C44000639C5D00BDB7B100DCC8B700B1BB79001EC1
      37001CCF37002C873300A1A3A100000000000000000000000000BAB8B800938A
      8A00A2929200AA9B9B00AA9C9C00A0929200928A8A00777474003F404100282A
      2B0058565600C9B1A7008B665800967D7300D2D0C900615A5500363636003C3D
      3D003F3F41008080810000000000000000000000000000000000BB756200DF6A
      4600DA5D3900F0967100F79C75004A98CB004478ED004168EE0059B3EB003A95
      D00066C2F30069C5F5006BC7F7004DAFEA00669FC500FFFCF600FCD5C700FCD2
      BF00FFD6C10074BAE30047A5DF008B8B8B000000000000000000BCA59B00F4C4
      B000FFFEF800FEECE200FFC9B500B8AFB900A5DEF00098F2FC008CE8F80081E8
      FD008D9AA800B7666B00683B3E0019010000386F850066D7FB0071BBD8008FB3
      9300A0BBAA008197A9008E90930000000000000000000000000000000000919A
      A0002790D6004395CE0093AABD003685BE001E5A8500686F76007E818A001F4F
      66001976300021A32900117D63002879BC001D7EC9003080C300618F90002398
      24003F874400A1A5A10000000000000000000000000000000000C4BCBC00FFEE
      EE00FFF4F400EEDCDC00E4CBCB00EBD7D700EEDADA00EDDADA00ACA0A2004442
      44003433330031363C002C2F370024282D003E5873004D5C6E003C3937003737
      38008484840000000000000000000000000000000000BCBBBB00D8634200E171
      4D00DC654100EC916D00F8A57D004C96CF004E84F0005DA9F3004FA8DC004399
      CF006CC8F60072CCF9006DC9F70046A9E60044A1DE00AEBAC900F0E3EE00EEE4
      EE00FFDECD0069B2DF0041A0DC008B8B8B000000000000000000B89B8E00FAD5
      C500FFFBF500FFF7F000FFFAF800B3C4D800A8E2EE009BF6FC0090ECF8008AED
      FD006D919D00AC5F6500A161680043212200191D20005DBCDE0097D7E40068B5
      6E008BBE78008A8C940095969900000000000000000000000000000000006289
      A0002297E60080A5C300FFDBB500E2C5B30076A2C4002273AD001F5883001744
      7C0026425E00215C68001F85D700238DE600208CDE001D8CE4001886D600295B
      63009B9B9B000000000000000000000000000000000000000000BBBBBB00AAA1
      A100E1DADA00F3E7E700E3D0D000F8F4F400E8D8D800E7D4D400F1DBDB00B6A1
      A10032313400172A3F00203D5D00202730001C446D001A5591002B4054005C59
      58009898980000000000000000000000000000000000A4949000E4724E00E378
      5400E0704C00E98C6800F9AF870053A0D1006DCAF6006ECAF7005FB5E40057AB
      DA0074CDFA0044A1DB001F81C9003AA0E10048ACE800359DE0003E7DD700978C
      DD00FFF4E5005FA9D900399AD8008B8B8B000000000000000000C89D8900FFED
      E200FFF9F300FFDFCD00F9D0BF00AFBED000B3EEF700A3FDFD0097F3FA0093F6
      FF0073CDD700765F6600BF6D7300794A4F00230A0A002F5B6B00A9DCEC00599B
      C900A5C2D400899199009D9D9E00000000000000000000000000B2B5B600338C
      C1002C99E300C2C3C300FFD0B000FFC1A000FFC9A500D0BBB00080A2BC002F5F
      88001F4B7C001E7FCC00339BEF003197E6003197E6003197E600339EF4002374
      B50073777B00BEBEBE00000000000000000000000000000000009D9A9900837F
      7F008983830094898900C9AFAF00EADCDC00D0B8B800CAB0AF00F6EAE800C8BE
      C6003052790022395200273A510028496C002A66A300296BAD00235689005359
      5F008381800000000000000000000000000000000000BD7A6800E7835E00E680
      5B00E37A5600E78B6600FCB88F0057A4D40071CBF90073CCFA006DC1EB0060B2
      DE002A8ACD00389BDC003B9DDE00369ADC003598DC0046AAE70041A6E4002E95
      DB00749FC30050A2D9003193D3008B8B8B0000000000B7B4B200D7A89000FFFE
      F800FFF8F100FFE6D700F6CDB80098ACC100A9D8EE00B2E7F200A8E0EF00A8E2
      F200AAEBFB00718C9B009B5B6300AD686D00512E3100120F12008FA6AC00C7D3
      DA00D5D7D700778EA000AEAEAF0000000000000000000000000081939E002B84
      C400658DB400EDE2D200FFE8CF00FDCEB500FECFB300FFD1AF00FFD3AA00707C
      8700145B9500339EEE003BA1F400399FF100399FF100399FF0003CA4F700309A
      E90050657300B8B8B800000000000000000000000000B4B0B000B1949400BEA5
      A600948485008F7C7D00B5949500C7A3A400AB8E8E00B28F8E00D7B3B0007775
      86001B5086002A649E002A69AB002956830029527E00296EB2002C67A300474B
      50008988870000000000000000000000000000000000D2705300E98C6700E886
      6300E6835E00E98A6400C5B3A6004FA3D70079D2FE0065BFF00048A0D7002D86
      C5002F89C700409DD90048A8E40046A7E30042A3E3003FA1E00042A4E2004BAF
      E900349CDF003095DB00288ACF008B8B8B0000000000B0A29A00FBD3BD00FFFE
      FD00FFF5EF00FEECE500FEF1EB00CED5DA00B6C5CF00BFC9D300BFCAD300BBC8
      D100BBCCD600AABDC2007C5F6100B86B7200824F54002E171700242C2E00566F
      AA00546EAC007E888E00000000000000000000000000BFBFBF004C83A300947A
      8300F2A08100FEDDC900FEDAC400FFE4CD00FFE4CD00FFE5CA00F1D8BB004E69
      81001A6FAF0044B3FF0047AFFF0044AAFC0042A8FB0042A8FB0045ABFD003FAA
      FD0048667A00B3B3B300000000000000000000000000B6A9A900CEB3B300EDD5
      D200F2C7BD00EDCDC500DDC8C500D6BEC000CCB4B700C9ABAE00CEA8AA005E53
      5B001A1A1C00273D55002A5B8E0025272B00262D360027609B00315F8F00615F
      5F00908F8E00000000000000000000000000B8B5B400E3775200EB926C00E98F
      6A00E8896400EC946D00A2C0C5004EAEE20044A0DA0043A2DC005CBAEE0054B0
      E600459DD4003D94CB00449CD3004FABE30050AFE9004EAEE7004BAAE70048A8
      E4004EB0EA0048ACE9002287CD008F8F8F00BFBFBF00B5998900FFF1E300FFFF
      FF00FEEFEA00FCC9B900FCC6B400FFCBB500FFC8AE00FFC4A700FFC7A900FFC9
      AA00FFCAAA00FFE5C400BAAEA100865A63009C5E65005F3B3E0021110900201C
      5200433EB80079788300B9B9B9000000000000000000A3A9AD004988B100E095
      7B00FFD3BA00FED7C400FBBFA500FCC9B000FDD0B800FFE1C200C0BCAF002E59
      7F001D6398002C7CBB003391D80047B1FF004CB3FF004AB0FF004DB3FF0045B2
      FF003D637B00A5A5A500000000000000000000000000A7999800DAC7C900E8BD
      B400FD9C7F00FFBC9A00FAD3B200F6DCC100F2E0CD00EEE0D300F4E0D8006A7B
      94001D5690002C69A8002D71B7002C6BA9002D70B4002C68A6002D609500354D
      670098979700000000000000000000000000A7989400EC8D6700ED997300ED97
      7100E98E6800ED9D7600BDC5BF003695CD0056B3E90069C5F60065C1F30064C0
      F30062BEF1005BB4E70052A6D9004EA1D40056ACDE0059B5EA0056B6EC0056B4
      EB0054B3EA0049AEEB003985B900B3B3B300B7B3B100DEB89E00FFFEF800FFFF
      FF00FFF9F700FEF8F600FEF4F000FEF0EC00FEEEE900FEE5DA00FED8C500FDD1
      BC00FDC8AE00FFD9BF00F4E9DD008F666400B76D760092575D00492C2D00160E
      0A002B2B72004C4A9C00999999000000000000000000728D9C006C98B600FAB8
      9300FFEEE200FFEEE000FFDDC900FEDDC900FED9C300FFDDC000909CA3002857
      840027557C0031537900204B79002077B6003DA8F4004BB5FF0051BBFF0040A9
      F00026648C009F9F9F00000000000000000000000000B09B9B00E1D5D500E9AB
      9F00FF987A00FFB79400FFCFA700FFDFB500FFEDC200FFF5CD00FFFACE008C9F
      A7001E76D0002F83D5002F81D4002F87DE002F84D9002E6CAD002F6AA7003351
      6E00A4A4A400000000000000000000000000A8857C00F19E7900F0A07B00EF9E
      7900E98D6800F1B08800B7C5C200C3FFFF0075C4E4004AA4D9006AC4F5006DC8
      F7006AC5F60069C4F50067C2F30064BAE8005CAFDC005BAEDB0064BAE8005BBB
      F100429AD100776671009F9F9F0000000000AAA09900FEE4CB00FFFFFF00FFFB
      F900FED3C400FECFBE00FDD6C800FDD8CC00FDDDD200FDE0D500FEDBCA00FED9
      C500FEDCC700FFF2E000F6D4C5007E554C009A616B00BC7178006D4246002F1C
      190018141C003B3AA10064648000B3B3B300B9BBBB004B86A8002E61D800C0A6
      C300FFE5CD00FEDBCA00FEE7D600FFEAD800FFEBD800FFEED400909DA300295B
      8C002A5D8A002F5B86003D5A83002B537F002671A7002E89C8002E7FBF001463
      9D0044667A00B7B7B7000000000000000000BDBBBB00B49E9F00E9DCDC00E996
      8600FF927700FFB19000FFC8A100FFD7AF00FFE0B900FFE5BD00FFEDBF00D0C1
      A50029629B00286AAD003072B4002E76C0002F73B9003070B1002D68A500505D
      6B00B9B9B900000000000000000000000000C17F6D00F4AC8600F2A88200F1A5
      7F00E98C6600F6C29C009DCBCF0072B7CD0098CFE5007CC6E9003490CC0049A7
      DF0072CDFB0070CAF8006DC9F8006DC8F7006CC5F4006DC0EB004396CC007695
      A800CEBBA000C0715500A1A1A10000000000C7AE9C00F7ECDF00F9FDFF00FBF8
      F700FDEAE400FEE4DC00FFE0D600FFDBCE00FDD5C800FDD2C300FCCEBF00FCC4
      B200FDCBB300FFFAEE00DBAE9C00837D7A0067545900C67981009B5E64005431
      2F001B0F020023234E0042429F00949497009AA2A5003386CD003F62F400D9D2
      EC00FFE0CA00FCC5B000FCCEBA00FDD3BE00FED7C300FFEAD400DED3C2006C88
      9E00497898002F5E8300386491004E739F005B83AC004975A400245675000F60
      710079838800000000000000000000000000B7B3B300BAAAAB00EBD8D600EC80
      6E00FF897100FFA48700FFB89600FFCAA400FFD4AD00FFD9B100FFD8B100FFD6
      AA00827E8100145897002C72B6003675B6003675B5003476B9002D547E009293
      950000000000000000000000000000000000CB796200F6B69000F3AE8800F4AE
      8800E7876200F8DAB200F2E3BD0048C3E700D6ECF300EAFFFF00E4FFFF00C1ED
      F6004488B60058B6EC0076D0FD0076CFFC005BBEF40065A1C400D3A88C00DB8E
      6C00D8C6A800B46D5600A6A6A60000000000BDA49100C6B5AA00C1B5B000C1B3
      AE00C2B8B400C4BCBB00C5C7C900E2E9EB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFCF900FFFEF800B78A7A00AEADAD008283850095616500C77675007048
      63002721830003078F0031329F0097979B006E8E9E004990ED009E9FE800FFF4
      E600FFF1E400FFE9DC00FFECE100FEEADD00FEE1D000FFE9D700FFEDD800F3D7
      BF00E1CAB500C5C1B70061859C0044749C00437098005C7B9B00639A9C002F77
      8200A5A6A700000000000000000000000000B5ACAC00D8CACB00E4C3BD00F269
      5800FF7C6800FF947A00FFA58700FFB39100FFBE9A00FFC39E00FFC29E00FFBF
      9A00F5AC8A00886E7300365A89002D69A4002F69A2003E608300888C90000000
      000000000000000000000000000000000000D17C6100FABE9800F7B79100F7B5
      8F00E7886300F1C6A000FCE6BF00F3ECC700C5D4C900B6CED200AFD0E000A7D5
      ED00CDC4AD00CEC7B2005CA1CB0055A4D300B2877C00F1926800E79F7900D3BA
      9D00D8CAAC00A6655300ADADAD0000000000C5B7AC00F4CFB600EBBCA400E4AB
      9400DF9F8A00D77A5F00B5705D00CFD4D600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF4EC0096776A00B7B7B700BBBBBB006B5B5A00A3759D007F72
      D8004D3A9C003B245D00383145009F9F9F0050A2CB0067ACF000DCD1E200FFE1
      CC00FDD0BD00FDDCCC00FDE2D200FFEADB00FFEEDE00FFEAD900FFE6D300FFE0
      CA00FFCCB100FFCCAF00F6D5BF00D0C8BF00CACDC600EDE3D60072AED6005171
      8500BEBEBE000000000000000000000000009D959500EFE7E700E1A49D00F84E
      4000FF695800FF7D6700FF8E7500FF9E8200FFAB8F00FFB39800FFB59A00FFAF
      9600FFAA9000FF997E00E38E8200958D940071777E00B5B6B600000000000000
      000000000000000000000000000000000000D47B6000F6AE8700F9BB9500F9C0
      9900F9BF9800EF9A7500E7886300E6886300EA9B7500F2B89000F9D9AE00F7E6
      C000FEEDC500FDE8BF00FDE5BB00FBE1B800FDE4BC00FAE0BA00E6BA9600D5A2
      8300DACEB100905F5200B5B5B50000000000C0BFBF00DEDCD900FEFDFA00FFF1
      E500FFF4E700FACDBE00C57F6B00DCE1E300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFE5D80088736A00BCBCBC000000000093949C005047BA00B079
      9800A7635B00BB706D00725B5B00B1B1B10050A2CC0063C7F700C7DDE900FEE7
      DA00FFDBC800FFE1D100FFE0D100FFDAC800FFECDD00FFEEDE00FFE4D000FEDD
      CA00FEE1CF00FEE0CE00FFE1D100FFEBDC00FFFFF300DDE1E3003887BC00868C
      8F0000000000000000000000000000000000AC9D9C00EFEBEA00DF979000FB6C
      6500FF7E7400FF8C7F00FF9C8E00FFA99B00FFB4A400FFB7A700FFB5A600FFB1
      A200FFA99C00FF9D8F00FFB7AC00B6A29F00A3A2A20000000000000000000000
      000000000000000000000000000000000000BBBABA00AA9A9600B2887D00D080
      6900DB806200E98F6900F4A78100F9BA9400F9BC9600F3AA8500EB936D00E786
      6100E58B6600EAA17C00F1C19B00F9DEB700FCEAC200FDE8C000E1CFAF00D6D1
      B400DECBAA0084645D00BABABA00000000000000000000000000DAD9D700FCEA
      DD00FFEBD600F8D4C400C2918100DFE5E800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FCDBCE0085736C00BCBCBC00000000000000000069618900663E
      370067404300826A6D00AAA9A90000000000A2B0B900649AB90051A6D3007EC0
      E500B0D2E500D9E5EA00F8F3EF00FDF3EA00FFF5E700FFF3E400FFE6D300FFD0
      B700FECBB400FEDECC00FFEEE100FFF5EC00FFFBEE009CC6E20037729600ADAD
      AD0000000000000000000000000000000000BEAAAA00EBE3E100E3969100FE9B
      9B00FFA7A400FFACA700FFB1AA00FFB3AC00FFB5AB00FFB4AA00FFB2A800FFAF
      A400FFA9A000FF9D9600F9BDB70092898800B1B1B10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBBBA00AD9F9C00B28B8000CF826D00D97E6200E78B6600F1A2
      7C00F8BC9600F5B28C00EF9C7700E9896400E5836000E68E6900DDA18000E0C8
      A900E1BA9B00907F7B00BFBFBF0000000000000000000000000000000000D5D2
      D000F8F0E800FBD9CB00C7998800DEE5E700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEE4D800816E6600B7B7B7000000000000000000AFAEB3008781
      8000A49C9D00BEBEBE0000000000000000000000000000000000A8B4BB00739E
      B600569AC1004C9AC7005CA1CB006AA9CF0078AED0006FA5C70087AEC600E4D7
      D200FFD9C400FFE1CF00FFE3D400FFFAF300F5EDE80061AAD8005E7583000000
      000000000000000000000000000000000000D0BFBF00EBDDD900E0928C00FAA5
      A500FCAAA900FDAEAB00FFB3AF00FFB4B100FFB6B100FFB6B100FFB4B000FFB2
      AD00FFADA900FFA4A000ECC0BB00857E7E00BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBEBE00B089
      8000F6B18A00F9BE9800F9BC9600F8BB9500F8BC9500F09A7500907B7600A592
      8E00C88F8000BABABA0000000000000000000000000000000000000000000000
      0000CDCBCA00F1E2DA00D1A59000D6D6D600FFFEFC00FFFAF700FFF9F500FFF6
      F100FFF6F100FFE4D30092756800B4B4B4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AFB7BC009AADB8008AA8B90083A5B90084A4B7006597B400549C
      C70094C5E000CEE5EF00EFF3F500FFFBF800CFE2EF003A8BBA00939598000000
      000000000000000000000000000000000000C5B0AF00D7C3C100CDA5A000D5A9
      A500D8A8A300DCA7A200E1ADA800EAB4AE00EDB4AE00F0B6B100F3B6B100F6B4
      B000FAB1AE00F7ADAA00DABBB700878484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B7B0
      AE00F0977100FCC8A000FDC9A200FCC7A000FCC59E00C66B5000AEAEAE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C5C4C400D0B4A500C8AA9700E7C6AE00E3BDA700DFB8A300DBB4
      9E00D8B09C00DBB09B00B0A09900BEBEBE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A8B5
      BC00769FB6005B97BA0061A2C80075B1D10064B2DC0066879A00BCBCBC000000
      000000000000000000000000000000000000BFBBBB00C0BCBC00BDB6B600B9B0
      B000BAB0B000BEB4B300BEB1B100B9A9A800BCA9A800BEA8A600C0A7A600C6AB
      A900CBACAA00D7B9B700BCA8A700A9A8A8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A9989400C98B7B00CD7F6800D8816500DB7C5C00A29C9A00000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF00FFC3FFFFFFFF000000000000FF01FFFF
      FFFF000000000000FE007FFE7FFF000000000000F8001FF807FF000000000000
      E00007F0007F000000000000800001C000070000000000000000008000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001000001000000000000C00007000007000000000000
      F0001FFC400F000000000000FC007FFFFFFF000000000000FE01FFFFFFFF0000
      00000000FF83FFFFFFFF000000000000FFFFFFE0FF0FFFFFFFFFC0C3FFFE0F80
      3F07FFFFFFFFC081FFF003000200FFFFFFFFC081FFC001000000000000FFC081
      FF0001000000000000FFC081FC0001000000000000000001F000010000000000
      00000001C00001000000000000000001C00001000000000000000001C0000380
      0000000000000001C00007C00007000000000001C0001FE0000F000000000001
      C0001FC00007000000000001C0001F000001000000000000C0001F0000000000
      00000000C0003F000000000000000000C0003FC00000000000000000C000FFC0
      0003000000000000C003FF800001000000000000C003FF800001000000000001
      C003FF800003000000000001C003FFE0000F800001000001C00FFFF8003FFFFF
      FF000001FFFFFFFE187FFFFFFF000003FF03FFFFC00FFFF800FFFC3FFE0003FF
      8001FFC000FFF01FFE0001FF0000FF8000F3C007C00001FF0000FF0000F00001
      C00001FF0000FF0000E00000C00001F18000FF0000E00000C00001F08000E000
      01C00000C00001E00001C00003C00000C00001E00003C00007800000C00001E0
      0007C00007800000C00001C00003C00007800000800001C00003800007800000
      8000038000038000070000000000018000038000070000000000018000038000
      0700000100000000000300000700000100000000000700000F00000100000000
      000700001F00000100000000000700003F00000100008000000F00007F000001
      C000C100000F00007FF80001E000C3C0001F00007FFFC003F000FFF8001F0000
      FFFFE01FF800FFFFE01F0000FFFFF03F00000000000000000000000000000000
      000000000000}
  end
  object ActionList: TActionList
    Images = ImageList
    Left = 100
    Top = 36
    object acSalg: TAction
      AutoCheck = True
      Caption = 'Salg'
      Checked = True
      GroupIndex = 1
      ImageIndex = 0
      OnExecute = acSalgExecute
    end
    object acKunde: TAction
      AutoCheck = True
      Caption = 'Kunde'
      GroupIndex = 1
      ImageIndex = 1
      OnExecute = acKundeExecute
    end
    object acLeverandor: TAction
      AutoCheck = True
      Caption = 'Leverandor'
      GroupIndex = 1
      ImageIndex = 2
      OnExecute = acLeverandorExecute
    end
    object acProdukt: TAction
      AutoCheck = True
      Caption = 'Produkt'
      GroupIndex = 1
      ImageIndex = 3
      OnExecute = acProduktExecute
    end
    object acRegnskap: TAction
      AutoCheck = True
      Caption = 'Regnskap'
      GroupIndex = 1
      ImageIndex = 4
      OnExecute = acRegnskapExecute
    end
    object acLagre: TAction
      Caption = 'L&agre som'
      OnExecute = acLagreExecute
    end
    object acPreview: TAction
      Caption = '&Forh'#229'ndsvis'
      OnExecute = acPreviewExecute
    end
    object acPrint: TAction
      Caption = '&Skriv ut'
      OnExecute = acPrintExecute
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = '*.pdf'
    Filter = 'Adobe Acrobat (*.pdf)|*.pdf'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 156
    Top = 36
  end
  object cdsRpt: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'File'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Name'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SQL'
        Attributes = [faUnNamed]
        DataType = ftMemo
      end
      item
        Name = 'Type'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'Param'
        Attributes = [faUnNamed]
        DataType = ftMemo
      end
      item
        Name = 'Desc'
        Attributes = [faUnNamed]
        DataType = ftMemo
      end>
    IndexDefs = <
      item
        Name = 'cdsRptIndex'
        Fields = 'Type;Name'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'cdsRptIndex'
    Params = <>
    StoreDefs = True
    Left = 108
    Top = 140
    Data = {
      490F00009619E0BD010000001800000006002600000003000000B9000446696C
      650100490010000100055749445448020002001E00044E616D65010049001000
      01000557494454480200020032000353514C04004B0010000100075355425459
      504502004900050054657874000454797065040001001000000005506172616D
      04004B0010000100075355425459504502004900050054657874000444657363
      04004B0010000100075355425459504502004900050054657874000000001000
      0F7270744B6E5F4C697374652E6672330D412E204B756E64656C697374650200
      00000A00000049644B6C69656E740D0A350000005374616E64617264206B756E
      64656C6973746520736F72746572740D0A6574746572206B756E64656E756D6D
      657220656C6C65720D001000127270744B6E5F47727570706572742E66723316
      422E204B756E64656C6973746520677275707065727402000000080000004964
      4B6C69656E74230000004B756E64656C6973746520677275707065727420616C
      666162657469736B200D0A65740010000F7270744C765F4C697374652E667233
      15412E204C69737465206C65766572616E64F8726572030000000A0000004964
      4B6C69656E740D0A400000005374616E64617264206C65766572616E64F8726C
      6973746520736F72746572740D0A6574746572206C65766572616E64F8726E75
      6D6D657220656C6C65720D0A001000127270744C765F47727570706572742E66
      72331E422E204772757070657274206C69737465206C65766572616E64F87265
      72030000000A00000049644B6C69656E740D0A280000004C65766572616E64F8
      726C69737465206772757070657274200D0A616C666162657469736B20657400
      10001372707450725F50726F64756B7465722E66723312412E204C6973746520
      70726F64756B746572040000000A00000049644B6C69656E740D0A1600000053
      74616E646172642070726F64756B746C697374652E001000117270744B6E5F4B
      7265646974742E66723310452E204B756E6465204B726564697474020000000A
      00000049644B6C69656E740D0A390000004B756E6465726170706F7274206F76
      6572206B756E646572206D6564200D0A696E6E76696C676574206B7265646974
      74206F6720666F726661001000137270744B6E5F4D65726B6E616465722E6672
      3312442E204B756E6465204D65726B6E61646572020000000A00000049644B6C
      69656E740D0A200000004B756E6465726170706F7274206F766572206B756E64
      6572206D6564200D0A6D0010001572707450725F457850726F64756B7465722E
      6672331A422E204C6973746520757467E57474652070726F64756B7465720400
      00000A00000049644B6C69656E740D0A1B00000050726F64756B6C6973746520
      6F76657220757467E57474650D0A700010001372707452735F4B6F6E746F706C
      616E2E66723315432E204B6F6E746F706C616E20686F766564626F6B05000000
      0800000049644B6C69656E742E0000004C69737465206F76657220686F766564
      626F6B736B6F6E746F65720D0A736F7274657274206574746572206B6F6E0010
      00127270744B6E5F41647265737365722E66723316432E204B756E64656C6973
      7465206164726573736572020000000A00000049644B6C69656E740D0A1C0000
      004B756E64656C69737465206D65642066756C6C20616472657373652E001000
      0E72707453615F53616C672E66723313412E2053616C677374616C6C206B756E
      646572010000000D00000049644B6C69656E740D0A5374612600000053616C67
      7374616C6C20666F7264656C742070E5206B756E6465720D0A666F722076616C
      6774001000127270744B6E5F426574616C696E672E66723311462E204B756E64
      6520426574616C696E67020000000800000049644B6C69656E743F0000004B75
      6E6465726170706F727420736F6D20766973657220626574616C696E67732D0D
      0A6EF879616B746967686574656E20666F722073616C67207669612066001000
      1672707453615F46616B747572616C697374652E66723312422E204C69737465
      2066616B747572616572010000000D00000049644B6C69656E740D0A53746138
      0000005374616E646172642066616B747572616C6973746520666F722076616C
      67740D0A706572696F646520736F727465727420657474657220660010001172
      707452735F42696C61674A722E66723311462E2042696C616773206A6F75726E
      616C050000002500000049644B6C69656E740D0A42696C616753746172740D0A
      42696C6167536C7574740D0A5065724F00000053706573696669736572742062
      696C6167736C6973746520666F722076616C677420706572696F646520656C6C
      65720D0A6E756D6D6572736572696520736F7274657274206574746572206269
      6C610010001572707452735F5265736B6F6E74726F4B752E66723312472E2052
      65736B6F6E74726F206B756E6465050000000F00000049644B6C69656E740D0A
      596561720D1A0000005265736B6F6E74726F6C6973746520666F72206B756E64
      65722E0010001672707452735F5265736B6F6E74726F4C65762E66723317482E
      205265736B6F6E74726F206C65766572616E64F872050000000F00000049644B
      6C69656E740D0A596561720D200000005265736B6F6E74726F6C697374652066
      6F72206C65766572616E64F87265722E0010000F72707452735F53616C646F2E
      66723319442E2053616C646F2062616C616E736520686F766564626F6B050000
      001800000049644B6C69656E740D0A506572696F646553746172740D0A280000
      0053616C646F62616C616E736520686F766564626F6B20736F72746572740D0A
      6574746572206B6F6E0010001472707452735F486F766564626F6B4A722E6672
      3314452E20486F766564626F6B73206A6F75726E616C05000000180000004964
      4B6C69656E740D0A506572696F646553746172740D0A35000000506F73746572
      696E67736C6973746520666F722076616C677420706572696F6465200D0A736F
      7274657274206574746572206B6F6E0010001272707452735F526573756C7461
      742E6672330B412E20526573756C746174050000000A00000049644B6C69656E
      740D0A38000000526170706F727420736F6D20766973657220E5727372657375
      6C7461746574206F67200D0A647269667473726573756C74617420666F722000
      10001172707452735F42616C616E73652E6672330A422E2042616C616E736505
      0000000A00000049644B6C69656E740D0A21000000526170706F727420736F6D
      2076697365722062616C616E73656E20666F72200D0A0010001672707452735F
      537065735265734B756E64652E66723318492E20537065732E207265736B6F6E
      74726F206B756E6465050000001800000049644B6C69656E740D0A506572696F
      646553746172740D0A390000005370657369666973657274207265736B6F6E74
      726F2D726170706F727420736F6D200D0A766973657220616C6C652066F87269
      6E67657220700010001272707453615F426574616C696E672E66723315432E20
      46616B7475726120626574616C696E676572010000000D00000049644B6C6965
      6E740D0A53746129000000496E6E626574616C696E676572206D6F7474617474
      20667261206B756E6465720D0A692076616C67740010001472707452735F5370
      65735265734C65762E6672331D4A2E20537065732E207265736B6F6E74726F20
      6C65766572616E64F872050000001800000049644B6C69656E740D0A50657269
      6F646553746172740D0A3F0000005370657369666973657274207265736B6F6E
      74726F2D726170706F727420736F6D200D0A766973657220616C6C652066F872
      696E6765722070E5206C6576650010040D7270745F42696C61672E6672330E42
      696C6167737574736B726966740A0000000A00000049644B6C69656E740D0A00
      10040F7270745F46616B747572612E6672330746616B747572610A0000001400
      000049644B6C69656E740D0A496446616B747572610D001004157270745F4B6F
      6E746F7574736B726966742E6672330D4B6F6E746F7574736B726966740A0000
      003700000049644B6C69656E740D0A4B6F6E746F0D0A5374617274506572696F
      64650D0A536C757474506572696F64650D0A53746172744161720D0A00100411
      7270745F53616C677374616C6C2E6672330C53616C6773726170706F72740A00
      00000D00000049644B6C69656E740D0A5374610010001572707453615F496E6E
      626574616C696E672E66723316442E204B756E646520696E6E626574616C696E
      676572010000000D00000049644B6C69656E740D0A5374613600000052617070
      6F727420736F6D207669736572206C69737465206F766572200D0A696E6E6265
      74616C696E67657220666F722076616C6774001004137270745F4B6F6E74616E
      746E6F74612E6672330B4B6F6E74616E746E6F74610A0000001400000049644B
      6C69656E740D0A496446616B747572610D0010040F7270745F50757272696E67
      2E6672330750757272696E670A0000001400000049644B6C69656E740D0A4964
      46616B747572610D0010040B7270745F4D76612E6672330E4D65727665726469
      6176676966740A0000000F00000049644B6C69656E740D0A4161720D0A001004
      127270745F4B72656469746E6F74612E6672330A4B72656469746E6F74610A00
      00001400000049644B6C69656E740D0A496446616B747572610D0010040B7270
      745F50726F64756B740A50726F64756B7461726B0A0000001200000049644B6C
      69656E740D0A50726F646E720D0A001004127270745F46616B74757261463630
      2E6672331E46616B74757261204636302D31204769726F20666F72207669736E
      696E670A0000001400000049644B6C69656E740D0A496446616B747572610D00
      1004177270745F46616B747572614636305072696E742E6672331F46616B7475
      7261204636302D31204769726F20666F72207574736B726966740A0000001400
      000049644B6C69656E740D0A496446616B747572610D001004127270745F4B76
      6974746572696E672E6672331B4B766974746572696E6720284B6F7274202F20
      4F70706B726176290A0000001400000049644B6C69656E740D0A496446616B74
      7572610D0010001472707453615F4272756B6572537461742E66723314452E20
      4272756B65722073746174697374696B6B010000000D00000049644B6C69656E
      740D0A537461270000004272756B657273746174697374696B6B20666F722074
      6964200D0A696E6E6C6F676765742069200010041472707453615F41626F6E6E
      656D656E742E66723313462E2041626F6E6E656D656E74206C69737465010000
      000800000049644B6C69656E74}
    object cdsRptFile: TStringField
      FieldName = 'File'
      Size = 30
    end
    object cdsRptName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object cdsRptSQL: TMemoField
      FieldName = 'SQL'
      BlobType = ftMemo
    end
    object cdsRptType: TIntegerField
      FieldName = 'Type'
    end
    object cdsRptParam: TMemoField
      DisplayWidth = 1000
      FieldName = 'Param'
      BlobType = ftMemo
    end
    object cdsRptDesc: TMemoField
      DisplayWidth = 1000
      FieldName = 'Desc'
      BlobType = ftMemo
    end
  end
  object frxAdoConn: TfrxADOComponents
    DefaultDatabase = Dm.adoConn
    Left = 136
    Top = 168
  end
  object frxPDFExport: TfrxPDFExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    PrintOptimized = True
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'BLS'
    Subject = 'BLS Business PDF export'
    Creator = 'BLS Business'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 176
    Top = 168
  end
end
