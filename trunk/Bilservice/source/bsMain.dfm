object frmMain: TfrmMain
  Left = 239
  Top = 150
  Caption = 'BLS Bilservice'
  ClientHeight = 531
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object sbMain: TTBXStatusBar
    Left = 0
    Top = 509
    Width = 779
    Panels = <
      item
        Size = 150
        Tag = 0
      end
      item
        StretchPriority = 1
        Tag = 0
      end
      item
        Alignment = taCenter
        Size = 100
        Tag = 0
      end>
    UseSystemFont = False
    ExplicitTop = 599
    ExplicitWidth = 777
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 779
    Height = 59
    Align = alTop
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 777
    object tbxDocToolbar: TTBXDock
      Left = 0
      Top = 25
      Width = 779
      Height = 34
      ExplicitWidth = 777
      object tbtToolbar: TTBXToolbar
        Left = 0
        Top = 0
        Caption = 'tbtToolbar'
        DockMode = dmCannotFloatOrChangeDocks
        Images = ImageList24
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object TBXItem1: TTBXItem
          Action = acNy
        end
        object TBXSeparatorItem10: TTBXSeparatorItem
        end
        object TBXItem7: TTBXItem
          Action = acEndre
        end
        object TBXItem10: TTBXItem
          Action = acSlett
        end
        object TBXItem11: TTBXItem
          Action = acOppdater
        end
        object TBXSeparatorItem8: TTBXSeparatorItem
        end
        object TBXItem27: TTBXItem
          Action = acRapporter
        end
        object TBXSeparatorItem9: TTBXSeparatorItem
        end
        object TBXItem30: TTBXItem
          Action = acSettings
        end
      end
      object tbtTools: TTBXToolbar
        Left = 214
        Top = 0
        Caption = 'tbtTools'
        DockMode = dmCannotFloatOrChangeDocks
        DockPos = 36
        Images = ImageList24
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        object TBXItem9: TTBXItem
          Action = acBrukeradmin
        end
        object TBXItem8: TTBXItem
          Action = acBackup
        end
        object TBXItem4: TTBXItem
          Action = acCalc
        end
      end
    end
    object tbxDockMain: TTBXDock
      Left = 0
      Top = 0
      Width = 779
      Height = 25
      ExplicitWidth = 777
      object TBXToolbar1: TTBXToolbar
        Left = 0
        Top = 0
        Caption = 'TBXToolbar1'
        DockMode = dmCannotFloatOrChangeDocks
        Images = ImageList16
        TabOrder = 0
        object TBXSubmenuItem1: TTBXSubmenuItem
          Caption = 'Fil'
          object TBXItem5: TTBXItem
            Action = acLogin
          end
          object TBXItem2: TTBXItem
            Action = acNy
          end
          object TBXSeparatorItem4: TTBXSeparatorItem
          end
          object TBXItem18: TTBXItem
            Action = acRegKmStand
          end
          object TBXItem6: TTBXItem
            Action = acLogout
          end
          object TBXSeparatorItem1: TTBXSeparatorItem
          end
          object TBXItem3: TTBXItem
            Action = acAvslutt
          end
        end
        object TBXSubmenuItem2: TTBXSubmenuItem
          Caption = 'Rediger'
          object TBXItem13: TTBXItem
            Action = acOppdater
          end
          object TBXSeparatorItem2: TTBXSeparatorItem
          end
          object TBXItem12: TTBXItem
            Action = acEndre
          end
          object TBXItem14: TTBXItem
            Action = acSlett
          end
          object TBXSeparatorItem11: TTBXSeparatorItem
          end
          object TBXItem31: TTBXItem
            Action = acSettings
          end
        end
        object TBXSubmenuItem3: TTBXSubmenuItem
          Caption = 'Vis'
          object TBXItem26: TTBXItem
            Action = acRapporter
          end
        end
        object TBXSubmenuItem4: TTBXSubmenuItem
          Caption = 'Verkt'#248'y'
          object TBXItem17: TTBXItem
            Action = acCalc
          end
          object TBXItem15: TTBXItem
            Action = acBrukeradmin
          end
          object TBXSeparatorItem3: TTBXSeparatorItem
          end
          object TBXItem16: TTBXItem
            Action = acBackup
          end
        end
        object TBXSubmenuItem5: TTBXSubmenuItem
          Caption = 'Hjelp'
          object TBXItem28: TTBXItem
            Action = acSupport
          end
          object TBXItem29: TTBXItem
            Action = avWeb
          end
        end
      end
    end
  end
  object pnlBack: TPanel
    Left = 0
    Top = 59
    Width = 779
    Height = 450
    Align = alClient
    BevelOuter = bvLowered
    Color = clAppWorkSpace
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 777
    ExplicitHeight = 540
    DesignSize = (
      779
      450)
    object Label5: TLabel
      Left = 548
      Top = 410
      Width = 144
      Height = 14
      Anchors = [akRight, akBottom]
      Caption = 'Copyright BLS '#169' 1996-2008'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      ExplicitLeft = 546
      ExplicitTop = 502
    end
    object Label3: TLabel
      Left = 432
      Top = 380
      Width = 261
      Height = 32
      Anchors = [akRight, akBottom]
      Caption = 'BLS Bilservice 2008'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
      ExplicitLeft = 430
      ExplicitTop = 472
    end
    object Label2: TLabel
      Left = 433
      Top = 379
      Width = 261
      Height = 32
      Anchors = [akRight, akBottom]
      Caption = 'BLS Bilservice 2008'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
      ExplicitLeft = 431
      ExplicitTop = 471
    end
    object Label4: TLabel
      Left = 549
      Top = 409
      Width = 144
      Height = 14
      Anchors = [akRight, akBottom]
      Caption = 'Copyright BLS '#169' 1996-2008'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      ExplicitLeft = 547
      ExplicitTop = 501
    end
    object Image1: TImage
      Left = 707
      Top = 378
      Width = 48
      Height = 48
      Anchors = [akRight, akBottom]
      AutoSize = True
      ExplicitLeft = 705
      ExplicitTop = 470
    end
  end
  object pnlMain: TPanel
    Left = 0
    Top = 59
    Width = 779
    Height = 450
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 3
    Visible = False
    ExplicitWidth = 777
    ExplicitHeight = 540
    object pcFunc: TPageControl
      Left = 5
      Top = 5
      Width = 769
      Height = 440
      ActivePage = tsService
      Align = alClient
      TabOrder = 0
      OnChange = pcFuncChange
      ExplicitWidth = 767
      ExplicitHeight = 530
      object tsService: TTabSheet
        Caption = 'Registreringer'
        ExplicitWidth = 759
        ExplicitHeight = 502
        object blsBorderPanel8: TblsBorderPanel
          Left = 0
          Top = 0
          Width = 761
          Height = 412
          Align = alClient
          BorderWidth = 5
          Caption = 'blsBorderPanel8'
          TabOrder = 0
          ExplicitWidth = 759
          ExplicitHeight = 502
          object Splites10: TSplites
            Left = 236
            Top = 6
            Width = 5
            Height = 400
            ExplicitHeight = 530
          end
          object Panel10: TPanel
            Left = 6
            Top = 6
            Width = 230
            Height = 400
            Align = alLeft
            BevelOuter = bvLowered
            TabOrder = 0
            ExplicitHeight = 490
            DesignSize = (
              230
              400)
            object Bevel2: TBevel
              Left = 11
              Top = 28
              Width = 207
              Height = 9
              Anchors = [akLeft, akTop, akRight]
              Shape = bsTopLine
            end
            object Label12: TLabel
              Left = 12
              Top = 10
              Width = 122
              Height = 13
              Caption = 'Kostnadsregistrering:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblAar: TLabel
              Left = 19
              Top = 44
              Width = 45
              Height = 13
              Caption = 'Aktivt '#229'r:'
            end
            object btnAar: TSpeedButton
              Left = 188
              Top = 40
              Width = 23
              Height = 22
              Hint = 'G'#229' til innev'#230'rende '#229'r'
              Flat = True
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000E30E0000E30E0000000100000001000010630000006B
                0000086B00000073000008730000007B0000107B000000840000088400001084
                0000008C0000088C00000094000008940000009C0000089C000000A5000008A5
                000000AD000000B5000000BD000000C6000008C6000000CE000000D6000008D6
                000008630800087B0800107B080010840800008C0800088C0800009408001094
                0800009C080000A5080000AD080000B5080010BD080010C60800087B1000107B
                1000187B10001084100018841000088C1000188C1000109410001894100010D6
                100018D61000107B1800187B18001884180029841800108C1800188C1800218C
                18001094180018941800189C1800219C180010C6180018C6180018D61800187B
                210018842100189421002194210029A521001873290029AD290031DE290029E7
                290029843100298C3100398C310029D6310031D6310039AD390042A5420039DE
                420042DE42004AAD520052AD520052E752005AE75A0063AD630063E763006BEF
                63006B946B0073B56B006BDE6B0063E76B006BE76B0063EF6B007BB5730073B5
                7B007BDE7B007BB5840084BD84008CC69400A5E7A500CEEFBD00BDEFC600C6EF
                C600C6EFCE00CEEFCE00D6F7CE00D6E7D600DEE7D600D6EFD600DEEFD600CEE7
                DE00D6EFDE00DEEFDE00DEEFE700EFF7EF00F7F7F700FF00FF00FFFFFF00FFFF
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
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00777777777777
                774F2F777777777777777777777777774F39127777777777777777777777774F
                353D0E77777777777777777777774F2D080B0E777777777777777777774F2957
                440A1F13253F52555C1277774F345739071E0A10131416405822774F34574105
                071E0E121314151758214F41574B0507071E0C12131416175D104F46574C0305
                071E2012131416175E0F774F4157361B070C0C1013141617580E77774F335737
                070A0D241314164059207777774F2957430C0C12253F52566212777777774F2D
                080A0E7777777777777777777777774F383B2177777777777777777777777777
                4F3B0E77777777777777777777777777774F4477777777777777}
              ParentShowHint = False
              ShowHint = True
              OnClick = btnAarClick
            end
            object cbAar: TComboBox
              Left = 76
              Top = 40
              Width = 97
              Height = 21
              Style = csDropDownList
              TabOrder = 0
              OnChange = cbAarChange
            end
            object tvKat: TTreeView
              Left = 13
              Top = 72
              Width = 206
              Height = 317
              Anchors = [akLeft, akTop, akRight]
              HideSelection = False
              HotTrack = True
              Indent = 15
              ReadOnly = True
              TabOrder = 1
              OnChange = tvKatChange
              OnEditing = tvKatEditing
              Items.NodeData = {
                0301000000380000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000
                0000000000010D41006C006C00650020006B006A00F800720065007400F80079
                00}
            end
          end
          object dgbTilbud: TJvDBGrid
            Left = 241
            Top = 6
            Width = 514
            Height = 400
            Align = alClient
            DataSource = dmData.dsService
            Options = [dgTitles, dgColumnResize, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = popService
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = acEndreExecute
            TitleButtons = True
            OnTitleBtnClick = dbgBilTitleBtnClick
            OnTitleBtnDblClick = dbgBilTitleBtnDblClick
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
                Expanded = False
                FieldName = 'DATO'
                Title.Caption = ' Dato'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BESKRIVELSE'
                Title.Caption = 'Beskrivelse'
                Width = 140
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRIS'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Caption = 'Pris'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SERVICETYPE'
                Title.Caption = 'Kategori'
                Width = 126
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'REGNR'
                Title.Caption = 'Regnr'
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MERKE'
                Title.Caption = 'Merke'
                Width = 142
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'KMSTAND'
                Title.Caption = 'Kilometerstand'
                Width = 78
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BRUKER'
                Title.Caption = 'Bruker'
                Width = 60
                Visible = True
              end>
          end
        end
      end
      object tsBil: TTabSheet
        Caption = 'Kj'#248'ret'#248'ysregister'
        ImageIndex = 1
        ExplicitHeight = 378
        object blsBorderPanel1: TblsBorderPanel
          Left = 0
          Top = 0
          Width = 761
          Height = 412
          Align = alClient
          BorderWidth = 5
          Caption = 'blsBorderPanel8'
          TabOrder = 0
          ExplicitHeight = 378
          object Splites1: TSplites
            Left = 206
            Top = 6
            Width = 5
            Height = 400
            ExplicitHeight = 530
          end
          object Panel2: TPanel
            Left = 6
            Top = 6
            Width = 200
            Height = 400
            Align = alLeft
            BevelOuter = bvLowered
            TabOrder = 0
            ExplicitHeight = 366
            DesignSize = (
              200
              400)
            object Label1: TLabel
              Left = 12
              Top = 10
              Width = 126
              Height = 13
              Caption = 'Kj'#248'ret'#248'ysinformasjon:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Bevel1: TBevel
              Left = 11
              Top = 28
              Width = 177
              Height = 9
              Anchors = [akLeft, akTop, akRight]
              Shape = bsTopLine
            end
            object DBText1: TDBText
              Left = 52
              Top = 40
              Width = 145
              Height = 17
              DataField = 'REGNR'
              DataSource = dmData.dsBil
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 12
              Top = 40
              Width = 33
              Height = 13
              Caption = 'Regnr:'
            end
            object Label7: TLabel
              Left = 12
              Top = 56
              Width = 33
              Height = 13
              Caption = 'Merke:'
            end
            object DBText2: TDBText
              Left = 52
              Top = 56
              Width = 145
              Height = 17
              DataField = 'MERKE'
              DataSource = dmData.dsBil
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 12
              Top = 84
              Width = 34
              Height = 13
              Caption = 'Modell:'
            end
            object DBText3: TDBText
              Left = 64
              Top = 84
              Width = 129
              Height = 17
              DataField = 'AARGANG'
              DataSource = dmData.dsBil
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 12
              Top = 100
              Width = 40
              Height = 13
              Caption = 'Kg. last:'
            end
            object DBText4: TDBText
              Left = 64
              Top = 100
              Width = 128
              Height = 17
              DataField = 'LASTEEVNE'
              DataSource = dmData.dsBil
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 12
              Top = 116
              Width = 28
              Height = 13
              Caption = 'Type:'
            end
            object DBText5: TDBText
              Left = 64
              Top = 116
              Width = 128
              Height = 17
              DataField = 'BILTYPE'
              DataSource = dmData.dsBil
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 12
              Top = 132
              Width = 39
              Height = 13
              Caption = 'Ramme:'
            end
            object DBText6: TDBText
              Left = 64
              Top = 132
              Width = 129
              Height = 17
              DataField = 'RAMMENR'
              DataSource = dmData.dsBil
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
          end
          object dbgBil: TJvDBGrid
            Left = 211
            Top = 6
            Width = 544
            Height = 400
            Align = alClient
            DataSource = dmData.dsBil
            Options = [dgTitles, dgColumnResize, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = popBil
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbgBilDrawColumnCell
            OnDblClick = acEndreExecute
            TitleButtons = True
            OnTitleBtnClick = dbgBilTitleBtnClick
            OnTitleBtnDblClick = dbgBilTitleBtnDblClick
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
                Alignment = taCenter
                Expanded = False
                FieldName = 'REGNR'
                Title.Caption = ' Regnr.'
                Width = 69
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MERKE'
                Title.Caption = 'Merke'
                Width = 159
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BILTYPE'
                Title.Caption = 'Biltype'
                Width = 132
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AARGANG'
                Title.Caption = #197'rsmodell'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LASTEEVNE'
                Title.Caption = 'Lasteevne'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RAMMENR'
                Title.Caption = 'Rammenr.'
                Width = 7
                Visible = True
              end>
          end
        end
      end
    end
  end
  object ActionList: TActionList
    Images = ImageList24
    Left = 668
    Top = 8
    object acLogin: TAction
      Category = 'Fil'
      Caption = 'Logg inn'
      OnExecute = acLoginExecute
    end
    object acNy: TAction
      Category = 'Fil'
      Caption = 'Ny ...'
      Enabled = False
      Hint = 'Registrer ny ...'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = acNyExecute
    end
    object acAvslutt: TAction
      Category = 'Fil'
      Caption = 'Avslutt'
      ShortCut = 32883
      OnExecute = acAvsluttExecute
    end
    object acCalc: TAction
      Category = 'Vekt'#248'y'
      Caption = 'Kalkulator'
      Hint = 'Kalkulator'
      ImageIndex = 5
      OnExecute = acCalcExecute
    end
    object acLogout: TAction
      Category = 'Fil'
      Caption = 'Logg ut'
      Visible = False
      OnExecute = acLogoutExecute
    end
    object acEndre: TAction
      Category = 'Rediger'
      Caption = 'Endre ...'
      Enabled = False
      Hint = 'Endre merket registrering'
      ImageIndex = 1
      OnExecute = acEndreExecute
    end
    object acBackup: TAction
      Category = 'Vekt'#248'y'
      Caption = 'Sikkerhetskopiering'
      Hint = 'Sikkerhetskopiering av dataene'
      ImageIndex = 6
      OnExecute = acBackupExecute
    end
    object acBrukeradmin: TAction
      Category = 'Vekt'#248'y'
      Caption = 'Bruker administrasjon'
      Hint = 'Administrere brukere og tilganger'
      ImageIndex = 7
      OnExecute = acBrukeradminExecute
    end
    object acSlett: TAction
      Category = 'Rediger'
      Caption = 'Slett ...'
      Enabled = False
      Hint = 'Slett merket registrering'
      ImageIndex = 2
      ShortCut = 16430
      OnExecute = acSlettExecute
    end
    object acOppdater: TAction
      Category = 'Rediger'
      Caption = 'Oppdater'
      Enabled = False
      Hint = 'Oppdater'
      ImageIndex = 3
      ShortCut = 116
      SecondaryShortCuts.Strings = (
        'Ctrl+R')
      OnExecute = acOppdaterExecute
    end
    object acRegKmStand: TAction
      Category = 'Fil'
      Caption = 'Registrer km. stand'
      Hint = 'Registrering av ny kilometerstand'
      OnExecute = acRegKmStandExecute
    end
    object acRapporter: TAction
      Category = 'Vis'
      Caption = 'Rapporter'
      Enabled = False
      Hint = 'Vis rapporter'
      ImageIndex = 8
      OnExecute = acRapporterExecute
    end
    object acSupport: TAction
      Category = 'Hjelp'
      Caption = 'Send support e-post'
      OnExecute = acSupportExecute
    end
    object avWeb: TAction
      Category = 'Hjelp'
      Caption = 'BLS Hjemmeside'
      OnExecute = avWebExecute
    end
    object acSettings: TAction
      Category = 'Rediger'
      Caption = 'Innstillinger'
      Enabled = False
      Hint = 'Innstillnge'
      ImageIndex = 13
      OnExecute = acSettingsExecute
    end
  end
  object XPManifest: TXPManifest
    Left = 724
    Top = 8
  end
  object blsAppPosition: TblsAppPosition
    Enabled = True
    Left = 696
    Top = 8
  end
  object AppEvent: TApplicationEvents
    OnActivate = AppEventActivate
    Left = 640
    Top = 8
  end
  object stVer: TStVersionInfo
    Left = 612
    Top = 8
  end
  object ImageList16: TImageList
    Left = 696
    Top = 36
    Bitmap = {
      494C01010E001300080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      00000000000000000000000000000000000000000000636E7B0000000000C2A6
      A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6
      A400C2A6A400C2A6A400C2A6A400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005E98C7003489D0007F859D00C2A6
      A400FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFC
      FB00FEFCFB00FEFCFB00C2A6A40000000000A0726E00A0726E00A0726E00A072
      6E00A0726E00A0726E00A0726E00A0726E00A0726E00A0726E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004BB6FF00288BE0008584
      9800FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFC
      FB00FEFCFB00FEFCFB00C2A6A40000000000A0726E00EDDFD100E8D9C900E8D9
      C900E8D6C500E8D6C500E8D6C500E8D6C500E8D9C900A0726E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004DB5FF00278B
      DE0079819A00FEFBF700FEFBF700FEFBF700FEFBF700FEFBF700FEFBF700FEFB
      F700FEFBF700FEFBF700C2A6A40000000000BF8A8500FAF2E500F5ECE000F3EA
      DD00F3EADD00F1E5D400F1E5D400F1E5D400F8EDD900A0726E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004CB9
      FF005A91BF00E0CCC800C4A39F00B0878300C4A39F00E0CCC800FEF9F400FEF9
      F400FEF9F400FEF9F400C2A6A40000000000C48F8700F9F3EA00F9DFC300F9D7
      B500F9D7B500F9D7B500F9D7B500F6DABC00F3EADD00A0726E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2A6
      A400D1B7B200B8908A00D3B5A800EFDBC300D2B1A000B78E8600E0CBC500FEF7
      F000FEF7F000FEF7F000C2A6A40000000000CA958800F9F3EA00F8EDD900F8E4
      D000F7E3CE00F7E3CE00F9DFC300F9DFC300F3EADD00A0726E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2A6
      A400C4A29D00D4B9B100F9EADA00F8E7D200FFFFF700D2B0A000C4A29D00FEF5
      EC00FEF5EC00FEF5EC00C2A6A40000000000D19D8900FCF9F500F9DFC300F6D5
      B300F9D7B500F9D7B500F2D0AD00DEC7AC00DCD5C700A0726E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2A6
      A400B0868200F5EAE300F9EFE300F8EADA00FFFFF000F0DAC400B0868200FEF3
      E900FEF3E900FEF3E900C2A6A40000000000D6A38B00FCF9F500EDDFD100D3C6
      BA00DCD5C700E8D6C500CFC0B100A79C9100A7A29800967A7300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2A6
      A400C4A19B00D6BFBA00FBF3EB00FAEFE200FFFFDE00D3B5A800C4A19B00FFF1
      E500FFF1E500FFF1E500C2A6A40000000000DCA98C00FCFCFB009FA6B700AF96
      7F00AF967F00BEA38900557299005B7CA4006061760077625D00000000000000
      0000000000005B56560046424200464242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2A6
      A400E0C7BC00B8928F00D6BFBA00F5EAE200D4B9B100B8908A00CBB2A800DDCF
      C200DDCFC200DDCFC200C2A6A40000000000E0AE8D00FCFCFB00557299005572
      99009A989700557299007CC4E7005572990042558300514C6200000000008F8F
      9000545454005B5656003B3A3C005B5656000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2A6
      A400FFEEDE00E0C5BA00C4A09900B0868200C4A09900E0C5BA00C5B5A900C3B4
      A800C2B3A700C1B2A600C2A6A40000000000E3B18E00FCFCFB0055729900CBEF
      F600557299007CC4E700557299007CC4E700557299003E598C00374D84008F8F
      900091959B005B565600524D4E005B5656000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2A6
      A400FFECDA00FFECDA00FFECDA00FFECDA00FFECDA00FFECDA00B0A29600B0A2
      9600B0A29600B0A29600C2A6A40000000000EDBD9200FCFCFB00FCFCFB005572
      9900CBEFF600557299007CC4E700557299007CC4E7005EADEA004D99E4008F8F
      9000F1F1F1005B56560068646300635E5E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2A6
      A400FFEAD700FFEAD700FFEAD700FFEAD700FFEAD700C9B9AC00FBF8F400FBF8
      F400E6DAD900C2A6A4000000000000000000EDBD9200F9F3EA00F9F3EA00F9F3
      EA0055729900A5E9F400557299007CC4E7006EBEEF005EADEA004D99E4008F8F
      9000F1F1F1005B56560075727200757272000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2A6
      A400FFE8D300FFE8D300FFE8D300FFE8D300FFE8D300C9B9AC00FBF8F400DFCE
      C700C2A6A400000000000000000000000000EDBD9200E0B39800E0B39800E0B3
      9800DCB198005572990097C2D900C4EBF6006EC0F1005EADEA003B5D9B008F8F
      9000F1F1F1005B5656008C8C8C008C8C8C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2A6
      A400FFE6D000FFE6D000FFE6D000FFE6D000FFE6D000C9B9AC00DFCEC700C2A6
      A400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006A96C0005A8DC700556DA400000000008F8F
      90008F8F90005B5656008C8C8C007A7979000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2A6
      A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005B5656005B5656005B5656000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400000000000000000000000000000000000000
      00000000000005720A0005720A0005720A0005720A0005720A0005720A000572
      0A0005720A0005720A0005720A0005720A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A667C00BE9596000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6A59C00FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00B584840000000000AA7F7A00B8838400B8838400B883
      8400B883840005720A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0005720A000000000000000000000000000000
      000000000000E7C6B500E7C6B500E7C6B500E7C6B500E7C6B500E7C6B500E7C6
      B500000000000000000000000000000000006B9CC3001E89E8004B7AA300C896
      9300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6A59C00FFFF
      FF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00B584840000000000AD827B00FCEBCE00F7DFBF00F4DA
      B300F3D6AB0005720A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00006600000066
      0000FFFFFF00FFFFFF00FFFFFF0005720A000000000000000000000000000000
      000042182100E7C6B500F7F7F700FFEFDE00F7DEC600F7DEC600FFFFFF00E7C6
      B500421821000000000000000000000000004BB4FE0051B5FF002089E9004B7A
      A200C69592000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6ADA500FFFF
      FF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600FFF7EF00B584840000000000B1857C00FDEDD500F5DFC500F4DB
      BB00F2D7B20005720A00FFFFFF00FFFFFF00FFFFFF000066000033AF500053E0
      810000660000FFFFFF00FFFFFF0005720A000000000000000000000000005252
      520042182100E7C6B500F7F7F700FFD6A500FECC9A00FECC9A00FFFFFF00E7C6
      B500421821005252520000000000000000000000000051B7FE0051B3FF001D87
      E6004E7AA000CA97920000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6ADA500FFFF
      FF00F7D6A500F7D6A500F7D6A500F7D6A500F7D6A500F7D6A500F7D6A500F7D6
      A500F7D6A500FFF7EF00B584840000000000B6897E00FEF2DE00F7E5CE00F5E0
      C500F4DCBC0005720A00FFFFFF00FFFFFF0000660000168B23003DBE5F003AC9
      5B00199D290000660000FFFFFF0005720A00000000006B6B6B004A4A4A004A4A
      4A004A4A4A00E7C6B500F7F7F700FFEFDE00F7DEC600F7DEC600F7F7F700E7C6
      B5004A4A4A004A4A4A004218210000000000000000000000000051B7FE004EB2
      FF001F89E6004E7BA200B9949700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CEB5AD00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7EF00FFF7EF00B584840000000000BA8D8000FFF7E800F8E8D600F6E4
      CD00F5E0C40005720A00FFFFFF00FFFFFF00006600000066000024902E0019A3
      2B000066000000660000FFFFFF0005720A007B7B7B004A4A4A005A5252005252
      52004A4A4A009C9C9C00ADADAD00ADB5B500B5B5B500B5B5B500A5A5A5009494
      9C004A4A4A0052525A004A5252004A4A4A0000000000000000000000000052B8
      FE004BB1FF002787D9005F6A760000000000B0857F00C09F9400C09F9600BC98
      8E00000000000000000000000000000000000000000000000000D6B5AD00FFFF
      FF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600FFF7EF00B584840000000000BF918300FFFCF200F9EDDF00F7E8
      D600F6E4CD0005720A00FFFFFF00FFFFFF00FFFFFF00FFFFFF002B9733000066
      0000FFFFFF00FFFFFF00FFFFFF0005720A0052525200847B8400949C9C008C9C
      9C008C9C9400949C9C00949494008C8C8C007B847B0084948C008C949400949C
      9C008C849C00B5B5B5008CFF7B00421821000000000000000000000000000000
      000055BDFF00B5D6ED00BF9D9200BB9B8C00E7DAC200FFFFE300FFFFE500FDFA
      DA00D8C3B300B58D850000000000000000000000000000000000D6BDB500FFFF
      FF00F7D6A500F7D6A500F7D6A500F7D6A500F7D6A500F7D6A500F7D6A500F7D6
      A500F7D6A500FFF7EF00B584840000000000C4968500FFFFFC00FAF1E800F9EC
      DE00F8E8D50005720A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00077D0E000066
      0000F3F8F400FFFFFF00FFFFFF0005720A00525252009C9C9C00BDBDBD00ADAD
      AD00948C8C00846B7300846B6B0084636B00845A6B007B636B008C6B6B008C63
      7300A57BA5008C4A5A00B5B5B500421821000000000000000000000000000000
      00000000000000000000CEA79500FDEEBE00FFFFD800FFFFDA00FFFFDB00FFFF
      E600FFFFFB00EADDDC00AE837F00000000000000000000000000D6BDB500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700B584840000000000C99B8700FFFFFF00FDF7F200FBF1
      E800FAEEDF0005720A00FFFFFF00FFFFFF00006600000066000000660000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0005720A0063636300ADADAD00D6DEDE008C6B
      73009C6B7300A57B7B00BD8C8C00C68C9400BD8C9400BD8C9400C68C8C00A573
      7B00A56B7B008C4A5A00BDD6BD00525252000000000000000000000000000000
      00000000000000000000C1A09100FBDCA800FEF7D000FFFFDB00FFFFE300FFFF
      F800FFFFFD00FFFFFD00C6A99C00000000000000000000000000DEBDB500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7
      F700FFF7F700FFF7F700B584840000000000CD9E8A00FFFFFF00FFFCFB00FEF7
      F100FBF2E70005720A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0005720A008C8C8C00B5B5B500CECECE007B4A
      5200844A52004A4A4A0042182100421821004218210042182100421821004A4A
      4A00844A52008C4A5A00C6C6CE00525252000000000000000000000000000000
      000000000000C1A09100FEE3AC00F1C49100FCF2CA00FFFFDD00FFFFE400FFFF
      F700FFFFF700FFFFE900EEE5CB00B9948C000000000000000000DEC6B50029AD
      D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD6002183
      A7002183A700C6BDAD00B584840000000000D1A38B00FFFFFF00FFFFFF00FFFD
      FB00FDF7F10005720A0005720A0005720A0005720A0005720A0005720A000572
      0A0005720A0005720A0005720A0005720A008C8C8C00B5B5B500CECECE004218
      21004A4A4A00A5A5A500DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00A5A5
      A500393939004A212100CECECE00636363000000000000000000000000000000
      000000000000C2A19100FFE6AE00EEB58100F7DCAE00FEFDD800FFFFDF00FFFF
      E300FFFFE400FFFFE000F3ECD200BB968E000000000000000000E7C6B50029AD
      D6008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF0041EFFF00C6A5
      9400B5948C00B58C8400B584840000000000D6A78D00FFFFFF00FFFFFF00FFFF
      FF00FFFDFB00FDF7F100FBF1E600FAEDDE00FDF0DD00EADDCA00C7BFB000B883
      84000000000000000000000000000000000000000000A5A5A500ADB5B5009C94
      940084737300E7C6B500FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700B584
      84007B636B009C8C8C00ADB5B500000000000000000000000000000000000000
      000000000000BC978C00FBE7B700F4C79100F2C99400F8E5B900FEFCD800FFFF
      DD00FFFFDC00FFFFE000E2D2BA00B68E86000000000000000000E7C6B50029AD
      D6008CF7FF00E88E6000E88E6000E88E6000E4753E00E1622300B04A1800BD8C
      7300EFB57300EFA54A00C6846B0000000000D9AA8F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFDFB00FDF8F000FBF3E700B8838400B8838400B8838400B883
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000E7C6B500FFFFFF00FFFFFF00F7F7F700C6A59400C6A59400C6A5
      9400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D9C3A900FFFEE500F7DCB800F2C99400F5D4A500FAE8
      BD00FDF4C900FDFBD600B6908900000000000000000000000000EFCEBD0029AD
      D6008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF0041EFFF00C694
      7B00FFC67300CE9473000000000000000000DDAC9100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFD00F7F0EC00B8838400E9B67600F3AE5200CA8A
      6A00000000000000000000000000000000000000000000000000000000000000
      000000000000E7C6B500F7FFFF00FFFFFF00F7F7F700C6A59400FFFFFF00C6A5
      9400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B58D8500E8DEDD00FFFEF200F9D8A300F4C48C00F9D4
      9F00FDEAB800D0B49F00B8908600000000000000000000000000E7C6B50029AD
      D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD6007FC7E900C694
      7B00CE9C8400000000000000000000000000DFAF9200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FAFAFE00B8838400EBB87A00D09877000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7C6B500F7F7F700F7F7F700F7F7F700C6A59400C6A594000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD827F00C9AA9E00EFE0B700EFDFB200E7CE
      AC00B8908600B890860000000000000000000000000000000000E7C6B500EFCE
      B500EFCEB500EFCEB500EFCEB500E7C6B500E7C6B500EFCEB500D6BDB500BD84
      7B0000000000000000000000000000000000DBA68500DBA68500DBA68500DBA6
      8500DBA68500DBA68500DBA68500DBA68500B8838400CA978400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7C6B500E7C6B500E7C6B500E7C6B500C6A59400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BA968A00BB988C00B791
      8800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFBFBF00BABABA00B2B2B200ADADAD00ADADAD00AEAEAE00B2B2B200B8B8
      B800BCBCBC00BFBFBF0000000000000000000000000000000000000000000000
      000000000000BEBEBE00B7B7B700B0B0B000ADADAD00AEAEAE00B2B2B200B8B8
      B800BCBCBC00BFBFBF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007C79BD004B58
      D3007384C2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BCBC
      BC00B2B2B2009E9E9E00888888007C7C7C007C7C7C0080808000888888009494
      9400A1A1A100ADADAD00B7B7B700BEBEBE00000000000000000000000000BFBF
      BF00B9B9B900AAAAAA0095959500848484007F7F7F0080808000888888009393
      9300A1A1A100ACACAC00B6B6B600BDBDBD000000000000000000000000000000
      0000000000000000000000000000CAC3B6008C7E98002A2ADD001612E8001937
      EB002583F2003B7DDA00A5A8C2000000000000000000AE602A00AE602A00AE60
      2A00AE602A00AE602A00AE602A00AE602A00AE602A00AE602A00AE602A00AE60
      2A00AE602A00AE602A00AE602A000000000000000000BEBEBE00B8B8B800A7A7
      A700918C8C009B868600A594940091898B00A39696009B8A88007D7372006A67
      67006D6D6D00808080009D9D9D00B6B6B6000000000000000000BCBCBC00B2B2
      B2009C9C9C0091848400A18D8D009D929400A39696009B8A88007D7272006A67
      67006D6D6D007D7D7D0097979700B3B3B3000000000000000000000000000000
      000000000000B4B2AE00B08F6C00BB7F2F007F5379001015FD00211ADF00233F
      E3002E91F70033A3F8008695C50000000000DAA03900FFD19500EAB77700E4AE
      6700FFBD6000F1AE4F00DC9C3E00FCAA3200FFA92200FB9F1400FB9A0500FB98
      0000FB980100FC990000FF9F0000AE602A00BCBCBC00B0B0B000989898009383
      8300BCA0A000DEC8C800B0A09F00205C7200277E9D005996AC0094A6B000C4B5
      B500AC9A99007D74740083838300AFAFAF00BFBFBF00B8B8B800A7A7A700918B
      8B00A2898900D0B3B300D9C5C400485E6800247693005D99B00091A5AF00BFB2
      B200AD9B99008375740079797900AAAAAA00000000000000000000000000A2AF
      9D0058893F007A7F1E00C57E2E00CE852600815576001618EB002418D1002337
      DF002E8BF60036A5F6008896C50000000000E7AC1D00EEC09300584E4400534A
      4100D39D5B00866A4600433E3900BA833800D5902F005043300054452F005243
      300055442B00624A2800F6970200AE602A00B3B3B300978E8E00AA909000D8C3
      C300E6DCDC00F1EEEE00DBC8C800AF9EA1008095A10048869F002F5B6D007876
      7900456E7C00998F8F0080808000AEAEAE00B9B9B900A1A1A10096858500C0A5
      A500DECECE00EBE5E500E9DFDF00B3A0A1007A93A100437C9300186C8B005965
      6B005F778100898F950070707000A6A6A60000000000B0B8AC00619040003F88
      03003D9700007F891700C77F3400C77E23007F506D001015E8001934E5001F58
      F3001D61F700246DEA008D98C60000000000E7AC1D00FFD0A000CAA27600C097
      6800FBBD6D00D69F5800B9884700EDA54000E9A14200AF7F5600C5853800E08D
      1200B6793700B97B3700FE9D0200AE602A00B29F9F00CAB0B000E2D5D500EEE9
      E900F3F0F000E7DCDD00CFB1B000D3B4B300DDC0C000D3B0B000CCB1B100BCA8
      AA007A7A7F00998A8B008E8E8E00B3B3B300B2AAAA00B3999900D9C4C400E7DD
      DD00F0EDED00F0ECED00DAC6C600D1AFAE00DBBAB900D3B1B000C0A9AB00B6A1
      A2007C7F8500767D830080808000ADADAD00000000008D9F8000459401004798
      0000419501007D861800C2792E00BB701D00B2744A008583CF004E71EB002961
      EC00436CE0007F87CE000000000000000000E7AC1D00EDC2990060554C005C51
      4700D2A268008B704F004F463C00B5843F00977D92002E42DE006D64A100CA8A
      48003047D3003649CC00EB931700AE602A00CDB6B600E8DFDF00F2EFEF00F0EA
      EA00E1D3D400D3B7B400E8C8BC00EDB59D00D2866F00C8918500CCA9A400D0AF
      AE00C9A9AB008D7E7E0092929200B5B5B500BCA4A400DECFCF00EFECED00F3F2
      F300EDE8E800DBC7C800DFC1BA00ECC0AF00E5B4A300D9ADA200D2ACA600D7B8
      B600DAB8B600BA9D9B0098989800B7B7B7000000000090A283004A9509004694
      0100409300007B841600BD712700B1631800C6853E00FFEDB200F4E4C9009F93
      A60000000000000000000000000000000000E7AC1D00FED1A200BC9B7800B391
      6C00FDC47F00D3A16500A17B4D00EFAA4D00E9A6570088739400C78D5500FEA3
      17009C746900A1745F00FE9D0100AE602A00E0D7D700F6F7F700E9DFDF00CEB8
      B700C1BDBC00C5CDCA00C7CDCA00D0A29100DE6A4400CC816700CFB0A500CBBA
      B600A17367006A58530081818100AEAEAE00C6B4B400F4F6F600EBE2E000DAC1
      BE00CCABA900CFB3B200E6D2CF00F2D5CB00FFCFB500FFCFAF00F8C7AB00D9B8
      AF00988286007B767600A0A0A000BABABA000000000090A283004A9309004591
      01003F8F00007A801400B86A2100AB5B1000C07F3B00FBE5B600FFF8C900C6B9
      9A0000000000000000000000000000000000E7AC1D00E9BF970063584D005A51
      4900CDA574008A71550047413C00B38649009D839700263EE3006E66A500CE90
      4B003148D2003448CC00E3911E00AE602A00C1B4B400CCB7B700DECBCB00D1D5
      D400B7C9C600838D8B00C9E1DF00D4C8BD00E5866300C8836A00D6BFB800DFDB
      D800D36C4A00AD44260076767600AAAAAA00C1B5B700D0A29400C2522700CD69
      3D00D6855B00D1825D00C57A5F00C9A49F009CA5CF00728ACC005E80CC004663
      BC002B3B8A00606370009C9C9C00BABABA000000000090A2820048910800438F
      00003D8D0000797D1300B2601700A6530900BE7C3800FAE2B300FFF5C800BEB1
      990000000000000000000000000000000000E7AC1D00FFD4A500FCC79400F5C1
      9000FFCF9200FEC07D00EFB06A00FFBD6100FFB74F00E3A45B00FCAB3C00FFAC
      2400EE9B2C00F2981B00FF9F0000AE602A0000000000BFBEBE00B0AAAA008E8B
      8A008C878600B2C0BD00D6EBE900D8CCC100E89D7E00BBCDC900B7CCC700B7B9
      B200C4725900B24E310076767600AAAAAA0000000000B8897800CA4F2000E082
      5300EEA57400DF936700DC6D3800A44636001240C5002464D800267EF0001C63
      E400113AC6005C628200A7A7A700BDBDBD000000000090A28200488D0800428B
      00003D890000757B1100BA682200C77E3800D79B5100DBA35A00D4B07A00C0B4
      A20000000000000000000000000000000000E7AC1D00F5CAA000E1DEC000E2E0
      C100DEDBBC00E1DCB900E3DAB100DED5A800E6D39F00FFBF5D00FCAB3C00F3A3
      3300F69F2000F89D1300FF9F0400AE602A00BFBFBF00B6B6B600696969005C33
      3700C2B0B000C9D3D100CBD6D600D5C8BE00EEB19200C6E1E100BEF5FA00AEF0
      F600A5E7EC00A467520076767600AAAAAA0000000000BBAEA900C05A3100E37B
      4800DF9C7100E8B99B00E16D3500864043000F3DC600A5A3BE00688DCB00195D
      E30026419D008E8F9300B6B6B60000000000000000008FA18200468B07004187
      00003D82000065951F00B3BB5C00C0B75B00B79E5800C6AF9600C2B7AC000000
      000000000000000000000000000000000000E7AC1D00D4AF8C006BD3CA006CD7
      CE006CD7CE006CD7CF006CD7CF0066D7D1008DE0D900FCC57B00CA8D3D00B581
      3900AD7A3100C1822500FFA20B00AE602A00B8B8B800919297002F2018009464
      6800C6D1CF00AFB1B000A9ABAC00D6C8BF00E8A98900D1DEDC00CBF1F400BEEF
      F300B1EFF400A8725E0079797900AAAAAA000000000000000000B8A79E009669
      55004986B4005C97C1008B563B007A72740058679700556F91003C629000233E
      82005D5F690095959500B8B8B80000000000000000008FA18200468807004084
      00003C7E0000629F2600A9DB6F00A0D35F0096B9710000000000000000000000
      000000000000000000000000000000000000EFB53E00F8C9A200D1AC8600D1AD
      8600D1AD8600D1AC8500D1AA7B00CFA46E00DCAB6B00FFBD6A00F6AF5200FCAF
      4600E79D3700F3A02800FFA71600AE602A009494AE002A2554006E3E3A00A292
      9400DCF4EF00CDD5D300C0C3C400DCDAD400DDC7B800DFE4E400E4F6F700D6F7
      F900C6F9FD00B27A65008F8F8F00B0B0B0000000000000000000BFBFBF00458E
      C2002E9CF4002B98F00035698D007D7D7D00546274002371BD00286DB000272E
      38004F4E500091919100B6B6B60000000000000000008C9D7E003B800000367E
      0000358000004A980B0074B535007AB43B0095B8730000000000000000000000
      00000000000000000000000000000000000000000000E4A70A00EDB33900F0B8
      4D00EEB64D00E9B24D00F2BA6200F2B65A00EEB04F00EAA94500E9A43A00E79F
      3100E89B2700E6971F00D2851A00000000003E419800472B3500885656007F7E
      7E00D4E5E100DEF0EC00E4EFEC00EAF5F400E8F5F300C1C7C50098959400BAB8
      B700C4C5C300BB887500B0B0B000BABABA000000000000000000B5BBBF00368E
      D30041A9FA004BB4FF003E90CD0087878700576B7F002C85DD002B6FB300272F
      3A00515151009E9E9E00BABABA000000000000000000B2BBAA00739F4F006AA2
      420068A83E0064A938006DA945008AA875000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005B457E006F4F96006C636D00A7A7
      A700B4B5B400CFDBD800E7F3F100F1F9F800EAF1F000A7A8A800ADADAD00BCBC
      BC00BFBFBF00C0BDBD00BFBFBF00000000000000000000000000B8BABC00365D
      84003878B000439EE00044799E00A1A1A1007E828800385573004A4C51003332
      340082828300B2B2B200BFBFBF00000000000000000000000000C1CAB900B5C3
      AB00A8BB9D009EB49100B2C3A900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A19693006D616F00A9A9B200BABA
      BA00BFBFBF00B9B9B900BABDBD00B7B8B800B7B8B800B6B6B600BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000007B92
      A20052799C00587A9A009AA1A700B9B9B900B2B1B100716E6D00706D6D008585
      8600B6B6B600BDBDBD0000000000000000000000000000000000B1908E00B190
      8E00B1908E00B1908E00B1908E00B1908E00B1908E00B1908E00B1908E00B190
      8E00B1908E00B1908E0000000000000000000000000000000000A87D7800B781
      8300B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B781830000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2A6A400C2A6
      A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6
      A400C2A6A400C2A6A40000000000000000000000000000000000B1908E00FEFB
      FA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFB
      FA00FEFBFA00B1908E0000000000000000000000000000000000A87D7800F2E6
      D700FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000F0E2CF00B781830000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2A6A400FEFC
      FB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFC
      FB00FEFCFB00C2A6A40000000000000000000000000000000000B1908E00FEFB
      FA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFB
      FA00FEFBFA00B1908E0000000000000000000000000000000000A87D7800F3E7
      D900FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC
      9A00F0E2CF00B781830000000000000000000000000000000000000000000000
      9A0000009A000000000000000000000000000000000000000000000000000000
      9A0000009A000000000000000000000000000000000000000000C2A6A400FEFC
      FB00FEFCFB00FEFCFB00FEFCFB00D8EBD600018A0200018A0200D8EBD600FEFC
      FB00FEFCFB00C2A6A40000000000000000000000000000000000B1908E00FEFA
      F400FEFAF400FEFAF400FEFAF400FEFAF400FEFAF400FEFAF400FEFAF400FEFA
      F400FEFAF400B1908E0000000000000000000000000000000000A87D7800F3E9
      DE00FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000EFE1CE00B78183000000000000000000000000000000000000009A00174A
      FD00103BF40000009A000000000000000000000000000000000000009A00002C
      F8000030FC0000009A0000000000000000000000000000000000C2A6A400FEFB
      F700FEFBF700018A0200D8EAD200018A0200D8EAD200D8EAD200018A0200FEFB
      F700FEFBF700C2A6A40000000000000000000000000000000000B1908E00FEF7
      F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7
      F000FEF7F000B1908E0000000000000000000000000000000000A87D7800EDE4
      DA00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC
      9A00E8DAC800B78183000000000000000000000000000000000000009A001A47
      F8001A4CFF00123BF10000009A00000000000000000000009A00012DF6000132
      FF00002AF30000009A0000000000000000000000000000000000C2A6A400FEF9
      F400FEF9F400018A0200018A0200D8E8D000FEF9F400FEF9F400D8E8D000FEF9
      F400FEF9F400C2A6A40000000000000000000000000000000000B1908E00FEF4
      EB00FEF4EB00FEF4EB00FEF4EB00FEF4EB00FEF4EB00FEF4EB00FEF4EB00FEF4
      EB00FEF4EB00B1908E0000000000000000000000000000000000A07A7100B4AE
      A900B4ADA700B4ACA400B3ACA300B2AAA100B1A9A000B0A89D00B0A89C00B0A6
      9A00B0A59900A474760000000000000000000000000000000000000000000000
      9A001C47F6001B4DFF00143EF40000009A0000009A00002DF8000134FF00032B
      F20000009A000000000000000000000000000000000000000000C2A6A400FEF7
      F000FEF7F000018A0200018A0200018A0200FEF7F000FEF7F000FEF7F000FEF7
      F000FEF7F000C2A6A40000000000000000000000000000000000B1908E00FEF2
      E600FEF2E600FEF2E600FEF2E600FEF2E600FEF2E600FEF2E600FEF2E600FEF2
      E600FEF2E600B1908E000000000000000000A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A35228000000000000000000000000000000
      000000009A001D48F6001D50FF00103DFB000431FE000132FF00002CF6000000
      9A00000000000000000000000000000000000000000000000000C2A6A400FEF5
      EC00FEF5EC00FEF5EC00FEF5EC00FEF5EC00018A0200018A0200018A0200FEF5
      EC00FEF5EC00C2A6A40000000000000000000000000000000000B1908E00FEEF
      E200FEEFE200FEEFE200FEEFE200FEEFE200FEEFE200FEEFE200FEEFE200FEEF
      E200FEEFE200B1908E000000000000000000A352280000000000BA8E8200DCD6
      D200D8754200D8754200D8754200D8754200D8754200D8754200D8754200D875
      4200D5CBBF00B781830000000000A35228000000000000000000000000000000
      00000000000000009A001A48F9001342FF000C3CFF000733F60000009A000000
      0000000000000000000000000000000000000000000000000000C2A6A400FEF3
      E900FEF3E900D8E3C700FEF3E900FEF3E900D8E3C700018A0200018A0200FEF3
      E900FEF3E900C2A6A40000000000000000000000000000000000B1908E00FFED
      DD00FFEDDD00FFEDDD00FFEDDD00FFEDDD00FFEDDD00FFEDDD00FFEDDD00FFED
      DD00FFEDDD00B1908E000000000000000000A352280000000000AE877700B6B4
      B000F6CAB300F6CAB300F6CAB300F6CAB300F6CAB300F6CAB300F6CAB300F6CA
      B300B1AAA100A474760000000000A35228000000000000000000000000000000
      00000000000000009A00214EFC001D4BFF001847FF001743F60000009A000000
      0000000000000000000000000000000000000000000000000000C2A6A400FFF1
      E500FFF1E500018A0200D9E2C300D9E2C300018A0200D9E2C300018A0200FFF1
      E500FFF1E500C2A6A40000000000000000000000000000000000B1908E00FFED
      DD00FFEBD900FFEDDD00FFEBD900FFEDDD00FFEBD900D3C1B100D3C1B100D3C1
      B100D3C1B100B1908E0000000000000000000000000000000000C2968500FFFE
      FD00FFFEFD00FFFEFD00FBF7F300FAF5EF00FAF5EF00F8F1EB00F7F1E900F6EC
      E200F6ECE200B781830000000000000000000000000000000000000000000000
      000000009A002E5BF9002C5FFF00224DF800204BF8002355FF001B46F6000000
      9A00000000000000000000000000000000000000000000000000C2A6A400FFF0
      E200FFF0E200D9E1C100018A0200018A0200D9E1C100DDCFC200DDCFC200DDCF
      C200DDCFC200C2A6A40000000000000000000000000000000000B1908E00FFEB
      D900FFE6CF00FFEBD900FFE6CF00FFEBD900FFEBD900B5A19300B2A09200B09E
      9000B09E9000B1908E0000000000000000000000000000000000CA9C8800FDFC
      FA00FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000F5ECE300B781830000000000000000000000000000000000000000000000
      9A003664FA00386BFF002D59F40000009A0000009A00224CF4002558FF001D49
      F60000009A000000000000000000000000000000000000000000C2A6A400FFEE
      DE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00C5B5A900C3B4A800C2B3
      A700C1B2A600C2A6A40000000000000000000000000000000000B1908E00FFE6
      CF00FFE6CF00FFE6CF00FFE6CF00FFE6CF00FFE6CF009C8B7E009C8B7E009C8B
      7E009C8B7E00B1908E0000000000000000000000000000000000D2A38A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F1E900B78183000000000000000000000000000000000000009A004071
      FA004274FF00325DF10000009A00000000000000000000009A00224DF100275A
      FF00204CF80000009A0000000000000000000000000000000000C2A6A400FFEC
      DA00FFECDA00FFECDA00FFECDA00FFECDA00FFECDA00B0A29600B0A29600B0A2
      9600B0A29600C2A6A40000000000000000000000000000000000B1908E00FFE6
      CF00FFE1C600FFE6CF00FFE1C600FFE6CF00B5A19300FEF4EB00FEF4EB00DECF
      CE00B1908E000000000000000000000000000000000000000000D7A78C00FFFF
      FF00FFFFFF00FFFFFF00FFFEFD00FEFBF800FCF9F600FBF7F300FAF6F100F9F3
      EE00F9F2EC00B78183000000000000000000000000000000000000009A00497A
      FC003B66F30000009A000000000000000000000000000000000000009A002550
      F4002655FA0000009A0000000000000000000000000000000000C2A6A400FFEA
      D700FFEAD700FFEAD700FFEAD700FFEAD700C9B9AC00FBF8F400FBF8F400E6DA
      D900C2A6A4000000000000000000000000000000000000000000B1908E00FFE1
      C600FFE1C600FFE1C600FFE1C600FFE1C600BAA69700FEFAF400D3C1B100B190
      8E00000000000000000000000000000000000000000000000000DEAD8E00FFFF
      FF00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC
      9A00FAF6F100B781830000000000000000000000000000000000000000000000
      9A0000009A000000000000000000000000000000000000000000000000000000
      9A0000009A000000000000000000000000000000000000000000C2A6A400FFE8
      D300FFE8D300FFE8D300FFE8D300FFE8D300C9B9AC00FBF8F400DFCEC700C2A6
      A400000000000000000000000000000000000000000000000000B1908E00FFDE
      C200FFDEC200FFDEC200FFDEC200FFDEC200B5A19300D3C1B100B1908E000000
      0000000000000000000000000000000000000000000000000000DEAD8E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFC00FEFCFA00FCF9
      F600FBF8F400B781830000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2A6A400FFE6
      D000FFE6D000FFE6D000FFE6D000FFE6D000C9B9AC00DFCEC700C2A6A4000000
      0000000000000000000000000000000000000000000000000000B1908E00B190
      8E00B1908E00B1908E00B1908E00B1908E00B1908E00B1908E00000000000000
      0000000000000000000000000000000000000000000000000000DEAD8F00DAA4
      8200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA4
      8200DAA48200AA807C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2A6A400C2A6
      A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00A001FFFF000000000001003F00000000
      8001003F00000000C001003F00000000E001003F00000000E001003F00000000
      E001003F00000000E001003F00000000E001003800000000E001002000000000
      E001000000000000E001000000000000E003000000000000E007000000000000
      E00FFE2000000000E01FFFF800000000C001F800FFFF9FFFC0010000F80F0FFF
      C0010000F00707FFC0010000E00383FFC00100008001C1FFC00100000000E10F
      C00100000000F003C00100000000FC01C00100000000FC01C00100000000F800
      C00100000000F800C001000F8001F800C001000FF80FFC01C003000FF80FFC01
      C007001FF81FFE03C00F003FF83FFF8FFFFFFFFFF003F803FFC7FFFFE000E000
      FE0180018000C000F801000000000000E0010000000000008001000000000000
      8003000000000000800F000000000000800F000000000000800F000080008000
      800F000000008001801F00000000C001807F00000000C001807F80010000C001
      80FFFFFF0001C001C1FFFFFF001FE003C003C003FFFFC003C003C003FFFFC003
      C003C003E7E7C003C003C003C3C3C003C003C003C183C003C003C003E007C003
      C0030000F00FC003C0034002F81FC003C0034002F81FC003C003C003F00FC003
      C003C003E007C003C003C003C183C003C007C003C3C3C007C00FC003E7E7C00F
      C01FC003FFFFC01FC03FC003FFFFC03F00000000000000000000000000000000
      000000000000}
  end
  object ImageList24: TImageList
    Height = 24
    Width = 24
    Left = 724
    Top = 36
    Bitmap = {
      494C01010E001300080018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000B48D8A00B28A8800B18A8700B1888500B0878400AF868300AE858200AE84
      8100AD838000AB817F00AA807D00AA807C00A97F7B00A97D7A00A87C7900A77B
      7800A77B7800A77A7700A6797600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B58E8B00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00A77A7700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007E7D7F004A667C00BE9596000000
      0000B58F8C00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFE
      FD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFE
      FD00FEFEFD00FEFEFD00A77B780000000000A4787400A4787400A4787400A478
      7400A4787400A4787400A4787400A4787400A4787400A4787400A4787400A478
      7400A4787400A47874008C5D5C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B9CC3001E89E8004B7AA300C896
      9300B7928E00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFC
      FB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFC
      FB00FEFCFB00FEFCFB00A97D790000000000A4787400ECDED100F9F0E000F5EA
      DA00F5EADA00F4E8D400F4E8D400F4E8D400F4E8D400F4E8D400F4E8D400F4E8
      D400F4E8D400EEE0CE008C5D5C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004BB4FE0051B5FF002089E9004B7A
      A200C6959200FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFB
      F800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFB
      F800FEFBF800FEFBF800A97E7A0000000000A4787400ECDED100F5EADA00F5EA
      DA00F2E6D800F2E6D800F2E6D800F0E2D000F2E6D800EEE0CE00F2E6D800EEE0
      CE00F4E8D400EADAC8008C5D5C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000051B7FE0051B3FF001D87
      E6004E7AA000CA979200FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFA
      F600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFA
      F600FEFAF600FEFAF600AA7F7C0000000000A4787400ECDED100F5EDE900F5EA
      DA00F5EADA00F5EADA00F2E6D800F2E6D800EEE2D100EEE0CE00EEE0CE00F0E2
      D000F2E6D800E9D9C7008C5D5C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000051B7FE004EB2
      FF001F89E6004E7BA200B9949700FEF9F400FEF9F400FEF9F400FEF9F400FEF9
      F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9
      F400FEF9F400FEF9F400AA807D0000000000B4817600ECDED100F9F2E900F3DD
      C400F5C89800F5C89800F4C89700F4C89700F5C89800F4C89700F4C89700F6DA
      BC00F2E6D800E9D9C7008C5D5C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000052B8
      FE004BB1FF002787D9005F6A7600EADAD400A8787500AD807B00A9797600AF80
      7D00CEB1AC00EADAD400FEF8F100FEF8F100FEF8F100FEF8F100FEF8F100FEF8
      F100FEF8F100FEF8F100AB827F0000000000B4817600ECE1DA00F9F2E900F8E4
      CF00F9DCC000F9DCC000F9DCC000F8DCBD00F8DCBD00F6DABC00F6DABC00F3DD
      C400F0E2D000EADAC8008C5D5C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000055BDFF00B5D6ED00A5878500AB807A00D0B6A300EEE4C700FCFAD700EDE4
      C600CDAFA000B1858000DFC9C300FEF6EF00FEF6EF00FEF6EF00FEF6EF00FEF6
      EF00FEF6EF00FEF6EF00AD83800000000000B4817600ECE1DA00FBF6F100F5ED
      E900F5EADA00F5EADA00F2E6D800F2E6D800F2E6D800F0E2D000F0E2D000EADA
      C800EEE2D100E6D8C700976A6500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD9B9800C4A8A700B4878000F1DEB700FFFDD600FFFFDA00FFFFDA00FFFF
      DF00FFFFEF00EADDD800AB7D7A00EAD8D100FEF5ED00FEF5ED00FEF5ED00FEF5
      ED00FEF5EC00FDF4EC00AD84810000000000BA8E8500F2E8E200FBF6F100F8DC
      BD00F1C18D00F1C18D00F1C18D00F1C18D00F5C48F00F5C48F00E7B88500DCC3
      A900D8D0C400DACCBE00976A6500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BF9D9A00B5868100D4B39900F8DBAA00FDF7D000FFFFDA00FFFFE100FFFF
      F200FFFFFB00FFFFFF00C7A99E00CEAFA900FEF4EA00FEF4EA00FEF4EA00FEF4
      EA00FDF3E900FDF3E900AF85820000000000BA8E8500F5EDE900F9F2E900F5ED
      E900E6D8C700E1D5C800EADAC800F2E6D800EEE0CE00E1D5C800CABCAD00B5AA
      9F00B5AA9F00BFB4A8008A615C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C09E9B00B1847E00EDD0A400F2C89700FCF4CC00FFFFDB00FFFFE400FFFF
      F900FFFFFB00FFFFEC00E4D9BF00AE7F7B00FEF3E800FEF3E800FEF3E800FDF2
      E700FDF2E700FDF1E600AF87840000000000CB9A8200F5EDE900F9F8F400E6D8
      C700D0C1B100BFB4A800CABCAD00DACCBE00DBCBB800C7B7A600AA9B8C00948A
      8000948A8000A0988F0083605C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C1A09C00A97A7600F9DEAA00EFBA8600F9E3B600FFFFD900FFFFDE00FFFF
      E800FFFFEA00FFFFE000F8F5D500A9797600FFF2E600FFF1E500FEF1E500FEF1
      E500FEF0E400F9ECDE00B188860000000000CB9A8200F5EDE900F9F8F400748D
      B700C0996F00A8876300AA896500B8946D00B8946D00A5856100557299004B61
      8D0058576F0089837C006C4F4C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C2A19E00B2857F00EED4A900EFBB8400F3CC9800FBEEC400FFFFDB00FFFF
      DD00FFFFDC00FFFFDC00E8DCC100AE807B00FFF0E300FEEFE200FEEFE200FDEF
      E100F9EADB00F0E2D100B28A870000000000DCA88700F7F0EC00F9FAF9007EA2
      CB00748DB7009E9A9F009D9895009A959100928E8C005572990079B7D90073BC
      E300353C6B005C5968005B434100000000000000000000000000000000000000
      00005B5656004642420046424200464242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C4A39F00B78A8500D7BBA000FAE9C500F4D3A600F4D09D00F9E4B800FEF6
      CF00FEFAD300FFFFDA00CAAE9C00CFADA500FEEEE000FEEEE000FDEDDF00F8E8
      D800EFE0CE00E5D6C100B38C890000000000DCA88700F9F8F400F9FAF9005F6D
      9900CBEFF6009AADC5009E9A9F00959392005572990089D2EB005572990074B5
      DD0062A1D000333766005142520000000000000000008F8F9000545454005454
      54005B5656003B3A3C00353537005B5656000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C4A4A100EBD2C600B48A8200F1EAE900FFF7E900F3CC9800F0BD8900F4CE
      9D00FCE6B600F0E2BB00AD817B00EAD1C500FEEDDE00FDECDC00F7E6D500EEDE
      CB00E4D4BE00D9C9B100B58E8B0000000000E3B18E00F9F2E900F9FAF900B6B6
      C80070799A00CBEFF6009FC1D5005572990090DEF2005572990086D9F7005572
      99006BACDB00558CC1002F3160002F3160002F3160008F8F9000BEBEBF00BEBE
      BF005B565600524D4E005B5656005B5656000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C5A5A200FFEDDC00E0C3B700B2898500D3BBAE00EFDCB200FBE3B000EED4
      A900D2B19A00B1847E00DFC2B600FEECDB00FDEAD900F6E5D200EDDCC700E3D2
      BB00D8C8AE00CCBDA100B68F8C0000000000E3B18E00FBF6F100F9FAF900F9FA
      F900BABACA007383A200B8ECF5007291B6005572990089D7F000557299007BCD
      F3005572990066B5EC005BA9E800509DE5004690E1008F8F9000BEBEBF00BEBE
      BF005B5656005B5656005F5A5A005F5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6A7A300FFECDA00FFECDA00EBD1C200B78F8400AF827C00A97A7600B284
      7E00CFABA200EAD0C100FEEBD900FCE9D700F6E3CF00EDDAC400E2D0B800D7C6
      AB00D9CBB400E5D4C100B68F8C0000000000EDBD9200FBF6F100F9FAF900F9FA
      F900F9FAF900BABACA006B81A100A5E9F4006789B3005572990081CEEE005572
      990070C1F00066B5EC005BA9E800509DE5004690E1008F8F9000C7C8C800C7C8
      C8005B5656006B6767006B6767006B6767000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C7A8A400FFEAD800FFEAD800FFEAD800FFEAD800FFEAD800FFEAD800FFEA
      D700FEE9D700FEE9D700FCE7D400F5E1CC00F7EEE400FEFEFE00FEFEFD00FEF8
      F200F2E0D600B68F8C000000000000000000EDBD9200FBF6F100F9FAF900F9FA
      F900F9FAF900F9FAF900BABACA006480A10094E2F1006586B00081CEEE007BCD
      F30070C1F00066B5EC005BA9E800509DE5004690E1008F8F9000EFEFEF00EFEF
      EF005B5656007674740076747400767474000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C7A8A500FFE9D500FFE9D500FFE9D500FFE9D500FFE9D500FFE9D500FEE8
      D400FEE8D400FBE6D100F4DFC900EBD7BE00F4EDE300FEFDFC00FEF7F000EAD5
      CC00B68F8C00000000000000000000000000EDBD9200DCA88700DCA88700E3B1
      8E00DCA88700E3B18E00DBA78600A5847E005E7EA000C4EBF60086D9F7007BCD
      F30070C1F00066B5EC005BA9E800509DE5004690E1008F8F9000F9F8F400EFEF
      EF005B5656008180800081808000818080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C8AAA700FFE8D300FFE8D300FFE8D300FFE8D300FFE7D200FEE7D200FEE7
      D200FBE4CE00F3DDC600EAD5BB00DFCAAF00FAF6F100FEF6EE00DFC6BE00B68F
      8C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000055729900C3ECFB00BDE6
      F90070C1F00066B5EC005BA9E800509DE5003B5D9B008F8F9000EFEFEF00F1F1
      F1005B5656008F8F90008F8F90008F8F90000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C9ABA800FFE7D100FFE7D100FFE7D100FFE6D000FEE6D000FEE6CF00FAE2
      CB00F3DBC300E9D3B800DEC9AC00E5D6C200FAF0E700D4B8B100B68F8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006A96
      C000679AC9006195C9005A8DC700556DA400000000008F8F90008F8F90008F8F
      90005B5656008F8F9000767474007C7C7C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CAABA800FFE6CF00FFE6CF00FFE6CF00FEE5CE00FEE5CE00FAE1C900F1DA
      C000E8D1B600DDC7AA00D5C1A300F0E1D700CDAFAB00B68F8C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005B5656005B5656005B5656005B5656000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CAACA900C9ABA800C9ABA800C9AAA700C9A9A600C8A8A500C7A8A500C8A8
      A500C8A8A500C8A8A500C8A8A500C8A8A500C8A8A50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B584840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005720A0005720A0005720A000572
      0A0005720A0005720A0005720A0005720A0005720A0005720A0005720A000572
      0A0005720A0005720A0005720A0005720A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400EFDED600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7
      D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7
      D600EFDECE00B584840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005720A0005720A0005720A000572
      0A0005720A0005720A0005720A0005720A0005720A0005720A0005720A000572
      0A0005720A0005720A0005720A0005720A000000000000000000000000000000
      000000000000000000000000000000000000E7C6B500E7C6B500E7C6B500E7C6
      B500E7C6B500E7C6B500E7C6B500E7C6B500E7C6B50000000000000000000000
      0000000000000000000000000000000000000000000000000000ABA7A6008C88
      8800C09596000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400EFDED600FFF7EF00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00EFDECE00B58484000000000000000000A87D7800B9838500B9838500B983
      8400B8838400B8838400B8838400B883840005720A0005720A00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0005720A0005720A000000000000000000000000000000
      000000000000000000000000000000000000E7C6B500FFF2E500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7C6B50000000000000000000000
      00000000000000000000000000000000000000000000ACA8A70086868A002A66
      9A004B7BA000C094940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400EFDED600FFF7EF00FFF7EF00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00EFDECE00B58484000000000000000000AB817B00FAE7CB00FCE9C900FAE3
      C200F8E0B900F7DDB300F6DBAD00F6D8A70005720A0005720A00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FBFDFB0005720A0005720A00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0005720A0005720A000000000000000000000000000000
      000000000000000000004A4A4A00737B7B00E7C6B500FFF2E500FFD6A500FFD6
      A500FECC9A00FECC9A00FEC58800FFFFFF00E7C6B5007B7373004A4A4A000000
      000000000000000000000000000000000000000000009B9D9D005492C2002E99
      FF001B7CCB00557A9700C1959500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400EFDED600FFF7EF00FFF7EF00FFF7EF00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00EFDECE00B58484000000000000000000AB817C00F5E2CC00F7E3CA00F5DE
      C200F4DBBC00F3D9B500F2D6B000F1D3AA0005720A0005720A00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0005720A0033AF4F005AE48B0007750D00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0005720A0005720A000000000000000000000000000000
      000000000000525252004A4A4A006B6B6B00E7C6B500FFF2E500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7C6B5006B6B63004A4A4A005252
      520000000000000000000000000000000000000000003DADFF0057C1FF004DB1
      FF003196FA00197CC90053799700C19495000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400EFDED600FFFFFF00F7EFDE00F7E7D600F7E7D600F7E7D600F7E7D600F7E7
      D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7EF
      DE00EFDECE00B58484000000000000000000AB817C00F5E5D300F8E8CF00F5E1
      C800F5DEC200F4DBBB00F3D9B600F2D6B00005720A0005720A00FFFFFF00FFFF
      FF00FFFFFF0005720A002BA645005EE8910050DF7D002BB6440005720A00FFFF
      FF00FFFFFF00FFFFFF0005720A0005720A000000000000000000000000006B6B
      6B00636363004A4A4A004A4A4A006B6B6B00E7C6B500FFF2E500FFD6A500FFD6
      A500FECC9A00FECC9A00FEC58800FFFFFF00E7C6B5006B6B63004A4A4A004A4A
      4A00636363006B6B6B000000000000000000000000000000000041ABFF005DBF
      FE004DAFFF003196FA00197BC8005A7A9700C295940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      8400EFDED600FFFFFF00FFDEC600FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFDEC600F7EF
      DE00EFDECE00B58484000000000000000000AB817C00F6E8D700F9EAD400F6E4
      CE00F5E1C700F5DEC100F4DCBC00F3D9B60005720A0005720A00FFFFFF00FFFF
      FF0005720A00189426002DA646003EC3620038C6570023AE38001FAA32000572
      0A00FFFFFF00FFFFFF0005720A0005720A0000000000000000006B6B6B004A4A
      4A004A4A4A004A4A4A004A4A4A006B6B6B00E7C6B500FFF2E500FFF2E500FFF2
      E500FFF2E500FFF2E500FFF2E500FFF2E500E7C6B5006B6B63004A4A4A004A4A
      4A004A4A4A004A4A4A006B6B6B000000000000000000000000000000000042AB
      FE005CC0FE004DAFFF003096FA00197AC800587A9600C1949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B57B
      8400EFDED600FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00EFDECE00B58484000000000000000000AB817D00F7ECDE00FAEDDB00F8E7
      D400F6E4CD00F5E1C800F5DFC200F4DCBC0005720A0005720A00FFFFFF00FFFF
      FF0005720A000E7713000A740F001B972D0027B840001A7F1E0005720A000572
      0A00FFFFFF00FFFFFF0005720A0005720A0000000000847373004A4A4A005A52
      5200847B7B00525252004A4A4A006B6B6B009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C006B6B63004A4A4A005252
      5A00738484004A5252004A4A4A006B6B6B000000000000000000000000000000
      000042ACFE005CC0FE004DAFFF002E94FA00187AC7005F7C9700BB9396000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B584
      8400F7EFEF00FFFFFF00F7EFDE00F7E7D600F7E7D600F7E7D600F7E7D600F7E7
      D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7EF
      DE00EFDECE00B58484000000000000000000AD847D00F8EFE300FBF0E200F8EA
      DA00F7E6D300F6E4CE00F5E1C800F4DEC20005720A0005720A00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0005720A00249E330016AB280005720A00EDF5EE00FFFF
      FF00FFFFFF00FFFFFF0005720A0005720A00000000005252520063636300847B
      7B008484840063636300636363004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A0063636300524A
      5A00B5B5B500524A5A00524A5A004A4A4A000000000000000000000000000000
      00000000000044ADFE005CBFFE004DB0FF002D94F8001979C600437397000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD84
      8400F7EFEF00FFFFFF00FFDEC600FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFDEC600F7EF
      DE00EFDECE00B58484000000000000000000B1878000F9F2E900FBF3E800F9ED
      DE00F8E9D800F7E7D300F6E4CD00F5E1C70005720A0005720A00FFFFFF00FFFF
      FF00FFFFFF00FCFEFC0054A0580017A42500098D13004D9E5100F3F8F400FFFF
      FF00FFFFFF00FFFFFF0005720A0005720A000000000052525200847B8400949C
      9C00849494008C9C9C008C9C94008C949400949C9C00949C9C00949C9C008C8C
      8C008C8C8C008C8C8C009494940094949400949C9C008C949C008C849C00B5B5
      B5008CFF7B008C9C9C006B5A6B00393939000000000000000000000000000000
      0000000000000000000046AEFE005CBFFE004CB0FF003F97ED00577B94000000
      00000000000000000000AE837E00AE837E00AE837E00AE837E00AE837E000000
      000000000000000000000000000000000000000000000000000000000000BD84
      8C00F7EFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00EFDECE00B58484000000000000000000B68B8200FAF5F000FCF6EE00FAF0
      E500F9ECDE00F8E9D900F7E7D300F6E4CD0005720A0005720A00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0005720A000989120005720A00EAF3EB00F8FBF800FFFF
      FF00FFFFFF00FFFFFF0005720A0005720A0000000000525252009C9C9C00BDBD
      BD00BDB5BD00ADADAD00948C8C00847B7B00846B7300846B6B00846B6B008463
      6B0084636B0084636B0084636B0084636B0084636B00947B8400A57BA5008C9C
      9C00B5B5B500B5B5B5009C9C9C004A4A4A000000000000000000000000000000
      000000000000000000000000000046AFFE0066C5FF00A3CCF100BEB3AB008671
      7000A9807A00AE837E00E5D8BD00FFFFE200FFFFE200FFFFE000EEDFC600AE83
      7E00AE837E00000000000000000000000000000000000000000000000000C68C
      8C00F7EFEF00FFFFFF00F7EFDE00F7E7D600F7E7D600F7E7D600F7E7D600F7E7
      D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7EF
      DE00EFDECE00B58484000000000000000000BA8F8400FCF9F600FDFAF400FBF3
      EC00F9EFE500FAEDDE00F8EAD800F7E6D30005720A0005720A00FFFFFF00FFFF
      FF00FFFFFF000F8D18000C97170005720A00F8FBF800FEFEFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0005720A0005720A000000000063636300ADADAD00D6DE
      DE00ADA5A5008C6B73009C6B7300A5848400A57B7B00BD8C9400BD8C9400BD8C
      9400BD8C9400BD8C9400BD8C9400BD8C9400A57B7B00A5848400A56B7B007B63
      63007B947300BDD6BD009C9C9C004A4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DCBFB800C69E
      8E00D8BDA300FFFFDD00FFFFDD00FFFFDB00FFFFDA00FFFFDB00FFFFDD00FFFF
      E900DEC9B700AE837E000000000000000000000000000000000000000000C68C
      8C00F7EFEF00FFFFFF00FFDEC600FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFDEC600F7EF
      DE00EFDECE00B58484000000000000000000BE938600FEFCFB00FFFEFC00FDF7
      F100FAF2EC00FAF0E500FAEEDE00F9EAD90005720A0005720A00FFFFFF00FFFF
      FF00258D2C0005720A0071B37600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0005720A0005720A000000000073737300B5B5B500CED6
      D6008C7B8400844A5200A5848400A57B7B00A57B7B00A57B7B00A57B7B00A57B
      7B00A57B7B00A57B7B00A57B7B00A57B7B00A57B7B00A57B7B00A58484008C4A
      5A00AD7B9C00E7D6E700ADADAD00636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AE857F00DEC0
      A500FFF3C100FCF1C800FFFFDA00FFFFD900FFFFDA00FFFFE000FFFFE400FFFF
      EF00FFFFFF00DDCAC800AE837E0000000000000000000000000000000000C68C
      8C00F7EFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00F7EF
      DE00EFDECE00B58484000000000000000000C1968700FEFDFC00FFFFFF00FFFB
      F800FDF6F000FBF3EB00FBF1E500FAEDDE0005720A0005720A00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0005720A0005720A000000000084737300B5B5B500CECE
      CE00947B84007B4A5200844A52005A3131005252520052525200525252004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A005A313100844A52007B4A
      52009C848C00C6C6CE00ADADAD00847373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AE837E00FFEF
      B900F5D4A500FBF0C600FFFFDB00FFFFDA00FFFFDD00FFFFEB00FFFFF500FFFF
      FB00FFFFFD00FFFFFE00AE837E0000000000000000000000000000000000CE94
      8C00FFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00F7EF
      DE00DEC6A500A57B84000000000000000000C59A8900FDFCFC00FFFFFF00FFFE
      FE00FFFAF800FDF7F100FBF4EB00FAF0E50005720A0005720A0005720A000572
      0A0005720A0005720A0005720A0005720A0005720A0005720A0005720A000572
      0A0005720A0005720A0005720A0005720A00000000008C8C8C009C9C9C00CECE
      CE00AD949C00421821004A4A4A004A292900736363007B6363007B6363007363
      6300736363007B6363007B6363007B636300736B630052313100393939004A21
      2100A59C9C00C6C6CE00B5B5B500847373000000000000000000000000000000
      00000000000000000000000000000000000000000000AE837E00ECD5B400F8D6
      A200F2C99700FCEDC400FFFFDB00FFFFDA00FFFFE000FFFFF000FFFFFE00FFFF
      FD00FFFFF500FFFFEB00E1D3B800AE837E00000000000000000000000000CE94
      8C00FFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFF7EF00CEBD
      AD00DED6CE009C7B84000000000000000000C99D8A00FDFCFC00FFFFFF00FFFF
      FF00FFFEFE00FFFBF700FCF7F100FBF4EB0005720A0005720A0005720A000572
      0A0005720A0005720A0005720A0005720A0005720A0005720A0005720A000572
      0A0005720A0005720A0005720A0005720A00000000000000000084737300D6CE
      CE00BDA5AD00422121004A4A4A00B5848400F7EFE700F7EFE700F7EFE700F7EF
      E700F7EFE700F7EFE700F7EFE700F7EFE700F7EFE700B5848400393939004A21
      2100B5A5A500CECECE0084737300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AE837E00FFF3BF00F4CB
      9500F0C18E00F9E5BA00FEFDD700FFFFDC00FFFFDF00FFFFEC00FFFFF800FFFF
      F800FFFFEC00FFFFE000FFFFE300AE837E00000000000000000000000000D69C
      9400FFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700D6D6D600D6D6
      D600BDBDBD009C7B84000000000000000000CDA18C00FEFDFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFE00FEFBF700FDF6F100FBF3EB00FBF0E400F9EDDE00F8E9
      D800F7E5D100F8E5CD00F5E2C700E7D3B800C9BAA300A08A8200000000000000
      00000000000000000000000000000000000000000000000000008C8C8C00ADB5
      B500B5B5B5009C94940084737300BD848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700B58484007B636B009C94
      9400ADB5B500ADB5B50084737300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AE837E00FFF4C000F3C9
      9400EEB88400F5D5A500FDF3CB00FFFFDC00FFFFDD00FFFFE200FFFFE800FFFF
      E900FFFFE200FFFFDD00FFFFE300AE837E00000000000000000000000000D69C
      940029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD6002183A700B5847300AD847300AD7B7300AD7B
      7300AD7B7300AD7B73000000000000000000D2A48D00FEFDFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFE00FEFAF800FCF7F000FBF3EA00FAEFE400F9ED
      DE00FFF5E300FBF2DD00DFD5C300C6BEAD00BBB5A4009E8B8500000000000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8C00847373008473730084737300CE948C00FFFFFF00F7FFFF00F7FFFF00FFFF
      FF00FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700B5848400847373008473
      7300847373008473730000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AE837E00FFF5C300F6D1
      9C00EEB27D00F1C59300F7E0B300FDF7D000FFFFDC00FFFFDD00FFFFDD00FFFF
      DD00FFFFDB00FFFFDA00FFFFE100AE837E00000000000000000000000000DEA5
      940029ADD6008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7
      FF008CF7FF008CF7FF008CF7FF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B58484000000000000000000D7A88E00FEFDFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFD00FEFBF700FCF6EF00FCF5EB00FBF2
      E500D8B9AB00B78F8400AD898400A8868300A7868700A8837800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CE948C00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700F7F7F700EFDED600D6C8BA00D6C8BA00B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AE837E00ECD5B400FDE6
      B200F3C99600F2C79200F3D09C00F8E3B500FCF5CD00FFFFDA00FFFFDC00FFFF
      DB00FFFFDB00FFFFDC00E2D3B800AE837E00000000000000000000000000DEA5
      940029ADD6008CF7FF00E88E6000E88E6000E88E6000E4753E00E4753E00E475
      3E00E4753E00E1622300E1622300B04A1800B5847300EFC68C00F7BD6B00FFB5
      5200B5848400000000000000000000000000DAAC9000FEFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFD00FEFAF600FFFCF500F7ED
      E400C19A9300C4937700DBA77400DB9E6000EC9F3900C1877300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D69C9400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFDED600C6A59400C6A59400C6A59400C6A59400B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AE837E00FFFE
      D000FCF0D600F8E0BE00F4CF9D00F3CD9A00F6D8AA00FBEABF00FDF4CB00FCF7
      CF00FEF8D100FFFFDE00AE837E0000000000000000000000000000000000DEA5
      940029ADD6008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7
      FF008CF7FF008CF7FF008CF7FF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      840000000000000000000000000000000000DFAF9100FEFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFD00FFFFFD00F7EE
      E900C0999300D3A48100F3C17C00FFBD4E00D0926D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D69C9400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E7D6D600C6A59400FFFFFF00FFFFFF00DEDEDE00B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AE837E00E0CA
      B200FFFFFF00FEF9F200F8E1BE00F1C48D00EEBA8500F1C49100F4D1A100F8DE
      B000FFF7C600DDC7AE00AE837E0000000000000000000000000000000000DEA5
      940029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD6002183A700B5847300EFC68C00B58484000000
      000000000000000000000000000000000000DFAF9100FEFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F1
      EF00C09A9600D2A48000FFCA7400D09877000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEA59400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E7D6D600C6A59400FFFFFF00DEDEDE00B584840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AE83
      7E00D9C6C000FFFFFF00FFF7D700F8DAA600F4CB9500F5CD9900F9D9A600FFF1
      BB00DEC2A900AE837E000000000000000000000000000000000000000000DEA5
      8C00E7CEBD00EFD6BD00EFD6BD00EFCEC600E7CEBD00E7CEBD00E7CEBD00E7CE
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400000000000000
      000000000000000000000000000000000000DFAF9200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAF8
      F900C29E9C00DCAC7C00D19F8700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEA59400F7F7F700F7F7F700F7F7F700F7F7
      F700E7D6D600C6A59400DEDEDE00B58484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AE837E00AE837E00E8D5B400FFF9C500FFF5C000FFF5C200EED8B700AE83
      7E00AE837E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAA48200DBA68500DBA68500DBA6
      8500DBA68500DBA68500DBA68500DBA68500DBA68500DBA68500DBA68500DFA9
      8600C3907B00B4807E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7C6B500E7C6B500E7C6B500E7C6B500DEC6
      BD00DEC6BD00C6A59400B5848400000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000A1A0A0008C8A
      8A009A9A9A00B2B2B200BEBEBE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A8A7A7009190
      900093929200A7A7A700B8B8B800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E600C5C5C6009B9AA900CECECF00E8E8
      E800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B3B2B2008B818100B3A0A000C6B7
      B7009B8B8B007C7171007B7575008B8A8A00A4A4A400B6B6B600BEBEBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7B7B7008C858500A6939300C9BC
      BC00B3A2A100887B7B0079707000807C7C0095959500ADADAD00B9B9B9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EAEAEA00E2E2E200B7B7BA0064619B002C28CD00223EE7003852C2007C7B
      9A00CECECE00E9E9E90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000097939300957F7F00D0B0B000EADBDB00C3BF
      C000D5CBCB00F0DCDA00E1CBC800BBA6A400928382007C7272007C7979009191
      9100AAAAAA00BABABA0000000000000000000000000000000000000000000000
      00000000000000000000000000009C9A9A00907C7C00C7A6A600EDD9D900CAC4
      C500C3BDBE00ECDCDB00EEDAD800D2BDBA00AA96950085797900797171008281
      81009B9B9B00B1B1B100BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EAEAEA00DADA
      DA00A3A1A4005350A2002320E1001E1EF0001F1FE900234CE9002C89F500338A
      F6003D5EC8009595A900EAEAEA000000000000000000AE602A00AE602A00AE60
      2A00AE602A00AE602A00AE602A00AE602A00AE602A00AE602A00AE602A00AE60
      2A00AE602A00AE602A00AE602A00AE602A00AE602A00AE602A00AE602A00AE60
      2A00AE602A00AE602A00AE602A00000000000000000000000000000000000000
      000000000000ACACAC008B7E7E00B89B9B00D6B6B600E2CBCB00D8C6C600353A
      3D000D4D6500497E9100879FA900C0BFC300E2D7D600EDDEDD00CFBFBF00AB9A
      9A00867A7A00756F6F0092919100BCBCBC000000000000000000000000000000
      000000000000B2B1B1008A7F7F00B1949400D7B6B600D9C0C000EBD8D800675D
      5F0002364A0030718B006C8C9900A8B1B700D6CECE00ECE0DE00E5D6D500BFAE
      AE009C8D8D007B7171007A767600AAAAAA000000000000000000000000000000
      000000000000000000000000000000000000E9E9E900D4D4D4009D9793009975
      5000AD734A001D1DF4001D1FF1001F1EE900211EE000234CE9002C89F400369D
      F8003FAEFD005C6AAF00E8E8E80000000000BF820000EEB66900FFC68300FFC2
      7900FFBF7000FFBC6600FFB85C00FFB55200FFB24900FFAF3F00FFAB3500FFA8
      2B00FFA52200FFA11800FF9E0F00FF9B0500FF990100FF990100FF990100FF99
      0100FF990100FF990100EB8B0B00AE602A00000000000000000000000000BCBC
      BC00968F8F009C838300D5B6B600DFCBCB00DBCACA00E7DCDC00DDC9C9007A6F
      71002F5E72000A5E7D0000557600015A7A00266A830062717900D5CBCA00E0D4
      D200EBDBD900E8D4D400786E6E00ACACAC00000000000000000000000000BFBF
      BF009892920097808000D2B2B200DFC9C900DCC9C900E3D6D600E7D6D6009C87
      87003D5B680015627E000056780000557700146380003F6676009D979700E8DF
      DF00DECFCD00FBEAE800B0A0A0008B8A8A000000000000000000000000000000
      00000000000000000000E7E7E700C9C9C900928D87009E754D00C3813700C583
      3500B27544001E1DEE001F1FE900211EE000231ED800234CE8002C88F400369D
      F8003FAEFD005C69AF00E8E8E80000000000CD921D00FFCB9200FFC78900F2BB
      7A00CD9E6500E6AC6400FFBA6200FFB75800E6A44B00CD914100E69E3A00FFAA
      3100FFA62700FFA31E00FFA01500FF9C0A00FF9A0300FF990100FF990100FF99
      0100FF990100FF990100FF990100AE602A000000000000000000A4A2A2008C7C
      7C00C1A2A200E0C8C800E0D0D000E5D9D900EFE9E900F4F3F300E7DBDB00DCC2
      C200CEB3B200B09FA00084899100507383001D637D00122E3B00A18E8C004E62
      6C0023475700B1AEB000A28F8E00A4A4A4000000000000000000A7A6A6008A7C
      7C00BB9C9C00DFC5C500DFCECE00E3D7D700ECE5E500F3F3F300EBE3E400DCC5
      C500D4B8B600B9A4A300928F9500607986002E698200003D5500544E5000A198
      9A001A3F4E0060737B00BBADAE008C8A8A000000000000000000000000000000
      0000E4E4E400BCBCBC006F7F6A00447B220096812500C6843600C5833500C37F
      3200B07141001F1EE700211FE000231FD800241FD100244CE7002C89F500369D
      F9003FAEFD005C69AF00E8E8E80000000000D3992600FFCC9700D9AE7E003535
      37003535370035353700A7815100D9A05700353537003535370035353700CD8E
      3500FFA82D00423C360035353700353537003535370035353700353537003535
      3700423B3400E68D0800FF990100AE602A00BABABA008D858500A98D8D00DDBF
      BF00E2CFCF00E3D6D600EBE3E300F1EEEE00F5F4F400F4F2F200DDCCCD00D0B2
      B300E0CACA00E5C9C700E3C5C300DCBEBC00C8ADAD00A6949500C3ADAC00666C
      73000F364800777B8200A08B8A00A2A2A200BBBBBB008E878700A4888800D9BB
      BB00E1CECE00E2D4D400E9E1E100EFEBEB00F3F2F200F5F5F500E8DDDE00D0B4
      B400DDC6C600E5CBCA00E4C6C400DFC0BE00D0B4B300A7959600AF9B9C00AC9C
      9D00204352001E4556009A8B8C008E8B8B000000000000000000E6E6E600B1B2
      B100667A5F00437F1B00469307004896030097832300C5833500C3803200C07B
      2E00AD6D3D00211DE000231FD800241ED200241ED400223EE700296BEE00369C
      F8003FAEFD005C69AF00E8E8E80000000000D59B2600FFCD9900FFCB9400A788
      66009A7D5C009A7B5700F2B56900F2B36100A77F4B009A754400A77B4000F2A6
      3C00FFAA3100A77530009A6D2C009A6B27009A6922009A681D009A671C009A67
      1C00A76D1900FF990100FF990100AE602A00A2939300CBAAAA00E0CACA00E2D4
      D400E7DFDF00EFEAEA00F3F1F100F2F1F100EBE2E100D7C1C300C9A8A800C8A4
      A100C9ACAC00CDB4B800D2BCBE00CDAEAF00D6B8B800E0C6C600DAC1C100D6BA
      B900BA9F9D00CAB3B3009A858500A7A7A7009C8E8E00C9A8A800DFC8C800E1D1
      D100E6DCDC00EDE7E700F2F0F000F3F2F200EFEAEA00DECDCD00CBAFAF00C5A1
      9F00C8ABAA00CBB1B300D0B7B900D1B5B600D0B1B100DFC4C400DFC5C500D6BD
      BD00C4A8A600B29B9A00B29E9E008B8989000000000000000000A5A9A5004284
      16004795050048970300489603004795030096822300C3803200C17C2F00BD77
      2A00AA683900221CDA002224DC00223FE900225EF300226AF8002261F5002555
      EF003274F2005E68B100E9E9E90000000000D79D2600FFCD9900FFCD9800E6B7
      8400CDA37500D9A86F00FFC07200FFBD6900D9A05700CD964D00D99B4700FFAF
      4200FFAC3800CE955400BF895B00CF8D4500FF9F1100FF9B0700CF863100BF80
      4100CF863100FF990100FF990100AE602A00C5A9A900D8C0C000E2D5D500EEE9
      E900F2F0F000F4F3F300F3F1F100EDE5E500D7BDBD00D4B3B000EACEC300F6D5
      C300EABBA800D5A49500C9999100C6A19E00CAACAD00CAAAAB00CCADAE00D2B4
      B500E4C6C700DFBDBD0093868600BCBCBC00C7A9A900D6BEBE00E0D2D200ECE5
      E500F1EDED00F4F4F300F3F2F200EFEAEA00D9C4C400CFAFAE00DDBFB700F0D3
      C500EABFAB00DDB1A200D3AFA600C8A4A100C5A4A500C8ABAE00C8ABAB00CEB1
      B100D7BABB00ECCFCF00B1989800A09F9F000000000000000000929D8C004795
      03004897030048960300479403004793030095812100C17C2F00BD772A00BA72
      2600B66D2300846BAC003E52E4002352F0002264F600226AF8002268F8002A53
      E7005E63B300C4C4CA000000000000000000D99F2600FFCD9900D9B187003535
      37003535370035353700A7845A00CD9C6100353537003535370035353700C08B
      44009F8087000033FF000033FF000033FF00BF8550008F6F78000033FF000033
      FF000033FF00CF863100FF990100AE602A00C3ADAD00EBE5E500F1EDED00F4F2
      F200F2EFEF00E9DFDF00E0CCCC00CFB9B900C6B7B700CFBCB600E0CDC400F4CE
      BD00F5AE9200DC694300DB674200CD8D7700C9A39400CCA79E00D2B3AF00CAA9
      A900A28A8D00928C8D00BEBEBE0000000000C6AFAF00EAE2E200EFEBEC00F5F6
      F800F5F7F900EEEAEC00E4D8DA00DDCACB00D7C2C200E5CBC700F3DBD300F9D8
      CA00FCC3AA00FCBEA000F9BB9C00F1BCA100E7B9A300DFB7A700D9BCB600D8BE
      BF00CFAAAB00B2959600A69F9F00000000000000000000000000929C8C004695
      030048960300479503004793030046910200947F2000BD772A00BA722600B66C
      2100B4691F00EBC79100F9E4BB00CCBDC8008481D600434CBF008887AE00D8D8
      D900EAEAEA00000000000000000000000000DBA12600FFCD9900FFCD9900B394
      74009A806500A7876500F2BB7A00FFC17500B38A58009A784C00B3864B00F2AB
      4B00EFA84F009F7F8400806F99009F7B7800FFA31C00EF9922008F6E75008067
      81009F736000FF990100FF990100AE602A00CAB6B600FAFCFC00F4F3F300F0EB
      EB00E0CFCF00D2B4B500BFA7A700B5B3B100C9D7D400CEDFDD00C5CFCD00C4C9
      C700CCA19300DF6C4900E3755000D28B7200D69C8300D3C7C200C8BEB900BF9D
      92008A6152007C6A66008B888700B0B0B000CBB9B900F9FCFC00F5F7F900EAE5
      E300DCC7C200CAA8A400C7A5A300C29E9F00C8A9AB00DDD0D500E5DADB00E8D8
      D600ECD4CD00F4CEBF00FFD1B800FFE2C100FFDDB500FFCFAD00EAC7B900BB9F
      99008C7F7C00B5B5B40000000000000000000000000000000000929D8C004694
      0300479403004793030046910200458F0200937E1F00BA722600B66D2100B367
      1C00B1651B00EBC79100FCE7BA00FCECC200FBEEC5009C8F8000EAEAEA000000
      000000000000000000000000000000000000DDA32600FFCD9900FFCD9900D9B1
      8700A78A6C00CDA37500FFC68300FFC27900CD9C61009A784E00CE955400FFB5
      5200FFB24900BF8F6F00806F9900BF8A6000FFA52200FFA11800BF834A008067
      8100BF804100FF990100FF990100AE602A00C0ABAB00E7DEDE00E9DFDF00EBE5
      E500E7D8D800D0C3C400C5D0CD00E3F9F500D4E3E000ABB6B300CFE2DE00D8F6
      F400CBC0B600E17E5E00E77F5A00D3806600D5877000E8EFF000D5E4E800CFBA
      AD00E0764E00D54825009346310094929100C5B0B000F0EFF000CF957E00C059
      3200C45C3400C96B4200CD7B5400CB7D5A00C9826300BE7D6600C18F8400CEB7
      B800ECE7E700E2D9DA00C0B9CA00A0A0BF00878CB8007080BF005966AF003941
      840040466C0080808300B9B9B900000000000000000000000000929C8C004693
      03004793030046910200458F0200448D0200927C1E00B66D2100B3671D00AF62
      1800AE611700EBC79100FCE7BA00FBEBC200FAEDC5009E908100EAEAEA000000
      000000000000000000000000000000000000DFA52600FFCD9900CEA982003535
      370035353700353537009A7E5F00CDA16E00353537003535370035353700B386
      4B009F8492000033FF000033FF000033FF00BF895C009F7973000033FF000033
      FF000033FF00BF804100FF990100AE602A00BFBCBC00BAA8A800BA9E9E00CBB3
      B300DBC7C700CCCFCE00D9EFEB00B8C3C1006C706F00848E8C00D9E8E500D9F2
      EF00D8D0C600E68E6F00E8876200CD897200CA918000E9D1CA00E8E8EA00D8B5
      AA00D8623D00EA583200B64B2D00908C8B00BEB8B800BCA19D00B5401500C641
      1100D3643500DF7C4C00E78F5E00E9966300DE834F00D8754300C85B2B00C561
      36009B809500395CC4001F54CC00135CD8001A6AE6001864E3001251D6000E3F
      D0000F2EC300464C6F00B6B6B600000000000000000000000000929C8C004591
      020046910200458F0200448D0200448B0100917A1C00B3681C00AF621800AC5E
      1400AC5D1400EBC79100FCE7BA00FBEBC100FAEDC5009E908100EAEAEA000000
      000000000000000000000000000000000000E1A72600FFCD9900FFCD9900D9B1
      87009A816800C09D7900FFC98E00FFC68400C09766009A7A5500C0925900FFB9
      5E00FFB55200AF8B83008071A000BF8E6900FFA82D00FFA52300AF7F62008069
      8800BF814500FF990100FF990100AE602A00000000000000000000000000BEBA
      BA00BAABAB00C1CBC800A2A29F008E929000AFBDBA00CBD6D400DCEAE700D6EE
      EB00D7D2CA00EE987800DBA38800BCDCD600BCCBC100BDAC9D00C6A59800CA81
      6C00D44C2500E8583100AE4E3300918E8D0000000000BFBEBD00B1542E00CE58
      2C00D6714400E1895B00F0A77700E8A67800CE8B6500DE855600D9704200D64E
      13006D2F48000442D9001F62DF00406FC7003086ED002A80F5002465DF001B4D
      D3001334C500585D7900BDBDBD00000000000000000000000000929C8C00448F
      0200458F0200448D0200438B01004389010090781B00B0631800AD5E1400AA5A
      1100AB5B1200EBC79100FCE7BA00FBEBC200FAEDC5009E908100EAEAEA000000
      000000000000000000000000000000000000E3A92600FFCD9900FFCD9900FFCD
      9900FFCD9900FFCD9900FFCB9400FFC88A00FFC47F00FFC17700FFBE6D00FFBB
      6300FFB75800FFB55100FFB14600FFAE3C00FFAA3300FFA72900FFA41F00FFA0
      1500FF9D0D00FF9A0300FF990100AE602A000000000000000000000000000000
      0000A4A4A400646262007E4C5000D5C9C900DEF1ED00D2DFDB00D3E4E000D6EF
      EC00D6CEC700F2A38300DDB39B00C0F6F900B9F5F900B0F3F400A9E4E000A7D2
      CC00ACB3A700D7755600B24C3000918E8D000000000000000000AF816B00C953
      2700D8704300E1895B00ED986200EAAB8000F1D5C200D47E5200D86D3E00D454
      1C005D396E000A49DF002F62CE00CEC8CD006693D9001F75F1002366E1001B4D
      DC001F389E0096969A0000000000000000000000000000000000929D8C00448D
      0200448D0200438B010043890100428701008F761A00AD5F1500B1641B00BD77
      2E00CE924800D49C5400DBA96700E2BB8100ECD09E00A0938400000000000000
      000000000000000000000000000000000000E5AB2600FFCD9900FFD19E00FFDA
      B300FFDAB300FFDAB300FFD9B100FFD6A800FFD6A800FFD19E00FFD09500FFCD
      8E00FFCB8600FFC37400FFB34C00FFAF4200FFAC3800FFA92E00FFA52500FFA2
      1B00FF9F1100FF9C0900FF990100AE602A00000000000000000000000000BFBF
      BF005454540043202300A7656C00CBCFCD00C9D5D300C0BFBF00CACDCD00D1E3
      E100D2C8C200F4B09200E4BBA200CAF0F200C4EEF000BBEDEF00B2EFF200A9F6
      FB009AFFFF00BDB2A600B54A2C00918E8D000000000000000000BDBAB800AF6D
      4F00D3653700E87C4800D2794600CAB09900E9DEC500DE865700DE623000A652
      2C0052558200043AD5005A6FB900E8D3AD009F979F00265BC5001A5AE6002445
      B6007C8091000000000000000000000000000000000000000000929C8C00438B
      0100438B010043890100428701004185000083831F00C0843900D3995000DBA6
      5D00DDA96000DCA85F00D49C5400B38B5C00A6988900D7D6D500000000000000
      000000000000000000000000000000000000E7AD2600FFCD9900CEA982008FE1
      D8008FE1D8008FE1D8008FE1D8008FE1D8008FE1D8008FE1D8008FE1D8008FE1
      D8008FE1D800DFE4CA00FFB55100E6A24600D9973D00CD8E3500CD8B2E00CD88
      2600D98D1D00FF9D0D00FF9A0300AE602A000000000000000000000000009393
      93002A1E1E008C4D5300A3797E00C7DCD700CBCFCE008A898900A5A3A400D7E1
      E200D7D5CF00F5B79900E5BDA300D0EEF200CBECEE00C4F0F100BCEEF100B4EA
      ED00A6F4FA00C4B9AC00B5503200918E8D00000000000000000000000000BDB8
      B500B57E6400A15B3C004A7393002989CD004190C40092766A009F513100A59B
      9800BABBBC006775AB004758880043678600345D8400274F8D0024408C00787B
      8700000000000000000000000000000000000000000000000000929C8C004289
      0100438901004287010041850000418300006DA73100A6D06600AAC45F00B1B5
      5600A89C44009F8B7300C8C5C300E8E8E8000000000000000000000000000000
      000000000000000000000000000000000000E9AE2600FFCD9900BF9A73006AD7
      CB006AD7CB006AD7CB006AD7CB006AD7CB006AD7CB006AD7CB006AD7CB006AD7
      CB006AD7CB00DFE4CA00FFB65600C08B4400B3823F00A7783800B37E32009A6E
      2F00CD872300FF9F1300FF9C0900AE602A0000000000BDBDBD0099999C003736
      360060383C00A7656C00AFB3B200DEF5F100D2D8D8008B8A8A0091909000CDD3
      D400DEDDD600F4B79900E4B59A00DCF4F500D2EFF000C8EBEB00C2EBED00BBEC
      EF00AFF6F900CABCAE00B6553700918E8D000000000000000000000000000000
      0000BABABA003F769F001E95ED00228FE3001F92EA001E7ABD00656B70000000
      0000B8B8B9007C818A00265A8B002167AD002469AD00254E76002B2E30005351
      4E009F9F9F000000000000000000000000000000000000000000929D8C004288
      0100428701004185000040830000408200006DA73100A6D36800A6D36800A6D3
      68007AAE4400D2D3D20000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7AC1D00FFCD9900EFC08F00BF9A
      7300BF9A7300BF9A7300BF9A7300BF9A7300BF997100BF976A00BF946300BF92
      5C00BF8F5400EFB97300FFB85C00F2AD5100F2AA4700FFAF3F00E69D3600CD8B
      2E00FFA52200FFA11800FF9E0F00AE602A00000000008484A2002C2C6E00301E
      19008F535800987A7D00D1E9E500DCEFEB00D4E2E000C7C8C800BBBAB900CBD3
      D300E1E3DD00E7C8B700DFD0C400EDF4F400F3FFFF00E6FFFF00D2F7F900C3EE
      F000B5F7FA00CEC0B100B65A3A00918D8C000000000000000000000000000000
      00008399A7003099EA0039A1F400379CEC00399FEF0031A1F8003B668200B2B2
      B200A2A1A000314558002B75BE002E76C1002D78C5002A5F9500292728002827
      2800828283000000000000000000000000000000000000000000929C8C004186
      0000418500004183000040820000408100006DA73100A5D26700A5D26700A5D2
      67007AAE4400D3D3D30000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2A40000FAC57C00FFCD9900FFCD
      9900FFCD9900FFCD9900FFCD9900FFCD9900FFCD9900FFCB9200FFC78900FFC4
      7F00FFC17500FFBE6D00FFBA6200FFB75800FFB44E00FFB14600FFAD3B00FFAA
      3100FFA62700FFA31E00E9921700A6662200ACACB100454596001A121D007847
      4600A161680076737300C2D1CF00DEF2EE00D9EBE700D9E6E300D8E1DE00E2EE
      EB00E8F5F200E1EBE800DEE9E800DDE1E000B5B1AF00C3BDBA00E0E6E300E2FB
      FB00D3FFFF00D7C9BA00BA5E3D00959291000000000000000000000000000000
      00006491AE0043B0FF0047AFFF0043A9FB0043A8FA0046B2FF003875A000A1A1
      A100BCBCBC00556D86002F83D7003082D5002E88E1002C74BB00272A30002926
      2700818282000000000000000000000000000000000000000000929C8C004084
      0000418300003F8200003C8100003D8902004D9B130068AA2D0074B0390081B7
      46006DA33700D7D7D70000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E4A70A00EDB33900F0B8
      4D00EEB64D00EEB64D00EBB44D00E9B24D00E9B24D00E6AF4B00E4AA4400E4AA
      4400E1A43B00E1A43B00DF9F3300DD9B2E00DC982900DB952500DA922000D88F
      1B00D78C1B00C67F1800AA6B1A00000000007171AA001516520042241800B46C
      700079585D00A5A5A500AFB1B100DCEDEA00DCEFEA00E0EFEC00E7F3F100EAF4
      F200EAF4F200EBF6F400F3FEFC00D7E0DE0089888800BAB8B700BCB4B100BBB2
      AF00C3B6B100D7B2A300A97C6D00B4B4B3000000000000000000000000000000
      00005C86A0002F72AA003390D70048B3FF004EB7FF0052C0FF003E7BA300A5A5
      A60000000000788796002D86E0002B7AC8002A5E92002B44600029282A00302F
      3200989898000000000000000000000000000000000000000000A7ADA2003D80
      06003B8602003E930400439F070045A4070045A6080043A007004B911C006C8B
      5600ABB2A600E9E9E90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006461A30020187D0079589900A66C
      7400706D6D0000000000BEBEBE00BABEBD00D9EAE700E4F3F000E5F2F000EAF4
      F200EDF5F300F0F8F600FEFFFF00A5A5A500B0B0B00000000000000000000000
      0000BFBFBE00BDB6B400BCBBBB00000000000000000000000000000000000000
      000070899B0036567C00285483002B82C2003EA4EC003C9FE3004E6D8100BABA
      BA00000000008A8E93002B4B6D003A495B00453F3D00403A3800323234005454
      5500B9B9B9000000000000000000000000000000000000000000E9E9E900DBDB
      DA00D3D4D100C5C8C300B7BDB300AFB6AA00A7B0A000BCC0B900E4E4E400EAEA
      EA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000867F7E008F566100966DAA005952
      8300ADADAD000000000000000000BEBEBE00B9BBBA00D3DDDC00E7F3F000EEF8
      F500F3FAF900FCFFFF00BCBDBC00A3A3A3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A3ACB30040688A004D6E9800517AA400467FB0002E597D0097999A000000
      000000000000ABABAB004F4B4A00554F4C006F6B6A00535152004C4B4E00A4A4
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7B6B600968583006F5B5D008D8D
      95000000000000000000000000000000000000000000BABABA00BCBEBD00CBCE
      CD00CBCCCB00A4A4A400B4B4B400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094A3AC005A7F9B00527A9C005B788F00989B9E00000000000000
      00000000000000000000AFAFB000858586007A7A7A0081818200B1B1B1000000
      000000000000000000000000000000000000000000000000000000000000A074
      70009E706E009D706D009D6E6B009C6D6A009A6C6900996B6800996A67009869
      66009667650095666300956662009365600093635F0092625E0091605D009160
      5D00915F5C00905E5B000000000000000000000000000000000000000000A87D
      7800B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B58484000000000000000000000000000000000000000000A175
      7200FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00915F5C000000000000000000000000000000000000000000A87D
      7800F3E7D800F3E7D800F3E7D800F3E7D800F3E7D800F3E7D800F3E7D800F3E7
      D800F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2
      CF00B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500EFD6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B000000000000000000000000000000000000000000A176
      7300FEFEFC00FEFEFC00FEFEFC00FEFEFC00FEFEFC00FEFEFC00FEFEFC00FEFE
      FC00FEFEFC00FEFEFC00FEFEFC00FEFEFC00FEFEFC00FEFEFC00FEFEFC00FEFE
      FC00FEFEFC0091605D000000000000000000000000000000000000000000A87D
      7800F3E7D800F2E6D700FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000F0E2CF00F0E2
      CF00B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEC600F7DEBD00BDCE8C00E7D6A500E7D6A500EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B000000000000000000000000000000000000000000A479
      7500FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFB
      FA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFB
      FA00FEFBFA0093635E000000000000000000000000000000000000000000A87D
      7800F3E8DB00F3E7D900FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC
      9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00F0E2CF00F0E2
      CF00B78183000000000000000000000000000000000000000000000000000000
      00000000000000009A0000009A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009A0000009A000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7DECE00F7E7CE00F7DEC600F7DEC600CED69C00009C0000E7D6A5006BB5
      4A0039A5290039A529006BB54A00C6C67B00E7CE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B000000000000000000000000000000000000000000A57A
      7700FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFA
      F600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFA
      F600FEFAF60093645F000000000000000000000000000000000000000000A87D
      7800F4EADE00F4E9DC00F3E8DA00F3E7D900F2E6D700F2E5D500F1E4D400F1E4
      D200F0E3D000F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2
      CF00B78183000000000000000000000000000000000000000000000000000000
      000000009A001244FF000C30E60000009A000000000000000000000000000000
      00000000000000000000000000000000000000009A000028F200002CF9000000
      9A0000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C0000109C1000009C
      0000009C0000009C0000009C0000009C000094BD5A00E7CE9400EFCE9400EFCE
      9400EFCE9400B58C7B000000000000000000000000000000000000000000A67B
      7900FEF8F300FEF8F300FEF8F300FEF8F300FEF8F300FEF8F300FEF8F300FEF8
      F300FEF8F300FEF8F300FEF8F300FEF8F300FEF8F300FEF8F300FEF8F300FEF8
      F300FEF8F300956562000000000000000000000000000000000000000000A87D
      7800F4EBE000F3E9DE00FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000EFE1CE00EFE1
      CE00B78183000000000000000000000000000000000000000000000000000000
      9A001A4BFF001645FF001444FF000D2FE50000009A0000000000000000000000
      000000000000000000000000000000009A000027F0000030FF000030FF00002E
      FD0000009A00000000000000000000000000000000000000000000000000AD7B
      7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000C6C67B00EFCE9400EFCE
      9400EFCE9400B58C7B000000000000000000000000000000000000000000A97F
      7A00FEF7F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7
      F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7
      F000FEF7F000956663000000000000000000000000000000000000000000A87D
      7800EDE5DB00EDE4DA00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC
      9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00E8DAC800E8DA
      C800B78183000000000000000000000000000000000000000000000000000000
      9A001740F1001A4BFF001746FF001646FF000E30E40000009A00000000000000
      0000000000000000000000009A000129EF000030FF00002EFF000030FF000023
      E70000009A00000000000000000000000000000000000000000000000000AD84
      7B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C0000009C0000009C
      000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A52900EFCE9400EFCE
      9400EFCE9400B58C7B000000000000000000000000000000000000000000A980
      7D00FEF6ED00FEF6ED00FEF6ED00FEF6ED00FEF6ED00FEF6ED00FEF6ED00FEF6
      ED00FEF6ED00FEF6ED00FEF6ED00FEF6ED00FEF6ED00FEF6ED00FEF6ED00FEF6
      ED00FEF6ED00966865000000000000000000000000000000000000000000B288
      7E00D9D3CB00D9D2C900D9D1C700D8D0C700D7CFC500D7CEC400D6CEC200D6CD
      C000D6CCBF00D6CBBE00D6CABC00D5C9BA00D5C8B900D4C7B800D4C7B700D4C7
      B700B78183000000000000000000000000000000000000000000000000000000
      000000009A001940F0001C4CFF001847FF001646FF000F32E70000009A000000
      00000000000000009A00002BF7000232FF000331FF000131FF000023E4000000
      9A0000000000000000000000000000000000000000000000000000000000AD84
      7B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C0000009C0000009C
      000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C0800EFCE9C00EFCE
      9400EFCE9400B58C7B000000000000000000000000000000000000000000AB81
      7E00FEF3EA00FEF3EA00FEF3EA00FEF3EA00FEF3EA00FEF3EA00FEF3EA00FEF3
      EA00FEF3EA00FEF3EA00FEF3EA00FEF3EA00FEF3EA00FEF3EA00FEF3EA00FEF3
      EA00FEF3EA00986966000000000000000000000000000000000000000000A07A
      7100B5AFAA00B4AEA900B4ADA700B4ACA600B4ACA400B3ACA300B2ABA200B2AA
      A100B1A9A000B1A99E00B0A89D00B0A89C00B0A79A00B0A69A00B0A59900AFA4
      9800A47476000000000000000000000000000000000000000000000000000000
      00000000000000009A001A40EF001D4DFF001948FF001848FF001238EF000000
      9A0000009A00002BF800002FFF00002EFF000232FF000324E50000009A000000
      000000000000000000000000000000000000000000000000000000000000B58C
      7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C0000009C0000009C
      0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCEA5007BCE7B00EFCE
      9C00EFCE9400B58C7B000000000000000000000000000000000000000000AB83
      8000FEF2E700FEF2E700FEF2E700FEF2E700FEF2E700FEF2E700FEF2E700FEF2
      E700FEF2E700FEF2E700FEF2E700FEF2E700FEF2E700FEF2E700FEF2E700FEF2
      E600FCF0E600986A67000000000000000000A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A35228000000000000000000000000000000
      0000000000000000000000009A001B42F0001E4EFF001B4AFF001949FF000E38
      F6000431FD000131FF00002EFF000030FF000027F10000009A00000000000000
      000000000000000000000000000000000000000000000000000000000000B58C
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7CE00E7DEC600E7DE
      C600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6AD007BCE7B00EFCE
      9C00EFCE9400B58C7B000000000000000000000000000000000000000000AD86
      8200FEF0E300FEF0E300FEF0E300FEF0E300FEF0E300FEF0E300FEF0E300FEF0
      E300FEF0E300FEF0E300FEF0E300FEF0E300FEF0E300FEF0E300FEF0E300FCEF
      E200FCEFE2009A6B68000000000000000000A35228000000000000000000BA8E
      8200E7E2DD00E7E2DB00E6E0DA00E6E0D900E5DED700E5DED500E5DDD400E5DB
      D200E4DBD100E3D9CF00E3D9CD00E2D9CC00E2D8CB00E1D6C900E1D6C700E1D5
      C600B78183000000000000000000A35228000000000000000000000000000000
      000000000000000000000000000000009A001B42EF001F4FFF001745FF000E3D
      FF000939FF000634FF000333FF000128F00000009A0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD8C
      8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EFDE00F7E7D600EFE7
      C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6A500EFD6AD00EFCE
      A500EFCE9C00B58C7B000000000000000000000000000000000000000000AF87
      8300FEEFE100FEEFE100FEEFE100FEEFE100FEEFE100FEEFE100FEEFE100FEEF
      E100FEEFE100FEEFE100FEEFE100FEEFE100FEEFE100FEEFE100FCEEE000FCEE
      E000FCEDDE009A6D6A000000000000000000A35228000000000000000000BA8E
      8200DCD8D400DCD6D200D8754200D8754200D8754200D8754200D8754200D875
      4200D8754200D8754200D8754200D8754200D8754200D8754200D5CBBF00D5CA
      BD00B78183000000000000000000A35228000000000000000000000000000000
      00000000000000000000000000000000000000009A001B45F5001747FF001342
      FF000F3EFF000C3CFF000830F00000009A000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD94
      8400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EFE700F7EFDE00EFE7
      CE00009C0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6
      AD00EFCEA500B58C7B000000000000000000000000000000000000000000B089
      8400FFEEDE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00FFEE
      DE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00FFEDDD00FEEDDD00FEEDDD00FEEB
      DC00F7E6D4009D6E6C000000000000000000A35228000000000000000000AE87
      7700B7B5B100B6B4B000F6CAB300F6CAB300F6CAB300F6CAB300F6CAB300F6CA
      B300F6CAB300F6CAB300F6CAB300F6CAB300F6CAB300F6CAB300B1AAA100B1A9
      9F00A47476000000000000000000A35228000000000000000000000000000000
      00000000000000000000000000000000000000009A001F4DFC001D4CFF001A48
      FF001544FF001443FF00143CF00000009A000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C694
      8400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6A500EFEFD600EFE7
      CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6AD00F7D6B500EFD6
      AD00EFCEA500B58C7B000000000000000000000000000000000000000000B18A
      8700FFEBDA00FFEBDA00FFEBDA00FFEBDA00FFEBDA00FFEBDA00FFEBDA00FFEB
      DA00FFEBDA00FFEBDA00FFEBDA00FFEBDA00FEEAD900FEEAD900FCEAD800F7E3
      D000EBD9C4009E706D000000000000000000A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A35228000000000000000000000000000000
      000000000000000000000000000000009A002A58FC002756FF002251FF00204F
      FF001D4DFF001D4CFF001E4EFF00173EEF0000009A0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C000073C66B00CEDE
      B500CEDEB50039AD3900009C0000009C0000009C0000EFDEB500F7DEBD00F7D6
      B500EFD6AD00B58C7B000000000000000000000000000000000000000000B48C
      8800FFEAD800FFEAD800FFEAD800FFEAD800FFEAD800FFEAD800FFEAD800FFEA
      D800FFEAD800FFEAD800FFEAD800FEE9D700FEE9D700FCE7D500F6E1CC00EAD7
      C000DDCAB0009F736F000000000000000000000000000000000000000000C296
      8500FFFEFD00FFFEFD00FFFEFD00FFFEFD00FFFEFD00FBF7F300FBF7F300FAF5
      EF00FAF5EF00F8F1EB00F8F1EB00F7F1E900F7F1E900F6ECE200F6ECE200F6EC
      E200B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000009A002C56F4003160FF002B5AFF00295AFF002047
      F1001F46F1002454FF00204FFF001F4FFF00183FF00000009A00000000000000
      000000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000EFDEBD00F7DEBD00EFDE
      BD00DEC6A5009C847B000000000000000000000000000000000000000000B48E
      8A00FFE9D500FFE9D500FFE9D500FFE9D500FFE9D500FFE9D500FFE9D500FFE9
      D500FFE9D500FFE9D400FEE7D400FEE7D400FCE6D100F4DEC900E9D4BC00DCC7
      AC00CEBA9D00A17572000000000000000000000000000000000000000000CA9C
      8800FEFDFC00FDFCFA00FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000F5ECE300F5EB
      E100B78183000000000000000000000000000000000000000000000000000000
      00000000000000009A00325EF7003666FF003361FF003365FF00274FF0000000
      9A0000009A002047EF002656FF002251FF002151FF001840EF0000009A000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE9C00009C0000009C
      0000009C0000009C0000009C0000109C1000009C0000E7DEC600EFDEBD00CEBD
      AD00B5AD94009C847B000000000000000000000000000000000000000000B58F
      8B00FFE7D100FFE7D100FFE7D100FFE7D100FFE7D100FFE7D100FFE7D100FFE7
      D100FFE7D100FEE6D000FEE6D000FCE3CE00F3DDC500E7D1B700DAC5A900CCB8
      9900BDAB8A00A37673000000000000000000000000000000000000000000CEA0
      8900FFFFFF00FFFFFF00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC
      9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00F6EFE600F6EE
      E500B78183000000000000000000000000000000000000000000000000000000
      000000009A003865F7003C6DFF003867FF003869FF00284DE70000009A000000
      00000000000000009A001E41E7002757FF002352FF002252FF001A42F0000000
      9A0000000000000000000000000000000000000000000000000000000000CEA5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700CEEFCE0073C6
      6B0039AD390039AD390073C66300EFE7CE00009C0000C6D6AD00CEBDAD00BDB5
      A500B5AD9C009C847B000000000000000000000000000000000000000000B691
      8C00FFE6CF00FFE6CF00FFE6CF00FFE6CF00FFE6CF00FFE6CF00FFE6CF00FFE5
      CF00FEE5CE00FEE5CE00FBE2CB00F3DAC100E7CFB400D9C2A500CBB69600CEBC
      A000DDC7B000B58F88000000000000000000000000000000000000000000D2A3
      8A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F1E900F7F0
      E700B78183000000000000000000000000000000000000000000000000000000
      9A00406EFB004172FF003E6DFF003E6FFF002A4CE40000009A00000000000000
      0000000000000000000000009A001D40E4002859FF002452FF002353FF001C45
      F30000009A00000000000000000000000000000000000000000000000000D6A5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700E7DEC600AD84730084845A00AD7B7300AD7B
      7300AD7B7300AD8473000000000000000000000000000000000000000000B792
      8E00FFE3CC00FFE3CC00FFE3CC00FFE3CC00FFE3CC00FFE3CC00FFE3CB00FEE2
      CB00FEE2CB00FBE0C700F2D8BD00F4E9DC00FEFEFE00FEFEFC00FEF6EE00EED7
      CA00B58F8800000000000000000000000000000000000000000000000000D7A7
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFD00FEFCFA00FEFB
      F800FCF9F600FBF8F400FBF7F300FAF6F100FAF4EF00F9F3EE00F9F2EC00F7F1
      EA00B78183000000000000000000000000000000000000000000000000000000
      9A004676FD004576FF004475FF002E51E50000009A0000000000000000000000
      000000000000000000000000000000009A001E41E500295AFF002758FF001E48
      F30000009A00000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B58484000000000000000000000000000000000000000000B792
      8F00FFE2C900FFE2C900FFE2C900FFE2C900FFE2C900FFE2C900FEE1C700FEE1
      C700FADEC400F0D5BA00E5CBAC00F0E7DA00FEFCFB00FEF4EB00E3C9BD00AD84
      800000000000000000000000000000000000000000000000000000000000DAAB
      8D00FFFFFF00FFFFFF00FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000F9F4EF00F9F3
      ED00B78183000000000000000000000000000000000000000000000000000000
      000000009A004471F8003356E50000009A000000000000000000000000000000
      00000000000000000000000000000000000000009A002144E800244DF1000000
      9A0000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B5848400000000000000000000000000000000000000000000000000B895
      9100FFE1C600FFE1C600FFE1C600FFE1C600FFE0C500FEE0C500FEE0C500FADC
      C000EFD3B600E3C9A900D5BB9A00F8F3ED00FEF3E900D5B6AC00B58F88000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8E00FFFFFF00FFFFFF00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC
      9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FAF6F100FAF5
      EF00B78183000000000000000000000000000000000000000000000000000000
      00000000000000009A0000009A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009A0000009A000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      840000000000000000000000000000000000000000000000000000000000BA96
      9200FFE0C400FFE0C400FFE0C400FFDEC200FEDEC200FEDEC100F8D9BC00EFD0
      B200E2C6A500D4BA9700DDCAB100F8EBE000C7A59D00B58F8800000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFEFC00FEFCFA00FDFBF800FCF9F600FBF8F400FAF6
      F200B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      000000000000000000000000000000000000000000000000000000000000BB96
      9200FFDEC100FFDEC100FFDEC100FEDDC000FEDDC000F8D8BA00EDCFAF00E1C4
      A300D3B79500C9B08C00EBD8CB00BF9A9600B58F880000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FEFDFB00FEFBF900FDFAF700FBF8
      F500B78183000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400B5847300B5848400000000000000
      000000000000000000000000000000000000000000000000000000000000BB97
      9300BA969200BA969200BA959100BA939000B8928F00B7928F00B6918E00B590
      8C00B58F8B00B48E8A00B58F8800B58F88000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8F00DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA4
      8200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA4
      8200AA807C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00F00001FFFFFF000000000000F00001FF
      FFFF0000000000001000010001FF0000000000000000010001FF000000000000
      0000010001FF0000000000008000010001FF000000000000C000010001FF0000
      00000000E000010001FF000000000000F000010001FF000000000000F0000100
      01FF000000000000F000010001FF000000000000F000010001FF000000000000
      F000010001FF000000000000F000010001F0000000000000F000010001800000
      00000000F00001000000000000000000F00001000000000000000000F0000100
      0000000000000000F00003000000000000000000F00007000000000000000000
      F0000FFF8000000000000000F0001FFFE080000000000000F0003FFFFFF00000
      00000000F0007FFFFFFF000000000000E00003FF0000FFFFFFFFFFFFE00003FF
      0000FF007FC7FFFFE00003000000FF007F83FFFFE00003000000FC001F81FFFF
      E00003000000F8000F80FFFFE00003000000E00003C07FFFE00003000000C000
      01E03FFFE00003000000800000F01FFFE00003000000800000F81FFFE0000300
      0000800000FC1C1FE00003000000800000FE0007E00003000000800000FFC003
      E00003000000800000FFC001E00003000000800000FFC001E000030000008000
      00FF8000E00003000000C00001FF8000E0000300003FC00001FF8000E0000300
      003FE00003FF8000E0000300003FFE003FFF8000E0000700003FFE003FFFC001
      E0000F00007FFE003FFFC001E0001F0000FFFE007FFFE003E0003F0001FFFE00
      FFFFF007FFFFFF0003FFFE01FFFFFC1FFFFFFFFFFFFFFFC1FFFFC1FFFFFE0FFF
      FFFFFF001FFF001FFFF003FFFFFFFE0003FE0001FFC001800001F80000F80000
      FF0001000000E00000E00000FC0001000000C00000C00000F000010000000000
      00000000C00001000000000000000000C00001000000000000000000C0000300
      0000000001000001C00007000000000000000003C0001F000000000000000001
      C0001F000000000000000001C0001F000000E00000800001C0001F000000F000
      00C00003C0003F000000E00000C00007C0003F000000E00000E0000FC000FF00
      0000800000F01007C003FF000000800000F00007C003FF000000000000F00007
      C003FF800001000000F00807C003FFFFFFFF040071F00807C00FFFFFFFFF0600
      FFF0180FFFFFFFFFFFFF0F81FFF83C1FE00003E00007FFFFFFE00003E00003E0
      0007FFFFFFE00003E00003E00007FFFFFFE00003E00003E00007F9FF9FE00003
      E00003E00007F0FF0FE00003E00003E00007E07E07E00003E00003E00007E03C
      07E00003E00003E00007F0180FE00003E00003E00007F8001FE00003E0000300
      0000FC003FE00003E00003600006FE007FE00003E00003600006FF00FFE00003
      E00003600006FF00FFE00003E00003000000FE007FE00003E00003E00007FC00
      3FE00003E00003E00007F8001FE00003E00003E00007F0180FE00003E00003E0
      0007E03C07E00003E00007E00007E07E07E00003E0000FE00007F0FF0FE00007
      E0001FE00007F9FF9FE0000FE0003FE00007FFFFFFE0001FE0007FE00007FFFF
      FFE0003FE000FFE00007FFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object popBil: TTBXPopupMenu
    Images = ImageList16
    Left = 721
    Top = 126
    object TBXItem20: TTBXItem
      Action = acOppdater
    end
    object TBXSeparatorItem5: TTBXSeparatorItem
    end
    object TBXItem19: TTBXItem
      Action = acEndre
    end
    object TBXItem22: TTBXItem
      Action = acSlett
    end
    object TBXSeparatorItem6: TTBXSeparatorItem
    end
    object TBXItem21: TTBXItem
      Action = acRegKmStand
    end
  end
  object popService: TTBXPopupMenu
    Images = ImageList16
    Left = 721
    Top = 158
    object TBXItem24: TTBXItem
      Action = acOppdater
    end
    object TBXSeparatorItem7: TTBXSeparatorItem
    end
    object TBXItem23: TTBXItem
      Action = acEndre
    end
    object TBXItem25: TTBXItem
      Action = acSlett
    end
  end
end
