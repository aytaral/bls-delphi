object frmCRM: TfrmCRM
  Left = 227
  Top = 126
  Caption = 'BLS Business'
  ClientHeight = 492
  ClientWidth = 952
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object sbMain: TTBXStatusBar
    Left = 0
    Top = 470
    Width = 952
    Panels = <
      item
        Size = 250
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
  end
  object PnlMeny: TPanel
    Left = 0
    Top = 0
    Width = 952
    Height = 59
    Align = alTop
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 1
    object TBXDock1: TTBXDock
      Left = 0
      Top = 0
      Width = 952
      Height = 25
      object TBXToolbar1: TTBXToolbar
        Left = 0
        Top = 0
        Caption = 'Hovedmeny'
        DockMode = dmCannotFloatOrChangeDocks
        Images = ImageList16
        TabOrder = 0
        object TBXSubmenuItem1: TTBXSubmenuItem
          Caption = '&Fil'
          object TBXItem38: TTBXItem
            Action = acNy
          end
          object TBXSeparatorItem8: TTBXSeparatorItem
          end
          object TBXSubmenuItem10: TTBXSubmenuItem
            Caption = 'Import'
            object TBXItem33: TTBXItem
              Action = acImport
            end
          end
          object TBXItem39: TTBXItem
            Action = acPrint
          end
          object TBXSeparatorItem12: TTBXSeparatorItem
          end
          object TBXSubmenuItem18: TTBXSubmenuItem
            Caption = 'Eksport'
            object TBXItem77: TTBXItem
              Action = acFakturaLagre
            end
            object TBXItem80: TTBXItem
              Action = acProdLagre
            end
            object TBXSeparatorItem29: TTBXSeparatorItem
            end
            object TBXItem81: TTBXItem
              Action = acExport
            end
          end
          object TBXSubmenuItem17: TTBXSubmenuItem
            Caption = 'Send'
            object TBXItem76: TTBXItem
              Action = acFakturaEmailKunde
            end
            object TBXItem78: TTBXItem
              Action = acProdEmail
            end
            object TBXItem79: TTBXItem
              Action = acProdEmailKunde
            end
          end
          object TBXSeparatorItem28: TTBXSeparatorItem
          end
          object TBXItem12: TTBXItem
            Action = acLogin
          end
          object TBXItem11: TTBXItem
            Action = acLogout
          end
          object TBXItem37: TTBXItem
            Action = acAvslutt
          end
        end
        object TBXSubmenuItem2: TTBXSubmenuItem
          Caption = '&Rediger'
          object TBXItem24: TTBXItem
            Action = acEndre
          end
          object TBXItem27: TTBXItem
            Action = acSlett
          end
          object TBXItem29: TTBXItem
            Action = acOppdater
          end
          object TBXSeparatorItem4: TTBXSeparatorItem
          end
          object TBXItem57: TTBXItem
            Action = acBetaling
          end
          object TBXItem71: TTBXItem
            Action = acFakturaStatus
          end
          object TBXItem32: TTBXItem
            Action = acLeggTilKonto
          end
          object TBXItem30: TTBXItem
            Action = acKategori
          end
          object TBXSeparatorItem18: TTBXSeparatorItem
          end
          object TBXSubmenuItem11: TTBXSubmenuItem
            Caption = 'Firmainformasjon'
            object TBXItem42: TTBXItem
              Action = acKlient
            end
            object TBXSeparatorItem19: TTBXSeparatorItem
            end
            object TBXItem43: TTBXItem
              Action = acNyKlient
            end
          end
          object TBXSeparatorItem30: TTBXSeparatorItem
          end
          object TBXItem82: TTBXItem
            Action = acInnstillinger
          end
        end
        object TBXSubmenuItem3: TTBXSubmenuItem
          Caption = '&S'#248'k'
          object TBXItem41: TTBXItem
            Action = acSok
          end
          object TBXSeparatorItem13: TTBXSeparatorItem
          end
          object TBXItem19: TTBXItem
            Action = acPostnrSok
          end
          object TBXItem31: TTBXItem
            Action = acKontoListe
          end
        end
        object TBXSubmenuItem4: TTBXSubmenuItem
          Caption = '&Vis'
          object TBXItem8: TTBXItem
            Action = acSalg
          end
          object TBXItem7: TTBXItem
            Action = acKontakter
          end
          object TBXItem6: TTBXItem
            Action = acProdukter
          end
          object TBXItem5: TTBXItem
            Action = acRegnskap
          end
        end
        object TBXSubmenuItem15: TTBXSubmenuItem
          Caption = 'Rapport'
          object TBXItem70: TTBXItem
            Action = acRapport
          end
        end
        object TBXSubmenuItem5: TTBXSubmenuItem
          Caption = 'V&erkt'#248'y'
          object TBXItem84: TTBXItem
            Action = acSalgstall
          end
          object TBXSeparatorItem42: TTBXSeparatorItem
          end
          object TBXItem86: TTBXItem
            Action = acPerioder
          end
          object TBXItem100: TTBXItem
            Action = acKontoOppslag
          end
          object TBXItem98: TTBXItem
            Action = acGenererBilag
          end
          object TBXItem87: TTBXItem
            Action = acMvaPeriode
          end
          object TBXSeparatorItem41: TTBXSeparatorItem
          end
          object TBXItem69: TTBXItem
            Action = acPrisHistorikk
          end
          object TBXSeparatorItem25: TTBXSeparatorItem
          end
          object TBXSubmenuItem8: TTBXSubmenuItem
            Caption = 'Sikkerhetskopiering'
            object TBXItem15: TTBXItem
              Action = acBackup
            end
            object TBXSeparatorItem3: TTBXSeparatorItem
            end
            object TBXItem22: TTBXItem
              Action = acRestore
            end
          end
          object TBXItem17: TTBXItem
            Action = acAdmin
          end
          object TBXSeparatorItem1: TTBXSeparatorItem
          end
          object TBXItem14: TTBXItem
            Action = acCalc
          end
        end
        object TBXSubmenuItem6: TTBXSubmenuItem
          Caption = '&Online'
          object TBXItem18: TTBXItem
            Action = acPostImport
          end
          object TBXSubmenuItem9: TTBXSubmenuItem
            Caption = 'Firmainformasjon'
            object TBXItem20: TTBXItem
              Action = acPureHelp
            end
            object TBXItem21: TTBXItem
              Action = acBrReg
            end
          end
        end
        object TBXSubmenuItem7: TTBXSubmenuItem
          Caption = '&Hjelp'
          object TBXSubmenuItem19: TTBXSubmenuItem
            Caption = 'Internett'
            object tbxHelp1: TTBXItem
              Caption = 'Regler for purring og inkasso'
              OnClick = tbxHelp1Click
            end
            object TBXSeparatorItem33: TTBXSeparatorItem
            end
            object tbxHelp4: TTBXItem
              Caption = 'Guide for regnskapsf'#248'ring'
              OnClick = tbxHelp4Click
            end
            object tbxHelp2: TTBXItem
              Caption = 'Guide for merverdiavgift'
              OnClick = tbxHelp2Click
            end
            object tbxHelp3: TTBXItem
              Caption = 'Guide for fradrag'
              OnClick = tbxHelp3Click
            end
          end
          object TBXSeparatorItem32: TTBXSeparatorItem
          end
          object TBXItem85: TTBXItem
            Action = acLisens
          end
          object TBXItem40: TTBXItem
            Action = acAbout
          end
        end
      end
    end
    object TBXDock2: TTBXDock
      Left = 0
      Top = 25
      Width = 952
      Height = 34
      object TBXToolbar2: TTBXToolbar
        Left = 385
        Top = 0
        Caption = 'Moduler'
        DockPos = 377
        Images = ImageList24
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object TBXItem4: TTBXItem
          Action = acSalg
          DisplayMode = nbdmImageAndText
          GroupIndex = 1
        end
        object TBXSeparatorItem5: TTBXSeparatorItem
          Blank = True
          Size = 2
        end
        object TBXItem3: TTBXItem
          Action = acKontakter
          DisplayMode = nbdmImageAndText
          GroupIndex = 1
        end
        object TBXSeparatorItem6: TTBXSeparatorItem
          Blank = True
          Size = 2
        end
        object TBXItem2: TTBXItem
          Action = acProdukter
          DisplayMode = nbdmImageAndText
          GroupIndex = 1
        end
        object TBXSeparatorItem7: TTBXSeparatorItem
          Blank = True
          Size = 2
        end
        object TBXItem1: TTBXItem
          Action = acRegnskap
          DisplayMode = nbdmImageAndText
          GroupIndex = 1
        end
      end
      object TBXToolbar3: TTBXToolbar
        Left = 276
        Top = 0
        Caption = 'Eksterne Verkt'#248'y'
        Images = ImageList24
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        object TBXItem16: TTBXItem
          Action = acAdmin
        end
        object TBXItem13: TTBXItem
          Action = acBackup
        end
        object TBXSeparatorItem2: TTBXSeparatorItem
        end
        object TBXItem9: TTBXItem
          Action = acCalc
        end
      end
      object TBXToolbar4: TTBXToolbar
        Left = 0
        Top = 0
        Caption = 'Standard'
        Images = ImageList24
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        object TBXItem10: TTBXItem
          Action = acNy
        end
        object TBXItem23: TTBXItem
          Action = acEndre
        end
        object TBXItem26: TTBXItem
          Action = acSlett
        end
        object TBXSeparatorItem9: TTBXSeparatorItem
        end
        object TBXItem36: TTBXItem
          Action = acPreview
        end
        object TBXItem34: TTBXItem
          Action = acPrint
        end
        object TBXSeparatorItem11: TTBXSeparatorItem
        end
        object TBXItem28: TTBXItem
          Action = acOppdater
        end
        object TBXItem35: TTBXItem
          Action = acSok
        end
        object TBXSeparatorItem10: TTBXSeparatorItem
        end
        object TBXItem25: TTBXItem
          Action = acRapport
        end
      end
    end
  end
  object pnlBack: TPanel
    Left = 0
    Top = 59
    Width = 952
    Height = 411
    Align = alClient
    BevelOuter = bvNone
    Color = clAppWorkSpace
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      952
      411)
    object Label5: TLabel
      Left = 710
      Top = 374
      Width = 162
      Height = 14
      Anchors = [akRight, akBottom]
      Caption = 'Bj'#248'rn Larsen Software '#169' 2005'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      ExplicitLeft = 766
      ExplicitTop = 607
    end
    object Label3: TLabel
      Left = 687
      Top = 341
      Width = 185
      Height = 32
      Anchors = [akRight, akBottom]
      Caption = 'BLS Business'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
      ExplicitLeft = 743
      ExplicitTop = 574
    end
    object Label2: TLabel
      Left = 686
      Top = 340
      Width = 185
      Height = 32
      Anchors = [akRight, akBottom]
      Caption = 'BLS Business'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
      ExplicitLeft = 742
      ExplicitTop = 573
    end
    object Label4: TLabel
      Left = 709
      Top = 373
      Width = 162
      Height = 14
      Anchors = [akRight, akBottom]
      Caption = 'Bj'#248'rn Larsen Software '#169' 2005'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      ExplicitLeft = 765
      ExplicitTop = 606
    end
    object Image1: TImage
      Left = 878
      Top = 340
      Width = 48
      Height = 48
      Anchors = [akRight, akBottom]
      AutoSize = True
      ExplicitLeft = 697
      ExplicitTop = 508
    end
    object pnlMain: TPanel
      Left = 0
      Top = 0
      Width = 952
      Height = 411
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 5
      ParentBackground = False
      TabOrder = 0
      Visible = False
      object Pc: TPageControl
        Left = 5
        Top = 5
        Width = 942
        Height = 401
        ActivePage = tsFaktura
        Align = alClient
        HotTrack = True
        TabOrder = 0
        Visible = False
        OnChange = PcChange
        object tsAbo: TTabSheet
          Caption = '&Abonnement'
          ImageIndex = 8
          object blsBorderPanel8: TblsBorderPanel
            Left = 0
            Top = 0
            Width = 934
            Height = 373
            Align = alClient
            BorderWidth = 5
            Caption = 'blsBorderPanel8'
            TabOrder = 0
            object Splites10: TSplites
              Left = 206
              Top = 6
              Width = 5
              Height = 361
              ExplicitHeight = 594
            end
            object Panel10: TPanel
              Left = 6
              Top = 6
              Width = 200
              Height = 361
              Align = alLeft
              BevelOuter = bvLowered
              TabOrder = 0
              DesignSize = (
                200
                361)
              object Label16: TLabel
                Left = 12
                Top = 339
                Width = 67
                Height = 13
                Anchors = [akLeft, akBottom]
                Caption = 'Registrert av:'
                ExplicitTop = 572
              end
              object DBText9: TDBText
                Left = 84
                Top = 339
                Width = 65
                Height = 17
                Anchors = [akLeft, akBottom]
                DataField = 'BRUKER'
                DataSource = Dm.dsAbo
                ExplicitTop = 572
              end
              object BitBtn6: TBitBtn
                Left = 12
                Top = 50
                Width = 177
                Height = 35
                Action = acProcessAbo
                Caption = 'Prosesser abonnement'
                DoubleBuffered = True
                Glyph.Data = {
                  36090000424D3609000000000000360000002800000018000000180000000100
                  2000000000000009000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0099330000993300009933
                  0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF009933000099330000CC7D3900E6A6
                  610099330000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF0099330000993300009933000099330000AC4B0D00F9B55500FFC6
                  7100D28A48009933000099330000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00993300009F390000CC6A0A00FF9C0900FFA41B00FFAD3100FFB64700FFBE
                  5D00FFC77200FFD08800FFD99E0099330000FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF0099330000A9430000B9591000FFA41B00FF9D0A00FFA51D00FFAD3300FFB6
                  4900FFBF5E00FFC87400FFD18A0099330000FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF0099330000AE480000B3551600FFB23F00FFA31800D9760700A6410400A643
                  0800D9873200FFC06000FFC9760099330000FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009933
                  0000A74100009B350000DF9F5E00FFC16300E6922E0099330000993300009B35
                  00009A340000E6983C00FFC06200D990470099330000FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0099330000BD57
                  0000A6491700ECC19300FFDEAB00FFCF870099330000FF00FF00FF00FF009933
                  00009F390000CC731F00FFB84E00FFC16400ECAD600099330000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF0001689B0001689B002A809C00BF67
                  0B009F3E0B00ECC19300FFE2B500FFDDA90099330000FF00FF00FF00FF009933
                  0000A53F0000CC6F1500FFB03A00FFB95000ECA7520099330000FF00FF00FF00
                  FF00FF00FF00FF00FF0001689B0001689B000875A30062CDEA007AD7EF003D6E
                  7A0084552B007B4F3300ECC19300FFE2B500F2C8940099330000993300009933
                  00009D370000E6850D00FFA82600F2A1340099330000FF00FF00FF00FF00FF00
                  FF00FF00FF0001689B0013A9D4001EABD4002FB4D90066E2FE007FE7FF0069C9
                  E4005DB8D50069BAD50056727300FFE2B500FFE2B500DFA87500993300009933
                  0000DF862100FF9E0C00FFA0120099330000FF00FF00FF00FF00FF00FF00FF00
                  FF0001689B000E83AF0029D6FE001DD4FE0035D8FE004EDDFE0068E2FE0081E7
                  FF009AECFF009EE3F40059767800FFE2B500FFE2B500FFE2B500FFDAA100FFCA
                  7A00FFBA5300FFAB2B00FF9D0B0099330000FF00FF00FF00FF00FF00FF00FF00
                  FF0001689B000A81AE0052DEFE0026D5FE001ECFF90027B2D9003BBBDF006AE2
                  FE0083E7FF0076D1EA009C886F00FFE2B500F2CC9E00FFE2B500FFE2B400FFD9
                  9E00FFC97700F9B14A00FFA9280099330000FF00FF00FF00FF00FF00FF000168
                  9B000782B2002A95BB007CE6FF004FDDFE00016C9F00016C9F000571A100279E
                  C4006CE3FE0074DAF400337C9400883D1500A53F0000AC542200FFE2B500FFE1
                  B300AC521D009933000099330000FF00FF00FF00FF00FF00FF0001689B000993
                  C30054ACCA00BAEDFA00A6EEFF00016C9F00FF00FF00FF00FF00016C9F000878
                  A60055DEFE006EE3FF0076DBF4003194B60099330000B24C0000D2956600D295
                  660099330000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0001689B000B9F
                  CE0054ACCA00C9F5FF00C5F4FF00016C9F00FF00FF00FF00FF00016C9F00097D
                  AB003EDAFE0057DFFE006ADDF90001689B00FF00FF0099330000993300009933
                  0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000168
                  9B000B99C70054ACCA00C9F5FF00C3F4FF00016C9F00016C9F000881B100119A
                  C40026D5FE0040DAFE0001689B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF0001689B000E9BC700C9F5FF00C9F5FF00B8EDFA0063BEDA004DBFDF003FDA
                  FE001BD3FE0028D6FE0001689B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF0001689B001A9AC300C9F5FF00C9F5FF00C9F5FF00BFF3FF0097EBFF0069E2
                  FE003CDAFE001BD3FE0001689B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF0001689B0083C9DF006CBBD5008FD0E400C9F5FF00BDF3FF0055BB
                  DA0001689B0001689B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF0001689B0001689B000F99C400B2E6F4008FD0E4000168
                  9B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF0001689B0001689B0001689B00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                ParentDoubleBuffered = False
                Spacing = 10
                TabOrder = 1
              end
              object TBXLabel8: TTBXLabel
                Left = 12
                Top = 12
                Width = 176
                Height = 14
                Anchors = [akLeft, akTop, akRight]
                Caption = 'Abonnementinformasjon:'
                Underline = True
                UnderlineColor = clNavy
              end
              object BitBtn11: TBitBtn
                Left = 12
                Top = 91
                Width = 177
                Height = 35
                Action = acAboHistorikk
                Caption = 'Abonnment historikk'
                DoubleBuffered = True
                Glyph.Data = {
                  36090000424D3609000000000000360000002800000018000000180000000100
                  2000000000000009000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00908E8E00908E
                  8E00908E8E00908E8E00908E8E00908E8E00908E8E00908E8E00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF008F8E8D00908E8E00BBB9B900D7D6
                  D600D3D3D300CDCDCF00CACACA00D3CBCB00D3CBCB00B8B3B300908E8E00908E
                  8E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00908E8E00908E8E00B9B7B700E6E5E500CDCDCF00AAA9
                  AA00918F8D0089857D008C877B008E888500A29A9900C6B9BA00DECCCC00B6AA
                  AA00908E8E00908E8E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00908E8E00908E8E00EBEAEB00DADADB00969696008C897D00AEA9
                  9300CAC4AD00BAB8BD00A6A9BD00CDC6B000B3AA94008B8374008B7C7900CFBC
                  BD00E5CCCB00908E8E00908E8E00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00908E8E00908E8E00F3F2F300D5D4D50084827E00AEA99300F6F1DA00FFFF
                  F400FFFFF200AAB5F1005774F500FFFFF800FFFFFF00FCFAEB00BAB5A1006E67
                  5F00BBA5A500F0D0D000908E8E00908E8E00FF00FF00FF00FF00FF00FF00FF00
                  FF00908E8E00F5F4F400D4D3D4004D7B4A0050924800FFFFF000F8EAD600F6D7
                  B400F3C99B00EABD9400EABD9400F4CCA200F9E4C800FFFDF600FFFFFF00DEDB
                  CB007A716400BBA5A500EECCCB00908E8E00FF00FF00FF00FF00FF00FF00908E
                  8E00C2C0C000F2F1F200698567000C8518000C8518008CB27300F7DBAC00F4D1
                  A100F3CA9800F3C38E00F2BB8300EFBA8300F3CC9900FBEBC400FFFCED00FFFF
                  FF00DEDBCB006B615800D8BABA00BEABAB00908E8E00FF00FF00FF00FF00908E
                  8E00FEFDFD0090A791000C8518004ED2770059E289000C8518009CBF7E00FDF0
                  C600FAE9BE00F8DDB000F4D1A100F1C49100F2C99700F6D9AB00FAE6BB00FBF4
                  E200FFFFFF00B3AA940088767300F5CECE00908E8E00FF00FF00908E8E00CFCE
                  CE00C4D8C5000C8518003DC25F0057E185005BE48C0050D67B000C851800B6D5
                  9B00FFFDD700FDF6CE00FAE9BE00F5D4A800F2C99800F2C99700F3CC9900F4D1
                  A100FDF6EB00FBF4E2007A716400DBB9B900CEB5B400908E8E00908E8E00F9F8
                  F8000C85180043D2690043D2690049D4710053DC7F005DE68E004ACE73000C85
                  1800D7E8B900FFFFDC00FFFFDA00FDF0C600F6D9AB00F2C79400EFBE8900EFBA
                  8300F6D7B400FFFFFF00A6958B00A6958B00F7CFCE00908E8E00908E8E000C85
                  18002FC24B002FC24B0035C354003ECB610047D36F0052DB7E005DE68D0040BF
                  62000C851800D2DAB400CDCAB000FFFDD700FFFCD000FFE0AE00FCCA9300F2BB
                  8300F1C49700FFFFF700C2B9A7008B7C7900F7CECD00908E8E000C8518000C85
                  18000C8518000C85180029B9420032C251003FCD620030B14C000C8518000C85
                  18000C8518000C8518006168630076776C00A2A28F009E937B009D876D00CDA4
                  7900F3C38E00AAB5F100A6A9BD008A786F00F1C9C800908E8E00908E8E00FFFF
                  FF00719B6E00187C1E001CAC2F0028B9410034C45200199228009AC38700DEEC
                  C000BFCEA400637564007F82820028282900363636003436360034353600CDA4
                  7900F5C492005774F5007987BB0092817300F1C9C800908E8E00908E8E00FFFE
                  FE00C6C6C600488C41000C8518001DB2320029BA4200148B2000CCE1C400FFFF
                  DC00FFFFDA00BFBFA700828276003131320076776C00EBEACA00EDD8AE00EDC2
                  9000F2C79400FDF6EB00BDBAA50095858300F6CDCC00908E8E00908E8E00F9F7
                  F800DADADB00739A65000C85180013AA22001DB13100118D1E00AED0B000FFFF
                  F700FFFFDF00FFFFDF00FFFFE400B9B9A300313132007A786B00FAE9BE00FAD1
                  9C00F5D4A800FFFFEE00A9A49000AE969700F7CECD00908E8E00908E8E00CFCD
                  CE00F9F7F8009EA591000C8518000DA11A0012A9210010951D005DA16000FFFF
                  FF00FFFFF800FFFFE600FFFFDA00FFFFE200C0C0A9002E3032006B655900ECCC
                  9E00FCEBCC00F8F4D9008A857B00DAB9BA00CEB4B400908E8E00FF00FF00908E
                  8E00FDFCFC00C9C9C9004A8B40000B9115000EA71C000FA21C000C851800C9E0
                  CA00FFFFFF00FFFFFF00FFFFF400FFFFE400FFFFE600D0CFB50035353400716C
                  6600FFFFE800BDBAA50095858300F7CFCE00908E8E00FF00FF00FF00FF00908E
                  8E00C4C2C200EFF0F0009FA99500127D17000EA01A000FA81C000D9718000C85
                  1800B5D4B700FFFFFF00FFFFFF00FFFFFF00FFFFF800FFFFEA00CDCAB000CAC8
                  BA00EBEACA0087857F00D8BABA00BFABAB00908E8E00FF00FF00FF00FF00FF00
                  FF00908E8E00F5F4F400DBDCDD0074976C00087B0E000D9D19000FA91D000E9D
                  19000C85180047984B0088BB8C00B6D5B800D3E6D400DAEAD500E6F1D400F2F3
                  D20096948A00C6AEAF00EECCCB00908E8E00FF00FF00FF00FF00FF00FF00FF00
                  FF00908E8E00908E8E00EFF0F000D6D7D900829E78000C8518000C8518000C9A
                  18000EA01B00109B1D00108E1B000C8518000C8518000C851800609C57009D99
                  9200BCAAAB00EDCECD00908E8E00908E8E00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00908E8E00908E8E00EBEAEB00DEDEDF00AEB5AC00729767000C85
                  18000C8518000C8518000C8518000C85180073A46C008CA18100A3A09A00D5C0
                  C100E5CCCB00908E8E00908E8E00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00908E8E00908E8E00B9B8B900E1E1E100D0D2D300BEBC
                  BB00B8B4B000BBB5AD00BDB5AC00B4AFAA00B7B0AE00CABDBE00DECCCC00B6AA
                  AA00908E8E00908E8E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF008F8F8F00908E8E00B7B6B600D1D1
                  D100CECECF00C8C9CA00C6C6C600CEC6C600CEC6C600B5B0B000908E8E00908E
                  8E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00908E8E00908E
                  8E00908E8E00908E8E00908E8E00908E8E00908E8E00908E8E00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                ParentDoubleBuffered = False
                Spacing = 10
                TabOrder = 2
              end
            end
            object dbgAbo: TJvDBGrid
              Left = 211
              Top = 6
              Width = 717
              Height = 361
              Align = alClient
              DataSource = Dm.dsAbo
              Options = [dgAlwaysShowEditor, dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              PopupMenu = popAbo
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = dbgAboDrawColumnCell
              OnDblClick = acEndreExecute
              TitleButtons = True
              OnTitleBtnClick = dbgKontoTitleBtnClick
              OnTitleBtnDblClick = dbgKontoTitleBtnDblClick
              AutoSizeColumns = True
              AutoSizeColumnIndex = 2
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
                  FieldName = 'FORFALL'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Neste forfall'
                  Width = 72
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'KUNDENR'
                  Title.Caption = 'Kundenr'
                  Width = 45
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NAVN'
                  Title.Caption = 'Kundenavn'
                  Width = 53
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'GJENTAGELSE'
                  Title.Caption = 'Gjent.'
                  Width = 35
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'BESKRIVELSE'
                  Title.Caption = 'Intervall'
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TITTEL'
                  Title.Caption = 'Beskrivelse'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SUMEKS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Sum eks.'
                  Width = 62
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SUMMVA'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Mva'
                  Width = 62
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SUMRAB'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clMaroon
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Rabatt'
                  Width = 62
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SUMTOT'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Totalt'
                  Width = 62
                  Visible = True
                end>
            end
          end
        end
        object tsOrdre: TTabSheet
          Caption = 'Tilbud && &Ordre'
          object blsBorderPanel9: TblsBorderPanel
            Left = 0
            Top = 0
            Width = 934
            Height = 373
            Align = alClient
            BorderWidth = 5
            Caption = 'blsBorderPanel8'
            TabOrder = 0
            object Splites9: TSplites
              Left = 206
              Top = 6
              Width = 5
              Height = 361
              ExplicitHeight = 594
            end
            object Panel11: TPanel
              Left = 6
              Top = 6
              Width = 200
              Height = 361
              Align = alLeft
              BevelOuter = bvLowered
              TabOrder = 0
              DesignSize = (
                200
                361)
              object Label14: TLabel
                Left = 12
                Top = 339
                Width = 67
                Height = 13
                Anchors = [akLeft, akBottom]
                Caption = 'Registrert av:'
                ExplicitTop = 572
              end
              object DBText7: TDBText
                Left = 84
                Top = 339
                Width = 65
                Height = 17
                Anchors = [akLeft, akBottom]
                DataField = 'BRUKER'
                DataSource = Dm.dsOrdre
                ExplicitTop = 572
              end
              object TBXLabel9: TTBXLabel
                Left = 12
                Top = 12
                Width = 176
                Height = 14
                Anchors = [akLeft, akTop, akRight]
                Caption = 'Ordreinformasjon:'
                Underline = True
                UnderlineColor = clNavy
              end
              object BitBtn9: TBitBtn
                Left = 12
                Top = 132
                Width = 177
                Height = 35
                Caption = 'Registrer levering'
                DoubleBuffered = True
                Enabled = False
                Glyph.Data = {
                  F6060000424DF606000000000000360000002800000018000000180000000100
                  180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
                  FF00FFFF00FFFF00FF006EA2006EA2006EA2006EA2006EA2FF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FF006EA2006EA2006EA2006EA20084B90094C7007BAF0088BB009ACD
                  006EA2006EA2006EA2006EA2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FF006EA200A4D800B1E400B4E700B0E300A6D9009FD200
                  7BAF008BBE00A6D900A2D500A0D30099CC008FC3006EA2006EA2FF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006EA200D4FF00D1FF00C6F900BA
                  EF00B1E400A9DC007FB3008DC000A8DB00A2D500A0D3009ED1009ED100A1D400
                  6EA2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006EA200D7FD
                  00D3FF00CEFF00C8FB00BEF100B8EB0084B7008FC300ADE000A7DA00A7DA00A3
                  D700A2D500A3D7006EA2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FF006EA201E3FD00DDFF00D4FF00CEFF00CAFD00C6F9008BBE0092C600B3E6
                  00A8DB0095C30092C0008FBE0090BF0073A3FF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FF006EA201F3FD01EBFF00DFFF00D6FF00D1FF00D3FF00
                  90C40096C900BAEFC3A8A5C3A8A5C3A8A5C3A8A5C3A8A5C3A8A5C3A8A5C3A8A5
                  C3A8A5C3A8A5C3A8A5C3A8A5C3A8A5C3A8A5006EA201FDFD01FBFF01EDFE01E5
                  FF00DFFF00E0FF0096C9009DD100C6FBC3A8A5FFF1ECFFFEFDFFFEFDFFFEFDFF
                  FFFEFFFFFFFCFBFCFCFBFCFCFCFCFCFCFCFCFCFCFCFBFCC3A8A5006EA201FFFF
                  01FFFF01FCFF01E6F700C4E500ACD4007CAE007FB3009ED4C3A8A5FFF5F1FEFD
                  FDFCFBFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFAFCFBFAFFFFFFC3
                  A8A5006EA201B7CF0198B9007EA80071A100689C006DA1006B9F006DA100689F
                  C3A8A5FFF9F4B27E73B27E73B27E73B27E73B27E73B27E73B27E73B27E73B27E
                  73B27E73F6EEE7C3A8A5006EA2006FA70080B7008FC40095C90099CC009DD100
                  7CB0008CBE00A1D7C3A8A5FFF6EFFFF6EFFFF6EFFFF6EFFFF6EFFFF6EFFFF6EF
                  FFF6EFFFF6EFFFF6EFFFF6EFFFF6EFC3A8A5006EA200CAFD00CCFF00C1F400B6
                  E900A9DC00A1D4007BAF008DC000A6DCC3A8A5FFF1E9B27E73B27E73B27E73B2
                  7E73B27E73B27E73B27E73B27E73B27E73B27E73FCF4EEC3A8A5006FA300D3FF
                  00D1FF00CAFD00C1F400B8EB00B0E30081B5008FC300ABE1C3A8A5FFF2EAFCF4
                  EE006600FCF4EEFCF4EEFCF4EEFCF4EEFCF4EEFCF4EEFCF4EEFCF4EEFCF4EEC3
                  A8A5006FA300DDFD00D8FF00D1FF00CEFF00C6FE00C0F80086BF0091CA00B1EC
                  C3A8A5FFF1EBAC847D006600006600AC847DB27E73B27E73B27E73B27E73B27E
                  73B27E73FDF3EBC3A8A5006FA301EDFE01E5FF00DDFD00A3AF00797F007B8100
                  5A60005E64007077396C61868E74868E74006600048D06006600CEAEA4F4E2D9
                  F4E2D9F4E2D9F4E2D9F4E2D9F4E2D9C3A8A5006FA301FAFD01F6FF00DEF20066
                  000066000066000066000066000066000066000066000066000066001FAD1F02
                  8603006600AC847DB27E73B27E73B27E73B27E73F7E5D9C3A8A5006FA301FFFF
                  01FFFF00F3F50066005BC95467CF6670D46F73D6726FD46E64CF6455C75545BF
                  4535B63525AC2517A917008802006600FAE9DBFAE9DBFAE9DBFAE9DBFAE9DBC3
                  A8A5006FA301E3EC00CEE000A5BC00660066CD6278D67988DD898EDF8E86DB86
                  75D47661CA614EC04E3DB83D2DB02E22AA221BAB1B007E01006600FAE9DBFAE9
                  DBFAE9DBFAE9DBC3A8A5006FA3006EA2006EA241AEC600660086DD82A2E8A3B7
                  F2B7BFF6C0B7F2B7A2E8A389DB8974D27563C86353BE534CBE4C299F2B006600
                  E8E3D4E0CEC1BFB0A3B2A59AB9ADA1C3A8A5FF00FFFF00FFFF00FF006EA20066
                  0000660000660000660000660000660000660000660000660000660060C86131
                  A334006600F3E6D4FFEFDEF5EADFE7E6E4E8E3D4C3A8A5FF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC3A8A5FFE8DBFFE7
                  D10066003DAB41006600F1E3CEFFEDDBFFE8D2F5EADFFFFFFEC3A8A5FF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  C3A8A5FFE8DBFFE7D1006600006600F2E1CAFFEDD8FFE7D1FEE4CFEDDFD1C3A8
                  A5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFC3A8A5FEE4CFF1E2C3006600F5E3C8FFEDD8FFE9D1FFEAD1
                  FFE7D1C3A8A5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFC3A8A5C3A8A5C3A8A5C3A8A5C3A8A5C3
                  A8A5C3A8A5C3A8A5C3A8A5FF00FFFF00FFFF00FFFF00FFFF00FF}
                ParentDoubleBuffered = False
                TabOrder = 2
                Visible = False
                OnClick = acBetalingExecute
              end
              object BitBtn10: TBitBtn
                Left = 12
                Top = 50
                Width = 177
                Height = 35
                Action = acOrdreEmailKunde
                Caption = 'Send ordre'
                DoubleBuffered = True
                Glyph.Data = {
                  F6060000424DF606000000000000360000002800000018000000180000000100
                  180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFA47874A47874A47874A47874A47874A4
                  7874A47874A47874A47874A47874A47874A47874A47874A47874A47874A47874
                  A47874A47874A47874A47874A47874FF00FFFF00FFA47874BE9281F0C39BFFD1
                  A2FFD1A1FED1A1FFD1A2FFD1A2FFD1A1FFD1A1FFD1A2FFD1A1FFD1A1FFD1A1FF
                  D1A1FFD1A2FFD1A2FFD1A2FFD1A2FFD2A2F0C39ABE9281A47874FF00FFA47874
                  E2BA9CB98E81F9D2ABFFD7ADFED7ADFFD7AEFFD7ADFFD7AEFED7ADFFD6ADFED7
                  AEFED7AEFFD7ADFFD7AEFFD7ADFED7ADFFD7AEFFD7ADFAD2ABB98E81E2B99CA4
                  7874FF00FFA47874FEDEBCD0A996C9A191FFDEBBFFDEBCFFDEBCFFDEBCFEDEBC
                  FEDEBCFFDEBBFFDEBCFEDEBCFFDEBCFEDEBCFEDEBCFFDEBCFFDEBCFFDEBCC8A1
                  91D0A996FEDEBCA47874FF00FFA47874FEE6CCFCE3CABE988EDCBCAAFEE6CBFF
                  E5CBFFE6CBFEE6CBFEE5CCFFE5CCFFE5CCFFE6CBFEE5CCFEE6CCFEE6CBFFE5CB
                  FFE5CCDCBCAABE988DFDE3C9FFE6CBA47874FF00FFA47874FEEDDBFFEDDBF4DF
                  D0B58E87EED7C7FFEDDBFFEDDBFEEDDBFFEDDBFEEDDBFFEDDBFEEDDBFEEDDBFE
                  EDDBFEEDDBFEEDDBEDD7C8B58E87F3DFCFFEEDDBFEEDDBA47874FF00FFA47874
                  FEF4E9FEF4EAFEF4E9E5D2CAB6918CF8ECE3FFF4EAFEF4EAFEF4EAFEF4E9FEF4
                  EAFEF4E9FEF4EAFEF4E9FEF4E9F9ECE3B6918CE6D2C9FEF4E9FEF4EAFEF4E9A4
                  7874FF00FFA47874FEFAF5FEFAF6FEFAF5FFF9F6D2BAB6C5A7A3FEFAF6FEFAF6
                  FEFAF5FEF9F5FEFAF6FEFAF5FEFAF6FEFAF5FFFAF6C5A7A3D2BBB7FEF9F6FEFA
                  F6FEFAF5FEFAF5A47874FF00FFA47874FEFEFEFEFEFEFEFEFEFEFEFEFDFCFCBF
                  A09ED8C5C4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFED6C3C1C0A29F
                  FDFCFCFEFEFEFEFEFEFEFEFEFEFEFEA47874FF00FFA47874FEFEFEFEFEFEFEFE
                  FEFDFCFCD4BFBEBE9F9CAD8582AD8582AD8582AD8582AD8582AD8582AD8582AD
                  8582AD8582D0B9B7FDFCFCFEFEFEFEFEFEFEFEFEFEFEFEA47874FF00FFA47874
                  FEFEFEFEFEFEF4F0EFBFA09DC4A7A5F7F4F4FEFEFEFEFEFEFEFEFEFEFEFEFEFE
                  FEFEFEFEFEFEFEFEFEFEF7F4F4C4A7A5BFA09DF4F0EFFEFEFEFEFEFEFEFEFEA4
                  7874FF00FFA47874FEFEFEE4D8D6B48F8CD9C6C5FEFEFEFEFEFEFEFEFEFEFEFE
                  FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFED9C6C5B48F8CE4D8
                  D6FEFEFEFEFEFEA47874FF00FFA47874D3BEBCB89693BEBEBEFEFEFEFEFEFEFE
                  FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                  FEFEFEEEE6E5B89693D3BEBCFEFEFEA47874FF00FFA47874B59D9EB8ECECBEBE
                  BEFFFFFFFCFFFFFBFFFFF8FFFFF8FFFFF3FFFFF3FFFFF3FFFFF5FFFFF5FFFFF7
                  FFFFF8FFFFF7FFFFF3FFFFEDF8F8DCE8E8C5C7C7C3B1B1A47874FF00FFA47874
                  B9AAADBAFEFFBEBEBEFEFFFFFCFFFFFCFFFFFCFFFFFFFFFFFFFFFFFFFFFFFCFF
                  FFF2F9F9DFE6E7CFD8D9C6CCCDBFC4C5BEBFBFBCBFC0B5C0C4AFBEC3B6A6A8A4
                  7874FF00FFFF00FFA47874C8ABABBEBEBEFFFFFFFFFFFFFFFFFFEEF0F0D9DFE0
                  CCD2D3C2C9C9BCC0C1BCBEBFB6BFC1ACC0C5A0C0C996C0CE8CC2D881C9E792BC
                  D4B99BA0A47874FF00FFFF00FFFF00FFFF00FFA47874D3ABAABFC4C5BDC9C9BE
                  BEBEB8C6C8AFC9CBA5CDD299D5DA8FDCE387E1ED88E1F08ADEF08BDCF189E0F9
                  87E0FDA7BFD0A47874A47874FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA478
                  74AC8D8BAEC6CA8BF4FC85F8FF8AEFFB8BF0FC8BF2FD8DF3FF8DF4FF8EF1FE8F
                  EDFD89F0FF90E3F7AFBBC6A47874FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFA47874C1AAAB9DDCE285FFFF8BF8FF8DF3FF8DF3
                  FF8DF3FF8AF7FF87FAFF9ED6E2C1A8ABA47874FF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA47874A47874ADC9CD
                  90F0F887FCFF87FCFF88FAFF8EF2FCADC9CDA47874A47874FF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFA47874A47874B1C0C3AACACFB2BFC1A47874A47874FF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA47874A47874A47874FF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
                ParentDoubleBuffered = False
                TabOrder = 1
              end
              object BitBtn12: TBitBtn
                Left = 12
                Top = 91
                Width = 177
                Height = 35
                Action = acGenOrdreFaktura
                Caption = 'Generer faktura'
                DoubleBuffered = True
                Glyph.Data = {
                  36090000424D3609000000000000360000002800000018000000180000000100
                  2000000000000009000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0099330000993300009933
                  0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF009933000099330000CC7D3900E6A6
                  610099330000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF0099330000993300009933000099330000AC4B0D00F9B55500FFC6
                  7100D28A48009933000099330000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00993300009F390000CC6A0A00FF9C0900FFA41B00FFAD3100FFB64700FFBE
                  5D00FFC77200FFD08800FFD99E0099330000FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF0099330000A9430000B9591000FFA41B00FF9D0A00FFA51D00FFAD3300FFB6
                  4900FFBF5E00FFC87400FFD18A0099330000FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF0099330000AE480000B3551600FFB23F00FFA31800D9760700A6410400A643
                  0800D9873200FFC06000FFC9760099330000FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009933
                  0000A74100009B350000DF9F5E00FFC16300E6922E0099330000993300009B35
                  00009A340000E6983C00FFC06200D990470099330000FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0099330000BD57
                  0000A6491700ECC19300FFDEAB00FFCF870099330000FF00FF00FF00FF009933
                  00009F390000CC731F00FFB84E00FFC16400ECAD600099330000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF0001689B0001689B002A809C00BF67
                  0B009F3E0B00ECC19300FFE2B500FFDDA90099330000FF00FF00FF00FF009933
                  0000A53F0000CC6F1500FFB03A00FFB95000ECA7520099330000FF00FF00FF00
                  FF00FF00FF00FF00FF0001689B0001689B000875A30062CDEA007AD7EF003D6E
                  7A0084552B007B4F3300ECC19300FFE2B500F2C8940099330000993300009933
                  00009D370000E6850D00FFA82600F2A1340099330000FF00FF00FF00FF00FF00
                  FF00FF00FF0001689B0013A9D4001EABD4002FB4D90066E2FE007FE7FF0069C9
                  E4005DB8D50069BAD50056727300FFE2B500FFE2B500DFA87500993300009933
                  0000DF862100FF9E0C00FFA0120099330000FF00FF00FF00FF00FF00FF00FF00
                  FF0001689B000E83AF0029D6FE001DD4FE0035D8FE004EDDFE0068E2FE0081E7
                  FF009AECFF009EE3F40059767800FFE2B500FFE2B500FFE2B500FFDAA100FFCA
                  7A00FFBA5300FFAB2B00FF9D0B0099330000FF00FF00FF00FF00FF00FF00FF00
                  FF0001689B000A81AE0052DEFE0026D5FE001ECFF90027B2D9003BBBDF006AE2
                  FE0083E7FF0076D1EA009C886F00FFE2B500F2CC9E00FFE2B500FFE2B400FFD9
                  9E00FFC97700F9B14A00FFA9280099330000FF00FF00FF00FF00FF00FF000168
                  9B000782B2002A95BB007CE6FF004FDDFE00016C9F00016C9F000571A100279E
                  C4006CE3FE0074DAF400337C9400883D1500A53F0000AC542200FFE2B500FFE1
                  B300AC521D009933000099330000FF00FF00FF00FF00FF00FF0001689B000993
                  C30054ACCA00BAEDFA00A6EEFF00016C9F00FF00FF00FF00FF00016C9F000878
                  A60055DEFE006EE3FF0076DBF4003194B60099330000B24C0000D2956600D295
                  660099330000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0001689B000B9F
                  CE0054ACCA00C9F5FF00C5F4FF00016C9F00FF00FF00FF00FF00016C9F00097D
                  AB003EDAFE0057DFFE006ADDF90001689B00FF00FF0099330000993300009933
                  0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000168
                  9B000B99C70054ACCA00C9F5FF00C3F4FF00016C9F00016C9F000881B100119A
                  C40026D5FE0040DAFE0001689B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF0001689B000E9BC700C9F5FF00C9F5FF00B8EDFA0063BEDA004DBFDF003FDA
                  FE001BD3FE0028D6FE0001689B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF0001689B001A9AC300C9F5FF00C9F5FF00C9F5FF00BFF3FF0097EBFF0069E2
                  FE003CDAFE001BD3FE0001689B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF0001689B0083C9DF006CBBD5008FD0E400C9F5FF00BDF3FF0055BB
                  DA0001689B0001689B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF0001689B0001689B000F99C400B2E6F4008FD0E4000168
                  9B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF0001689B0001689B0001689B00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                ParentDoubleBuffered = False
                Spacing = 10
                TabOrder = 3
              end
            end
            object dbgOrdre: TJvDBGrid
              Left = 211
              Top = 6
              Width = 717
              Height = 361
              Align = alClient
              DataSource = Dm.dsOrdre
              Options = [dgTitles, dgColumnResize, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              PopupMenu = popOrdre
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDblClick = acEndreExecute
              OnKeyDown = dbgKunderKeyDown
              TitleButtons = True
              OnTitleBtnClick = dbgKontoTitleBtnClick
              OnTitleBtnDblClick = dbgKontoTitleBtnDblClick
              AutoSizeColumns = True
              AutoSizeColumnIndex = 4
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
                  FieldName = 'ORDRENR'
                  Title.Caption = 'Ordrenr'
                  Width = 59
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'ORDREDATO'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Ordredato'
                  Width = 71
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'STATUSTEKST'
                  Title.Caption = 'Status'
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'KUNDENR'
                  Title.Caption = 'Kundenr'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NAVN'
                  Title.Caption = 'Kundenavn'
                  Width = 107
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SUMEKS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Sum eks.'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SUMMVA'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Mva.'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SUMRAB'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clMaroon
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Rabatt'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SUMTOT'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Totalt'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'REFNR'
                  Title.Caption = 'Referanse'
                  Width = 100
                  Visible = True
                end>
            end
          end
        end
        object tsFaktura: TTabSheet
          Caption = '&Faktura'
          ImageIndex = 1
          object blsBorderPanel5: TblsBorderPanel
            Left = 0
            Top = 0
            Width = 934
            Height = 373
            Align = alClient
            BorderWidth = 5
            Caption = 'blsBorderPanel5'
            TabOrder = 0
            object Splites6: TSplites
              Left = 206
              Top = 6
              Width = 5
              Height = 361
              ExplicitHeight = 594
            end
            object Panel8: TPanel
              Left = 6
              Top = 6
              Width = 200
              Height = 361
              Align = alLeft
              BevelOuter = bvLowered
              TabOrder = 0
              DesignSize = (
                200
                361)
              object Label9: TLabel
                Left = 12
                Top = 36
                Width = 32
                Height = 13
                Caption = 'Betalt:'
              end
              object DBText3: TDBText
                Left = 52
                Top = 36
                Width = 65
                Height = 17
                DataField = 'BETALTDATO'
                DataSource = Dm.dsFaktura
              end
              object Label15: TLabel
                Left = 12
                Top = 339
                Width = 67
                Height = 13
                Anchors = [akLeft, akBottom]
                Caption = 'Registrert av:'
                ExplicitTop = 572
              end
              object DBText8: TDBText
                Left = 84
                Top = 339
                Width = 65
                Height = 17
                Anchors = [akLeft, akBottom]
                DataField = 'BRUKER'
                DataSource = Dm.dsFaktura
                ExplicitTop = 572
              end
              object TBXLabel6: TTBXLabel
                Left = 12
                Top = 12
                Width = 176
                Height = 14
                Anchors = [akLeft, akTop, akRight]
                Caption = 'Fakturainformasjon:'
                Underline = True
                UnderlineColor = clNavy
              end
              object BitBtn4: TBitBtn
                Left = 12
                Top = 124
                Width = 177
                Height = 35
                Action = acBetaling
                Caption = 'Registrer betaling'
                DoubleBuffered = True
                Glyph.Data = {
                  36090000424D3609000000000000360000002800000018000000180000000100
                  2000000000000009000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00595959001F1F
                  1F00312F2E003E3D3D006D6F6F00ABABAB00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0025262600B0AF
                  AF00BED0DC00BBC2C600A39B98006D6763004D4B49005A5A59006C6C6C00ABAB
                  AC00D2D2D200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002A2A2A00BCB4
                  AF0022A1E90022A2E90048AFE90080C4F100BADFF400C8D6DD00C7BEB9009088
                  8400706C69006B68670072727100ADADAD00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00656565001F1F1F005C5C5C00D8D8D800FF00FF002E2E2E00C0B7
                  B20031AAED003AAFEF0029A5E9000B98E5000997E400169CE5002BA8EC0075CF
                  FE00ACDCF800D0E4EF00E8DDD800A8A3A00073737400FF00FF00FF00FF00FF00
                  FF00C6C6C60000000000BCBDBE00828383002525260069696A0029292900C4BB
                  B70030A5E8000A85C900238CC900389DD40044B0EB003FACE7001BA6F1000EA7
                  F8000CA7FB0008A6FB001AACFA0081D9FF00938C8800FF00FF00FF00FF00FF00
                  FF009494940031313100F3F4F400FEFEFE00EEEEEE008181820016161600BBBA
                  B900DDE8F300C1E0F200A2D9F7006DC3F20042A6DD002B98D50010A0EE0007A5
                  F8000CA6F7000FA7F7000CA6F70037BBFE009F958F00D7D7D700FF00FF00FF00
                  FF005C5C5C005F5E5E00FFFFFF00D3D3D300E5E5E500ECECEC0037373700BCBC
                  BC00EAE9E800D1CFCD00DDD9D600F8F1ED00FFFFFF00FCFEFE00EFFAFF00CCED
                  FD009BD8F9006BC7F90039B6F90049C1FF00A1999400D7D7D700FF00FF00FF00
                  FF00262626009A9B9B00FFFFFF00D4D4D400DFDFDF00B5B5B5002E303000C0C1
                  C200F3F2F000FCFDFD00FBFDFE00EBEDF000D2D6D800CDCFCF00DEDEDF00DFDD
                  DB00F6F1EE00FFFDF900FEFEFC00FFFFFF0094939300D7D7D700FF00FF00FF00
                  FF0014141400CECECE00FFFFFF00FBFBF300D8D8D100BABBB90033323200C7CD
                  D0008C552100905C2A009F744B00B4917000D2B59A00E8DACD00F5EDE700EEEC
                  EA00E6E9EC00DADDE100D4D7D900FFFFFF0094949400D7D7D700FF00FF00B7B7
                  B70024242400E5E6E400FBFDFE00868BEB00848CEF00CCCCD70035343100C9CD
                  D200925F31008048140081481300824813008D4D11008B4A0C008F5218009B62
                  2D00B47C4900BF956E00D3B49600F1E3D50095979800D7D7D700FF00FF008383
                  830049494800FFFFFD002531DC000101D4000000D7002A34DC00303C3800CED1
                  D4008E5A28007D430D007E440F0086491000905014008E501500905217009857
                  1A00A25C1A00A15A18009D551200B4763C00999EA200D7D7D700FF00FF004A4A
                  4A0080807B00B6B8F8000914D9006B71E6000D18D7000595F7000F415A00C1B8
                  B400FAF0E600E7D5C600D9C5B500CEAF9300C39D7900B98C6100A46D3B00AA6C
                  3200A6652800A25E1F009D530F00B27439009A9EA300D7D7D700FF00FF002A2A
                  2A00B8B7B100959AEF001824D900E5E7F700FCFEFB00A5E0FD003AB1EF00185C
                  830041728E00858A8C0094959700A2A6A900ACAFB100BBBFC100D2D7DB00D9D8
                  D800E0DBD800E7DED700EEDDCE00F2DFCE0094959700FF00FF00FF00FF002525
                  2500D7D8D300B5B9F7000000D5000104D5004679EA00BCEBFD00FEFEFE00ADE5
                  FF0004A9FF00E5F8FF00F9F7F600EBEBEB00E3E3E3009E9E9E007E7E7E009495
                  9500898A8A008A8B8E008D8E8F008A8C8D0096969600FF00FF00D3D3D3002526
                  2600F1F0F000FEFEFE004751E2000007D6000C4FE00004AAF9001EACF70031B4
                  F9002EB2F800FEFBF600F3F2F200EFEFEF00F1F1F1008E8E8E00D7D7D700FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007D7E
                  7E005D5C5C009E9E9D00EBEAE300EEEEFE00FFFFFF004CC0FC0014AAF80027B0
                  F900D2EAF600F7F3F200EAEAEA00E8E8E800E3E3E30086868600FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00DEDEDE00AEAEAE00717171006868650098969500DFDEDD00ECFAFE00F8FA
                  FA00F6F2F100E9E9E900E5E5E500E2E2E200D2D2D20084848400FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00E6E6E600C1C2C200807F80006B6968009796
                  9600D2D2D200ECECEC00E3E3E300DDDDDD00BCBCBC0096989800FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CFCF
                  CF00909090007C7C7C009FA0A000C7C6C60091919100C2C2C200FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00D4D5D500B1B1B200C5C5C500FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                ParentDoubleBuffered = False
                TabOrder = 2
              end
              object BitBtn7: TBitBtn
                Left = 12
                Top = 165
                Width = 177
                Height = 35
                Action = acInnbetalinger
                Caption = 'Vis innbetalinger'
                DoubleBuffered = True
                Glyph.Data = {
                  F6060000424DF606000000000000360000002800000018000000180000000100
                  180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FF0066000066000066000066000066000066
                  00006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00660005A105069E06
                  059E05059E0505A105006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
                  66000DA10D0B9F0B0B9F0B0B9F0B08A108006600FF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FF00660016A61614A31414A31412A21210A410006600FF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FF00660022AC2120A9201DA81D1DA81D19A9
                  19006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066002DB22E2DB22E
                  2AAE2A27AD2724AF23006600005D88006EA2FF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
                  66003EBC3D39B63939B63934B33431B52F006600006D910086BD006EA2006EA2
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FF0066004EC34C4ABE4A4ABE4A42BA433EBC3D006600006D9100
                  82BA0080B40083B9006EA2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FF00660061CC5F5DC75D59C55952C2524EC3
                  4C00660001869300ADD4009CC3008CB8006EA2FF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FF006EA2006EA2006EA2006EA200660075D6736ED16F
                  6ACE6B62CA625ACA580066000092AE00CBF200CBE900C8E60093B2006EA2006E
                  A2006EA2FF00FFFF00FFFF00FF006EA2006EA200A9DB009CD00096D1008AAA00
                  66009CE59A8ADE8A7BD77C71D27268D0650066000092B600C5F800C3E50092AE
                  00769F0079AA0088BD0081B7006EA2FF00FF006EA201BAD401B3D70066000066
                  00006600006600006600B7F1B7ACEAAD99E39A80D98072D57000660000660000
                  66000066000066000083B90085BA0079AC0088B600A0C7006EA2006EA20084AE
                  006CA4007CA700660070BD5D86CF82ACEAADC4F8C5BFF4C0B2EEB39CE39D7FD8
                  7F5FC35F4AB544268C100066000086BD0081B70082B200B0D400C3E100CDE900
                  6EA2006EA2008FB801B1D700BDEA0098C0006600A4E298C4F8C5CCFACDCCFACD
                  B7F1B7A4E6A492DD938ADE8A5AB24D0066000090C90083B90093BF00CEEF00C9
                  EC00C3E500C1E0006EA2006EA201BDD4018EB70079AA0073AB006898006600AC
                  E7A2C4F8C5BFF4C0B0ECB1A0E4A097E49766B659006600009EDA0094CB00A4CD
                  00E2FF00CBFA00B7EC00CBF2006EA2FF00FF006EA20075A50081B10098CA0098
                  CA009DD50093C1006600A4E298B2EEB3A4E6A49EE79D66B65900660000A6D700
                  A5D80099C200E2FF00D5FF00CDFF00D5FF006EA2FF00FFFF00FF006EA201B7D1
                  01BDD800B2DD0098CA0092C5008EC60079A700660090D684A1E99F6DC2680066
                  000085B301C6E30094B801F2FB01E8FF00DDFF00DDFF006EA2FF00FFFF00FFFF
                  00FF006EA201A0C00076A60079AC0077AA0079AC0079AC0073AB006A9C006600
                  5BAE4C00660000649C01B2CC01A7C501DBE701FFFF01FDFF01F3FF006EA2FF00
                  FFFF00FFFF00FFFF00FF006EA2007FAD01A2CA00B6E300A6D700A5D8009CD000
                  8FC2008EC60082AF0066000071A800649C006D9D019FBF01FDFF01FFFF01EDF3
                  006EA2FF00FFFF00FFFF00FFFF00FFFF00FF006EA201BFD601A2CA0095C5008F
                  C20095C50093C10089B90080B2007BB0007DB90083B7006EA2FF00FF006EA200
                  6EA2006EA2006EA2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006EA201ADC9
                  01C2DD00CEEF00CDFA00D3FD00D2F500C8EA00BEDE00B2D5009EC50085B5006E
                  A2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FF006EA201FFFF01FFFF01F9FF01E5FF00D5FF00CDFF00C3F700BDEA00C8EA
                  00CDE900C3E20073A4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FF006EA2006EA201FFFF01FFFF01F3FF01E5FF00
                  DDFF00D7FE00D2F5006EA2006EA2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006EA2006E
                  A2006EA2006EA2006EA2006EA2006EA2FF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
                ParentDoubleBuffered = False
                TabOrder = 3
              end
              object BitBtn8: TBitBtn
                Left = 12
                Top = 83
                Width = 177
                Height = 35
                Action = acFakturaEmailKunde
                Caption = 'Send faktura'
                DoubleBuffered = True
                Glyph.Data = {
                  F6060000424DF606000000000000360000002800000018000000180000000100
                  180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFA47874A47874A47874A47874A47874A4
                  7874A47874A47874A47874A47874A47874A47874A47874A47874A47874A47874
                  A47874A47874A47874A47874A47874FF00FFFF00FFA47874BE9281F0C39BFFD1
                  A2FFD1A1FED1A1FFD1A2FFD1A2FFD1A1FFD1A1FFD1A2FFD1A1FFD1A1FFD1A1FF
                  D1A1FFD1A2FFD1A2FFD1A2FFD1A2FFD2A2F0C39ABE9281A47874FF00FFA47874
                  E2BA9CB98E81F9D2ABFFD7ADFED7ADFFD7AEFFD7ADFFD7AEFED7ADFFD6ADFED7
                  AEFED7AEFFD7ADFFD7AEFFD7ADFED7ADFFD7AEFFD7ADFAD2ABB98E81E2B99CA4
                  7874FF00FFA47874FEDEBCD0A996C9A191FFDEBBFFDEBCFFDEBCFFDEBCFEDEBC
                  FEDEBCFFDEBBFFDEBCFEDEBCFFDEBCFEDEBCFEDEBCFFDEBCFFDEBCFFDEBCC8A1
                  91D0A996FEDEBCA47874FF00FFA47874FEE6CCFCE3CABE988EDCBCAAFEE6CBFF
                  E5CBFFE6CBFEE6CBFEE5CCFFE5CCFFE5CCFFE6CBFEE5CCFEE6CCFEE6CBFFE5CB
                  FFE5CCDCBCAABE988DFDE3C9FFE6CBA47874FF00FFA47874FEEDDBFFEDDBF4DF
                  D0B58E87EED7C7FFEDDBFFEDDBFEEDDBFFEDDBFEEDDBFFEDDBFEEDDBFEEDDBFE
                  EDDBFEEDDBFEEDDBEDD7C8B58E87F3DFCFFEEDDBFEEDDBA47874FF00FFA47874
                  FEF4E9FEF4EAFEF4E9E5D2CAB6918CF8ECE3FFF4EAFEF4EAFEF4EAFEF4E9FEF4
                  EAFEF4E9FEF4EAFEF4E9FEF4E9F9ECE3B6918CE6D2C9FEF4E9FEF4EAFEF4E9A4
                  7874FF00FFA47874FEFAF5FEFAF6FEFAF5FFF9F6D2BAB6C5A7A3FEFAF6FEFAF6
                  FEFAF5FEF9F5FEFAF6FEFAF5FEFAF6FEFAF5FFFAF6C5A7A3D2BBB7FEF9F6FEFA
                  F6FEFAF5FEFAF5A47874FF00FFA47874FEFEFEFEFEFEFEFEFEFEFEFEFDFCFCBF
                  A09ED8C5C4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFED6C3C1C0A29F
                  FDFCFCFEFEFEFEFEFEFEFEFEFEFEFEA47874FF00FFA47874FEFEFEFEFEFEFEFE
                  FEFDFCFCD4BFBEBE9F9CAD8582AD8582AD8582AD8582AD8582AD8582AD8582AD
                  8582AD8582D0B9B7FDFCFCFEFEFEFEFEFEFEFEFEFEFEFEA47874FF00FFA47874
                  FEFEFEFEFEFEF4F0EFBFA09DC4A7A5F7F4F4FEFEFEFEFEFEFEFEFEFEFEFEFEFE
                  FEFEFEFEFEFEFEFEFEFEF7F4F4C4A7A5BFA09DF4F0EFFEFEFEFEFEFEFEFEFEA4
                  7874FF00FFA47874FEFEFEE4D8D6B48F8CD9C6C5FEFEFEFEFEFEFEFEFEFEFEFE
                  FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFED9C6C5B48F8CE4D8
                  D6FEFEFEFEFEFEA47874FF00FFA47874D3BEBCB89693BEBEBEFEFEFEFEFEFEFE
                  FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                  FEFEFEEEE6E5B89693D3BEBCFEFEFEA47874FF00FFA47874B59D9EB8ECECBEBE
                  BEFFFFFFFCFFFFFBFFFFF8FFFFF8FFFFF3FFFFF3FFFFF3FFFFF5FFFFF5FFFFF7
                  FFFFF8FFFFF7FFFFF3FFFFEDF8F8DCE8E8C5C7C7C3B1B1A47874FF00FFA47874
                  B9AAADBAFEFFBEBEBEFEFFFFFCFFFFFCFFFFFCFFFFFFFFFFFFFFFFFFFFFFFCFF
                  FFF2F9F9DFE6E7CFD8D9C6CCCDBFC4C5BEBFBFBCBFC0B5C0C4AFBEC3B6A6A8A4
                  7874FF00FFFF00FFA47874C8ABABBEBEBEFFFFFFFFFFFFFFFFFFEEF0F0D9DFE0
                  CCD2D3C2C9C9BCC0C1BCBEBFB6BFC1ACC0C5A0C0C996C0CE8CC2D881C9E792BC
                  D4B99BA0A47874FF00FFFF00FFFF00FFFF00FFA47874D3ABAABFC4C5BDC9C9BE
                  BEBEB8C6C8AFC9CBA5CDD299D5DA8FDCE387E1ED88E1F08ADEF08BDCF189E0F9
                  87E0FDA7BFD0A47874A47874FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA478
                  74AC8D8BAEC6CA8BF4FC85F8FF8AEFFB8BF0FC8BF2FD8DF3FF8DF4FF8EF1FE8F
                  EDFD89F0FF90E3F7AFBBC6A47874FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFA47874C1AAAB9DDCE285FFFF8BF8FF8DF3FF8DF3
                  FF8DF3FF8AF7FF87FAFF9ED6E2C1A8ABA47874FF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA47874A47874ADC9CD
                  90F0F887FCFF87FCFF88FAFF8EF2FCADC9CDA47874A47874FF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFA47874A47874B1C0C3AACACFB2BFC1A47874A47874FF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA47874A47874A47874FF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
                ParentDoubleBuffered = False
                TabOrder = 1
              end
            end
            object dbgFaktura: TJvDBGrid
              Left = 211
              Top = 6
              Width = 717
              Height = 361
              Align = alClient
              DataSource = Dm.dsFaktura
              Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              PopupMenu = popFaktura
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = dbgFakturaDrawColumnCell
              OnDblClick = acEndreExecute
              OnKeyDown = dbgKunderKeyDown
              TitleButtons = True
              OnTitleBtnClick = dbgKontoTitleBtnClick
              OnTitleBtnDblClick = dbgKontoTitleBtnDblClick
              TitleArrow = True
              MinColumnWidth = 100
              AutoSizeColumns = True
              AutoSizeColumnIndex = 12
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
                  FieldName = 'FAKTURANR'
                  Title.Caption = 'Fakturanr'
                  Width = 60
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'FAKTURADATO'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Fakturadato'
                  Width = 68
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'FORFALLDATO'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Forfallsdato'
                  Width = 68
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'X'
                  Title.Caption = ' '
                  Width = 25
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'STATUS'
                  Title.Caption = 'Status'
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FAKTURAART'
                  Title.Caption = 'Type'
                  Width = 60
                  Visible = True
                end
                item
                  Alignment = taLeftJustify
                  Expanded = False
                  FieldName = 'KUNDENR'
                  Title.Caption = 'Kundenr'
                  Width = 47
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NAVN'
                  Title.Caption = 'Kundenavn'
                  Width = 170
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SUMEKS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Sum eks.'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SUMMVA'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Mva'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SUMRAB'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clMaroon
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Rabatt'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SUMTOT'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Totalt'
                  Visible = True
                end
                item
                  Alignment = taLeftJustify
                  Expanded = False
                  FieldName = 'ORDRENR'
                  Title.Caption = 'Ordrenr'
                  Width = 100
                  Visible = True
                end>
            end
          end
        end
        object tsPurring: TTabSheet
          Caption = 'P&urringer'
          ImageIndex = 7
          object blsBorderPanel6: TblsBorderPanel
            Left = 0
            Top = 0
            Width = 934
            Height = 373
            Align = alClient
            BorderWidth = 5
            Caption = 'blsBorderPanel6'
            TabOrder = 0
            object Splites7: TSplites
              Left = 206
              Top = 6
              Width = 5
              Height = 361
              ExplicitHeight = 594
            end
            object Panel5: TPanel
              Left = 6
              Top = 6
              Width = 200
              Height = 361
              Align = alLeft
              BevelOuter = bvLowered
              TabOrder = 0
              DesignSize = (
                200
                361)
              object TBXLabel10: TTBXLabel
                Left = 12
                Top = 12
                Width = 176
                Height = 14
                Anchors = [akLeft, akTop, akRight]
                Caption = 'Purreinformasjon:'
                Underline = True
                UnderlineColor = clNavy
              end
            end
            object dbgPurring: TJvDBGrid
              Left = 211
              Top = 6
              Width = 717
              Height = 361
              Align = alClient
              DataSource = Dm.dsPurring
              Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              PopupMenu = popPurring
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = dbgPurringDrawColumnCell
              OnDblClick = acEndreExecute
              OnKeyDown = dbgKunderKeyDown
              TitleButtons = True
              OnTitleBtnClick = dbgKontoTitleBtnClick
              OnTitleBtnDblClick = dbgKontoTitleBtnDblClick
              TitleArrow = True
              MinColumnWidth = 100
              AutoSizeColumns = True
              AutoSizeColumnIndex = 13
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
                  FieldName = 'FAKTURANR'
                  Title.Caption = 'Fakturanr'
                  Width = 60
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'FAKTURADATO'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Fakturadato'
                  Width = 68
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'FORFALLDATO'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Forfallsdato'
                  Width = 68
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'X'
                  Title.Caption = ' '
                  Width = 12
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'STATUS'
                  Title.Caption = 'Status'
                  Width = 70
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'KUNDENR'
                  Title.Caption = 'Kundenr'
                  Width = 47
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NAVN'
                  Title.Caption = 'Kunde'
                  Width = 170
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PURREDATO'
                  Title.Caption = 'Purredato'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PURREGEBYR'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Gebyr'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PURRERENTER'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Renter'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SUMEKS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Sum eks.'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SUMMVA'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Mva'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SUMTOT'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Totalt'
                  Visible = True
                end
                item
                  Alignment = taLeftJustify
                  Expanded = False
                  FieldName = 'ORDRENR'
                  Title.Caption = 'Ordrenr'
                  Width = 100
                  Visible = True
                end>
            end
          end
        end
        object tsKunde: TTabSheet
          Caption = 'Kun&der'
          ImageIndex = 3
          object blsBorderPanel2: TblsBorderPanel
            Left = 0
            Top = 0
            Width = 934
            Height = 373
            Align = alClient
            BorderWidth = 5
            Caption = 'blsBorderPanel2'
            TabOrder = 0
            object Splites1: TSplites
              Left = 206
              Top = 6
              Width = 5
              Height = 361
              ArrowBackgr = False
              ExplicitHeight = 594
            end
            object dbgKunder: TJvDBGrid
              Left = 211
              Top = 6
              Width = 717
              Height = 361
              Align = alClient
              DataSource = Dm.dsKunde
              Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              PopupMenu = popKunde
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = dbgKunderDrawColumnCell
              OnDblClick = acEndreExecute
              OnKeyDown = dbgKunderKeyDown
              TitleButtons = True
              OnTitleBtnClick = dbgKontoTitleBtnClick
              OnTitleBtnDblClick = dbgKontoTitleBtnDblClick
              TitleArrow = True
              MinColumnWidth = 100
              AutoSizeColumns = True
              AutoSizeColumnIndex = 8
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
              Columns = <
                item
                  Alignment = taLeftJustify
                  Expanded = False
                  FieldName = 'KONTAKTNR'
                  Title.Caption = 'Kundenr'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NAVN'
                  Title.Caption = 'Navn'
                  Width = 180
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ADRESSE'
                  Title.Caption = 'Adresse'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'POSTNR'
                  Title.Caption = 'Postnr'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'POSTSTED'
                  Title.Caption = 'Poststed'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LAND'
                  Title.Caption = 'Land'
                  Width = 75
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TELEFON'
                  Title.Caption = 'Telefon'
                  Width = 75
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MOBIL'
                  Title.Caption = 'Mobil'
                  Width = 75
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FAKS'
                  Title.Caption = 'Telefaks'
                  Width = 4
                  Visible = True
                end>
            end
            object Panel1: TPanel
              Left = 6
              Top = 6
              Width = 200
              Height = 361
              Align = alLeft
              BevelOuter = bvLowered
              TabOrder = 1
              DesignSize = (
                200
                361)
              object dbtEpost: TDBText
                Left = 52
                Top = 44
                Width = 142
                Height = 13
                Cursor = crHandPoint
                Anchors = [akLeft, akTop, akRight]
                DataField = 'EPOST'
                DataSource = Dm.dsKunde
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                OnClick = dbtEpostClick
              end
              object dbtUrl: TDBText
                Left = 52
                Top = 60
                Width = 142
                Height = 13
                Cursor = crHandPoint
                Anchors = [akLeft, akTop, akRight]
                DataField = 'WEB'
                DataSource = Dm.dsKunde
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                OnClick = dbtUrlClick
              end
              object Label1: TLabel
                Left = 12
                Top = 44
                Width = 35
                Height = 13
                Caption = 'E-post:'
              end
              object Label6: TLabel
                Left = 12
                Top = 60
                Width = 26
                Height = 13
                Caption = 'Web:'
              end
              object TBXLabel1: TTBXLabel
                Left = 12
                Top = 12
                Width = 176
                Height = 14
                Anchors = [akLeft, akTop, akRight]
                Caption = 'Kundeinformasjon:'
                Underline = True
                UnderlineColor = clNavy
              end
            end
          end
        end
        object tsLeverandor: TTabSheet
          Caption = 'Leverand'#248'rer'
          ImageIndex = 5
          object blsBorderPanel1: TblsBorderPanel
            Left = 0
            Top = 0
            Width = 934
            Height = 373
            Align = alClient
            BorderWidth = 5
            Caption = 'blsBorderPanel1'
            TabOrder = 0
            object Splites2: TSplites
              Left = 206
              Top = 6
              Width = 5
              Height = 361
              ExplicitHeight = 594
            end
            object Panel2: TPanel
              Left = 6
              Top = 6
              Width = 200
              Height = 361
              Align = alLeft
              BevelOuter = bvLowered
              TabOrder = 0
              DesignSize = (
                200
                361)
              object DBText5: TDBText
                Left = 52
                Top = 60
                Width = 142
                Height = 13
                Cursor = crHandPoint
                Anchors = [akLeft, akTop, akRight]
                DataField = 'WEB'
                DataSource = Dm.dsLev
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                OnClick = dbtUrlClick
              end
              object dbtLevEpost: TDBText
                Left = 52
                Top = 44
                Width = 142
                Height = 13
                Cursor = crHandPoint
                Anchors = [akLeft, akTop, akRight]
                DataField = 'EPOST'
                DataSource = Dm.dsLev
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                OnClick = dbtLevEpostClick
              end
              object Label12: TLabel
                Left = 12
                Top = 44
                Width = 35
                Height = 13
                Caption = 'E-post:'
              end
              object Label13: TLabel
                Left = 12
                Top = 60
                Width = 26
                Height = 13
                Caption = 'Web:'
              end
              object TBXLabel2: TTBXLabel
                Left = 12
                Top = 12
                Width = 176
                Height = 14
                Anchors = [akLeft, akTop, akRight]
                Caption = 'Leverand'#248'rinformasjon:'
                Underline = True
                UnderlineColor = clNavy
              end
            end
            object dbgLev: TJvDBGrid
              Left = 211
              Top = 6
              Width = 717
              Height = 361
              Align = alClient
              DataSource = Dm.dsLev
              Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              PopupMenu = popLeverandor
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = dbgLevDrawColumnCell
              OnDblClick = acEndreExecute
              OnKeyDown = dbgKunderKeyDown
              TitleButtons = True
              OnTitleBtnClick = dbgKontoTitleBtnClick
              OnTitleBtnDblClick = dbgKontoTitleBtnDblClick
              TitleArrow = True
              MinColumnWidth = 100
              AutoSizeColumns = True
              AutoSizeColumnIndex = 8
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
              Columns = <
                item
                  Alignment = taLeftJustify
                  Expanded = False
                  FieldName = 'KONTAKTNR'
                  Title.Caption = 'Lev. nr'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NAVN'
                  Title.Caption = 'Navn'
                  Width = 190
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ADRESSE'
                  Title.Caption = 'Adresse'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'POSTNR'
                  Title.Caption = 'Postnr'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'POSTSTED'
                  Title.Caption = 'Poststed'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LAND'
                  Title.Caption = 'Land'
                  Width = 75
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TELEFON'
                  Title.Caption = 'Telefon'
                  Width = 75
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FAKS'
                  Title.Caption = 'Telefaks'
                  Width = 75
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MOBIL'
                  Title.Caption = 'Mobil'
                  Width = 18
                  Visible = True
                end>
            end
          end
        end
        object tsPerson: TTabSheet
          Caption = '&Personer'
          ImageIndex = 10
          object blsBorderPanel11: TblsBorderPanel
            Left = 0
            Top = 0
            Width = 934
            Height = 373
            Align = alClient
            BorderWidth = 5
            Caption = 'blsBorderPanel8'
            TabOrder = 0
            object Splites12: TSplites
              Left = 206
              Top = 6
              Width = 5
              Height = 361
              ExplicitHeight = 594
            end
            object Panel14: TPanel
              Left = 6
              Top = 6
              Width = 200
              Height = 361
              Align = alLeft
              BevelOuter = bvLowered
              TabOrder = 0
              DesignSize = (
                200
                361)
              object Label17: TLabel
                Left = 12
                Top = 44
                Width = 35
                Height = 13
                Caption = 'E-post:'
              end
              object dbtPersonEpost: TDBText
                Left = 52
                Top = 44
                Width = 142
                Height = 13
                Cursor = crHandPoint
                Anchors = [akLeft, akTop, akRight]
                DataField = 'EPOST'
                DataSource = Dm.dsPerson
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                OnClick = dbtPersonEpostClick
              end
              object TBXLabel11: TTBXLabel
                Left = 12
                Top = 12
                Width = 176
                Height = 14
                Anchors = [akLeft, akTop, akRight]
                Caption = 'Personinformasjon:'
                Underline = True
                UnderlineColor = clNavy
              end
            end
            object JvDBGrid1: TJvDBGrid
              Left = 211
              Top = 6
              Width = 717
              Height = 361
              Align = alClient
              DataSource = Dm.dsPerson
              Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDblClick = acEndreExecute
              OnKeyDown = dbgKunderKeyDown
              TitleButtons = True
              TitleArrow = True
              MinColumnWidth = 40
              AutoSizeColumns = True
              AutoSizeColumnIndex = 7
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
                  FieldName = 'NAVN'
                  Title.Caption = 'Kontaktperson'
                  Width = 150
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
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MOBIL'
                  Title.Caption = 'Mobil'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'BESKRIVELSE'
                  Title.Caption = 'Relasjon'
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'KONTAKTNR'
                  Title.Caption = 'Kontaktnr'
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FIRMA'
                  Title.Caption = 'Firma'
                  Width = 150
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'INFO'
                  Title.Caption = 'Informasjon'
                  Width = 23
                  Visible = True
                end>
            end
          end
        end
        object tsProdukt: TTabSheet
          Caption = '&Produkter'
          ImageIndex = 4
          object blsBorderPanel3: TblsBorderPanel
            Left = 0
            Top = 0
            Width = 934
            Height = 373
            Align = alClient
            BorderWidth = 5
            Caption = 'blsBorderPanel3'
            TabOrder = 0
            object Splites3: TSplites
              Left = 226
              Top = 6
              Width = 5
              Height = 361
              ExplicitHeight = 594
            end
            object Panel3: TPanel
              Left = 6
              Top = 6
              Width = 220
              Height = 361
              Align = alLeft
              BevelOuter = bvLowered
              TabOrder = 0
              object Splites5: TSplites
                Left = 1
                Top = 423
                Width = 218
                Height = 5
                Cursor = crVSplit
                Align = alTop
              end
              object pnlKat: TblsBorderPanel
                Left = 1
                Top = 23
                Width = 218
                Height = 400
                Align = alTop
                BevelOuter = bvNone
                BorderWidth = 8
                TabOrder = 0
                object tvKat: TTreeView
                  Left = 8
                  Top = 8
                  Width = 202
                  Height = 384
                  Align = alClient
                  HideSelection = False
                  HotTrack = True
                  Indent = 15
                  ReadOnly = True
                  TabOrder = 0
                  OnChange = tvKatChange
                  OnEditing = tvKatEditing
                  Items.NodeData = {
                    03010000003C0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000
                    0001000000010F41006C006C00650020006B0061007400650067006F00720069
                    0065007200380000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000
                    0000000000010D44006500200035003000300020006E00790065007300740065
                    00}
                end
              end
              object Panel6: TPanel
                Left = 1
                Top = 1
                Width = 218
                Height = 22
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 1
                DesignSize = (
                  218
                  22)
                object TBXLabel5: TTBXLabel
                  Left = 10
                  Top = 8
                  Width = 200
                  Height = 14
                  Anchors = [akLeft, akTop, akRight]
                  Caption = 'Produktkategori:'
                  Underline = True
                  UnderlineColor = clNavy
                end
              end
              object Panel7: TPanel
                Left = 1
                Top = 428
                Width = 218
                Height = 64
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 2
                DesignSize = (
                  218
                  64)
                object Label7: TLabel
                  Left = 8
                  Top = 32
                  Width = 65
                  Height = 11
                  Caption = 'Org. Produktnr:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -9
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object DBText1: TDBText
                  Left = 80
                  Top = 32
                  Width = 121
                  Height = 17
                  Anchors = [akLeft, akTop, akRight]
                  DataField = 'ORGPRODNR'
                  DataSource = Dm.dsProd
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -9
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label8: TLabel
                  Left = 8
                  Top = 48
                  Width = 57
                  Height = 11
                  Caption = 'Spesifikasjon:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -9
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object DBText2: TDBText
                  Left = 80
                  Top = 48
                  Width = 121
                  Height = 17
                  Anchors = [akLeft, akTop, akRight]
                  DataField = 'NAVN'
                  DataSource = Dm.dsProd
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -9
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                end
                object TBXLabel3: TTBXLabel
                  Left = 8
                  Top = 9
                  Width = 196
                  Height = 14
                  Anchors = [akLeft, akTop, akRight]
                  Caption = 'Produktinformasjon:'
                  Underline = True
                  UnderlineColor = clNavy
                end
              end
              object Panel13: TPanel
                Left = 1
                Top = 340
                Width = 218
                Height = 20
                Align = alBottom
                BevelOuter = bvNone
                TabOrder = 3
                object cbVisProdAktiv: TCheckBox
                  Left = 12
                  Top = -2
                  Width = 193
                  Height = 17
                  Caption = 'Vis utg'#229'tte produkter'
                  TabOrder = 0
                  OnClick = cbVisProdAktivClick
                end
              end
            end
            object dbgProd: TJvDBGrid
              Left = 231
              Top = 6
              Width = 697
              Height = 361
              Align = alClient
              DataSource = Dm.dsProd
              Options = [dgTitles, dgColumnResize, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              PopupMenu = popProdukt
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = dbgProdDrawColumnCell
              OnDblClick = acEndreExecute
              OnKeyDown = dbgKunderKeyDown
              TitleButtons = True
              OnTitleBtnClick = dbgKontoTitleBtnClick
              OnTitleBtnDblClick = dbgKontoTitleBtnDblClick
              TitleArrow = True
              MinColumnWidth = 100
              AutoSizeColumns = True
              AutoSizeColumnIndex = 9
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
                  FieldName = 'X'
                  Title.Caption = ' '
                  Width = 11
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRODUKTNR'
                  Title.Caption = 'Produktnr'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NAVN'
                  Title.Caption = 'Produktnavn'
                  Width = 230
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ENHET'
                  Title.Caption = 'Enhet'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MVA'
                  Title.Caption = 'Mva'
                  Width = 45
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'INNPRIS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Innpris'
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRIS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Pris eks'
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRISINK'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Pris ink'
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'AVANSEP'
                  Title.Caption = 'Fortjeneste'
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LEVERANDOR'
                  Title.Caption = 'Leverand'#248'r'
                  Width = 12
                  Visible = True
                end>
            end
          end
        end
        object tsLager: TTabSheet
          Caption = 'Lager'
          ImageIndex = 9
          object blsBorderPanel10: TblsBorderPanel
            Left = 0
            Top = 0
            Width = 934
            Height = 373
            Align = alClient
            BorderWidth = 5
            Caption = 'blsBorderPanel8'
            TabOrder = 0
            object Splites11: TSplites
              Left = 206
              Top = 6
              Width = 5
              Height = 361
              ExplicitHeight = 594
            end
            object Panel12: TPanel
              Left = 6
              Top = 6
              Width = 200
              Height = 361
              Align = alLeft
              BevelOuter = bvLowered
              TabOrder = 0
            end
          end
        end
        object tsBilag: TTabSheet
          Caption = '&Bilag'
          ImageIndex = 8
          object blsBorderPanel7: TblsBorderPanel
            Left = 0
            Top = 0
            Width = 934
            Height = 373
            Align = alClient
            BorderWidth = 5
            Caption = 'blsBorderPanel7'
            TabOrder = 0
            object Splites8: TSplites
              Left = 206
              Top = 6
              Width = 5
              Height = 361
              ExplicitHeight = 594
            end
            object Panel9: TPanel
              Left = 6
              Top = 6
              Width = 200
              Height = 361
              Align = alLeft
              BevelOuter = bvLowered
              TabOrder = 0
              DesignSize = (
                200
                361)
              object Label10: TLabel
                Left = 12
                Top = 40
                Width = 45
                Height = 13
                Caption = 'Aktivt '#229'r:'
              end
              object Label11: TLabel
                Left = 12
                Top = 339
                Width = 67
                Height = 13
                Anchors = [akLeft, akBottom]
                Caption = 'Registrert av:'
                ExplicitTop = 572
              end
              object DBText4: TDBText
                Left = 84
                Top = 339
                Width = 65
                Height = 17
                Anchors = [akLeft, akBottom]
                DataField = 'BRUKER'
                DataSource = Dm.dsBilag
                ExplicitTop = 572
              end
              object TBXLabel7: TTBXLabel
                Left = 12
                Top = 12
                Width = 176
                Height = 14
                Anchors = [akLeft, akTop, akRight]
                Caption = 'Bilagsinformasjon:'
                Underline = True
                UnderlineColor = clNavy
              end
              object cbBilagAar: TComboBox
                Left = 76
                Top = 36
                Width = 113
                Height = 21
                Style = csDropDownList
                ItemIndex = 0
                TabOrder = 1
                Text = '2006'
                OnChange = cbBilagAarChange
                Items.Strings = (
                  '2006'
                  '2005')
              end
              object cbVisApne: TCheckBox
                Left = 12
                Top = 64
                Width = 173
                Height = 17
                Caption = 'Vis kun ikke godkjente bilag'
                TabOrder = 2
                OnClick = cbVisApneClick
              end
              object BitBtn1: TBitBtn
                Left = 12
                Top = 108
                Width = 177
                Height = 35
                Action = acKontoOppslag
                Caption = 'Oppslag p'#229' konto'
                DoubleBuffered = True
                Glyph.Data = {
                  36090000424D3609000000000000360000002800000018000000180000000100
                  2000000000000009000000000000000000000000000000000000FF00FF008B89
                  880058606400817A8300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A7A9
                  AA003E84C400297BBE0097899400FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A35228005E8C
                  B10052B9FF002D94F7002878B700938186007946300071391C0085432100964B
                  25009D4F27009F5027009F5027009F5027009F502700A0512700A2512800A252
                  2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800CAE1
                  F4005CBAFC0054B7FF002C94F5002A78B7009B8A9000A58F81008E480100D0B8
                  9D00E1C5A400E2C4A100DFBF9B00E0BF9900E5C29A00EECAA000F6D0A600FBD4
                  A900FDD6AA00FED7AB00FED7AB00FED7AB00FED7AB00A3522800A3522800FFFC
                  F700C9E0F4005BBAFC0054B6FF002C93F4002A78B5009D8C910091532000B09E
                  8A00BCA78F00BBA48A00B69E8300B79D8000C2A58500D4B48F00E7C49C00F4CF
                  A400FBD4A900FDD6AA00FED7AB00FED7AB00FED7AB00A3522800A3522800FFFD
                  FB00FFFBF700C8E0F4005BBAFC0054B6FF002B93F5002878B700917368009689
                  7A00998977009784720095816E0099826F00A38B7300BB9F8000D4B48F00E6C3
                  9B00F2CDA300FAD4A800FDD6AA00FED7AB00FED7AB00A3522800A3522800FFFF
                  FF00FFFEFC00FFFCF800C4DEF5005AB9FC004FB5FF004597E30066645D008778
                  7000A57E6500B99C8B00BA9F9000BA9F9000BC9D8C00B7896500BE791600CD7B
                  0000DE850000F1910000FB970000FE980000FE980000A3522800A3522800FFFF
                  FF00FFFFFF00C0BFBF00BFBDBB00BAD9F2007CC1F100C8D3D900B3A19C00B69A
                  8C00D0BDA600EBE3C600F9F7D800F9F7D600EBE3C500CFBAA700B89A8D00AC91
                  7B00C0A38200E2BF9800F7D1A600FDD6AA00FDD6AA00A3522800A3522800FFFF
                  FF00FFFFFF00FFFFFF00FEFDFC00F5F2EF00D8D5D000B9ACA800C0A39400E7D3
                  AF00FEE2B700FEE4BB00FEE4BB00FEE4BC00FEE4BE00FEE9D000E2D7D000B496
                  8A00AF967B00D9B99300F4CFA400FDD6AA00FDD6AA00A3522800A3522800FFFF
                  FF00FFFFFF004CB74C004CB64C00F5F5F400D7D4D300B89B9200D1B99F00F9DC
                  AA00FBEEC400FFFFDA00FFFFDB00FFFFE700FFFFF400FFFFFD00FFFFFF00C9B3
                  A100B07E3E00D8820000F5930000FE980000FE980000A3522800A3522800FFFF
                  FF00FFFFFF004CB74C004CB64C00F5F5F500D8D5D400BFA39400E9D2AA00F2C7
                  9400FAE9BE00FFFFDA00FFFFDC00FFFFED00FFFFFD00FFFFF900FFFFE800E6DD
                  C000B49B8A00D9BC9B00F4D1AA00FDD7AC00FDD7AC00A3522800A3522800FFFF
                  FF00FFFFFF00FFFFFF00FEFEFE00F8F8F800DCD4D400BA9F9100F7E0AF00EFBD
                  8800FAD6A900FEE3B900FEE4BC00FEE4C000FEE4C500FEE4C300FEE4BE00F4F0
                  CE00B79D8E00E2C6A700F7D6B100FDDAB100FDDAB100A3522800A3522800FFFF
                  FF00FFFFFF00C0C0C000BFBFBF00FBFBFB00E8E0E000BA9F9100F9E4B400EFB9
                  8300F9CD9F00FCDCB100FEE4BB00FEE4BD00FEE4BD00FEE4BD00FEE4BB00FADE
                  B300BA9A8200F0900000FB970000FE980000FE980000A3522800A3522800FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00F7F5F500C0A49600EBD8B000F7D5
                  A400F2CA9600F5D4A100FAEABF00FEFCD500FFFFDA00FFFFDA00FFFFD900E8DD
                  BE00C7AD9D00F9E1C500FEE1C200FEDFBD00FEDFBD00A3522800A3522800FFFF
                  FF00FFFFFF006E94FF006E94FF00FFFFFF00FEFEFE00CAAFA800D0B9A100FFFD
                  E700FBEED900F4D0A000F2C99600F6D9AA00FAE7BD00FCF0C700FFFFD400C8B0
                  9D00DCC5B400FDE8CF00FFE5C900FFE2C300FFE2C300A3522800A3522800FFFF
                  FF00FFFFFF006E94FF006E94FF00FFFFFF00FFFFFF00EFE7E600BA998800E5DB
                  D300FFFFFF00FBE8C200F3C79100F2C49000F6D5A200FFEEBB00DCC7AB00BD97
                  7B00F6981000FF990000FF990000FF990000FF990000A3522800A3522800FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C2753100BA9E
                  9400CAB5A400E9D8B600F8E5B800F7E4B600E6D3AF00CBB09C00BFA39700EADB
                  D000FFF3E500FEF0DE00FEEDD800FFE9D100FFE9D100A3522800A3522800EAC0
                  7800EAC07800EAC07800EAC07800EAC07800EAC07800EAC07800CC670100E0B7
                  7A00BF9B7E00BA9B8B00B99D8F00B99D8F00BF9F8F00CBA78600E4BC7B00EAC0
                  7800EAC07800EAC07800EAC07800EAC07800EAC07800A3522800A3522800CA6E
                  1800D7771200D7771200D7771200D7771200D7771200D7771200D7771200D777
                  1200D7771200D7771200D7771200D7771200D7771200FCC08000EE9E4000E586
                  1600FCC08000EE9E40009E6A4E004E6ED400CA6E1800A3522800A3522800C677
                  3800D2833E00D2833E00D2833E00D2833E00D2833E00D2833E00D2833E00D283
                  3E00D2833E00D2833E00D2833E00D2833E00D2833E00F6BB8000E2914000D476
                  1600FCC08000E29140009E6A4E004E6ED400C6773800A3522800FF00FF00A352
                  2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
                  2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
                  2800A3522800A3522800A3522800A3522800A3522800FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                ParentDoubleBuffered = False
                Spacing = 10
                TabOrder = 3
              end
              object BitBtn2: TBitBtn
                Left = 12
                Top = 146
                Width = 177
                Height = 35
                Action = acGenererBilag
                Caption = 'Generer bilag'
                DoubleBuffered = True
                Glyph.Data = {
                  36090000424D3609000000000000360000002800000018000000180000000100
                  2000000000000009000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0099330000993300009933
                  0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF009933000099330000CC7D3900E6A6
                  610099330000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF0099330000993300009933000099330000AC4B0D00F9B55500FFC6
                  7100D28A48009933000099330000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00993300009F390000CC6A0A00FF9C0900FFA41B00FFAD3100FFB64700FFBE
                  5D00FFC77200FFD08800FFD99E0099330000FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF0099330000A9430000B9591000FFA41B00FF9D0A00FFA51D00FFAD3300FFB6
                  4900FFBF5E00FFC87400FFD18A0099330000FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF0099330000AE480000B3551600FFB23F00FFA31800D9760700A6410400A643
                  0800D9873200FFC06000FFC9760099330000FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009933
                  0000A74100009B350000DF9F5E00FFC16300E6922E0099330000993300009B35
                  00009A340000E6983C00FFC06200D990470099330000FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0099330000BD57
                  0000A6491700ECC19300FFDEAB00FFCF870099330000FF00FF00FF00FF009933
                  00009F390000CC731F00FFB84E00FFC16400ECAD600099330000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF0001689B0001689B002A809C00BF67
                  0B009F3E0B00ECC19300FFE2B500FFDDA90099330000FF00FF00FF00FF009933
                  0000A53F0000CC6F1500FFB03A00FFB95000ECA7520099330000FF00FF00FF00
                  FF00FF00FF00FF00FF0001689B0001689B000875A30062CDEA007AD7EF003D6E
                  7A0084552B007B4F3300ECC19300FFE2B500F2C8940099330000993300009933
                  00009D370000E6850D00FFA82600F2A1340099330000FF00FF00FF00FF00FF00
                  FF00FF00FF0001689B0013A9D4001EABD4002FB4D90066E2FE007FE7FF0069C9
                  E4005DB8D50069BAD50056727300FFE2B500FFE2B500DFA87500993300009933
                  0000DF862100FF9E0C00FFA0120099330000FF00FF00FF00FF00FF00FF00FF00
                  FF0001689B000E83AF0029D6FE001DD4FE0035D8FE004EDDFE0068E2FE0081E7
                  FF009AECFF009EE3F40059767800FFE2B500FFE2B500FFE2B500FFDAA100FFCA
                  7A00FFBA5300FFAB2B00FF9D0B0099330000FF00FF00FF00FF00FF00FF00FF00
                  FF0001689B000A81AE0052DEFE0026D5FE001ECFF90027B2D9003BBBDF006AE2
                  FE0083E7FF0076D1EA009C886F00FFE2B500F2CC9E00FFE2B500FFE2B400FFD9
                  9E00FFC97700F9B14A00FFA9280099330000FF00FF00FF00FF00FF00FF000168
                  9B000782B2002A95BB007CE6FF004FDDFE00016C9F00016C9F000571A100279E
                  C4006CE3FE0074DAF400337C9400883D1500A53F0000AC542200FFE2B500FFE1
                  B300AC521D009933000099330000FF00FF00FF00FF00FF00FF0001689B000993
                  C30054ACCA00BAEDFA00A6EEFF00016C9F00FF00FF00FF00FF00016C9F000878
                  A60055DEFE006EE3FF0076DBF4003194B60099330000B24C0000D2956600D295
                  660099330000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0001689B000B9F
                  CE0054ACCA00C9F5FF00C5F4FF00016C9F00FF00FF00FF00FF00016C9F00097D
                  AB003EDAFE0057DFFE006ADDF90001689B00FF00FF0099330000993300009933
                  0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000168
                  9B000B99C70054ACCA00C9F5FF00C3F4FF00016C9F00016C9F000881B100119A
                  C40026D5FE0040DAFE0001689B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF0001689B000E9BC700C9F5FF00C9F5FF00B8EDFA0063BEDA004DBFDF003FDA
                  FE001BD3FE0028D6FE0001689B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF0001689B001A9AC300C9F5FF00C9F5FF00C9F5FF00BFF3FF0097EBFF0069E2
                  FE003CDAFE001BD3FE0001689B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF0001689B0083C9DF006CBBD5008FD0E400C9F5FF00BDF3FF0055BB
                  DA0001689B0001689B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF0001689B0001689B000F99C400B2E6F4008FD0E4000168
                  9B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF0001689B0001689B0001689B00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                ParentDoubleBuffered = False
                Spacing = 10
                TabOrder = 5
              end
              object BitBtn3: TBitBtn
                Left = 12
                Top = 184
                Width = 177
                Height = 35
                Action = acMvaPeriode
                Caption = 'Merverdiavgift'
                DoubleBuffered = True
                Glyph.Data = {
                  36090000424D3609000000000000360000002800000018000000180000000100
                  2000000000000009000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF009F9F9F00BFBFBF00FF00FF0080808000DFDFDF00DFDFDF0080808000FF00
                  FF00FF00FF00FF00FF008080800080808000DFDFDF00DFDFDF0080808000CFCF
                  CF00FF00FF00FF00FF00EFEFEF0080808000CFCFCF00FF00FF00FF00FF00FF00
                  FF004040400080808000CFCFCF00000000008F8F8F00BFBFBF0000000000FF00
                  FF00FF00FF00CFCFCF0000000000101010008F8F8F00FF00FF00101010006060
                  6000FF00FF00FF00FF009F9F9F0000000000DFDFDF00FF00FF00FF00FF00FF00
                  FF0040404000808080008F8F8F003030300050505000BFBFBF0000000000FF00
                  FF00FF00FF0070707000202020006060600030303000FF00FF00606060001010
                  100040404000404040002020200030303000FF00FF00FF00FF00FF00FF00FF00
                  FF004040400080808000505050008080800010100F00ABAFA40000000000A9BF
                  9400A6BC9000151812003F47370068755A0000000000ABB99F009CA096000000
                  00006060600080808000000000008F8F8F00FF00FF00FF00FF00FF00FF00FF00
                  FF0040404000808080000E0E0E0097AA880010140C00394E2400000000006188
                  40004E6E340000000000425D2C005A7F3C0000000000374D2400658B4000080A
                  06004C5544009B9F950000000000DFDFDF00FF00FF00FF00FF00FF00FF00FF00
                  FF003D3D3C0033392B00070905005C8440001F2B1400202C140000000000658C
                  40002C3D1C0000000000658C4000658C400019231000131A0C00658C40002534
                  180011190C00314022001E221A00F2F5EF00FF00FF00FF00FF00FF00FF00F0F2
                  EC0022291B000608040018221000658C4000334620000609040000000000658C
                  40000D120800202C1400658C4000658C4000394F240000000000587A38004560
                  2C00000000000C110800344B240087A46B00F1F3EE00FF00FF00F7F9F60094AE
                  7A00283A1C00192310003F572800658C4000527234001923100019231000587A
                  38001923100045602C00658C4000658C4000587A38001923100045602C00658C
                  40001923100019231000587A38005C84400094AE7A00F8FAF600D7E1CE005D86
                  4100658B4000658C4000658C4000658C4000658C4000658C4000658C4000658C
                  4000658C4000658C4000658C4000658C4000658C4000658C4000658C4000658C
                  4000658C4000658C4000658C4000658B40005D864100D6E0CB00D3DFC8005983
                  4000658C4000658C4000658C4000658C4000658C4000658C4000658C4000658C
                  4000658C4000658C40005F874000648B4000658C4000658C4000658C4000658C
                  4000658C4000658C4000658C4000658C40005A834000CAD4BC00D4DFCA005983
                  4000658C4000658C4000658C4000658C4000658C4000658C4000658C4000658C
                  4000658B40006B8F47009EB68600698E440062894000658C4000658C4000658C
                  4000658C4000658C4000658C4000658C400059834000D4DEC900F2F6EF0086A4
                  68005D854000658C4000658C4000658C4000658C4000658C4000658C4000658C
                  4000648B40006A8E4400EFEAE600C8D5B900658C440062894000658C4000658C
                  4000658C4000658C4000658C40005D85400086A46800F3F6F000FF00FF00E2E7
                  DA00769857005D864000638A4000658C4000658C4000658C4000658C4000658C
                  4000658B4000668C4100D7DECB00FF00FF00C2D0B200658B410062894000658C
                  4000658C4000638A40005D86400077985800E3E9DB00FF00FF00FF00FF00FF00
                  FF00E5EADF008AA66D00658B41005C85400062894000658C4000658C4000658C
                  4000658C4000618840007E9F6200E9EFE300FF00FF00C2D0B200658C43005F87
                  40005C854000658B41008AA66D00E4E9DD00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FFFCFE00CED8BF0095B07E0072954F005D8640005F8740006188
                  400061894000628940005E8640007E9E6100EAEFE500FF00FF00C2D0B3007498
                  560095B07D00CED8BF00FFFCFE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FEFEFE00E9EEE300CDD7BF00ADC2990092AD
                  77008FAC740086A36600668C40005D8540007F9F6100E9EFE300FF00FF00ECF1
                  E700FEFEFE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00E5E3D800688C4300648B40005C8540007F9E6300E9EFE300FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00E3E1D600618740005C8540005F874000598240007D9C5C00E7ED
                  E100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00EAE9E0008BA76E0086A46B008EAA7200A5BC8F00C8CAB300F5F4
                  F000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                ParentDoubleBuffered = False
                Spacing = 10
                TabOrder = 4
              end
            end
            object dbgBilag: TJvDBGrid
              Left = 211
              Top = 6
              Width = 717
              Height = 361
              Align = alClient
              DataSource = Dm.dsBilag
              Options = [dgTitles, dgColumnResize, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              PopupMenu = popBilag
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = dbgBilagDrawColumnCell
              OnDblClick = acEndreExecute
              OnKeyDown = dbgKunderKeyDown
              OnMouseUp = dbgBilagMouseUp
              OnMouseWheelDown = dbgBilagMouseWheelDown
              OnMouseWheelUp = dbgBilagMouseWheelDown
              TitleButtons = True
              OnCheckButton = dbgBilagCheckButton
              OnTitleBtnClick = dbgKontoTitleBtnClick
              OnTitleBtnDblClick = dbgKontoTitleBtnDblClick
              TitleArrow = True
              MinColumnWidth = 100
              AutoSizeColumns = True
              AutoSizeColumnIndex = 11
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
                  Title.Caption = 'Bilagsnr'
                  Width = 58
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'X'
                  Title.Caption = ' '
                  Width = 18
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'AAR'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = #197'r'
                  Width = 38
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'PERIODENR'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Periode'
                  Width = 45
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATO'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Dato'
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TEKSTKODE'
                  Title.Caption = 'T.k.'
                  Width = 23
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TEKST'
                  Title.Caption = 'Tekst'
                  Width = 170
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'BELOP'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 24064
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = 'Bel'#248'p'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'KONTAKTNR'
                  Title.Caption = 'Reskontro'
                  Width = 55
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'KONTAKT'
                  Title.Caption = 'Navn'
                  Width = 150
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'X'
                  Title.Caption = ' '
                  Width = 18
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DOKUMENTCALC'
                  Title.Caption = 'Dokument'
                  Width = 1
                  Visible = True
                end>
            end
          end
        end
        object tsKontoplan: TTabSheet
          Caption = '&Kontoplan'
          ImageIndex = 6
          object blsBorderPanel4: TblsBorderPanel
            Left = 0
            Top = 0
            Width = 934
            Height = 373
            Align = alClient
            BorderWidth = 5
            Caption = 'blsBorderPanel4'
            TabOrder = 0
            object Splites4: TSplites
              Left = 206
              Top = 6
              Width = 5
              Height = 361
              ExplicitHeight = 594
            end
            object Panel4: TPanel
              Left = 6
              Top = 6
              Width = 200
              Height = 361
              Align = alLeft
              BevelOuter = bvLowered
              TabOrder = 0
              DesignSize = (
                200
                361)
              object TBXLabel4: TTBXLabel
                Left = 12
                Top = 12
                Width = 176
                Height = 14
                Anchors = [akLeft, akTop, akRight]
                Caption = 'Kontoinformasjon:'
                Underline = True
                UnderlineColor = clNavy
              end
              object BitBtn5: TBitBtn
                Left = 12
                Top = 44
                Width = 177
                Height = 35
                Action = acLeggTilKonto
                Caption = 'Legg til konto'
                DoubleBuffered = True
                Glyph.Data = {
                  F6060000424DF606000000000000360000002800000018000000180000000100
                  180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FF006400006400FF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FF006400006400006D00006400006400006400
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FF006400006400008E00009C00009C0000
                  6400049B0B008E00006400006400006400FF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006400049B0B03A2
                  0A04A40504A40500640003A20A009B00009500008D0004821B00640000669AFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  0064000AA9140AA6150AA9140AA91400640007A1230B964F07712A006C00058E
                  250065994BC4F8006294004E00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FF00640012AD2312AD230FAE1F0FAE1F0064002AB18B006599
                  005D8C086E3A066E3800629436B7EE00659903812300630000669A00669AFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FF00640019B43017B32D17B32D17B32D00
                  640037B59700669A50E0FD0061930061931EBEEE28B5E731B2DD00669A00669A
                  7FE0F900669AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0064001EBB3B1DB6
                  3A1EBB3B1EBB3B00640017B53C00629463D3F347E0FF1FD9FF18C7FA1EB5EE2C
                  B4EC3DBBE956C7EA50BCDC00669AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  00640024C14822BB4422C14622C14600640018AB491F875E00629469E6FF2DC2
                  E300629400659900669A27ADE33DBBE900669AFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FF0064002AC4542AC45421C24431B26580C1C9006599006294
                  AAEFFC76DDF900619313861B18AA221BA53900669A2CB4EC3AB6E100669A0066
                  9AFF00FFFF00FFFF00FFFF00FFFF00FF00640033CF6531CA5C21C24650C98D00
                  669AE1FCFFD6F8FFC7F4FC7ED9F00060921685261BA7351CAC2B00659924B5F1
                  32B5E349C1EC64D5F500669AFF00FFFF00FFFF00FFFF00FF00640036D46D33CF
                  6533CF6533CF6500640000669A00669AC7F4FCB7F1FE006193127F3618843015
                  82510062941EC4F722AADA00669A00669AFF00FFFF00FFFF00FFFF00FFFF00FF
                  0064003DD9753BD5703DD9753DD9750064002ED86C38BC8900669AD6FCFFAAE6
                  F500619300609200619324D5FD1ACEFC00669AFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FF00640043E07D3FDC7743E07D3DD9750064004DD89600669A
                  CEF4FECEF4FED6F8FFB7F1FE8AE9FF69E6FF47E0FF1FD9FF16C3F000669AFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FF00640049E68246DF7C49E58349E58300
                  64006FD8C500669ACEF4FE00669A00669ABAEBF4ABF1FE67CCE100669A00669A
                  21DBFF00669AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0064004FED854DE7
                  814FED8949E5830064005ADEA900669A00669A35CE7A3ECA8600669AD2F7FF00
                  669A26C3611FA57D00669A00669AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  00640056F48F51EB8556F48F56F48F0064005CFC9642D78843DA8449EA7A4BD6
                  8E00669ADAF4FF00669A39DC76006400FF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FF0064005EFA965CF79262FF9D62FF9D0064006CFFA962FE94
                  5CF78E54EF894BE4865FCFAE00669A4DD8964FED85006400FF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FF0064005EFA964DE78131CA5C21943100
                  640031C05547DF765CF78E62FE995EFA9654EF8949E58351EB8559F58F006400
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0064005EFA961E7A
                  20588449ABC7A6ABC7A66AA2642A8528168D3027B14647DF7659F58F61FF975E
                  FA9660FC96006400FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  155B07005A008C79678C7967C6A4A1EAD0D3FFFFFFEEE4DED3CEB7699E5D2A85
                  281A8D242CB74B51E47F68FFA1006400FF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FF155B070E6106155B073A612368774EAAA191
                  EAD0D3EEE4DED3CEB7A88374456129086F0B006400006400FF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FF005F00155B0723601368774E8B8566155B07FF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF155B07075E0212640AFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
                ParentDoubleBuffered = False
                Spacing = 10
                TabOrder = 1
              end
            end
            object dbgKonto: TJvDBGrid
              Left = 211
              Top = 6
              Width = 717
              Height = 361
              Align = alClient
              DataSource = Dm.dsKonto
              Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = dbgKontoDrawColumnCell
              OnDblClick = acEndreExecute
              OnKeyDown = dbgKunderKeyDown
              TitleButtons = True
              OnTitleBtnClick = dbgKontoTitleBtnClick
              OnTitleBtnDblClick = dbgKontoTitleBtnDblClick
              TitleArrow = True
              MinColumnWidth = 100
              AutoSizeColumns = True
              AutoSizeColumnIndex = 6
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
                  FieldName = 'X'
                  Title.Caption = ' '
                  Width = 11
                  Visible = True
                end
                item
                  Alignment = taLeftJustify
                  Expanded = False
                  FieldName = 'KONTONR'
                  Title.Caption = 'Kontonr'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NAVN'
                  Title.Caption = 'Kontonavn'
                  Width = 433
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'KONTOTYPE'
                  Title.Caption = 'Type'
                  Width = 75
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'MVAKODE'
                  Title.Caption = 'Mva kode'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SATS'
                  Title.Caption = 'Mva sats'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MVA'
                  Title.Caption = 'Mva'
                  Width = 2
                  Visible = True
                end>
            end
          end
        end
        object tsKjorebok: TTabSheet
          Caption = 'Kj'#248'rebok'
          ImageIndex = 11
          object blsBorderPanel12: TblsBorderPanel
            Left = 0
            Top = 0
            Width = 934
            Height = 373
            Align = alClient
            BorderWidth = 5
            Caption = 'blsBorderPanel8'
            TabOrder = 0
            object Splites13: TSplites
              Left = 206
              Top = 6
              Width = 5
              Height = 361
              ExplicitHeight = 594
            end
            object Panel15: TPanel
              Left = 6
              Top = 6
              Width = 200
              Height = 361
              Align = alLeft
              BevelOuter = bvLowered
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  object Ver: TStVersionInfo
    Left = 396
    Top = 144
  end
  object XPManifest: TXPManifest
    Left = 428
    Top = 144
  end
  object blsAppPosition: TblsAppPosition
    Enabled = True
    Left = 492
    Top = 144
  end
  object ActionList: TActionList
    Images = ImageList24
    Left = 524
    Top = 144
    object acLogin: TAction
      Category = 'Fil'
      Caption = 'Logg &inn'
      Hint = 'Logg inn'
      OnExecute = acLoginExecute
    end
    object acLogout: TAction
      Category = 'Fil'
      Caption = 'Logg &ut'
      Hint = 'Logg ut'
      Visible = False
      OnExecute = acLogoutExecute
    end
    object acSalg: TAction
      Category = 'Vis'
      AutoCheck = True
      Caption = ' &Salg  '
      Checked = True
      Enabled = False
      GroupIndex = 1
      Hint = 'Salgsmodul'
      ImageIndex = 0
      OnExecute = acSalgExecute
    end
    object acKontakter: TAction
      Category = 'Vis'
      AutoCheck = True
      Caption = '&Kontakter'
      Enabled = False
      GroupIndex = 1
      Hint = 'Kontaktmodul'
      ImageIndex = 1
      OnExecute = acKontakterExecute
    end
    object acProdukter: TAction
      Category = 'Vis'
      AutoCheck = True
      Caption = '&Produkter'
      Enabled = False
      GroupIndex = 1
      Hint = 'Produktmodul'
      ImageIndex = 2
      OnExecute = acProdukterExecute
    end
    object acRegnskap: TAction
      Category = 'Vis'
      AutoCheck = True
      Caption = '&Regnskap'
      Enabled = False
      GroupIndex = 1
      Hint = 'Regnskapsmodul'
      ImageIndex = 3
      OnExecute = acRegnskapExecute
    end
    object acCalc: TAction
      Category = 'Verkt'#248'y'
      Caption = 'Kalkulator'
      Hint = 'Kalkulator'
      ImageIndex = 4
      OnExecute = acCalcExecute
    end
    object acNy: TAction
      Category = 'Fil'
      Caption = '&Ny'
      Enabled = False
      Hint = 'Ny ...'
      ImageIndex = 5
      ShortCut = 16462
      OnExecute = acNyExecute
    end
    object acPostImport: TAction
      Category = 'Online'
      Caption = 'Oppdater postnummer'
      Enabled = False
      Hint = 'Importer postnummer'
      OnExecute = acPostImportExecute
    end
    object acBackup: TAction
      Category = 'Verkt'#248'y'
      Caption = 'Utf'#248'r backup'
      Hint = 'Sikkerhetskopi'
      ImageIndex = 6
      OnExecute = acBackupExecute
    end
    object acAdmin: TAction
      Category = 'Verkt'#248'y'
      Caption = 'Bruker administrasjon'
      Hint = 'Administrasjon'
      ImageIndex = 7
      OnExecute = acAdminExecute
    end
    object acPostnrSok: TAction
      Category = 'S'#248'k'
      Caption = '&Postnr && poststed'
      Enabled = False
      Hint = 'S'#248'k postnummer'
      OnExecute = acPostnrSokExecute
    end
    object acPureHelp: TAction
      Category = 'Online'
      Caption = 'PureHelp'
      Enabled = False
      OnExecute = acPureHelpExecute
    end
    object acBrReg: TAction
      Category = 'Online'
      Caption = 'Br'#248'nn'#248'ysundregistrene'
      Enabled = False
      OnExecute = acBrRegExecute
    end
    object acRestore: TAction
      Category = 'Verkt'#248'y'
      Caption = 'Tilbakef'#248'r backup'
      Hint = 'Tilbakef'#248'ring av sikkerhetskopi'
      OnExecute = acRestoreExecute
    end
    object acEndre: TAction
      Category = 'Rediger'
      Caption = '&Endre ...'
      Enabled = False
      Hint = 'Endre ...'
      ImageIndex = 8
      OnExecute = acEndreExecute
    end
    object acRapport: TAction
      Category = 'Fil'
      Caption = 'Vis rapporter'
      Enabled = False
      Hint = 'Rapporter'
      ImageIndex = 9
      OnExecute = acRapportExecute
    end
    object acSlett: TAction
      Category = 'Rediger'
      Caption = '&Slett'
      Enabled = False
      Hint = 'Slett ...'
      ImageIndex = 10
      ShortCut = 16430
      OnExecute = acSlettExecute
    end
    object acOppdater: TAction
      Category = 'Rediger'
      Caption = 'Oppdater'
      Enabled = False
      Hint = 'Oppdater'
      ImageIndex = 11
      ShortCut = 116
      SecondaryShortCuts.Strings = (
        'Ctrl+R')
      OnExecute = acOppdaterExecute
    end
    object acImport: TAction
      Category = 'Fil'
      Caption = 'Import av produkter'
      Enabled = False
      Hint = 'Importer'
      ImageIndex = 12
      OnExecute = acImportExecute
    end
    object acKontoListe: TAction
      Category = 'S'#248'k'
      Caption = 'Norsk Standard kontoplan'
      Enabled = False
      Hint = 'Vis kontoplan'
      OnExecute = acKontoListeExecute
    end
    object acLeggTilKonto: TAction
      Category = 'Rediger'
      Caption = 'Legg til konto'
      Enabled = False
      Hint = 'Legg til konto'
      OnExecute = acLeggTilKontoExecute
    end
    object acKategori: TAction
      Category = 'Rediger'
      Caption = 'Produktkategorier'
      Enabled = False
      Hint = 'Kategorier'
      OnExecute = acKategoriExecute
    end
    object acPrint: TAction
      Category = 'Fil'
      Caption = 'Skriv ut'
      Enabled = False
      Hint = 'Skriv ut'
      ImageIndex = 13
      ShortCut = 16464
      OnExecute = acPrintExecute
    end
    object acSok: TAction
      Category = 'S'#248'k'
      Caption = 'S'#248'k'
      Enabled = False
      Hint = 'S'#248'k ...'
      ImageIndex = 14
      ShortCut = 16454
      OnExecute = acSokExecute
    end
    object acPreview: TAction
      Category = 'Fil'
      Caption = 'Forh'#229'ndsvisning'
      Enabled = False
      Hint = 'Forh'#229'ndsvisning'
      ImageIndex = 15
      OnExecute = acPreviewExecute
    end
    object acAvslutt: TAction
      Category = 'Fil'
      Caption = '&Avslutt'
      Hint = 'Avslutt'
      ShortCut = 32883
      OnExecute = acAvsluttExecute
    end
    object acAbout: TAction
      Category = 'Hjelp'
      Caption = 'Om BLS Business'
      Hint = 'Om'
      OnExecute = acAboutExecute
    end
    object acProdLagre: TAction
      Category = 'Popup'
      Caption = 'Lagre produktark som ...'
      Visible = False
      OnExecute = acProdLagreExecute
    end
    object acProdEmail: TAction
      Category = 'Popup'
      Caption = 'Produktark via e-post'
      Visible = False
      OnExecute = acProdEmailExecute
    end
    object acProdEmailKunde: TAction
      Category = 'Popup'
      Caption = 'Produktark til kunde'
      Visible = False
      OnExecute = acProdEmailKundeExecute
    end
    object acFakturaEmailKunde: TAction
      Category = 'Popup'
      Caption = 'Faktura via e-post'
      Visible = False
      OnExecute = acFakturaEmailKundeExecute
    end
    object acFakturaLagre: TAction
      Category = 'Popup'
      Caption = 'Lagre faktura som ...'
      Visible = False
      OnExecute = acFakturaLagreExecute
    end
    object acBetaling: TAction
      Category = 'Rediger'
      Caption = 'Registrer betaling'
      Enabled = False
      Hint = 'Registrer betaling'
      ImageIndex = 16
      OnExecute = acBetalingExecute
    end
    object acKlient: TAction
      Category = 'Rediger'
      Caption = 'Aktivt firma'
      Enabled = False
      Hint = 'Rediger firmainfo'
      OnExecute = acKlientExecute
    end
    object acNyKlient: TAction
      Category = 'Rediger'
      Caption = 'Legg til nytt firma'
      Enabled = False
      Hint = 'Nytt firma'
      OnExecute = acNyKlientExecute
    end
    object acFakturaStatus: TAction
      Category = 'Rediger'
      Caption = 'Endre faktura status'
      Enabled = False
      Hint = 'Endre fakturastatus'
      OnExecute = acFakturaStatusExecute
    end
    object acPrisHistorikk: TAction
      Category = 'Verkt'#248'y'
      Caption = 'Prisutvikling'
      Enabled = False
      Hint = 'Prishistorikk'
      OnExecute = acPrisHistorikkExecute
    end
    object acExport: TAction
      Category = 'Fil'
      Caption = 'Eksporter data'
      Enabled = False
      Hint = 'Export'
      OnExecute = acExportExecute
    end
    object acInnstillinger: TAction
      Category = 'Rediger'
      Caption = 'Innstillinger'
      Enabled = False
      Hint = 'Innstillinger'
      OnExecute = acInnstillingerExecute
    end
    object acSalgstall: TAction
      Category = 'Verkt'#248'y'
      Caption = 'Beregning av salgstall'
      Enabled = False
      Hint = 'Beregning av salgstall'
      OnExecute = acSalgstallExecute
    end
    object acMvaPeriode: TAction
      Caption = 'Merverdiavgift'
      Enabled = False
      ImageIndex = 17
      Visible = False
      OnExecute = acMvaPeriodeExecute
    end
    object acKontoOppslag: TAction
      Caption = 'Oppslag p'#229' konto'
      Enabled = False
      ImageIndex = 18
      OnExecute = acKontoOppslagExecute
    end
    object acGodkjenn: TAction
      Caption = 'Godkjenn'
      ImageIndex = 19
      OnExecute = acGodkjennExecute
    end
    object acGenFakturaBilag: TAction
      Caption = 'Generer fakturabilag'
      OnExecute = acGenFakturaBilagExecute
    end
    object acGenBetalingBilag: TAction
      Caption = 'Generer innbetalingsbilag'
      OnExecute = acGenBetalingBilagExecute
    end
    object acGenererBilag: TAction
      Caption = 'Generer bilag'
      Enabled = False
      ImageIndex = 20
      OnExecute = acGenererBilagExecute
    end
    object acInnbetalinger: TAction
      Category = 'Verkt'#248'y'
      Caption = 'Vis innbetalinger'
      OnExecute = acInnbetalingerExecute
    end
    object acProcessAbo: TAction
      Caption = 'Prosesser abonnement'
      Enabled = False
      ImageIndex = 20
      OnExecute = acProcessAboExecute
    end
    object acLisens: TAction
      Caption = 'Registrer lisensen'
      OnExecute = acLisensExecute
    end
    object acPerioder: TAction
      Caption = 'Regnskapsperioder'
      Enabled = False
      Hint = 'Vis liste over regnskapsperioder'
      OnExecute = acPerioderExecute
    end
    object acOrdreEmailKunde: TAction
      Category = 'Popup'
      Caption = 'Ordre via e-post'
      Enabled = False
      Visible = False
      OnExecute = acOrdreEmailKundeExecute
    end
    object acOrdreLagre: TAction
      Category = 'Popup'
      Caption = 'Lagre ordre som ...'
      Visible = False
      OnExecute = acOrdreLagreExecute
    end
    object acGenOrdreFaktura: TAction
      Caption = 'Generer faktura'
      Enabled = False
      ImageIndex = 20
      OnExecute = acGenOrdreFakturaExecute
    end
    object acBilagOpenDoc: TAction
      Caption = #197'pne dokument'
      OnExecute = acBilagOpenDocExecute
    end
    object acBilagSlettDoc: TAction
      Caption = 'Slett dokument'
      OnExecute = acBilagSlettDocExecute
    end
    object acBilagLinkDoc: TAction
      Caption = 'Link dokument'
      OnExecute = acBilagLinkDocExecute
    end
    object acAboHistorikk: TAction
      Caption = 'Abonnment historikk'
      Enabled = False
      ImageIndex = 21
      OnExecute = acAboHistorikkExecute
    end
  end
  object ImageList16: TImageList
    Left = 396
    Top = 175
    Bitmap = {
      494C0101160018000C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007A7878007A7878007A7878007A7878007A7878007A7878000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000000000000000000000000000000000000000000000000000000000007A77
      77007A787800C7C7C800B5B4B300A6A39C00A8A19800B0A7A500C0B4B5007A78
      78007A7878000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000AE4B1000FAC1
      71009933000000000000000000000000000000000000000000007A787800DAD9
      DB00B3B3B100A7A59800CBCAB900B5BACD009BA6D000CFCBBC00A8A09200A696
      9200D0BBBC007A78780000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009933000099330000E78C0F00F4A23400FFCB
      6400FBC57700993300009933000000000000000000007A787800DFDDDE005B91
      5C005D955600FBF1DD00FDE5C800AAB5F1005774F500FFEDD900FFFFFB00C0BF
      B4009E8D8600D5BBBC007A787800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000C7660E00FFAD1500FFA41900E997
      3300FEBF5F00FFDD8F009933000000000000000000007A7878007DA87D000C85
      18000C85180093B46F00F5D6A400F7CC9400F6BF8200F1C48F00FCEDCA00FFFF
      FD00BEBCB000AA918D007A787800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009933000099330000D9914A00FDB74100993300009933
      0000B95C1800FEC8680099330000000000007A78780099C09C000C85180052DE
      7F005EE991000C851800ABCE9000FEF5CC00F9E0B300F2C89700F2CC9900F7DB
      B100FDFCF1009F938500D5B5B5007A7878000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000D89D6A00FFF2BE00EEB06500993300000000
      000099330000F3A53D00FFD27200993300005F8A62000C8518003DCC610044D1
      6A004DD978004DD477000C851800A9CF9500FDFAD500FFF1C400FDD09A00F3BB
      8000FFEACD00C8C2B600BFA29D007A7878000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000669A0000669A009A5D2800C1631E00EEC79A00F9DAA600993300009933
      0000B44D0000FBA72500F4A74000993300000C8518000C851800158D21003ACA
      5C003CC65F000C8518000C8518000C85180085867D00B2B59C00B09E7F00CEA1
      7200AAB5F100A6AFCC00B1968F007A7878000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000669A000066
      9A003BBEE20083F3FF0080C7D9008FAAAA00AC967A00FFEFC100F0C59100D387
      4400F0992500FFAB100099330000000000007A787800DFDAD6000C8518002FBD
      4C0032BC4F000C851800FDFDD800A5A596002E303200383937002E303200B997
      6D005774F5008092CB00B89D93007A7878000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000669A000E91BF0027DE
      FF0031DEFF0054DAF9008AF4FF008EE0F900B49F8400FADAAB00FEE3BA00FFE6
      A800FFC56600FAA8220099330000000000007A787800E6E5E5000C85180028B6
      41002ABA450074B27700FFFFEC00F7F7D700C5C5AF002E303200BBB59B00FFDF
      A900FFE7BE00CDCBB300C4A5A5007A7878000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000669A004BB1D3005DE4
      FF0000669A0000669A0045BDDF0079E3F7008289830099330000DA904600FDE8
      BE00993300009933000000000000000000007A787800E8E7E900B1B79E000C85
      180028BC41000C851800BED9BF00FFFFF300FFFFEA00DADAC3002E3032009E8C
      7400FDFADC00AAA39500D5B5B7007A7878000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000669A0033B2D900D1F8FF009EEE
      FE0000669A000000000000669A0069ECFF0067DCFE0000669A00993300009933
      000000000000000000000000000000000000000000007A787800DCD9D70087A9
      76000C85180028BA41000C8518007BB77E00B3D4B100C2DDC100B8CAA600A4A4
      9700CDCEB800B5A09E007A787800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000669A0070CCE600D1FA
      FE0000669A0000669A0017B8E3003EDFFE0000669A0000000000000000000000
      000000000000000000000000000000000000000000007A787700DDDEDF00CCC8
      C40091B17F000C8518000C8518000C8518000C8518000C85180098C59500DEDF
      C500B0A39E00D6BCBC007A787800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000669A0033C0E600D9F9
      FF00D0FAFF008AE6FC0048E4FF001FD4FE0000669A0000000000000000000000
      00000000000000000000000000000000000000000000000000007A787800D7D7
      D900D1CDCB00CFC6B800E7DDCE00DFE3E000CEDEE400E7E4D700C5C2B500BFB0
      AE00CFBABA007A78780000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000669A000066
      9A009CE2F400CFFCFF0000669A0000669A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007A78
      78007A787800C8C9CA00C6C4C200C5C0BA00C6BFB700C2BAB700C3B8B9007A78
      78007A7878000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000669A0000669A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7979007A7878007A7878007A7878007A7878007B7979000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DADADA00DBDBDB00DBDBDB00DADADA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000818C97004F749A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001094CE001094CE001094CE001094CE001094CE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D7D7D700C8C8C800C9C8C800D3D4D400E0E0E100E1E1E100DDDD
      DD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000944A240066A1CE002A99F1006879
      94009F5A3B00944B2500944A2400944A2400944A2400944A2400944A2400944A
      2400944A2400944A2400944A2400944A24000000000000000000000000000000
      000042ADBD0042ADBD0042CEEF005ADEFF005ADEFF005ADEFF0042CEEF001094
      CE001094CE000000000000000000000000000000000000000000DBDBDB00DBDB
      DB00E3E3E3007A7A7A005554540078726F008E847F00A39D9A00ABA9A800C4C4
      C400DFDEDF00DFE0E000DCDCDC00000000000000000000000000000000000000
      0000FDFDFB00E3E9DB00D0DCC400CEDAC100CEDAC100CFDBC300DAE3D000F0F2
      EA000000000000000000000000000000000083422100C3E2F60061BEFD002E95
      E9007C8EAC00C9712500FEE4C600FEE1C000FEDEB900FEDBB400FED9B000FED7
      AC00FED7AB00FED7AB00FED7AB008F48230000000000000000000000000042AD
      BD0042CEEF009CE7FF009CE7FF009CE7FF00000000005ADEFF005ADEFF005ADE
      FF0042CEEF001094CE00000000000000000000000000DBDBDB00D3D3D300CDCD
      CD00EEEEEE006E6864008DA8B70059BAF00067A8CD007B9FB400959FA4009C97
      94009C949100A4999400C3BFBD00D9D9DA000000000000000000FCFCFA00C0CF
      AE007E9D6500517B300038690B0035660600356607003868090047741E00668B
      4900A1B98C00E3E8D800000000000000000083422100FFFDFB00C4E0F7005CBC
      FD003097E8008C838300CFB5A400C3AA9B00C3A99B00D2B5A200E9C8A900FED9
      AF00FED7AB00FED7AB00FED7AB008F482300000000000000000042ADBD0042CE
      EF009CE7FF009CE7FF009CE7FF009CE7FF00000000009CE7FF009CE7FF005ADE
      FF005ADEFF0042CEEF001094CE0000000000DBDBDB00D0D0D000505050006161
      6100A1A2A2006D635E007DA3B8000C9BEA00189AE10025A7EF002FACEF0047B7
      F30073C1EC0095C5DE00909DA300BBB8B70000000000F1F4ED007E9D60002F62
      07001A5400001F570000285E00002A5F00002A5F00002A5F0000255C00001C55
      0000235A00004C782F00C0CFB100FEFEFD0083422100FFFFFF00FFFDFC00BFE0
      F80087BDE100AFA09A00BBA29300DBB68B00E6D2B800DAC0A800C7A58B00E498
      3500FF990000FF990000FED7AB008F482300000000000000000042ADBD00ADF7
      FF009CE7FF009CE7FF009CE7FF009CE7FF00000000009CE7FF009CE7FF009CE7
      FF005ADEFF005ADEFF001094CE0000000000DFDFDF00A2A2A20061616100E0E1
      E10099999A00413E3C00ABB7BF008DC7E80072BAE20057B3E50034A7E6000DA8
      F90000A3FB0000A7FF0058AED800CCBEB700F7F9F500809F63001C550000265D
      00002F6301002F6301002E6201002E6201002E6201002E6201002E6201002F63
      01002D6100001E5700003B6C1500EEF3EA0083422100FFFFFF004CB74C004CB7
      4C00CABFBB00D0AA8F00F7E0B400FFFFDD00FFFFE800FFFFF300E1D4CB00CAAF
      A100FEDAB200FFD9AD00FED7AB008F482300000000000000000042ADBD00ADF7
      FF00ADF7FF009CE7FF009CE7FF000000000000000000000000009CE7FF009CE7
      FF009CE7FF005ADEFF001094CE0000000000E3E3E3007272720097979700F4F4
      F300EFEFEF0068686800C2C1C100FCF9F900F4F5F600EDF2F700E1ECF000D0E8
      F400AEDFF8007ED4FF0082BAD700C7BEBA00ECF1E80031640400295F00002F63
      01002E6201002E6201002E6201002E6201002C6100002E6201002E6201002E62
      01002E620100306301001B550000E8EDE40083422100FFFFFF004CB74C004CB7
      4C00C4ADA200DCB08900FFEAB200FEF9D000FFFFE500FFFFF900F7F4F200C4AB
      9A00FF990000FF990000FED8AD008F482300000000000000000042ADBD00ADF7
      FF00ADF7FF00ADF7FF009CE7FF008484840000000000848484009CE7FF009CE7
      FF009CE7FF005ADEFF001094CE0000000000E6E6E60058585900C7C8C400FFFF
      F900DCDDD30066686700ADA49A00B48D6900C0A48900CBB5A200E0D4C900EBE3
      DD00F1EBE700F9F3F100E0DCDB00B8B9B900EBF0E7002E6200002C6100002E62
      01002E6201002E6201002E62010030630300547E2C00366809002B6000002E62
      01002E6201002F6201001D570000E9EEE50083422100FFFFFF00FFFFFF00FFFE
      FE00C4ACA000E5C5A100FAD09300F8E1B200FFFFE800FFFFF100F7F4DD00C5AE
      9F00FEDFBC00FEDCB600FFDAB0008F482300000000000000000042ADBD0042CE
      EF00ADF7FF00ADF7FF00ADF7FF00ADF7FF009CE7FF009CE7FF009CE7FF009CE7
      FF009CE7FF0042CEEF001094CE0000000000D1D1D1005E5E5A00D7D8E0007376
      ED006C6EE80065677800AA9A8700753400007638000089470A00915114009B60
      2800AF764300C1936700C1AE9B00BDC1C400F6F8F30071935100205800002A5F
      00002E6201002E6201002E62010031640500BFCAAB009CB28600225904002B60
      00002C610000275C000039690D00EDF1E90083422100FFFFFF00FFFFFF00FFFE
      FE00D2BEB500D9BCA000FEE3A900F5D09E00F9EBC200FDF9D800E5DBC100D7C0
      9F00FF990000FF990000FEDCB5008F48230000000000000000000000000042AD
      BD0042ADBD0042ADBD0042ADBD0042ADBD0042ADBD0042ADBD0042ADBD0042AD
      BD0042ADBD0042ADBD000000000000000000ACACAB0071706600858AEA002A2A
      DB00173CEB00125A8F00B9AFA100C5A58900B08E7000AF835A00A9774700A76B
      3300AA672900A75A1200A97E5500C1C8CE0000000000E4EADC006E914E002E61
      0B00265C0000245A0000285E0000235B000078995B00F8FAF5008FAA78001F56
      0000255C000043712000BDCAAA00FFFFFE0083422100FFFFFF006E94FF006E94
      FF00E8DEDA00C2A18D00E3D8C700F7E9CB00F2CD9A00E5CDA600CEBAA400D8C1
      AC00FFE4C700FEE1C100FEDEBB008F4823000000000000000000000000000000
      000042ADBD009CE7FF001094CE0000000000000000000000000042ADBD009CE7
      FF001094CE00000000000000000000000000949494008A8A83006A70EF006768
      E300C0DCFA0093D3F100448DB60085ACC200C4C3C300C1C4C500B3B5B500B7B6
      B500BEB8B300C7BAAF00B1A79F00BDBFC1000000000000000000FFFEFD00B3C4
      9D006F934D00477527003D6C140035670800265C000091AD7A00F5F7F00094AE
      7A0085A36800E3E8DA00000000000000000083422100FFFFFF006E94FF006E94
      FF00FEFEFE00C47A3900C5AEA500C1A99B00C3AA9900D2B89F00D6AD8800EC95
      2200FF990000FF990000FFE1C0008F4823000000000000000000000000000000
      000042ADBD009CE7FF001094CE0000000000000000000000000042ADBD009CE7
      FF001094CE000000000000000000000000008E8E8E009E9E9400BCBEFA001315
      DF00267BEF005ECCFE0037BCFF00B1E6FF00FFFEF900EAEAEB00A0A0A100BCBD
      BE00BABCBD00B9BCBE00BBBDBE00D3D2D2000000000000000000000000000000
      000000000000DEE6D500C2D0B200B3C49E00447219001C5500008AA773000000
      000000000000000000000000000000000000B26C3900D3A35C00D3A35C00D3A3
      5C00D3A35C00D3A35C00D3A35C00D3A35C00D3A35C00D3A35C00D8AE6D00D3A3
      5C00D9AE6C00D3A35C00CAAA7700B56D38000000000000000000000000000000
      000042ADBD0042CEEF0042CEEF001094CE001094CE001094CE0042CEEF0042CE
      EF001094CE00000000000000000000000000C3C4C4008E8D8D00ADADA800BAB5
      BF00AFCBE00052C7FF008BD6FE00F5F2F200ECEBEA0000000000A5A5A500E3E3
      E300DEDEDE00DEDEDE00DEDEDE00DADADA000000000000000000000000000000
      0000000000000000000000000000000000004A761F000E4B00002D620100B7C7
      A40000000000000000000000000000000000AE5C2700DB7F2600DB7F2600DB7F
      2600DB7F2600DB7F2600DB7F2600DB7F2600DB7F2600DB7F2600F6BB8000DB7F
      2600F6BB8000B37D53004E6ED400B95D19000000000000000000000000000000
      00000000000042ADBD0042CEEF009CE7FF009CE7FF009CE7FF0042CEEF001094
      CE0000000000000000000000000000000000DCDCDC00E3E3E300C4C4C300B2B2
      AF00B0ADA900AAA29D00CBC4BF00DFDEDE00E1E1E100C1C2C200A8A9A900DDDD
      DD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFD00CAD7BE00BFCFAF00C9D7BC00E4EA
      DE000000000000000000000000000000000000000000AA5A2F00AA5A2F00AA5A
      2F00AA5A2F00AA5A2F00AA5A2F00AA5A2F00AA5A2F00AA5A2F00AA5A2F00AA5A
      2F00AA5A2F00AA5A2F00AA5A2F00000000000000000000000000000000000000
      0000000000000000000042ADBD0042ADBD0042ADBD0042ADBD001094CE000000
      0000000000000000000000000000000000000000000000000000DDDDDD00E1E1
      E200D7D8D800CECDCD00BFBFBF00A0A0A000B6B7B700ACACAC00CACBCB00DADA
      DA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DADADA00DBDBDB00DFDFDF00D4D5D500D1D1D100DBDBDB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000005720A0005720A0005720A0005720A0005720A0005720A000572
      0A0005720A0005720A0005720A0005720A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A667C00BE9596000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000636E7B0000000000C2A6
      A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6
      A400C2A6A400C2A6A400C2A6A40000000000AA7F7A00B8838400B8838400B883
      8400B883840005720A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0005720A000000000000000000000000000000
      000000000000E7C6B500E7C6B500E7C6B500E7C6B500E7C6B500E7C6B500E7C6
      B500000000000000000000000000000000006B9CC3001E89E8004B7AA300C896
      9300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005E98C7003489D0007F859D00C2A6
      A400FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFC
      FB00FEFCFB00FEFCFB00C2A6A40000000000AD827B00FCEBCE00F7DFBF00F4DA
      B300F3D6AB0005720A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00006600000066
      0000FFFFFF00FFFFFF00FFFFFF0005720A000000000000000000000000000000
      000042182100E7C6B500F7F7F700FFEFDE00F7DEC600F7DEC600FFFFFF00E7C6
      B500421821000000000000000000000000004BB4FE0051B5FF002089E9004B7A
      A200C69592000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004BB6FF00288BE0008584
      9800FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFC
      FB00FEFCFB00FEFCFB00C2A6A40000000000B1857C00FDEDD500F5DFC500F4DB
      BB00F2D7B20005720A00FFFFFF00FFFFFF00FFFFFF000066000033AF500053E0
      810000660000FFFFFF00FFFFFF0005720A000000000000000000000000005252
      520042182100E7C6B500F7F7F700FFD6A500FECC9A00FECC9A00FFFFFF00E7C6
      B500421821005252520000000000000000000000000051B7FE0051B3FF001D87
      E6004E7AA000CA97920000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004DB5FF00278B
      DE0079819A00FEFBF700FEFBF700FEFBF700FEFBF700FEFBF700FEFBF700FEFB
      F700FEFBF700FEFBF700C2A6A40000000000B6897E00FEF2DE00F7E5CE00F5E0
      C500F4DCBC0005720A00FFFFFF00FFFFFF0000660000168B23003DBE5F003AC9
      5B00199D290000660000FFFFFF0005720A00000000006B6B6B004A4A4A004A4A
      4A004A4A4A00E7C6B500F7F7F700FFEFDE00F7DEC600F7DEC600F7F7F700E7C6
      B5004A4A4A004A4A4A004218210000000000000000000000000051B7FE004EB2
      FF001F89E6004E7BA200B9949700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004CB9
      FF005A91BF00E0CCC800C4A39F00B0878300C4A39F00E0CCC800FEF9F400FEF9
      F400FEF9F400FEF9F400C2A6A40000000000BA8D8000FFF7E800F8E8D600F6E4
      CD00F5E0C40005720A00FFFFFF00FFFFFF00006600000066000024902E0019A3
      2B000066000000660000FFFFFF0005720A007B7B7B004A4A4A005A5252005252
      52004A4A4A009C9C9C00ADADAD00ADB5B500B5B5B500B5B5B500A5A5A5009494
      9C004A4A4A0052525A004A5252004A4A4A0000000000000000000000000052B8
      FE004BB1FF002787D9005F6A760000000000B0857F00C09F9400C09F9600BC98
      8E0000000000000000000000000000000000000000000000000000000000C2A6
      A400D1B7B200B8908A00D3B5A800EFDBC300D2B1A000B78E8600E0CBC500FEF7
      F000FEF7F000FEF7F000C2A6A40000000000BF918300FFFCF200F9EDDF00F7E8
      D600F6E4CD0005720A00FFFFFF00FFFFFF00FFFFFF00FFFFFF002B9733000066
      0000FFFFFF00FFFFFF00FFFFFF0005720A0052525200847B8400949C9C008C9C
      9C008C9C9400949C9C00949494008C8C8C007B847B0084948C008C949400949C
      9C008C849C00B5B5B5008CFF7B00421821000000000000000000000000000000
      000055BDFF00B5D6ED00BF9D9200BB9B8C00E7DAC200FFFFE300FFFFE500FDFA
      DA00D8C3B300B58D85000000000000000000000000000000000000000000C2A6
      A400C4A29D00D4B9B100F9EADA00F8E7D200FFFFF700D2B0A000C4A29D00FEF5
      EC00FEF5EC00FEF5EC00C2A6A40000000000C4968500FFFFFC00FAF1E800F9EC
      DE00F8E8D50005720A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00077D0E000066
      0000F3F8F400FFFFFF00FFFFFF0005720A00525252009C9C9C00BDBDBD00ADAD
      AD00948C8C00846B7300846B6B0084636B00845A6B007B636B008C6B6B008C63
      7300A57BA5008C4A5A00B5B5B500421821000000000000000000000000000000
      00000000000000000000CEA79500FDEEBE00FFFFD800FFFFDA00FFFFDB00FFFF
      E600FFFFFB00EADDDC00AE837F0000000000000000000000000000000000C2A6
      A400B0868200F5EAE300F9EFE300F8EADA00FFFFF000F0DAC400B0868200FEF3
      E900FEF3E900FEF3E900C2A6A40000000000C99B8700FFFFFF00FDF7F200FBF1
      E800FAEEDF0005720A00FFFFFF00FFFFFF00006600000066000000660000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0005720A0063636300ADADAD00D6DEDE008C6B
      73009C6B7300A57B7B00BD8C8C00C68C9400BD8C9400BD8C9400C68C8C00A573
      7B00A56B7B008C4A5A00BDD6BD00525252000000000000000000000000000000
      00000000000000000000C1A09100FBDCA800FEF7D000FFFFDB00FFFFE300FFFF
      F800FFFFFD00FFFFFD00C6A99C0000000000000000000000000000000000C2A6
      A400C4A19B00D6BFBA00FBF3EB00FAEFE200FFFFDE00D3B5A800C4A19B00FFF1
      E500FFF1E500FFF1E500C2A6A40000000000CD9E8A00FFFFFF00FFFCFB00FEF7
      F100FBF2E70005720A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0005720A008C8C8C00B5B5B500CECECE007B4A
      5200844A52004A4A4A0042182100421821004218210042182100421821004A4A
      4A00844A52008C4A5A00C6C6CE00525252000000000000000000000000000000
      000000000000C1A09100FEE3AC00F1C49100FCF2CA00FFFFDD00FFFFE400FFFF
      F700FFFFF700FFFFE900EEE5CB00B9948C00000000000000000000000000C2A6
      A400E0C7BC00B8928F00D6BFBA00F5EAE200D4B9B100B8908A00CBB2A800DDCF
      C200DDCFC200DDCFC200C2A6A40000000000D1A38B00FFFFFF00FFFFFF00FFFD
      FB00FDF7F10005720A0005720A0005720A0005720A0005720A0005720A000572
      0A0005720A0005720A0005720A0005720A008C8C8C00B5B5B500CECECE004218
      21004A4A4A00A5A5A500DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00A5A5
      A500393939004A212100CECECE00636363000000000000000000000000000000
      000000000000C2A19100FFE6AE00EEB58100F7DCAE00FEFDD800FFFFDF00FFFF
      E300FFFFE400FFFFE000F3ECD200BB968E00000000000000000000000000C2A6
      A400FFEEDE00E0C5BA00C4A09900B0868200C4A09900E0C5BA00C5B5A900C3B4
      A800C2B3A700C1B2A600C2A6A40000000000D6A78D00FFFFFF00FFFFFF00FFFF
      FF00FFFDFB00FDF7F100FBF1E600FAEDDE00FDF0DD00EADDCA00C7BFB000B883
      84000000000000000000000000000000000000000000A5A5A500ADB5B5009C94
      940084737300E7C6B500FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700B584
      84007B636B009C8C8C00ADB5B500000000000000000000000000000000000000
      000000000000BC978C00FBE7B700F4C79100F2C99400F8E5B900FEFCD800FFFF
      DD00FFFFDC00FFFFE000E2D2BA00B68E8600000000000000000000000000C2A6
      A400FFECDA00FFECDA00FFECDA00FFECDA00FFECDA00FFECDA00B0A29600B0A2
      9600B0A29600B0A29600C2A6A40000000000D9AA8F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFDFB00FDF8F000FBF3E700B8838400B8838400B8838400B883
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000E7C6B500FFFFFF00FFFFFF00F7F7F700C6A59400C6A59400C6A5
      9400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D9C3A900FFFEE500F7DCB800F2C99400F5D4A500FAE8
      BD00FDF4C900FDFBD600B690890000000000000000000000000000000000C2A6
      A400FFEAD700FFEAD700FFEAD700FFEAD700FFEAD700C9B9AC00FBF8F400FBF8
      F400E6DAD900C2A6A4000000000000000000DDAC9100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFD00F7F0EC00B8838400E9B67600F3AE5200CA8A
      6A00000000000000000000000000000000000000000000000000000000000000
      000000000000E7C6B500F7FFFF00FFFFFF00F7F7F700C6A59400FFFFFF00C6A5
      9400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B58D8500E8DEDD00FFFEF200F9D8A300F4C48C00F9D4
      9F00FDEAB800D0B49F00B890860000000000000000000000000000000000C2A6
      A400FFE8D300FFE8D300FFE8D300FFE8D300FFE8D300C9B9AC00FBF8F400DFCE
      C700C2A6A400000000000000000000000000DFAF9200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FAFAFE00B8838400EBB87A00D09877000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7C6B500F7F7F700F7F7F700F7F7F700C6A59400C6A594000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD827F00C9AA9E00EFE0B700EFDFB200E7CE
      AC00B8908600B89086000000000000000000000000000000000000000000C2A6
      A400FFE6D000FFE6D000FFE6D000FFE6D000FFE6D000C9B9AC00DFCEC700C2A6
      A40000000000000000000000000000000000DBA68500DBA68500DBA68500DBA6
      8500DBA68500DBA68500DBA68500DBA68500B8838400CA978400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7C6B500E7C6B500E7C6B500E7C6B500C6A59400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BA968A00BB988C00B791
      880000000000000000000000000000000000000000000000000000000000C2A6
      A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A4000000
      0000000000000000000000000000000000000000000000000000A87D7800B781
      8300B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B781830000000000000000000000000000000000B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2A6A400C2A6
      A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6
      A400C2A6A400C2A6A40000000000000000000000000000000000A87D7800F2E6
      D700FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000F0E2CF00B781830000000000000000000000000000000000C6A59C00FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2A6A400FEFC
      FB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFC
      FB00FEFCFB00C2A6A40000000000000000000000000000000000A87D7800F3E7
      D900FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC
      9A00F0E2CF00B781830000000000000000000000000000000000C6A59C00FFFF
      FF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00B5848400000000000000000000000000000000000000
      9A0000009A000000000000000000000000000000000000000000000000000000
      9A0000009A000000000000000000000000000000000000000000C2A6A400FEFC
      FB00FEFCFB00FEFCFB00FEFCFB00D8EBD600018A0200018A0200D8EBD600FEFC
      FB00FEFCFB00C2A6A40000000000000000000000000000000000A87D7800F3E9
      DE00FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000EFE1CE00B781830000000000000000000000000000000000C6ADA500FFFF
      FF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600FFF7EF00B584840000000000000000000000000000009A00174A
      FD00103BF40000009A000000000000000000000000000000000000009A00002C
      F8000030FC0000009A0000000000000000000000000000000000C2A6A400FEFB
      F700FEFBF700018A0200D8EAD200018A0200D8EAD200D8EAD200018A0200FEFB
      F700FEFBF700C2A6A40000000000000000000000000000000000A87D7800EDE4
      DA00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC
      9A00E8DAC800B781830000000000000000000000000000000000C6ADA500FFFF
      FF00F7D6A500F7D6A500F7D6A500F7D6A500F7D6A500F7D6A500F7D6A500F7D6
      A500F7D6A500FFF7EF00B584840000000000000000000000000000009A001A47
      F8001A4CFF00123BF10000009A00000000000000000000009A00012DF6000132
      FF00002AF30000009A0000000000000000000000000000000000C2A6A400FEF9
      F400FEF9F400018A0200018A0200D8E8D000FEF9F400FEF9F400D8E8D000FEF9
      F400FEF9F400C2A6A40000000000000000000000000000000000A07A7100B4AE
      A900B4ADA700B4ACA400B3ACA300B2AAA100B1A9A000B0A89D00B0A89C00B0A6
      9A00B0A59900A474760000000000000000000000000000000000CEB5AD00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7EF00FFF7EF00B5848400000000000000000000000000000000000000
      9A001C47F6001B4DFF00143EF40000009A0000009A00002DF8000134FF00032B
      F20000009A000000000000000000000000000000000000000000C2A6A400FEF7
      F000FEF7F000018A0200018A0200018A0200FEF7F000FEF7F000FEF7F000FEF7
      F000FEF7F000C2A6A4000000000000000000A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A35228000000000000000000D6B5AD00FFFF
      FF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600FFF7EF00B5848400000000000000000000000000000000000000
      000000009A001D48F6001D50FF00103DFB000431FE000132FF00002CF6000000
      9A00000000000000000000000000000000000000000000000000C2A6A400FEF5
      EC00FEF5EC00FEF5EC00FEF5EC00FEF5EC00018A0200018A0200018A0200FEF5
      EC00FEF5EC00C2A6A4000000000000000000A352280000000000BA8E8200DCD6
      D200D8754200D8754200D8754200D8754200D8754200D8754200D8754200D875
      4200D5CBBF00B781830000000000A35228000000000000000000D6BDB500FFFF
      FF00F7D6A500F7D6A500F7D6A500F7D6A500F7D6A500F7D6A500F7D6A500F7D6
      A500F7D6A500FFF7EF00B5848400000000000000000000000000000000000000
      00000000000000009A001A48F9001342FF000C3CFF000733F60000009A000000
      0000000000000000000000000000000000000000000000000000C2A6A400FEF3
      E900FEF3E900D8E3C700FEF3E900FEF3E900D8E3C700018A0200018A0200FEF3
      E900FEF3E900C2A6A4000000000000000000A352280000000000AE877700B6B4
      B000F6CAB300F6CAB300F6CAB300F6CAB300F6CAB300F6CAB300F6CAB300F6CA
      B300B1AAA100A474760000000000A35228000000000000000000D6BDB500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700B5848400000000000000000000000000000000000000
      00000000000000009A00214EFC001D4BFF001847FF001743F60000009A000000
      0000000000000000000000000000000000000000000000000000C2A6A400FFF1
      E500FFF1E500018A0200D9E2C300D9E2C300018A0200D9E2C300018A0200FFF1
      E500FFF1E500C2A6A40000000000000000000000000000000000C2968500FFFE
      FD00FFFEFD00FFFEFD00FBF7F300FAF5EF00FAF5EF00F8F1EB00F7F1E900F6EC
      E200F6ECE200B781830000000000000000000000000000000000DEBDB500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7
      F700FFF7F700FFF7F700B5848400000000000000000000000000000000000000
      000000009A002E5BF9002C5FFF00224DF800204BF8002355FF001B46F6000000
      9A00000000000000000000000000000000000000000000000000C2A6A400FFF0
      E200FFF0E200D9E1C100018A0200018A0200D9E1C100DDCFC200DDCFC200DDCF
      C200DDCFC200C2A6A40000000000000000000000000000000000CA9C8800FDFC
      FA00FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000F5ECE300B781830000000000000000000000000000000000DEC6B50029AD
      D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD6002183
      A7002183A700C6BDAD00B5848400000000000000000000000000000000000000
      9A003664FA00386BFF002D59F40000009A0000009A00224CF4002558FF001D49
      F60000009A000000000000000000000000000000000000000000C2A6A400FFEE
      DE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00C5B5A900C3B4A800C2B3
      A700C1B2A600C2A6A40000000000000000000000000000000000D2A38A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F1E900B781830000000000000000000000000000000000E7C6B50029AD
      D6008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF0041EFFF00C6A5
      9400B5948C00B58C8400B584840000000000000000000000000000009A004071
      FA004274FF00325DF10000009A00000000000000000000009A00224DF100275A
      FF00204CF80000009A0000000000000000000000000000000000C2A6A400FFEC
      DA00FFECDA00FFECDA00FFECDA00FFECDA00FFECDA00B0A29600B0A29600B0A2
      9600B0A29600C2A6A40000000000000000000000000000000000D7A78C00FFFF
      FF00FFFFFF00FFFFFF00FFFEFD00FEFBF800FCF9F600FBF7F300FAF6F100F9F3
      EE00F9F2EC00B781830000000000000000000000000000000000E7C6B50029AD
      D6008CF7FF00E88E6000E88E6000E88E6000E4753E00E1622300B04A1800BD8C
      7300EFB57300EFA54A00C6846B0000000000000000000000000000009A00497A
      FC003B66F30000009A000000000000000000000000000000000000009A002550
      F4002655FA0000009A0000000000000000000000000000000000C2A6A400FFEA
      D700FFEAD700FFEAD700FFEAD700FFEAD700C9B9AC00FBF8F400FBF8F400E6DA
      D900C2A6A4000000000000000000000000000000000000000000DEAD8E00FFFF
      FF00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC
      9A00FAF6F100B781830000000000000000000000000000000000EFCEBD0029AD
      D6008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF0041EFFF00C694
      7B00FFC67300CE94730000000000000000000000000000000000000000000000
      9A0000009A000000000000000000000000000000000000000000000000000000
      9A0000009A000000000000000000000000000000000000000000C2A6A400FFE8
      D300FFE8D300FFE8D300FFE8D300FFE8D300C9B9AC00FBF8F400DFCEC700C2A6
      A400000000000000000000000000000000000000000000000000DEAD8E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFC00FEFCFA00FCF9
      F600FBF8F400B781830000000000000000000000000000000000E7C6B50029AD
      D60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD6007FC7E900C694
      7B00CE9C84000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2A6A400FFE6
      D000FFE6D000FFE6D000FFE6D000FFE6D000C9B9AC00DFCEC700C2A6A4000000
      0000000000000000000000000000000000000000000000000000DEAD8F00DAA4
      8200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA4
      8200DAA48200AA807C0000000000000000000000000000000000E7C6B500EFCE
      B500EFCEB500EFCEB500EFCEB500E7C6B500E7C6B500EFCEB500D6BDB500BD84
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2A6A400C2A6
      A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B1908E00B190
      8E00B1908E00B1908E00B1908E00B1908E00B1908E00B1908E00B1908E00B190
      8E00B1908E00B1908E0000000000000000000000000000000000000000000000
      0000BFBFBF00BABABA00B2B2B200ADADAD00ADADAD00AEAEAE00B2B2B200B8B8
      B800BCBCBC00BFBFBF0000000000000000000000000000000000000000000000
      000000000000BEBEBE00B7B7B700B0B0B000ADADAD00AEAEAE00B2B2B200B8B8
      B800BCBCBC00BFBFBF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B1908E00FEFB
      FA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFB
      FA00FEFBFA00B1908E000000000000000000000000000000000000000000BCBC
      BC00B2B2B2009E9E9E00888888007C7C7C007C7C7C0080808000888888009494
      9400A1A1A100ADADAD00B7B7B700BEBEBE00000000000000000000000000BFBF
      BF00B9B9B900AAAAAA0095959500848484007F7F7F0080808000888888009393
      9300A1A1A100ACACAC00B6B6B600BDBDBD0000000000AE602A00AE602A00AE60
      2A00AE602A00AE602A00AE602A00AE602A00AE602A00AE602A00AE602A00AE60
      2A00AE602A00AE602A00AE602A00000000000000000000000000B1908E00FEFB
      FA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFB
      FA00FEFBFA00B1908E00000000000000000000000000BEBEBE00B8B8B800A7A7
      A700918C8C009B868600A594940091898B00A39696009B8A88007D7372006A67
      67006D6D6D00808080009D9D9D00B6B6B6000000000000000000BCBCBC00B2B2
      B2009C9C9C0091848400A18D8D009D929400A39696009B8A88007D7272006A67
      67006D6D6D007D7D7D0097979700B3B3B300DAA03900FFD19500EAB77700E4AE
      6700FFBD6000F1AE4F00DC9C3E00FCAA3200FFA92200FB9F1400FB9A0500FB98
      0000FB980100FC990000FF9F0000AE602A000000000000000000B1908E00FEFA
      F400FEFAF400FEFAF400FEFAF400FEFAF400FEFAF400FEFAF400FEFAF400FEFA
      F400FEFAF400B1908E000000000000000000BCBCBC00B0B0B000989898009383
      8300BCA0A000DEC8C800B0A09F00205C7200277E9D005996AC0094A6B000C4B5
      B500AC9A99007D74740083838300AFAFAF00BFBFBF00B8B8B800A7A7A700918B
      8B00A2898900D0B3B300D9C5C400485E6800247693005D99B00091A5AF00BFB2
      B200AD9B99008375740079797900AAAAAA00E7AC1D00EEC09300584E4400534A
      4100D39D5B00866A4600433E3900BA833800D5902F005043300054452F005243
      300055442B00624A2800F6970200AE602A000000000000000000B1908E00FEF7
      F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7
      F000FEF7F000B1908E000000000000000000B3B3B300978E8E00AA909000D8C3
      C300E6DCDC00F1EEEE00DBC8C800AF9EA1008095A10048869F002F5B6D007876
      7900456E7C00998F8F0080808000AEAEAE00B9B9B900A1A1A10096858500C0A5
      A500DECECE00EBE5E500E9DFDF00B3A0A1007A93A100437C9300186C8B005965
      6B005F778100898F950070707000A6A6A600E7AC1D00FFD0A000CAA27600C097
      6800FBBD6D00D69F5800B9884700EDA54000E9A14200AF7F5600C5853800E08D
      1200B6793700B97B3700FE9D0200AE602A000000000000000000B1908E00FEF4
      EB00FEF4EB00FEF4EB00FEF4EB00FEF4EB00FEF4EB00FEF4EB00FEF4EB00FEF4
      EB00FEF4EB00B1908E000000000000000000B29F9F00CAB0B000E2D5D500EEE9
      E900F3F0F000E7DCDD00CFB1B000D3B4B300DDC0C000D3B0B000CCB1B100BCA8
      AA007A7A7F00998A8B008E8E8E00B3B3B300B2AAAA00B3999900D9C4C400E7DD
      DD00F0EDED00F0ECED00DAC6C600D1AFAE00DBBAB900D3B1B000C0A9AB00B6A1
      A2007C7F8500767D830080808000ADADAD00E7AC1D00EDC2990060554C005C51
      4700D2A268008B704F004F463C00B5843F00977D92002E42DE006D64A100CA8A
      48003047D3003649CC00EB931700AE602A000000000000000000B1908E00FEF2
      E600FEF2E600FEF2E600FEF2E600FEF2E600FEF2E600FEF2E600FEF2E600FEF2
      E600FEF2E600B1908E000000000000000000CDB6B600E8DFDF00F2EFEF00F0EA
      EA00E1D3D400D3B7B400E8C8BC00EDB59D00D2866F00C8918500CCA9A400D0AF
      AE00C9A9AB008D7E7E0092929200B5B5B500BCA4A400DECFCF00EFECED00F3F2
      F300EDE8E800DBC7C800DFC1BA00ECC0AF00E5B4A300D9ADA200D2ACA600D7B8
      B600DAB8B600BA9D9B0098989800B7B7B700E7AC1D00FED1A200BC9B7800B391
      6C00FDC47F00D3A16500A17B4D00EFAA4D00E9A6570088739400C78D5500FEA3
      17009C746900A1745F00FE9D0100AE602A000000000000000000B1908E00FEEF
      E200FEEFE200FEEFE200FEEFE200FEEFE200FEEFE200FEEFE200FEEFE200FEEF
      E200FEEFE200B1908E000000000000000000E0D7D700F6F7F700E9DFDF00CEB8
      B700C1BDBC00C5CDCA00C7CDCA00D0A29100DE6A4400CC816700CFB0A500CBBA
      B600A17367006A58530081818100AEAEAE00C6B4B400F4F6F600EBE2E000DAC1
      BE00CCABA900CFB3B200E6D2CF00F2D5CB00FFCFB500FFCFAF00F8C7AB00D9B8
      AF00988286007B767600A0A0A000BABABA00E7AC1D00E9BF970063584D005A51
      4900CDA574008A71550047413C00B38649009D839700263EE3006E66A500CE90
      4B003148D2003448CC00E3911E00AE602A000000000000000000B1908E00FFED
      DD00FFEDDD00FFEDDD00FFEDDD00FFEDDD00FFEDDD00FFEDDD00FFEDDD00FFED
      DD00FFEDDD00B1908E000000000000000000C1B4B400CCB7B700DECBCB00D1D5
      D400B7C9C600838D8B00C9E1DF00D4C8BD00E5866300C8836A00D6BFB800DFDB
      D800D36C4A00AD44260076767600AAAAAA00C1B5B700D0A29400C2522700CD69
      3D00D6855B00D1825D00C57A5F00C9A49F009CA5CF00728ACC005E80CC004663
      BC002B3B8A00606370009C9C9C00BABABA00E7AC1D00FFD4A500FCC79400F5C1
      9000FFCF9200FEC07D00EFB06A00FFBD6100FFB74F00E3A45B00FCAB3C00FFAC
      2400EE9B2C00F2981B00FF9F0000AE602A000000000000000000B1908E00FFED
      DD00FFEBD900FFEDDD00FFEBD900FFEDDD00FFEBD900D3C1B100D3C1B100D3C1
      B100D3C1B100B1908E00000000000000000000000000BFBEBE00B0AAAA008E8B
      8A008C878600B2C0BD00D6EBE900D8CCC100E89D7E00BBCDC900B7CCC700B7B9
      B200C4725900B24E310076767600AAAAAA0000000000B8897800CA4F2000E082
      5300EEA57400DF936700DC6D3800A44636001240C5002464D800267EF0001C63
      E400113AC6005C628200A7A7A700BDBDBD00E7AC1D00F5CAA000E1DEC000E2E0
      C100DEDBBC00E1DCB900E3DAB100DED5A800E6D39F00FFBF5D00FCAB3C00F3A3
      3300F69F2000F89D1300FF9F0400AE602A000000000000000000B1908E00FFEB
      D900FFE6CF00FFEBD900FFE6CF00FFEBD900FFEBD900B5A19300B2A09200B09E
      9000B09E9000B1908E000000000000000000BFBFBF00B6B6B600696969005C33
      3700C2B0B000C9D3D100CBD6D600D5C8BE00EEB19200C6E1E100BEF5FA00AEF0
      F600A5E7EC00A467520076767600AAAAAA0000000000BBAEA900C05A3100E37B
      4800DF9C7100E8B99B00E16D3500864043000F3DC600A5A3BE00688DCB00195D
      E30026419D008E8F9300B6B6B60000000000E7AC1D00D4AF8C006BD3CA006CD7
      CE006CD7CE006CD7CF006CD7CF0066D7D1008DE0D900FCC57B00CA8D3D00B581
      3900AD7A3100C1822500FFA20B00AE602A000000000000000000B1908E00FFE6
      CF00FFE6CF00FFE6CF00FFE6CF00FFE6CF00FFE6CF009C8B7E009C8B7E009C8B
      7E009C8B7E00B1908E000000000000000000B8B8B800919297002F2018009464
      6800C6D1CF00AFB1B000A9ABAC00D6C8BF00E8A98900D1DEDC00CBF1F400BEEF
      F300B1EFF400A8725E0079797900AAAAAA000000000000000000B8A79E009669
      55004986B4005C97C1008B563B007A72740058679700556F91003C629000233E
      82005D5F690095959500B8B8B80000000000EFB53E00F8C9A200D1AC8600D1AD
      8600D1AD8600D1AC8500D1AA7B00CFA46E00DCAB6B00FFBD6A00F6AF5200FCAF
      4600E79D3700F3A02800FFA71600AE602A000000000000000000B1908E00FFE6
      CF00FFE1C600FFE6CF00FFE1C600FFE6CF00B5A19300FEF4EB00FEF4EB00DECF
      CE00B1908E000000000000000000000000009494AE002A2554006E3E3A00A292
      9400DCF4EF00CDD5D300C0C3C400DCDAD400DDC7B800DFE4E400E4F6F700D6F7
      F900C6F9FD00B27A65008F8F8F00B0B0B0000000000000000000BFBFBF00458E
      C2002E9CF4002B98F00035698D007D7D7D00546274002371BD00286DB000272E
      38004F4E500091919100B6B6B6000000000000000000E4A70A00EDB33900F0B8
      4D00EEB64D00E9B24D00F2BA6200F2B65A00EEB04F00EAA94500E9A43A00E79F
      3100E89B2700E6971F00D2851A00000000000000000000000000B1908E00FFE1
      C600FFE1C600FFE1C600FFE1C600FFE1C600BAA69700FEFAF400D3C1B100B190
      8E00000000000000000000000000000000003E419800472B3500885656007F7E
      7E00D4E5E100DEF0EC00E4EFEC00EAF5F400E8F5F300C1C7C50098959400BAB8
      B700C4C5C300BB887500B0B0B000BABABA000000000000000000B5BBBF00368E
      D30041A9FA004BB4FF003E90CD0087878700576B7F002C85DD002B6FB300272F
      3A00515151009E9E9E00BABABA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B1908E00FFDE
      C200FFDEC200FFDEC200FFDEC200FFDEC200B5A19300D3C1B100B1908E000000
      0000000000000000000000000000000000005B457E006F4F96006C636D00A7A7
      A700B4B5B400CFDBD800E7F3F100F1F9F800EAF1F000A7A8A800ADADAD00BCBC
      BC00BFBFBF00C0BDBD00BFBFBF00000000000000000000000000B8BABC00365D
      84003878B000439EE00044799E00A1A1A1007E828800385573004A4C51003332
      340082828300B2B2B200BFBFBF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B1908E00B190
      8E00B1908E00B1908E00B1908E00B1908E00B1908E00B1908E00000000000000
      000000000000000000000000000000000000A19693006D616F00A9A9B200BABA
      BA00BFBFBF00B9B9B900BABDBD00B7B8B800B7B8B800B6B6B600BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000007B92
      A20052799C00587A9A009AA1A700B9B9B900B2B1B100716E6D00706D6D008585
      8600B6B6B600BDBDBD0000000000000000000000000000000000000000000000
      0000EDEDED00E4E4E400D7D7D700D2D2D200D5D5D500D8D8D800DBDBDB00DFDF
      DF00E3E3E300E9E9E900EDEDED00000000000000000000000000000000000000
      000000000000EDEDED00E7E7E700DEDEDE00D9D9D900D9D9D900DCDCDC00E0E0
      E000E5E5E500EAEAEA00EDEDED00000000000000000000000000000000000000
      0000000000000000000000000000EDEDED00E5E5E500D9D9D900D6D6D600E0E0
      E000EBEBEB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ECECEC00E5E5E500E4E4
      E400E4E4E400CBCBCB00A3A3A30093939300989898009D9D9D00A3A3A300ABAB
      AB00B6B6B600C5C5C500DADADA00EAEAEA000000000000000000000000000000
      000000000000E7E7E700CFCFCF00AFAFAF00A0A0A000A1A1A100A6A6A600AEAE
      AE00BABABA00CCCCCC00DFDFDF00EBEBEB000000000000000000EDEDED00EAEA
      EA00EAEAEA00ECECEC00E9E9E900D9D9D900BFBFBF00A2A2A2009A9A9A00B1B1
      B100D0D0D000E3E3E300ECECEC00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007C79BD004B58
      D3007384C20000000000000000000000000000000000E4E4E400CBCBCB00BBBB
      BB00A9B4BC0082B7D20073B1CE0078A1B90068809000657886006D7B86006277
      8700707981008B8D8D00BABABA00E1E1E1000000000000000000000000000000
      000000000000C7D4C7005A9C5E003B8C420039864200468B50004A7F50005A75
      5B00757C750092929200BBBBBB00E0E0E0000000000000000000E4E4E400D1D1
      D100C8C8C800CECECE00C5C5C5008E9DA9003A7BA9004090C5004A6C87007A7A
      7A0097979700B9B9B900D8D8D800EAEAEA000000000000000000000000000000
      0000000000000000000000000000CAC3B6008C7E98002A2ADD001612E8001937
      EB002583F2003B7DDA00A5A8C2000000000000000000E2C6BB00C6A093009086
      83007D7F86008CD8F50074DEFE006CC0DE006BA3B90066A4BE006ABAE00077C9
      F3006DBAE600718A9D00ACACAC00DFDFDF000000000000000000EDEDED00E7E7
      E700E3E3E30077AE770010BA240029D0460040E367004CEA77003FDF670030CB
      4E001F9D2E004B734D00A2A2A200D9D9D90000000000ECECEC00D2C2BE00AA96
      91008B8B8B00888D91004B7CA0002A7ACB003A84E5006AC7F70072BAE1004083
      B00051697C0083838300B1B1B100DEDEDE000000000000000000000000000000
      000000000000B4B2AE00B08F6C00BB7F2F007F5379001015FD00211ADF00233F
      E3002E91F70033A3F8008695C5000000000000000000E4B7A600F8D8CB00F7C4
      AF00B59E9C0098E0F50077DAF500638999005595B50058BCEC004FB3E7004FBA
      EF0057C1F6007C92A000B1B1B100E1E1E1000000000000000000E7E7E700CFCF
      CF00BDBDBD0081AA800014B827002DD24D0048E9730056EC850054BE680038D7
      5C0026D44300258D2D00ADADAD00DEDEDE0000000000E3E1E100D16F5600ED79
      5300866668002C78B90042A5E3004380EB004377EF005EBCED00C6C7C900DDDD
      DA0075B6DD004472940097979700D4D4D400000000000000000000000000A2AF
      9D0058893F007A7F1E00C57E2E00CE852600815576001618EB002418D1002337
      DF002E8BF60036A5F6008896C5000000000000000000E2C1B400FCE8DC00FFF7
      E700C6D3DA0098E4F5007FE2F900998792005E434B004289AA004DAFE20059B6
      EB006CC6F700788A9700B7B7B700E4E4E4000000000000000000BFCCD5006191
      B2008187880092959200309B34002AD445003BE35F0073CD6E00D5CEA70043C9
      52001BC73800538F5700CECECE00E9E9E90000000000D8B5AC00DC5F3B00F58F
      66007893B2003471F3004E9BEA0053A4EA0061B7F6005BB9EC00D4C9C900FFD2
      B100FAD1BC005999C30092929200D2D2D20000000000B0B8AC00619040003F88
      03003D9700007F891700C77F3400C77E23007F506D001015E8001934E5001F58
      F3001D61F700246DEA008D98C6000000000000000000E2BFB000FDECE300FFEF
      E400C3C7D00096EAF60088EEFF008793A00090484A002A2328005CAED60073B8
      AD0081AA96006F819000BFBFBF00E7E7E70000000000EBEBEB0073A4C1004895
      CC004578A100576B76004A6B6C00188F32001BA0460043889D007D9CBC003E9E
      4800328B3400B0B7B000E4E4E400EDEDED00EBEBEB00D3856F00E16E4900F08E
      65008298B900478BF7004EA1DF005FBBE8006ECBF9004CAEE80093BCDA00DBC4
      DC00EED0CB004D91BE0093939300D2D2D200000000008D9F8000459401004798
      0000419501007D861800C2792E00BB701D00B2744A008583CF004E71EB002961
      EC00436CE0007F87CE000000000000000000EBEBEB00E1BCAA00FFF5EE00FFE1
      D200C2CCD600A1F6FC009CFBFF0077B1BD009A5F650061323400465F6C0075B5
      B90082A69F007C899300C9C9C900EBEBEB0000000000DCE0E2003990C700ABB9
      C600F1CAB0007F97B30032629200154B67001B7AAC00238DE8001F8BE4002071
      90007A807C00BFBFBF00E7E7E70000000000E4DCDA00DA735400E47A5500EF91
      69008EADC00068CCFF0067BCE80054ACE0003D9DDD00399FE0003FA7E5004C8D
      E6009EB9DA004388B70093939300D2D2D2000000000090A283004A9509004694
      0100409300007B841600BD712700B1631800C6853E00FFEDB200F4E4C9009F93
      A60000000000000000000000000000000000E4E2E100EEC9B600FFFAF500FFDD
      CE00C3C5CB00B7DAE200BBDEE600B1D9E3007E6E740099585D00372424007F8A
      A400869AC100858B9000CACACA00EAEAEA00EDEDED00A5BCCA005D89AF00E7D2
      C500FFDDBF00FFDBB900C5B1A3002467A00039A4FD003CA2F4003DA3F6003191
      DD0064758000B4B4B400E2E2E20000000000DDBEB500E7835F00E9845F00E89B
      770071B2D30063C3F60050AADF00338CC9003E9AD70046A7E30045A7E50046AD
      E80040A6E5003684BA009E9E9E00D7D7D7000000000090A283004A9309004591
      01003F8F00007A801400B86A2100AB5B1000C07F3B00FBE5B600FFF8C900C6B9
      9A0000000000000000000000000000000000E2D1C600FCE9DF00FFFCFB00FDDF
      D400FADACF00F4C9B900F5C2AD00FCC8B000CCB8A80091626800744443001D15
      3800393D9B007C7C7D00B4B4B400E0E0E000EAEAEA00759BB400E7A68E00FFDD
      C600FDD6C000FFE3C500A4A4A0001D669E003A96E00042AAFB004CB4FF0044AB
      F90052748800B5B5B500E3E3E30000000000DAA59500ED977200ED8F6800E9A8
      850066B2D8004AABE40063C0F3005EB8EC0051A8DB0051A7DA0057B0E50057B6
      EE004CB2EF003C87B900B1B1B100E0E0E0000000000090A2820048910800438F
      00003D8D0000797D1300B2601700A6530900BE7C3800FAE2B300FFF5C800BEB1
      990000000000000000000000000000000000ECD0BD00FFFEFE00FFECE600FFDF
      D300FFDED200FEDACD00FED0BC00FFD5BC00F5E1D0008F656200A9656D00492A
      21001A154D00535285009B9B9B00D6D6D600D3DADE005C83B200F3CEC200FFE9
      D600FEE0CC00FFE7CC00738C9D00184D7B00254D79002D74AE003C9EE200308A
      CB00587D9300C4C4C400E8E8E80000000000DB988300F2A78100F19B7400E6B4
      93008CD4E60060B0DC0049A6E00065C3F7006ECBFB006AC1EF005EB7E8004EA2
      D8007C98AF007F7B8200BFBFBF00E4E4E4000000000090A28200488D0800428B
      00003D890000757B1100BA682200C77E3800D79B5100DBA35A00D4B07A00C0B4
      A20000000000000000000000000000000000DCC3AF00DFD9D600DCCBC600DEC8
      C000F0DFD900FEE8DF00FDE1D700FFEADF00EECAB9008C787200885B5F008E56
      5E001A134D002A2C9F009C9C9C00D6D6D6009BB9CC00587CDE00EEDADE00FFE1
      CE00FEE1D000FFEAD400BABAB60064839B0040688C00416B980043729C002160
      7A0088959C00D5D5D500EDEDED0000000000E29A7F00F8BB9500F2A27C00F1C6
      A00086D6E300B8E7F500BCE7F50074AFD00062B3E1005FBEF3006FA2C300B499
      8C00DCB39300A4817700C4C4C400E7E7E700000000008FA18200468B07004187
      00003D82000065951F00B3BB5C00C0B75B00B79E5800C6AF9600C2B7AC000000
      000000000000000000000000000000000000EFDACA00ECD2C400E6C5B800D08E
      7C00D1C9C700FFFFFF00FFFFFF00FFFFFF00DAAF9D009A9A9A006A6675008667
      BA006E4C99005B486E00BABABA00E1E1E1006BAAD300BAC2E700FFF0DD00FFE3
      D300FFE9D900FFEAD800FFE8D200FFD7BE00D2C0B600A2AFB600AEB6BD004A7D
      9700B2B2B200E1E1E1000000000000000000E49C8300F8B89200F5B18B00F3AF
      8800F3BD9800E7C1A300DED2BE00E6D6BA00D2CCB700B1C4C100EFBF9A00ECBC
      9400DABB9C00AB8E8600CECECE00EAEAEA00000000008FA18200468807004084
      00003C7E0000629F2600A9DB6F00A0D35F0096B9710000000000000000000000
      000000000000000000000000000000000000EEEDED00F7F7F700FFF7E900E8B8
      A600DCCFCC00FFFFFF00FFFFFF00FFFFFF00C7A19100A4A4A400B8B9C4004E3A
      73007F504700AC9D9C00DEDEDE00EBEBEB008CBDD60085C1E000D3D8DA00F7E6
      DE00FFEFE100FFF1E200FFE3CD00FFDBC400FFEAD800FFFEEC00BCCFDB006483
      9700C8C8C800E9E9E9000000000000000000EBE0DD00E5C2B900E3B5A500E09F
      8900E5947800EC967200F09B7300F4A98100F7B38A00FCBB9100F7C9A200E9DA
      B800E1BB9C00C5B8B500DFDFDF00EDEDED00000000008C9D7E003B800000367E
      0000358000004A980B0074B535007AB43B0095B8730000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F3F000EDCC
      BD00DBD2CE00FFFFFF00FFFFFF00FFFFFF00DDB6A500C1C1C100E1E1E100C3C2
      C300D4D2D200EAEAEA00EDEDED000000000000000000CADAE30094BED60081B2
      CE0088B4CF0089B0CA0096B2C300EBD8D000FFF1E300FFFBEF0077A7C600A6AF
      B400DCDCDC00EDEDED0000000000000000000000000000000000000000000000
      0000EDECEB00EBE2DF00E5C3BB00E99C7C00FDC7A000F9BB9500ED997400BE8F
      8100D5B1A500E4E3E200EBEBEB000000000000000000B2BBAA00739F4F006AA2
      420068A83E0064A938006DA945008AA875000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EEE5
      E000DBBCAA00EED3C200EACDBD00EAC8B600E3C7BB00E1E1E100EBEBEB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E8EAEC00E9EBEC00CBDAE20093BDD60092BDD5009BC3DB0086AEC600DFDF
      DF00EAEAEA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6BDB100E7A38800EEA88700DA988200DBDB
      DB00E9E9E9000000000000000000000000000000000000000000C1CAB900B5C3
      AB00A8BB9D009EB49100B2C3A900000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00FFFFF81F00000000FFCFE00700000000
      FF87C00300000000FE01800100000000FE01800100000000FC01000000000000
      FC10000000000000F000000000000000C0010000000000008001000000000000
      8003000000000000040F800100000000807F800100000000807FC00300000000
      C0FFE00700000000F3FFF81F00000000F87FFFFF9FFFFC1FF80FFFFF0000F007
      C001F00F0000E0038000C0030000C001000080000000C001000000000000C001
      000000000000C001000000000000C001000000000000E003000080000000F1C7
      0000C0030000F1C70000F81F0000F0070040FF0F0000F80F000FFE0F8001FC1F
      C00FFFFFFFFFFFFFF81FFFFFFFFFFFFFF800FFFF9FFFA0010000F80F0FFF0001
      0000F00707FF80010000E00383FFC00100008001C1FFE00100000000E10FE001
      00000000F003E00100000000FC01E00100000000FC01E00100000000F800E001
      00000000F800E001000F8001F800E001000FF80FFC01E003000FF80FFC01E007
      001FF81FFE03E00F003FF83FFF8FE01FC003C001FFFFC003C003C001FFFFC003
      C003C001E7E7C003C003C001C3C3C003C003C001C183C003C003C001E007C003
      0000C001F00FC0034002C001F81FC0034002C001F81FC003C003C001F00FC003
      C003C001E007C003C003C001C183C003C003C001C3C3C007C003C003E7E7C00F
      C003C007FFFFC01FC003C00FFFFFC03FFFFFC003F003F803FFFFC003E000E000
      8001C0038000C0000000C003000000000000C003000000000000C00300000000
      0000C003000000000000C003000000000000C003000000000000C00380008000
      0000C003000080010000C0030000C0010000C0070000C0018001C00F0000C001
      FFFFC01F0001C001FFFFC03F001FE003F001F801FE07FFFF8000F800C001FFC7
      8000F800C000FE018000C0008000F8018000C0008000E0018000C00080008001
      8000800000008003000080010000800F000000010000800F000000010000800F
      000000010000800F000000010000801F000000030000807F000000030000807F
      C0018003F00180FFE01FF007FE07C1FF00000000000000000000000000000000
      000000000000}
  end
  object ImageList24: TImageList
    Height = 24
    Width = 24
    Left = 428
    Top = 175
    Bitmap = {
      494C0101160018000C0018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000006000000090000000010020000000000000D8
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000908E8E00908E8E00908E8E00908E
      8E00908E8E00908E8E00908E8E00908E8E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008F8E8D00908E8E00BBB9B900D7D6D600D3D3D300CDCD
      CF00CACACA00D3CBCB00D3CBCB00B8B3B300908E8E00908E8E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009933000099330000CC7D3900E6A66100993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000908E8E00908E8E00B9B7B700E6E5E500CDCDCF00AAA9AA00918F8D008985
      7D008C877B008E888500A29A9900C6B9BA00DECCCC00B6AAAA00908E8E00908E
      8E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000993300009933000099330000AC4B0D00F9B55500FFC67100D28A48009933
      000099330000000000000000000000000000000000000000000000000000908E
      8E00908E8E00EBEAEB00DADADB00969696008C897D00AEA99300CAC4AD00BAB8
      BD00A6A9BD00CDC6B000B3AA94008B8374008B7C7900CFBCBD00E5CCCB00908E
      8E00908E8E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009F39
      0000CC6A0A00FF9C0900FFA41B00FFAD3100FFB64700FFBE5D00FFC77200FFD0
      8800FFD99E009933000000000000000000000000000000000000908E8E00908E
      8E00F3F2F300D5D4D50084827E00AEA99300F6F1DA00FFFFF400FFFFF200AAB5
      F1005774F500FFFFF800FFFFFF00FCFAEB00BAB5A1006E675F00BBA5A500F0D0
      D000908E8E00908E8E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000A943
      0000B9591000FFA41B00FF9D0A00FFA51D00FFAD3300FFB64900FFBF5E00FFC8
      7400FFD18A009933000000000000000000000000000000000000908E8E00F5F4
      F400D4D3D4004D7B4A0050924800FFFFF000F8EAD600F6D7B400F3C99B00EABD
      9400EABD9400F4CCA200F9E4C800FFFDF600FFFFFF00DEDBCB007A716400BBA5
      A500EECCCB00908E8E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000AE48
      0000B3551600FFB23F00FFA31800D9760700A6410400A6430800D9873200FFC0
      6000FFC9760099330000000000000000000000000000908E8E00C2C0C000F2F1
      F200698567000C8518000C8518008CB27300F7DBAC00F4D1A100F3CA9800F3C3
      8E00F2BB8300EFBA8300F3CC9900FBEBC400FFFCED00FFFFFF00DEDBCB006B61
      5800D8BABA00BEABAB00908E8E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000A74100009B35
      0000DF9F5E00FFC16300E6922E0099330000993300009B3500009A340000E698
      3C00FFC06200D9904700993300000000000000000000908E8E00FEFDFD0090A7
      91000C8518004ED2770059E289000C8518009CBF7E00FDF0C600FAE9BE00F8DD
      B000F4D1A100F1C49100F2C99700F6D9AB00FAE6BB00FBF4E200FFFFFF00B3AA
      940088767300F5CECE00908E8E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099330000BD570000A6491700ECC1
      9300FFDEAB00FFCF8700993300000000000000000000993300009F390000CC73
      1F00FFB84E00FFC16400ECAD600099330000908E8E00CFCECE00C4D8C5000C85
      18003DC25F0057E185005BE48C0050D67B000C851800B6D59B00FFFDD700FDF6
      CE00FAE9BE00F5D4A800F2C99800F2C99700F3CC9900F4D1A100FDF6EB00FBF4
      E2007A716400DBB9B900CEB5B400908E8E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001689B0001689B002A809C00BF670B009F3E0B00ECC1
      9300FFE2B500FFDDA90099330000000000000000000099330000A53F0000CC6F
      1500FFB03A00FFB95000ECA7520099330000908E8E00F9F8F8000C85180043D2
      690043D2690049D4710053DC7F005DE68E004ACE73000C851800D7E8B900FFFF
      DC00FFFFDA00FDF0C600F6D9AB00F2C79400EFBE8900EFBA8300F6D7B400FFFF
      FF00A6958B00A6958B00F7CFCE00908E8E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001689B0001689B000875A30062CDEA007AD7EF003D6E7A0084552B007B4F
      3300ECC19300FFE2B500F2C894009933000099330000993300009D370000E685
      0D00FFA82600F2A134009933000000000000908E8E000C8518002FC24B002FC2
      4B0035C354003ECB610047D36F0052DB7E005DE68D0040BF62000C851800D2DA
      B400CDCAB000FFFDD700FFFCD000FFE0AE00FCCA9300F2BB8300F1C49700FFFF
      F700C2B9A7008B7C7900F7CECD00908E8E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000168
      9B0013A9D4001EABD4002FB4D90066E2FE007FE7FF0069C9E4005DB8D50069BA
      D50056727300FFE2B500FFE2B500DFA875009933000099330000DF862100FF9E
      0C00FFA012009933000000000000000000000C8518000C8518000C8518000C85
      180029B9420032C251003FCD620030B14C000C8518000C8518000C8518000C85
      18006168630076776C00A2A28F009E937B009D876D00CDA47900F3C38E00AAB5
      F100A6A9BD008A786F00F1C9C800908E8E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000001689B000E83
      AF0029D6FE001DD4FE0035D8FE004EDDFE0068E2FE0081E7FF009AECFF009EE3
      F40059767800FFE2B500FFE2B500FFE2B500FFDAA100FFCA7A00FFBA5300FFAB
      2B00FF9D0B00993300000000000000000000908E8E00FFFFFF00719B6E00187C
      1E001CAC2F0028B9410034C45200199228009AC38700DEECC000BFCEA4006375
      64007F82820028282900363636003436360034353600CDA47900F5C492005774
      F5007987BB0092817300F1C9C800908E8E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000001689B000A81
      AE0052DEFE0026D5FE001ECFF90027B2D9003BBBDF006AE2FE0083E7FF0076D1
      EA009C886F00FFE2B500F2CC9E00FFE2B500FFE2B400FFD99E00FFC97700F9B1
      4A00FFA92800993300000000000000000000908E8E00FFFEFE00C6C6C600488C
      41000C8518001DB2320029BA4200148B2000CCE1C400FFFFDC00FFFFDA00BFBF
      A700828276003131320076776C00EBEACA00EDD8AE00EDC29000F2C79400FDF6
      EB00BDBAA50095858300F6CDCC00908E8E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001689B000782B2002A95
      BB007CE6FF004FDDFE00016C9F00016C9F000571A100279EC4006CE3FE0074DA
      F400337C9400883D1500A53F0000AC542200FFE2B500FFE1B300AC521D009933
      000099330000000000000000000000000000908E8E00F9F7F800DADADB00739A
      65000C85180013AA22001DB13100118D1E00AED0B000FFFFF700FFFFDF00FFFF
      DF00FFFFE400B9B9A300313132007A786B00FAE9BE00FAD19C00F5D4A800FFFF
      EE00A9A49000AE969700F7CECD00908E8E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001689B000993C30054ACCA00BAED
      FA00A6EEFF00016C9F000000000000000000016C9F000878A60055DEFE006EE3
      FF0076DBF4003194B60099330000B24C0000D2956600D2956600993300000000
      000000000000000000000000000000000000908E8E00CFCDCE00F9F7F8009EA5
      91000C8518000DA11A0012A9210010951D005DA16000FFFFFF00FFFFF800FFFF
      E600FFFFDA00FFFFE200C0C0A9002E3032006B655900ECCC9E00FCEBCC00F8F4
      D9008A857B00DAB9BA00CEB4B400908E8E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001689B000B9FCE0054ACCA00C9F5
      FF00C5F4FF00016C9F000000000000000000016C9F00097DAB003EDAFE0057DF
      FE006ADDF90001689B0000000000993300009933000099330000000000000000
      00000000000000000000000000000000000000000000908E8E00FDFCFC00C9C9
      C9004A8B40000B9115000EA71C000FA21C000C851800C9E0CA00FFFFFF00FFFF
      FF00FFFFF400FFFFE400FFFFE600D0CFB50035353400716C6600FFFFE800BDBA
      A50095858300F7CFCE00908E8E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001689B000B99C70054AC
      CA00C9F5FF00C3F4FF00016C9F00016C9F000881B100119AC40026D5FE0040DA
      FE0001689B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000908E8E00C4C2C200EFF0
      F0009FA99500127D17000EA01A000FA81C000D9718000C851800B5D4B700FFFF
      FF00FFFFFF00FFFFFF00FFFFF800FFFFEA00CDCAB000CAC8BA00EBEACA008785
      7F00D8BABA00BFABAB00908E8E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000001689B000E9B
      C700C9F5FF00C9F5FF00B8EDFA0063BEDA004DBFDF003FDAFE001BD3FE0028D6
      FE0001689B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000908E8E00F5F4
      F400DBDCDD0074976C00087B0E000D9D19000FA91D000E9D19000C8518004798
      4B0088BB8C00B6D5B800D3E6D400DAEAD500E6F1D400F2F3D20096948A00C6AE
      AF00EECCCB00908E8E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000001689B001A9A
      C300C9F5FF00C9F5FF00C9F5FF00BFF3FF0097EBFF0069E2FE003CDAFE001BD3
      FE0001689B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000908E8E00908E
      8E00EFF0F000D6D7D900829E78000C8518000C8518000C9A18000EA01B00109B
      1D00108E1B000C8518000C8518000C851800609C57009D999200BCAAAB00EDCE
      CD00908E8E00908E8E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000168
      9B0083C9DF006CBBD5008FD0E400C9F5FF00BDF3FF0055BBDA0001689B000168
      9B00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000908E
      8E00908E8E00EBEAEB00DEDEDF00AEB5AC00729767000C8518000C8518000C85
      18000C8518000C85180073A46C008CA18100A3A09A00D5C0C100E5CCCB00908E
      8E00908E8E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001689B0001689B000F99C400B2E6F4008FD0E40001689B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000908E8E00908E8E00B9B8B900E1E1E100D0D2D300BEBCBB00B8B4B000BBB5
      AD00BDB5AC00B4AFAA00B7B0AE00CABDBE00DECCCC00B6AAAA00908E8E00908E
      8E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001689B0001689B0001689B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008F8F8F00908E8E00B7B6B600D1D1D100CECECF00C8C9
      CA00C6C6C600CEC6C600CEC6C600B5B0B000908E8E00908E8E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000908E8E00908E8E00908E8E00908E
      8E00908E8E00908E8E00908E8E00908E8E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000003931420039314200393142003931420039314200393142003931
      4200393142003931420039314200393142003931420039314200393142000000
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
      00007BADD60084BDE700316BCE003163CE00316BCE003973CE003973CE00397B
      D6003984DE004284DE004294E7004294E7003994EF003194EF0073BDEF003931
      4200000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000595959001F1F1F00312F2E003E3D
      3D006D6F6F00ABABAB0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009F9F9F00BFBF
      BF000000000080808000DFDFDF00DFDFDF008080800000000000000000000000
      00008080800080808000DFDFDF00DFDFDF0080808000CFCFCF00000000000000
      0000EFEFEF0080808000CFCFCF0000000000A3522800CAE1F4005CBAFC0054B7
      FF002C94F5002A78B7009B8A9000A58F81008E480100D0B89D00E1C5A400E2C4
      A100DFBF9B00E0BF9900E5C29A00EECAA000F6D0A600FBD4A900FDD6AA00FED7
      AB00FED7AB00FED7AB00FED7AB00A35228000000000000000000000000000000
      00007BADD600B5EFFF004294E70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF00A5E7FF00B5EFFF00B5EFFF0094DEFF0084CEFF003931
      4200000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025262600B0AFAF00BED0DC00BBC2
      C600A39B98006D6763004D4B49005A5A59006C6C6C00ABABAC00D2D2D2000000
      0000000000000000000000000000000000000000000000000000404040008080
      8000CFCFCF00000000008F8F8F00BFBFBF00000000000000000000000000CFCF
      CF0000000000101010008F8F8F00000000001010100060606000000000000000
      00009F9F9F0000000000DFDFDF0000000000A3522800FFFCF700C9E0F4005BBA
      FC0054B6FF002C93F4002A78B5009D8C910091532000B09E8A00BCA78F00BBA4
      8A00B69E8300B79D8000C2A58500D4B48F00E7C49C00F4CFA400FBD4A900FDD6
      AA00FED7AB00FED7AB00FED7AB00A35228000000000000000000000000000000
      00007BADD60084CEFF004A9CEF00398CEF004A9CEF005AADEF0063B5F7006BC6
      F7007BCEF70063BDF7006BC6F7005AC6FF00299CFF003163CE0084CEFF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002A2A2A00BCB4AF0022A1E90022A2
      E90048AFE90080C4F100BADFF400C8D6DD00C7BEB90090888400706C69006B68
      670072727100ADADAD0000000000000000000000000000000000404040008080
      80008F8F8F003030300050505000BFBFBF000000000000000000000000007070
      7000202020006060600030303000000000006060600010101000404040004040
      400020202000303030000000000000000000A3522800FFFDFB00FFFBF700C8E0
      F4005BBAFC0054B6FF002B93F5002878B7009173680096897A00998977009784
      720095816E0099826F00A38B7300BB9F8000D4B48F00E6C39B00F2CDA300FAD4
      A800FDD6AA00FED7AB00FED7AB00A35228000000000000000000000000000000
      00007BADD600B5EFFF004A9CEF0063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF008CD6FF008CDEFF008CD6FF0094DEFF0084CEFF003931
      4200000000000000000000000000000000000000000000000000000000006565
      65001F1F1F005C5C5C00D8D8D800000000002E2E2E00C0B7B20031AAED003AAF
      EF0029A5E9000B98E5000997E400169CE5002BA8EC0075CFFE00ACDCF800D0E4
      EF00E8DDD800A8A3A00073737400000000000000000000000000404040008080
      8000505050008080800010100F00ABAFA40000000000A9BF9400A6BC90001518
      12003F47370068755A0000000000ABB99F009CA0960000000000606060008080
      8000000000008F8F8F000000000000000000A3522800FFFFFF00FFFEFC00FFFC
      F800C4DEF5005AB9FC004FB5FF004597E30066645D0087787000A57E6500B99C
      8B00BA9F9000BA9F9000BC9D8C00B7896500BE791600CD7B0000DE850000F191
      0000FB970000FE980000FE980000A35228000000000000000000000000000000
      00007BADD60084CEFF004A94E7003984DE004294E70052A5EF005AADEF0063B5
      F7006BC6F70063BDF7006BC6F7005AC6FF00299CFF003163CE007BCEF7003931
      4200000000000000000000000000000000000000000000000000C6C6C6000000
      0000BCBDBE00828383002525260069696A0029292900C4BBB70030A5E8000A85
      C900238CC900389DD40044B0EB003FACE7001BA6F1000EA7F8000CA7FB0008A6
      FB001AACFA0081D9FF00938C8800000000000000000000000000404040008080
      80000E0E0E0097AA880010140C00394E240000000000618840004E6E34000000
      0000425D2C005A7F3C0000000000374D2400658B4000080A06004C5544009B9F
      950000000000DFDFDF000000000000000000A3522800FFFFFF00FFFFFF00C0BF
      BF00BFBDBB00BAD9F2007CC1F100C8D3D900B3A19C00B69A8C00D0BDA600EBE3
      C600F9F7D800F9F7D600EBE3C500CFBAA700B89A8D00AC917B00C0A38200E2BF
      9800F7D1A600FDD6AA00FDD6AA00A35228000000000000000000000000000000
      00007BADD600B5EFFF004AA5F70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF0094E7FF00A5E7FF00A5E7FF0084D6FF008CD6FF003931
      4200000000000000000000000000000000000000000000000000949494003131
      3100F3F4F400FEFEFE00EEEEEE008181820016161600BBBAB900DDE8F300C1E0
      F200A2D9F7006DC3F20042A6DD002B98D50010A0EE0007A5F8000CA6F7000FA7
      F7000CA6F70037BBFE009F958F00D7D7D70000000000000000003D3D3C003339
      2B00070905005C8440001F2B1400202C140000000000658C40002C3D1C000000
      0000658C4000658C400019231000131A0C00658C40002534180011190C003140
      22001E221A00F2F5EF000000000000000000A3522800FFFFFF00FFFFFF00FFFF
      FF00FEFDFC00F5F2EF00D8D5D000B9ACA800C0A39400E7D3AF00FEE2B700FEE4
      BB00FEE4BB00FEE4BC00FEE4BE00FEE9D000E2D7D000B4968A00AF967B00D9B9
      9300F4CFA400FDD6AA00FDD6AA00A35228000000000000000000000000000000
      00007BADD60084CEFF00428CE700397BD6004284DE004A94E700529CE7005AAD
      EF0063B5F70063BDF7006BC6F7005AC6FF00299CFF003163CE0073BDEF003931
      42000000000000000000000000000000000000000000000000005C5C5C005F5E
      5E00FFFFFF00D3D3D300E5E5E500ECECEC0037373700BCBCBC00EAE9E800D1CF
      CD00DDD9D600F8F1ED00FFFFFF00FCFEFE00EFFAFF00CCEDFD009BD8F9006BC7
      F90039B6F90049C1FF00A1999400D7D7D70000000000F0F2EC0022291B000608
      040018221000658C4000334620000609040000000000658C40000D120800202C
      1400658C4000658C4000394F240000000000587A380045602C00000000000C11
      0800344B240087A46B00F1F3EE0000000000A3522800FFFFFF00FFFFFF004CB7
      4C004CB64C00F5F5F400D7D4D300B89B9200D1B99F00F9DCAA00FBEEC400FFFF
      DA00FFFFDB00FFFFE700FFFFF400FFFFFD00FFFFFF00C9B3A100B07E3E00D882
      0000F5930000FE980000FE980000A35228000000000000000000000000000000
      00007BADD600B5EFFF004AA5F70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF008CD6FF00B5EFFF00B5EFFF0094DEFF008CDEFF003931
      4200000000000000000000000000000000000000000000000000262626009A9B
      9B00FFFFFF00D4D4D400DFDFDF00B5B5B5002E303000C0C1C200F3F2F000FCFD
      FD00FBFDFE00EBEDF000D2D6D800CDCFCF00DEDEDF00DFDDDB00F6F1EE00FFFD
      F900FEFEFC00FFFFFF0094939300D7D7D700F7F9F60094AE7A00283A1C001923
      10003F572800658C4000527234001923100019231000587A3800192310004560
      2C00658C4000658C4000587A38001923100045602C00658C4000192310001923
      1000587A38005C84400094AE7A00F8FAF600A3522800FFFFFF00FFFFFF004CB7
      4C004CB64C00F5F5F500D8D5D400BFA39400E9D2AA00F2C79400FAE9BE00FFFF
      DA00FFFFDC00FFFFED00FFFFFD00FFFFF900FFFFE800E6DDC000B49B8A00D9BC
      9B00F4D1AA00FDD7AC00FDD7AC00A35228000000000000000000000000000000
      00007BADD60084CEFF00428CE7003173D6004284DE004A94E700529CE70052A5
      EF005AADEF0063BDF7006BC6F7005AC6FF00299CFF003163CE0073B5EF003931
      420000000000000000000000000000000000000000000000000014141400CECE
      CE00FFFFFF00FBFBF300D8D8D100BABBB90033323200C7CDD0008C552100905C
      2A009F744B00B4917000D2B59A00E8DACD00F5EDE700EEECEA00E6E9EC00DADD
      E100D4D7D900FFFFFF0094949400D7D7D700D7E1CE005D864100658B4000658C
      4000658C4000658C4000658C4000658C4000658C4000658C4000658C4000658C
      4000658C4000658C4000658C4000658C4000658C4000658C4000658C4000658C
      4000658C4000658B40005D864100D6E0CB00A3522800FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00F8F8F800DCD4D400BA9F9100F7E0AF00EFBD8800FAD6A900FEE3
      B900FEE4BC00FEE4C000FEE4C500FEE4C300FEE4BE00F4F0CE00B79D8E00E2C6
      A700F7D6B100FDDAB100FDDAB100A35228000000000000000000000000000000
      00007BADD600B5EFFF004AA5F70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF00A5E7FF00B5EFFF00B5EFFF0094DEFF008CD6FF003931
      42000000000000000000000000000000000000000000B7B7B70024242400E5E6
      E400FBFDFE00868BEB00848CEF00CCCCD70035343100C9CDD200925F31008048
      140081481300824813008D4D11008B4A0C008F5218009B622D00B47C4900BF95
      6E00D3B49600F1E3D50095979800D7D7D700D3DFC80059834000658C4000658C
      4000658C4000658C4000658C4000658C4000658C4000658C4000658C4000658C
      40005F874000648B4000658C4000658C4000658C4000658C4000658C4000658C
      4000658C4000658C40005A834000CAD4BC00A3522800FFFFFF00FFFFFF00C0C0
      C000BFBFBF00FBFBFB00E8E0E000BA9F9100F9E4B400EFB98300F9CD9F00FCDC
      B100FEE4BB00FEE4BD00FEE4BD00FEE4BD00FEE4BB00FADEB300BA9A8200F090
      0000FB970000FE980000FE980000A35228000000000000000000000000000000
      00007BADD600B5EFFF0094BDEF008CADE7008CADE70094BDEF009CC6EF009CC6
      EF009CCEF700A5D6FF00A5DEFF00A5DEFF009CD6FF0094CEFF00A5CEF7003931
      420000000000000000000000000000000000000000008383830049494800FFFF
      FD002531DC000101D4000000D7002A34DC00303C3800CED1D4008E5A28007D43
      0D007E440F0086491000905014008E5015009052170098571A00A25C1A00A15A
      18009D551200B4763C00999EA200D7D7D700D4DFCA0059834000658C4000658C
      4000658C4000658C4000658C4000658C4000658C4000658C4000658B40006B8F
      47009EB68600698E440062894000658C4000658C4000658C4000658C4000658C
      4000658C4000658C400059834000D4DEC900A3522800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00F7F5F500C0A49600EBD8B000F7D5A400F2CA9600F5D4
      A100FAEABF00FEFCD500FFFFDA00FFFFDA00FFFFD900E8DDBE00C7AD9D00F9E1
      C500FEE1C200FEDFBD00FEDFBD00A35228000000000000000000000000000000
      0000000000007BADD60063C6FF004A9CE700317BD6002963CE002963CE002963
      CE002963CE002963CE002963CE00317BD6004A9CE70063C6FF006B8CA5000000
      000000000000000000000000000000000000000000004A4A4A0080807B00B6B8
      F8000914D9006B71E6000D18D7000595F7000F415A00C1B8B400FAF0E600E7D5
      C600D9C5B500CEAF9300C39D7900B98C6100A46D3B00AA6C3200A6652800A25E
      1F009D530F00B27439009A9EA300D7D7D700F2F6EF0086A468005D854000658C
      4000658C4000658C4000658C4000658C4000658C4000658C4000648B40006A8E
      4400EFEAE600C8D5B900658C440062894000658C4000658C4000658C4000658C
      4000658C40005D85400086A46800F3F6F000A3522800FFFFFF00FFFFFF006E94
      FF006E94FF00FFFFFF00FEFEFE00CAAFA800D0B9A100FFFDE700FBEED900F4D0
      A000F2C99600F6D9AA00FAE7BD00FCF0C700FFFFD400C8B09D00DCC5B400FDE8
      CF00FFE5C900FFE2C300FFE2C300A35228000000000000000000000000000000
      00000000000000000000A59484009C9C9C00736B630000000000000000000000
      000000000000000000000000000084847B00ADADAD008C735A00000000000000
      000000000000000000000000000000000000000000002A2A2A00B8B7B100959A
      EF001824D900E5E7F700FCFEFB00A5E0FD003AB1EF00185C830041728E00858A
      8C0094959700A2A6A900ACAFB100BBBFC100D2D7DB00D9D8D800E0DBD800E7DE
      D700EEDDCE00F2DFCE00949597000000000000000000E2E7DA00769857005D86
      4000638A4000658C4000658C4000658C4000658C4000658C4000658B4000668C
      4100D7DECB0000000000C2D0B200658B410062894000658C4000658C4000638A
      40005D86400077985800E3E9DB0000000000A3522800FFFFFF00FFFFFF006E94
      FF006E94FF00FFFFFF00FFFFFF00EFE7E600BA998800E5DBD300FFFFFF00FBE8
      C200F3C79100F2C49000F6D5A200FFEEBB00DCC7AB00BD977B00F6981000FF99
      0000FF990000FF990000FF990000A35228000000000000000000000000000000
      00000000000000000000A594840094949400736B630000000000000000000000
      00000000000000000000000000008C848400B5B5B5008C735A00000000000000
      0000000000000000000000000000000000000000000025252500D7D8D300B5B9
      F7000000D5000104D5004679EA00BCEBFD00FEFEFE00ADE5FF0004A9FF00E5F8
      FF00F9F7F600EBEBEB00E3E3E3009E9E9E007E7E7E0094959500898A8A008A8B
      8E008D8E8F008A8C8D0096969600000000000000000000000000E5EADF008AA6
      6D00658B41005C85400062894000658C4000658C4000658C4000658C40006188
      40007E9F6200E9EFE30000000000C2D0B200658C43005F8740005C854000658B
      41008AA66D00E4E9DD000000000000000000A3522800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C2753100BA9E9400CAB5A400E9D8
      B600F8E5B800F7E4B600E6D3AF00CBB09C00BFA39700EADBD000FFF3E500FEF0
      DE00FEEDD800FFE9D100FFE9D100A35228000000000000000000000000000000
      00000000000000000000A5948400949494007B6B630000000000000000000000
      00000000000000000000000000008C8C8400BDBDBD008C735A00000000000000
      000000000000000000000000000000000000D3D3D30025262600F1F0F000FEFE
      FE004751E2000007D6000C4FE00004AAF9001EACF70031B4F9002EB2F800FEFB
      F600F3F2F200EFEFEF00F1F1F1008E8E8E00D7D7D70000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFC
      FE00CED8BF0095B07E0072954F005D8640005F87400061884000618940006289
      40005E8640007E9E6100EAEFE50000000000C2D0B3007498560095B07D00CED8
      BF00FFFCFE00000000000000000000000000A3522800EAC07800EAC07800EAC0
      7800EAC07800EAC07800EAC07800EAC07800CC670100E0B77A00BF9B7E00BA9B
      8B00B99D8F00B99D8F00BF9F8F00CBA78600E4BC7B00EAC07800EAC07800EAC0
      7800EAC07800EAC07800EAC07800A35228000000000000000000000000000000
      00000000000000000000A59484009C9C9C007B73730000000000000000000000
      00000000000000000000000000009C9C9400BDBDBD008C735A00000000000000
      000000000000000000000000000000000000000000007D7E7E005D5C5C009E9E
      9D00EBEAE300EEEEFE00FFFFFF004CC0FC0014AAF80027B0F900D2EAF600F7F3
      F200EAEAEA00E8E8E800E3E3E300868686000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00E9EEE300CDD7BF00ADC2990092AD77008FAC740086A3
      6600668C40005D8540007F9F6100E9EFE30000000000ECF1E700FEFEFE000000
      000000000000000000000000000000000000A3522800CA6E1800D7771200D777
      1200D7771200D7771200D7771200D7771200D7771200D7771200D7771200D777
      1200D7771200D7771200D7771200FCC08000EE9E4000E5861600FCC08000EE9E
      40009E6A4E004E6ED400CA6E1800A35228000000000000000000000000000000
      00000000000000000000A5948400BDBDBD00737373007B634A00000000000000
      0000000000000000000084736300B5B5B500BDBDBD008C735A00000000000000
      0000000000000000000000000000000000000000000000000000DEDEDE00AEAE
      AE00717171006868650098969500DFDEDD00ECFAFE00F8FAFA00F6F2F100E9E9
      E900E5E5E500E2E2E200D2D2D200848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E5E3
      D800688C4300648B40005C8540007F9E6300E9EFE30000000000000000000000
      000000000000000000000000000000000000A3522800C6773800D2833E00D283
      3E00D2833E00D2833E00D2833E00D2833E00D2833E00D2833E00D2833E00D283
      3E00D2833E00D2833E00D2833E00F6BB8000E2914000D4761600FCC08000E291
      40009E6A4E004E6ED400C6773800A35228000000000000000000000000000000
      00000000000000000000A5948400E7E7E7008C8C8C0084847B007B6352007B63
      42007B634200847363008C8C8C00C6C6C600C6C6C600846B4A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600C1C2C200807F80006B69680097969600D2D2D200ECEC
      EC00E3E3E300DDDDDD00BCBCBC00969898000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E3E1
      D600618740005C8540005F874000598240007D9C5C00E7EDE100000000000000
      00000000000000000000000000000000000000000000A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800000000000000000000000000000000000000
      0000000000000000000000000000A5948400EFEFEF00ADADAD00949494008C8C
      8C008C8C8C009C9C9C00C6C6C600CECECE008C735A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CFCFCF00909090007C7C
      7C009FA0A000C7C6C60091919100C2C2C2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EAE9
      E0008BA76E0086A46B008EAA7200A5BC8F00C8CAB300F5F4F000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5948400E7E7E700F7F7F700EFEF
      EF00EFEFEF00E7E7E700CECEC6008C735A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D4D5D500B1B1B200C5C5C500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A59484008C7363009484
      6B0094846B008C735A008C735A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005720A0005720A0005720A000572
      0A0005720A0005720A0005720A0005720A0005720A0005720A0005720A000572
      0A0005720A0005720A0005720A0005720A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B48D8A00B28A8800B18A8700B1888500B0878400AF868300AE858200AE84
      8100AD838000AB817F00AA807D00AA807C00A97F7B00A97D7A00A87C7900A77B
      7800A77B7800A77A7700A6797600000000000000000000000000000000000000
      00000000000000000000000000000000000005720A0005720A0005720A000572
      0A0005720A0005720A0005720A0005720A0005720A0005720A0005720A000572
      0A0005720A0005720A0005720A0005720A000000000000000000000000000000
      000000000000000000000000000000000000E7C6B500E7C6B500E7C6B500E7C6
      B500E7C6B500E7C6B500E7C6B500E7C6B500E7C6B50000000000000000000000
      0000000000000000000000000000000000000000000000000000ABA7A6008C88
      8800C09596000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B58E8B00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00A77A770000000000A87D7800B9838500B9838500B983
      8400B8838400B8838400B8838400B883840005720A0005720A00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0005720A0005720A000000000000000000000000000000
      000000000000000000000000000000000000E7C6B500FFF2E500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7C6B50000000000000000000000
      00000000000000000000000000000000000000000000ACA8A70086868A002A66
      9A004B7BA000C094940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007E7D7F004A667C00BE9596000000
      0000B58F8C00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFE
      FD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFE
      FD00FEFEFD00FEFEFD00A77B780000000000AB817B00FAE7CB00FCE9C900FAE3
      C200F8E0B900F7DDB300F6DBAD00F6D8A70005720A0005720A00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FBFDFB0005720A0005720A00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0005720A0005720A000000000000000000000000000000
      000000000000000000004A4A4A00737B7B00E7C6B500FFF2E500FFD6A500FFD6
      A500FECC9A00FECC9A00FEC58800FFFFFF00E7C6B5007B7373004A4A4A000000
      000000000000000000000000000000000000000000009B9D9D005492C2002E99
      FF001B7CCB00557A9700C1959500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B9CC3001E89E8004B7AA300C896
      9300B7928E00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFC
      FB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFC
      FB00FEFCFB00FEFCFB00A97D790000000000AB817C00F5E2CC00F7E3CA00F5DE
      C200F4DBBC00F3D9B500F2D6B000F1D3AA0005720A0005720A00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0005720A0033AF4F005AE48B0007750D00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0005720A0005720A000000000000000000000000000000
      000000000000525252004A4A4A006B6B6B00E7C6B500FFF2E500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7C6B5006B6B63004A4A4A005252
      520000000000000000000000000000000000000000003DADFF0057C1FF004DB1
      FF003196FA00197CC90053799700C19495000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004BB4FE0051B5FF002089E9004B7A
      A200C6959200FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFB
      F800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFBF800FEFB
      F800FEFBF800FEFBF800A97E7A0000000000AB817C00F5E5D300F8E8CF00F5E1
      C800F5DEC200F4DBBB00F3D9B600F2D6B00005720A0005720A00FFFFFF00FFFF
      FF00FFFFFF0005720A002BA645005EE8910050DF7D002BB6440005720A00FFFF
      FF00FFFFFF00FFFFFF0005720A0005720A000000000000000000000000006B6B
      6B00636363004A4A4A004A4A4A006B6B6B00E7C6B500FFF2E500FFD6A500FFD6
      A500FECC9A00FECC9A00FEC58800FFFFFF00E7C6B5006B6B63004A4A4A004A4A
      4A00636363006B6B6B000000000000000000000000000000000041ABFF005DBF
      FE004DAFFF003196FA00197BC8005A7A9700C295940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000051B7FE0051B3FF001D87
      E6004E7AA000CA979200FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFA
      F600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFA
      F600FEFAF600FEFAF600AA7F7C0000000000AB817C00F6E8D700F9EAD400F6E4
      CE00F5E1C700F5DEC100F4DCBC00F3D9B60005720A0005720A00FFFFFF00FFFF
      FF0005720A00189426002DA646003EC3620038C6570023AE38001FAA32000572
      0A00FFFFFF00FFFFFF0005720A0005720A0000000000000000006B6B6B004A4A
      4A004A4A4A004A4A4A004A4A4A006B6B6B00E7C6B500FFF2E500FFF2E500FFF2
      E500FFF2E500FFF2E500FFF2E500FFF2E500E7C6B5006B6B63004A4A4A004A4A
      4A004A4A4A004A4A4A006B6B6B000000000000000000000000000000000042AB
      FE005CC0FE004DAFFF003096FA00197AC800587A9600C1949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000051B7FE004EB2
      FF001F89E6004E7BA200B9949700FEF9F400FEF9F400FEF9F400FEF9F400FEF9
      F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9F400FEF9
      F400FEF9F400FEF9F400AA807D0000000000AB817D00F7ECDE00FAEDDB00F8E7
      D400F6E4CD00F5E1C800F5DFC200F4DCBC0005720A0005720A00FFFFFF00FFFF
      FF0005720A000E7713000A740F001B972D0027B840001A7F1E0005720A000572
      0A00FFFFFF00FFFFFF0005720A0005720A0000000000847373004A4A4A005A52
      5200847B7B00525252004A4A4A006B6B6B009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C006B6B63004A4A4A005252
      5A00738484004A5252004A4A4A006B6B6B000000000000000000000000000000
      000042ACFE005CC0FE004DAFFF002E94FA00187AC7005F7C9700BB9396000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000052B8
      FE004BB1FF002787D9005F6A7600EADAD400A8787500AD807B00A9797600AF80
      7D00CEB1AC00EADAD400FEF8F100FEF8F100FEF8F100FEF8F100FEF8F100FEF8
      F100FEF8F100FEF8F100AB827F0000000000AD847D00F8EFE300FBF0E200F8EA
      DA00F7E6D300F6E4CE00F5E1C800F4DEC20005720A0005720A00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0005720A00249E330016AB280005720A00EDF5EE00FFFF
      FF00FFFFFF00FFFFFF0005720A0005720A00000000005252520063636300847B
      7B008484840063636300636363004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A0063636300524A
      5A00B5B5B500524A5A00524A5A004A4A4A000000000000000000000000000000
      00000000000044ADFE005CBFFE004DB0FF002D94F8001979C600437397000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000055BDFF00B5D6ED00A5878500AB807A00D0B6A300EEE4C700FCFAD700EDE4
      C600CDAFA000B1858000DFC9C300FEF6EF00FEF6EF00FEF6EF00FEF6EF00FEF6
      EF00FEF6EF00FEF6EF00AD83800000000000B1878000F9F2E900FBF3E800F9ED
      DE00F8E9D800F7E7D300F6E4CD00F5E1C70005720A0005720A00FFFFFF00FFFF
      FF00FFFFFF00FCFEFC0054A0580017A42500098D13004D9E5100F3F8F400FFFF
      FF00FFFFFF00FFFFFF0005720A0005720A000000000052525200847B8400949C
      9C00849494008C9C9C008C9C94008C949400949C9C00949C9C00949C9C008C8C
      8C008C8C8C008C8C8C009494940094949400949C9C008C949C008C849C00B5B5
      B5008CFF7B008C9C9C006B5A6B00393939000000000000000000000000000000
      0000000000000000000046AEFE005CBFFE004CB0FF003F97ED00577B94000000
      00000000000000000000AE837E00AE837E00AE837E00AE837E00AE837E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD9B9800C4A8A700B4878000F1DEB700FFFDD600FFFFDA00FFFFDA00FFFF
      DF00FFFFEF00EADDD800AB7D7A00EAD8D100FEF5ED00FEF5ED00FEF5ED00FEF5
      ED00FEF5EC00FDF4EC00AD84810000000000B68B8200FAF5F000FCF6EE00FAF0
      E500F9ECDE00F8E9D900F7E7D300F6E4CD0005720A0005720A00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0005720A000989120005720A00EAF3EB00F8FBF800FFFF
      FF00FFFFFF00FFFFFF0005720A0005720A0000000000525252009C9C9C00BDBD
      BD00BDB5BD00ADADAD00948C8C00847B7B00846B7300846B6B00846B6B008463
      6B0084636B0084636B0084636B0084636B0084636B00947B8400A57BA5008C9C
      9C00B5B5B500B5B5B5009C9C9C004A4A4A000000000000000000000000000000
      000000000000000000000000000046AFFE0066C5FF00A3CCF100BEB3AB008671
      7000A9807A00AE837E00E5D8BD00FFFFE200FFFFE200FFFFE000EEDFC600AE83
      7E00AE837E000000000000000000000000000000000000000000000000000000
      0000BF9D9A00B5868100D4B39900F8DBAA00FDF7D000FFFFDA00FFFFE100FFFF
      F200FFFFFB00FFFFFF00C7A99E00CEAFA900FEF4EA00FEF4EA00FEF4EA00FEF4
      EA00FDF3E900FDF3E900AF85820000000000BA8F8400FCF9F600FDFAF400FBF3
      EC00F9EFE500FAEDDE00F8EAD800F7E6D30005720A0005720A00FFFFFF00FFFF
      FF00FFFFFF000F8D18000C97170005720A00F8FBF800FEFEFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0005720A0005720A000000000063636300ADADAD00D6DE
      DE00ADA5A5008C6B73009C6B7300A5848400A57B7B00BD8C9400BD8C9400BD8C
      9400BD8C9400BD8C9400BD8C9400BD8C9400A57B7B00A5848400A56B7B007B63
      63007B947300BDD6BD009C9C9C004A4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DCBFB800C69E
      8E00D8BDA300FFFFDD00FFFFDD00FFFFDB00FFFFDA00FFFFDB00FFFFDD00FFFF
      E900DEC9B700AE837E0000000000000000000000000000000000000000000000
      0000C09E9B00B1847E00EDD0A400F2C89700FCF4CC00FFFFDB00FFFFE400FFFF
      F900FFFFFB00FFFFEC00E4D9BF00AE7F7B00FEF3E800FEF3E800FEF3E800FDF2
      E700FDF2E700FDF1E600AF87840000000000BE938600FEFCFB00FFFEFC00FDF7
      F100FAF2EC00FAF0E500FAEEDE00F9EAD90005720A0005720A00FFFFFF00FFFF
      FF00258D2C0005720A0071B37600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0005720A0005720A000000000073737300B5B5B500CED6
      D6008C7B8400844A5200A5848400A57B7B00A57B7B00A57B7B00A57B7B00A57B
      7B00A57B7B00A57B7B00A57B7B00A57B7B00A57B7B00A57B7B00A58484008C4A
      5A00AD7B9C00E7D6E700ADADAD00636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AE857F00DEC0
      A500FFF3C100FCF1C800FFFFDA00FFFFD900FFFFDA00FFFFE000FFFFE400FFFF
      EF00FFFFFF00DDCAC800AE837E00000000000000000000000000000000000000
      0000C1A09C00A97A7600F9DEAA00EFBA8600F9E3B600FFFFD900FFFFDE00FFFF
      E800FFFFEA00FFFFE000F8F5D500A9797600FFF2E600FFF1E500FEF1E500FEF1
      E500FEF0E400F9ECDE00B188860000000000C1968700FEFDFC00FFFFFF00FFFB
      F800FDF6F000FBF3EB00FBF1E500FAEDDE0005720A0005720A00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0005720A0005720A000000000084737300B5B5B500CECE
      CE00947B84007B4A5200844A52005A3131005252520052525200525252004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A005A313100844A52007B4A
      52009C848C00C6C6CE00ADADAD00847373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AE837E00FFEF
      B900F5D4A500FBF0C600FFFFDB00FFFFDA00FFFFDD00FFFFEB00FFFFF500FFFF
      FB00FFFFFD00FFFFFE00AE837E00000000000000000000000000000000000000
      0000C2A19E00B2857F00EED4A900EFBB8400F3CC9800FBEEC400FFFFDB00FFFF
      DD00FFFFDC00FFFFDC00E8DCC100AE807B00FFF0E300FEEFE200FEEFE200FDEF
      E100F9EADB00F0E2D100B28A870000000000C59A8900FDFCFC00FFFFFF00FFFE
      FE00FFFAF800FDF7F100FBF4EB00FAF0E50005720A0005720A0005720A000572
      0A0005720A0005720A0005720A0005720A0005720A0005720A0005720A000572
      0A0005720A0005720A0005720A0005720A00000000008C8C8C009C9C9C00CECE
      CE00AD949C00421821004A4A4A004A292900736363007B6363007B6363007363
      6300736363007B6363007B6363007B636300736B630052313100393939004A21
      2100A59C9C00C6C6CE00B5B5B500847373000000000000000000000000000000
      00000000000000000000000000000000000000000000AE837E00ECD5B400F8D6
      A200F2C99700FCEDC400FFFFDB00FFFFDA00FFFFE000FFFFF000FFFFFE00FFFF
      FD00FFFFF500FFFFEB00E1D3B800AE837E000000000000000000000000000000
      0000C4A39F00B78A8500D7BBA000FAE9C500F4D3A600F4D09D00F9E4B800FEF6
      CF00FEFAD300FFFFDA00CAAE9C00CFADA500FEEEE000FEEEE000FDEDDF00F8E8
      D800EFE0CE00E5D6C100B38C890000000000C99D8A00FDFCFC00FFFFFF00FFFF
      FF00FFFEFE00FFFBF700FCF7F100FBF4EB0005720A0005720A0005720A000572
      0A0005720A0005720A0005720A0005720A0005720A0005720A0005720A000572
      0A0005720A0005720A0005720A0005720A00000000000000000084737300D6CE
      CE00BDA5AD00422121004A4A4A00B5848400F7EFE700F7EFE700F7EFE700F7EF
      E700F7EFE700F7EFE700F7EFE700F7EFE700F7EFE700B5848400393939004A21
      2100B5A5A500CECECE0084737300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AE837E00FFF3BF00F4CB
      9500F0C18E00F9E5BA00FEFDD700FFFFDC00FFFFDF00FFFFEC00FFFFF800FFFF
      F800FFFFEC00FFFFE000FFFFE300AE837E000000000000000000000000000000
      0000C4A4A100EBD2C600B48A8200F1EAE900FFF7E900F3CC9800F0BD8900F4CE
      9D00FCE6B600F0E2BB00AD817B00EAD1C500FEEDDE00FDECDC00F7E6D500EEDE
      CB00E4D4BE00D9C9B100B58E8B0000000000CDA18C00FEFDFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFE00FEFBF700FDF6F100FBF3EB00FBF0E400F9EDDE00F8E9
      D800F7E5D100F8E5CD00F5E2C700E7D3B800C9BAA300A08A8200000000000000
      00000000000000000000000000000000000000000000000000008C8C8C00ADB5
      B500B5B5B5009C94940084737300BD848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700B58484007B636B009C94
      9400ADB5B500ADB5B50084737300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AE837E00FFF4C000F3C9
      9400EEB88400F5D5A500FDF3CB00FFFFDC00FFFFDD00FFFFE200FFFFE800FFFF
      E900FFFFE200FFFFDD00FFFFE300AE837E000000000000000000000000000000
      0000C5A5A200FFEDDC00E0C3B700B2898500D3BBAE00EFDCB200FBE3B000EED4
      A900D2B19A00B1847E00DFC2B600FEECDB00FDEAD900F6E5D200EDDCC700E3D2
      BB00D8C8AE00CCBDA100B68F8C0000000000D2A48D00FEFDFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFE00FEFAF800FCF7F000FBF3EA00FAEFE400F9ED
      DE00FFF5E300FBF2DD00DFD5C300C6BEAD00BBB5A4009E8B8500000000000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8C00847373008473730084737300CE948C00FFFFFF00F7FFFF00F7FFFF00FFFF
      FF00FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700B5848400847373008473
      7300847373008473730000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AE837E00FFF5C300F6D1
      9C00EEB27D00F1C59300F7E0B300FDF7D000FFFFDC00FFFFDD00FFFFDD00FFFF
      DD00FFFFDB00FFFFDA00FFFFE100AE837E000000000000000000000000000000
      0000C6A7A300FFECDA00FFECDA00EBD1C200B78F8400AF827C00A97A7600B284
      7E00CFABA200EAD0C100FEEBD900FCE9D700F6E3CF00EDDAC400E2D0B800D7C6
      AB00D9CBB400E5D4C100B68F8C0000000000D7A88E00FEFDFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFD00FEFBF700FCF6EF00FCF5EB00FBF2
      E500D8B9AB00B78F8400AD898400A8868300A7868700A8837800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CE948C00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700F7F7F700EFDED600D6C8BA00D6C8BA00B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AE837E00ECD5B400FDE6
      B200F3C99600F2C79200F3D09C00F8E3B500FCF5CD00FFFFDA00FFFFDC00FFFF
      DB00FFFFDB00FFFFDC00E2D3B800AE837E000000000000000000000000000000
      0000C7A8A400FFEAD800FFEAD800FFEAD800FFEAD800FFEAD800FFEAD800FFEA
      D700FEE9D700FEE9D700FCE7D400F5E1CC00F7EEE400FEFEFE00FEFEFD00FEF8
      F200F2E0D600B68F8C000000000000000000DAAC9000FEFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFD00FEFAF600FFFCF500F7ED
      E400C19A9300C4937700DBA77400DB9E6000EC9F3900C1877300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D69C9400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFDED600C6A59400C6A59400C6A59400C6A59400B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AE837E00FFFE
      D000FCF0D600F8E0BE00F4CF9D00F3CD9A00F6D8AA00FBEABF00FDF4CB00FCF7
      CF00FEF8D100FFFFDE00AE837E00000000000000000000000000000000000000
      0000C7A8A500FFE9D500FFE9D500FFE9D500FFE9D500FFE9D500FFE9D500FEE8
      D400FEE8D400FBE6D100F4DFC900EBD7BE00F4EDE300FEFDFC00FEF7F000EAD5
      CC00B68F8C00000000000000000000000000DFAF9100FEFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFD00FFFFFD00F7EE
      E900C0999300D3A48100F3C17C00FFBD4E00D0926D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D69C9400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E7D6D600C6A59400FFFFFF00FFFFFF00DEDEDE00B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AE837E00E0CA
      B200FFFFFF00FEF9F200F8E1BE00F1C48D00EEBA8500F1C49100F4D1A100F8DE
      B000FFF7C600DDC7AE00AE837E00000000000000000000000000000000000000
      0000C8AAA700FFE8D300FFE8D300FFE8D300FFE8D300FFE7D200FEE7D200FEE7
      D200FBE4CE00F3DDC600EAD5BB00DFCAAF00FAF6F100FEF6EE00DFC6BE00B68F
      8C0000000000000000000000000000000000DFAF9100FEFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F1
      EF00C09A9600D2A48000FFCA7400D09877000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEA59400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E7D6D600C6A59400FFFFFF00DEDEDE00B584840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AE83
      7E00D9C6C000FFFFFF00FFF7D700F8DAA600F4CB9500F5CD9900F9D9A600FFF1
      BB00DEC2A900AE837E0000000000000000000000000000000000000000000000
      0000C9ABA800FFE7D100FFE7D100FFE7D100FFE6D000FEE6D000FEE6CF00FAE2
      CB00F3DBC300E9D3B800DEC9AC00E5D6C200FAF0E700D4B8B100B68F8C000000
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
      0000CAABA800FFE6CF00FFE6CF00FFE6CF00FEE5CE00FEE5CE00FAE1C900F1DA
      C000E8D1B600DDC7AA00D5C1A300F0E1D700CDAFAB00B68F8C00000000000000
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
      0000CAACA900C9ABA800C9ABA800C9AAA700C9A9A600C8A8A500C7A8A500C8A8
      A500C8A8A500C8A8A500C8A8A500C8A8A500C8A8A50000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A87D
      7800B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B58484000000000000000000000000000000000000000000A87D
      7800F3E7D800F3E7D800F3E7D800F3E7D800F3E7D800F3E7D800F3E7D800F3E7
      D800F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2
      CF00B7818300000000000000000000000000000000000000000000000000AD73
      8400EFDED600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7
      D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7
      D600EFDECE00B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500EFD6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B000000000000000000000000000000000000000000A87D
      7800F3E7D800F2E6D700FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000F0E2CF00F0E2
      CF00B7818300000000000000000000000000000000000000000000000000AD73
      8400EFDED600FFF7EF00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00EFDECE00B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEC600F7DEBD00BDCE8C00E7D6A500E7D6A500EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B000000000000000000000000000000000000000000A87D
      7800F3E8DB00F3E7D900FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC
      9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00F0E2CF00F0E2
      CF00B7818300000000000000000000000000000000000000000000000000AD73
      8400EFDED600FFF7EF00FFF7EF00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00EFDECE00B584840000000000000000000000000000000000000000000000
      00000000000000009A0000009A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009A0000009A000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7DECE00F7E7CE00F7DEC600F7DEC600CED69C00009C0000E7D6A5006BB5
      4A0039A5290039A529006BB54A00C6C67B00E7CE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B000000000000000000000000000000000000000000A87D
      7800F4EADE00F4E9DC00F3E8DA00F3E7D900F2E6D700F2E5D500F1E4D400F1E4
      D200F0E3D000F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2CF00F0E2
      CF00B7818300000000000000000000000000000000000000000000000000AD73
      8400EFDED600FFF7EF00FFF7EF00FFF7EF00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00EFDECE00B584840000000000000000000000000000000000000000000000
      000000009A001244FF000C30E60000009A000000000000000000000000000000
      00000000000000000000000000000000000000009A000028F200002CF9000000
      9A0000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C0000109C1000009C
      0000009C0000009C0000009C0000009C000094BD5A00E7CE9400EFCE9400EFCE
      9400EFCE9400B58C7B000000000000000000000000000000000000000000A87D
      7800F4EBE000F3E9DE00FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000EFE1CE00EFE1
      CE00B7818300000000000000000000000000000000000000000000000000AD73
      8400EFDED600FFFFFF00F7EFDE00F7E7D600F7E7D600F7E7D600F7E7D600F7E7
      D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7EF
      DE00EFDECE00B584840000000000000000000000000000000000000000000000
      9A001A4BFF001645FF001444FF000D2FE50000009A0000000000000000000000
      000000000000000000000000000000009A000027F0000030FF000030FF00002E
      FD0000009A00000000000000000000000000000000000000000000000000AD7B
      7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000C6C67B00EFCE9400EFCE
      9400EFCE9400B58C7B000000000000000000000000000000000000000000A87D
      7800EDE5DB00EDE4DA00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC
      9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00E8DAC800E8DA
      C800B7818300000000000000000000000000000000000000000000000000AD7B
      8400EFDED600FFFFFF00FFDEC600FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFDEC600F7EF
      DE00EFDECE00B584840000000000000000000000000000000000000000000000
      9A001740F1001A4BFF001746FF001646FF000E30E40000009A00000000000000
      0000000000000000000000009A000129EF000030FF00002EFF000030FF000023
      E70000009A00000000000000000000000000000000000000000000000000AD84
      7B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C0000009C0000009C
      000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A52900EFCE9400EFCE
      9400EFCE9400B58C7B000000000000000000000000000000000000000000B288
      7E00D9D3CB00D9D2C900D9D1C700D8D0C700D7CFC500D7CEC400D6CEC200D6CD
      C000D6CCBF00D6CBBE00D6CABC00D5C9BA00D5C8B900D4C7B800D4C7B700D4C7
      B700B7818300000000000000000000000000000000000000000000000000B57B
      8400EFDED600FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00EFDECE00B584840000000000000000000000000000000000000000000000
      000000009A001940F0001C4CFF001847FF001646FF000F32E70000009A000000
      00000000000000009A00002BF7000232FF000331FF000131FF000023E4000000
      9A0000000000000000000000000000000000000000000000000000000000AD84
      7B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C0000009C0000009C
      000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C0800EFCE9C00EFCE
      9400EFCE9400B58C7B000000000000000000000000000000000000000000A07A
      7100B5AFAA00B4AEA900B4ADA700B4ACA600B4ACA400B3ACA300B2ABA200B2AA
      A100B1A9A000B1A99E00B0A89D00B0A89C00B0A79A00B0A69A00B0A59900AFA4
      9800A4747600000000000000000000000000000000000000000000000000B584
      8400F7EFEF00FFFFFF00F7EFDE00F7E7D600F7E7D600F7E7D600F7E7D600F7E7
      D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7EF
      DE00EFDECE00B584840000000000000000000000000000000000000000000000
      00000000000000009A001A40EF001D4DFF001948FF001848FF001238EF000000
      9A0000009A00002BF800002FFF00002EFF000232FF000324E50000009A000000
      000000000000000000000000000000000000000000000000000000000000B58C
      7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C0000009C0000009C
      0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCEA5007BCE7B00EFCE
      9C00EFCE9400B58C7B000000000000000000A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800000000000000000000000000BD84
      8400F7EFEF00FFFFFF00FFDEC600FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFDEC600F7EF
      DE00EFDECE00B584840000000000000000000000000000000000000000000000
      0000000000000000000000009A001B42F0001E4EFF001B4AFF001949FF000E38
      F6000431FD000131FF00002EFF000030FF000027F10000009A00000000000000
      000000000000000000000000000000000000000000000000000000000000B58C
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7CE00E7DEC600E7DE
      C600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6AD007BCE7B00EFCE
      9C00EFCE9400B58C7B000000000000000000A35228000000000000000000BA8E
      8200E7E2DD00E7E2DB00E6E0DA00E6E0D900E5DED700E5DED500E5DDD400E5DB
      D200E4DBD100E3D9CF00E3D9CD00E2D9CC00E2D8CB00E1D6C900E1D6C700E1D5
      C600B78183000000000000000000A3522800000000000000000000000000BD84
      8C00F7EFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00EFDECE00B584840000000000000000000000000000000000000000000000
      000000000000000000000000000000009A001B42EF001F4FFF001745FF000E3D
      FF000939FF000634FF000333FF000128F00000009A0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD8C
      8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EFDE00F7E7D600EFE7
      C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6A500EFD6AD00EFCE
      A500EFCE9C00B58C7B000000000000000000A35228000000000000000000BA8E
      8200DCD8D400DCD6D200D8754200D8754200D8754200D8754200D8754200D875
      4200D8754200D8754200D8754200D8754200D8754200D8754200D5CBBF00D5CA
      BD00B78183000000000000000000A3522800000000000000000000000000C68C
      8C00F7EFEF00FFFFFF00F7EFDE00F7E7D600F7E7D600F7E7D600F7E7D600F7E7
      D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7EF
      DE00EFDECE00B584840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000009A001B45F5001747FF001342
      FF000F3EFF000C3CFF000830F00000009A000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD94
      8400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EFE700F7EFDE00EFE7
      CE00009C0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6
      AD00EFCEA500B58C7B000000000000000000A35228000000000000000000AE87
      7700B7B5B100B6B4B000F6CAB300F6CAB300F6CAB300F6CAB300F6CAB300F6CA
      B300F6CAB300F6CAB300F6CAB300F6CAB300F6CAB300F6CAB300B1AAA100B1A9
      9F00A47476000000000000000000A3522800000000000000000000000000C68C
      8C00F7EFEF00FFFFFF00FFDEC600FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFDEC600F7EF
      DE00EFDECE00B584840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000009A001F4DFC001D4CFF001A48
      FF001544FF001443FF00143CF00000009A000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C694
      8400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6A500EFEFD600EFE7
      CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6AD00F7D6B500EFD6
      AD00EFCEA500B58C7B000000000000000000A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800000000000000000000000000C68C
      8C00F7EFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00F7EF
      DE00EFDECE00B584840000000000000000000000000000000000000000000000
      000000000000000000000000000000009A002A58FC002756FF002251FF00204F
      FF001D4DFF001D4CFF001E4EFF00173EEF0000009A0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C000073C66B00CEDE
      B500CEDEB50039AD3900009C0000009C0000009C0000EFDEB500F7DEBD00F7D6
      B500EFD6AD00B58C7B000000000000000000000000000000000000000000C296
      8500FFFEFD00FFFEFD00FFFEFD00FFFEFD00FFFEFD00FBF7F300FBF7F300FAF5
      EF00FAF5EF00F8F1EB00F8F1EB00F7F1E900F7F1E900F6ECE200F6ECE200F6EC
      E200B7818300000000000000000000000000000000000000000000000000CE94
      8C00FFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00F7EF
      DE00DEC6A500A57B840000000000000000000000000000000000000000000000
      0000000000000000000000009A002C56F4003160FF002B5AFF00295AFF002047
      F1001F46F1002454FF00204FFF001F4FFF00183FF00000009A00000000000000
      000000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000EFDEBD00F7DEBD00EFDE
      BD00DEC6A5009C847B000000000000000000000000000000000000000000CA9C
      8800FEFDFC00FDFCFA00FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000F5ECE300F5EB
      E100B7818300000000000000000000000000000000000000000000000000CE94
      8C00FFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFF7EF00CEBD
      AD00DED6CE009C7B840000000000000000000000000000000000000000000000
      00000000000000009A00325EF7003666FF003361FF003365FF00274FF0000000
      9A0000009A002047EF002656FF002251FF002151FF001840EF0000009A000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE9C00009C0000009C
      0000009C0000009C0000009C0000109C1000009C0000E7DEC600EFDEBD00CEBD
      AD00B5AD94009C847B000000000000000000000000000000000000000000CEA0
      8900FFFFFF00FFFFFF00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC
      9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00F6EFE600F6EE
      E500B7818300000000000000000000000000000000000000000000000000D69C
      9400FFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700D6D6D600D6D6
      D600BDBDBD009C7B840000000000000000000000000000000000000000000000
      000000009A003865F7003C6DFF003867FF003869FF00284DE70000009A000000
      00000000000000009A001E41E7002757FF002352FF002252FF001A42F0000000
      9A0000000000000000000000000000000000000000000000000000000000CEA5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700CEEFCE0073C6
      6B0039AD390039AD390073C66300EFE7CE00009C0000C6D6AD00CEBDAD00BDB5
      A500B5AD9C009C847B000000000000000000000000000000000000000000D2A3
      8A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F1E900F7F0
      E700B7818300000000000000000000000000000000000000000000000000D69C
      940029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD6002183A700B5847300AD847300AD7B7300AD7B
      7300AD7B7300AD7B730000000000000000000000000000000000000000000000
      9A00406EFB004172FF003E6DFF003E6FFF002A4CE40000009A00000000000000
      0000000000000000000000009A001D40E4002859FF002452FF002353FF001C45
      F30000009A00000000000000000000000000000000000000000000000000D6A5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700E7DEC600AD84730084845A00AD7B7300AD7B
      7300AD7B7300AD8473000000000000000000000000000000000000000000D7A7
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFD00FEFCFA00FEFB
      F800FCF9F600FBF8F400FBF7F300FAF6F100FAF4EF00F9F3EE00F9F2EC00F7F1
      EA00B7818300000000000000000000000000000000000000000000000000DEA5
      940029ADD6008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7
      FF008CF7FF008CF7FF008CF7FF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B584840000000000000000000000000000000000000000000000
      9A004676FD004576FF004475FF002E51E50000009A0000000000000000000000
      000000000000000000000000000000009A001E41E500295AFF002758FF001E48
      F30000009A00000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B58484000000000000000000000000000000000000000000DAAB
      8D00FFFFFF00FFFFFF00FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000F9F4EF00F9F3
      ED00B7818300000000000000000000000000000000000000000000000000DEA5
      940029ADD6008CF7FF00E88E6000E88E6000E88E6000E4753E00E4753E00E475
      3E00E4753E00E1622300E1622300B04A1800B5847300EFC68C00F7BD6B00FFB5
      5200B58484000000000000000000000000000000000000000000000000000000
      000000009A004471F8003356E50000009A000000000000000000000000000000
      00000000000000000000000000000000000000009A002144E800244DF1000000
      9A0000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B5848400000000000000000000000000000000000000000000000000DEAD
      8E00FFFFFF00FFFFFF00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC
      9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FECC9A00FAF6F100FAF5
      EF00B7818300000000000000000000000000000000000000000000000000DEA5
      940029ADD6008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7
      FF008CF7FF008CF7FF008CF7FF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000009A0000009A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009A0000009A000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      840000000000000000000000000000000000000000000000000000000000DEAD
      8E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFEFC00FEFCFA00FDFBF800FCF9F600FBF8F400FAF6
      F200B7818300000000000000000000000000000000000000000000000000DEA5
      940029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60029ADD60029ADD6002183A700B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FEFDFB00FEFBF900FDFAF700FBF8
      F500B7818300000000000000000000000000000000000000000000000000DEA5
      8C00E7CEBD00EFD6BD00EFD6BD00EFCEC600E7CEBD00E7CEBD00E7CEBD00E7CE
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400B5847300B5848400000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8F00DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA4
      8200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA48200DAA4
      8200AA807C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A074
      70009E706E009D706D009D6E6B009C6D6A009A6C6900996B6800996A67009869
      66009667650095666300956662009365600093635F0092625E0091605D009160
      5D00915F5C00905E5B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A1A0A0008C8A
      8A009A9A9A00B2B2B200BEBEBE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A8A7A7009190
      900093929200A7A7A700B8B8B800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A175
      7200FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00915F5C0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B3B2B2008B818100B3A0A000C6B7
      B7009B8B8B007C7171007B7575008B8A8A00A4A4A400B6B6B600BEBEBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7B7B7008C858500A6939300C9BC
      BC00B3A2A100887B7B0079707000807C7C0095959500ADADAD00B9B9B9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A176
      7300FEFEFC00FEFEFC00FEFEFC00FEFEFC00FEFEFC00FEFEFC00FEFEFC00FEFE
      FC00FEFEFC00FEFEFC00FEFEFC00FEFEFC00FEFEFC00FEFEFC00FEFEFC00FEFE
      FC00FEFEFC0091605D0000000000000000000000000000000000000000000000
      000000000000000000000000000097939300957F7F00D0B0B000EADBDB00C3BF
      C000D5CBCB00F0DCDA00E1CBC800BBA6A400928382007C7272007C7979009191
      9100AAAAAA00BABABA0000000000000000000000000000000000000000000000
      00000000000000000000000000009C9A9A00907C7C00C7A6A600EDD9D900CAC4
      C500C3BDBE00ECDCDB00EEDAD800D2BDBA00AA96950085797900797171008281
      81009B9B9B00B1B1B100BDBDBD000000000000000000AE602A00AE602A00AE60
      2A00AE602A00AE602A00AE602A00AE602A00AE602A00AE602A00AE602A00AE60
      2A00AE602A00AE602A00AE602A00AE602A00AE602A00AE602A00AE602A00AE60
      2A00AE602A00AE602A00AE602A0000000000000000000000000000000000A479
      7500FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFB
      FA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFBFA00FEFB
      FA00FEFBFA0093635E0000000000000000000000000000000000000000000000
      000000000000ACACAC008B7E7E00B89B9B00D6B6B600E2CBCB00D8C6C600353A
      3D000D4D6500497E9100879FA900C0BFC300E2D7D600EDDEDD00CFBFBF00AB9A
      9A00867A7A00756F6F0092919100BCBCBC000000000000000000000000000000
      000000000000B2B1B1008A7F7F00B1949400D7B6B600D9C0C000EBD8D800675D
      5F0002364A0030718B006C8C9900A8B1B700D6CECE00ECE0DE00E5D6D500BFAE
      AE009C8D8D007B7171007A767600AAAAAA00BF820000EEB66900FFC68300FFC2
      7900FFBF7000FFBC6600FFB85C00FFB55200FFB24900FFAF3F00FFAB3500FFA8
      2B00FFA52200FFA11800FF9E0F00FF9B0500FF990100FF990100FF990100FF99
      0100FF990100FF990100EB8B0B00AE602A00000000000000000000000000A57A
      7700FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFA
      F600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600FEFA
      F600FEFAF60093645F000000000000000000000000000000000000000000BCBC
      BC00968F8F009C838300D5B6B600DFCBCB00DBCACA00E7DCDC00DDC9C9007A6F
      71002F5E72000A5E7D0000557600015A7A00266A830062717900D5CBCA00E0D4
      D200EBDBD900E8D4D400786E6E00ACACAC00000000000000000000000000BFBF
      BF009892920097808000D2B2B200DFC9C900DCC9C900E3D6D600E7D6D6009C87
      87003D5B680015627E000056780000557700146380003F6676009D979700E8DF
      DF00DECFCD00FBEAE800B0A0A0008B8A8A00CD921D00FFCB9200FFC78900F2BB
      7A00CD9E6500E6AC6400FFBA6200FFB75800E6A44B00CD914100E69E3A00FFAA
      3100FFA62700FFA31E00FFA01500FF9C0A00FF9A0300FF990100FF990100FF99
      0100FF990100FF990100FF990100AE602A00000000000000000000000000A67B
      7900FEF8F300FEF8F300FEF8F300FEF8F300FEF8F300FEF8F300FEF8F300FEF8
      F300FEF8F300FEF8F300FEF8F300FEF8F300FEF8F300FEF8F300FEF8F300FEF8
      F300FEF8F3009565620000000000000000000000000000000000A4A2A2008C7C
      7C00C1A2A200E0C8C800E0D0D000E5D9D900EFE9E900F4F3F300E7DBDB00DCC2
      C200CEB3B200B09FA00084899100507383001D637D00122E3B00A18E8C004E62
      6C0023475700B1AEB000A28F8E00A4A4A4000000000000000000A7A6A6008A7C
      7C00BB9C9C00DFC5C500DFCECE00E3D7D700ECE5E500F3F3F300EBE3E400DCC5
      C500D4B8B600B9A4A300928F9500607986002E698200003D5500544E5000A198
      9A001A3F4E0060737B00BBADAE008C8A8A00D3992600FFCC9700D9AE7E003535
      37003535370035353700A7815100D9A05700353537003535370035353700CD8E
      3500FFA82D00423C360035353700353537003535370035353700353537003535
      3700423B3400E68D0800FF990100AE602A00000000000000000000000000A97F
      7A00FEF7F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7
      F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7
      F000FEF7F000956663000000000000000000BABABA008D858500A98D8D00DDBF
      BF00E2CFCF00E3D6D600EBE3E300F1EEEE00F5F4F400F4F2F200DDCCCD00D0B2
      B300E0CACA00E5C9C700E3C5C300DCBEBC00C8ADAD00A6949500C3ADAC00666C
      73000F364800777B8200A08B8A00A2A2A200BBBBBB008E878700A4888800D9BB
      BB00E1CECE00E2D4D400E9E1E100EFEBEB00F3F2F200F5F5F500E8DDDE00D0B4
      B400DDC6C600E5CBCA00E4C6C400DFC0BE00D0B4B300A7959600AF9B9C00AC9C
      9D00204352001E4556009A8B8C008E8B8B00D59B2600FFCD9900FFCB9400A788
      66009A7D5C009A7B5700F2B56900F2B36100A77F4B009A754400A77B4000F2A6
      3C00FFAA3100A77530009A6D2C009A6B27009A6922009A681D009A671C009A67
      1C00A76D1900FF990100FF990100AE602A00000000000000000000000000A980
      7D00FEF6ED00FEF6ED00FEF6ED00FEF6ED00FEF6ED00FEF6ED00FEF6ED00FEF6
      ED00FEF6ED00FEF6ED00FEF6ED00FEF6ED00FEF6ED00FEF6ED00FEF6ED00FEF6
      ED00FEF6ED00966865000000000000000000A2939300CBAAAA00E0CACA00E2D4
      D400E7DFDF00EFEAEA00F3F1F100F2F1F100EBE2E100D7C1C300C9A8A800C8A4
      A100C9ACAC00CDB4B800D2BCBE00CDAEAF00D6B8B800E0C6C600DAC1C100D6BA
      B900BA9F9D00CAB3B3009A858500A7A7A7009C8E8E00C9A8A800DFC8C800E1D1
      D100E6DCDC00EDE7E700F2F0F000F3F2F200EFEAEA00DECDCD00CBAFAF00C5A1
      9F00C8ABAA00CBB1B300D0B7B900D1B5B600D0B1B100DFC4C400DFC5C500D6BD
      BD00C4A8A600B29B9A00B29E9E008B898900D79D2600FFCD9900FFCD9800E6B7
      8400CDA37500D9A86F00FFC07200FFBD6900D9A05700CD964D00D99B4700FFAF
      4200FFAC3800CE955400BF895B00CF8D4500FF9F1100FF9B0700CF863100BF80
      4100CF863100FF990100FF990100AE602A00000000000000000000000000AB81
      7E00FEF3EA00FEF3EA00FEF3EA00FEF3EA00FEF3EA00FEF3EA00FEF3EA00FEF3
      EA00FEF3EA00FEF3EA00FEF3EA00FEF3EA00FEF3EA00FEF3EA00FEF3EA00FEF3
      EA00FEF3EA00986966000000000000000000C5A9A900D8C0C000E2D5D500EEE9
      E900F2F0F000F4F3F300F3F1F100EDE5E500D7BDBD00D4B3B000EACEC300F6D5
      C300EABBA800D5A49500C9999100C6A19E00CAACAD00CAAAAB00CCADAE00D2B4
      B500E4C6C700DFBDBD0093868600BCBCBC00C7A9A900D6BEBE00E0D2D200ECE5
      E500F1EDED00F4F4F300F3F2F200EFEAEA00D9C4C400CFAFAE00DDBFB700F0D3
      C500EABFAB00DDB1A200D3AFA600C8A4A100C5A4A500C8ABAE00C8ABAB00CEB1
      B100D7BABB00ECCFCF00B1989800A09F9F00D99F2600FFCD9900D9B187003535
      37003535370035353700A7845A00CD9C6100353537003535370035353700C08B
      44009F8087000033FF000033FF000033FF00BF8550008F6F78000033FF000033
      FF000033FF00CF863100FF990100AE602A00000000000000000000000000AB83
      8000FEF2E700FEF2E700FEF2E700FEF2E700FEF2E700FEF2E700FEF2E700FEF2
      E700FEF2E700FEF2E700FEF2E700FEF2E700FEF2E700FEF2E700FEF2E700FEF2
      E600FCF0E600986A67000000000000000000C3ADAD00EBE5E500F1EDED00F4F2
      F200F2EFEF00E9DFDF00E0CCCC00CFB9B900C6B7B700CFBCB600E0CDC400F4CE
      BD00F5AE9200DC694300DB674200CD8D7700C9A39400CCA79E00D2B3AF00CAA9
      A900A28A8D00928C8D00BEBEBE0000000000C6AFAF00EAE2E200EFEBEC00F5F6
      F800F5F7F900EEEAEC00E4D8DA00DDCACB00D7C2C200E5CBC700F3DBD300F9D8
      CA00FCC3AA00FCBEA000F9BB9C00F1BCA100E7B9A300DFB7A700D9BCB600D8BE
      BF00CFAAAB00B2959600A69F9F0000000000DBA12600FFCD9900FFCD9900B394
      74009A806500A7876500F2BB7A00FFC17500B38A58009A784C00B3864B00F2AB
      4B00EFA84F009F7F8400806F99009F7B7800FFA31C00EF9922008F6E75008067
      81009F736000FF990100FF990100AE602A00000000000000000000000000AD86
      8200FEF0E300FEF0E300FEF0E300FEF0E300FEF0E300FEF0E300FEF0E300FEF0
      E300FEF0E300FEF0E300FEF0E300FEF0E300FEF0E300FEF0E300FEF0E300FCEF
      E200FCEFE2009A6B68000000000000000000CAB6B600FAFCFC00F4F3F300F0EB
      EB00E0CFCF00D2B4B500BFA7A700B5B3B100C9D7D400CEDFDD00C5CFCD00C4C9
      C700CCA19300DF6C4900E3755000D28B7200D69C8300D3C7C200C8BEB900BF9D
      92008A6152007C6A66008B888700B0B0B000CBB9B900F9FCFC00F5F7F900EAE5
      E300DCC7C200CAA8A400C7A5A300C29E9F00C8A9AB00DDD0D500E5DADB00E8D8
      D600ECD4CD00F4CEBF00FFD1B800FFE2C100FFDDB500FFCFAD00EAC7B900BB9F
      99008C7F7C00B5B5B4000000000000000000DDA32600FFCD9900FFCD9900D9B1
      8700A78A6C00CDA37500FFC68300FFC27900CD9C61009A784E00CE955400FFB5
      5200FFB24900BF8F6F00806F9900BF8A6000FFA52200FFA11800BF834A008067
      8100BF804100FF990100FF990100AE602A00000000000000000000000000AF87
      8300FEEFE100FEEFE100FEEFE100FEEFE100FEEFE100FEEFE100FEEFE100FEEF
      E100FEEFE100FEEFE100FEEFE100FEEFE100FEEFE100FEEFE100FCEEE000FCEE
      E000FCEDDE009A6D6A000000000000000000C0ABAB00E7DEDE00E9DFDF00EBE5
      E500E7D8D800D0C3C400C5D0CD00E3F9F500D4E3E000ABB6B300CFE2DE00D8F6
      F400CBC0B600E17E5E00E77F5A00D3806600D5877000E8EFF000D5E4E800CFBA
      AD00E0764E00D54825009346310094929100C5B0B000F0EFF000CF957E00C059
      3200C45C3400C96B4200CD7B5400CB7D5A00C9826300BE7D6600C18F8400CEB7
      B800ECE7E700E2D9DA00C0B9CA00A0A0BF00878CB8007080BF005966AF003941
      840040466C0080808300B9B9B90000000000DFA52600FFCD9900CEA982003535
      370035353700353537009A7E5F00CDA16E00353537003535370035353700B386
      4B009F8492000033FF000033FF000033FF00BF895C009F7973000033FF000033
      FF000033FF00BF804100FF990100AE602A00000000000000000000000000B089
      8400FFEEDE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00FFEE
      DE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00FFEDDD00FEEDDD00FEEDDD00FEEB
      DC00F7E6D4009D6E6C000000000000000000BFBCBC00BAA8A800BA9E9E00CBB3
      B300DBC7C700CCCFCE00D9EFEB00B8C3C1006C706F00848E8C00D9E8E500D9F2
      EF00D8D0C600E68E6F00E8876200CD897200CA918000E9D1CA00E8E8EA00D8B5
      AA00D8623D00EA583200B64B2D00908C8B00BEB8B800BCA19D00B5401500C641
      1100D3643500DF7C4C00E78F5E00E9966300DE834F00D8754300C85B2B00C561
      36009B809500395CC4001F54CC00135CD8001A6AE6001864E3001251D6000E3F
      D0000F2EC300464C6F00B6B6B60000000000E1A72600FFCD9900FFCD9900D9B1
      87009A816800C09D7900FFC98E00FFC68400C09766009A7A5500C0925900FFB9
      5E00FFB55200AF8B83008071A000BF8E6900FFA82D00FFA52300AF7F62008069
      8800BF814500FF990100FF990100AE602A00000000000000000000000000B18A
      8700FFEBDA00FFEBDA00FFEBDA00FFEBDA00FFEBDA00FFEBDA00FFEBDA00FFEB
      DA00FFEBDA00FFEBDA00FFEBDA00FFEBDA00FEEAD900FEEAD900FCEAD800F7E3
      D000EBD9C4009E706D000000000000000000000000000000000000000000BEBA
      BA00BAABAB00C1CBC800A2A29F008E929000AFBDBA00CBD6D400DCEAE700D6EE
      EB00D7D2CA00EE987800DBA38800BCDCD600BCCBC100BDAC9D00C6A59800CA81
      6C00D44C2500E8583100AE4E3300918E8D0000000000BFBEBD00B1542E00CE58
      2C00D6714400E1895B00F0A77700E8A67800CE8B6500DE855600D9704200D64E
      13006D2F48000442D9001F62DF00406FC7003086ED002A80F5002465DF001B4D
      D3001334C500585D7900BDBDBD0000000000E3A92600FFCD9900FFCD9900FFCD
      9900FFCD9900FFCD9900FFCB9400FFC88A00FFC47F00FFC17700FFBE6D00FFBB
      6300FFB75800FFB55100FFB14600FFAE3C00FFAA3300FFA72900FFA41F00FFA0
      1500FF9D0D00FF9A0300FF990100AE602A00000000000000000000000000B48C
      8800FFEAD800FFEAD800FFEAD800FFEAD800FFEAD800FFEAD800FFEAD800FFEA
      D800FFEAD800FFEAD800FFEAD800FEE9D700FEE9D700FCE7D500F6E1CC00EAD7
      C000DDCAB0009F736F0000000000000000000000000000000000000000000000
      0000A4A4A400646262007E4C5000D5C9C900DEF1ED00D2DFDB00D3E4E000D6EF
      EC00D6CEC700F2A38300DDB39B00C0F6F900B9F5F900B0F3F400A9E4E000A7D2
      CC00ACB3A700D7755600B24C3000918E8D000000000000000000AF816B00C953
      2700D8704300E1895B00ED986200EAAB8000F1D5C200D47E5200D86D3E00D454
      1C005D396E000A49DF002F62CE00CEC8CD006693D9001F75F1002366E1001B4D
      DC001F389E0096969A000000000000000000E5AB2600FFCD9900FFD19E00FFDA
      B300FFDAB300FFDAB300FFD9B100FFD6A800FFD6A800FFD19E00FFD09500FFCD
      8E00FFCB8600FFC37400FFB34C00FFAF4200FFAC3800FFA92E00FFA52500FFA2
      1B00FF9F1100FF9C0900FF990100AE602A00000000000000000000000000B48E
      8A00FFE9D500FFE9D500FFE9D500FFE9D500FFE9D500FFE9D500FFE9D500FFE9
      D500FFE9D500FFE9D400FEE7D400FEE7D400FCE6D100F4DEC900E9D4BC00DCC7
      AC00CEBA9D00A17572000000000000000000000000000000000000000000BFBF
      BF005454540043202300A7656C00CBCFCD00C9D5D300C0BFBF00CACDCD00D1E3
      E100D2C8C200F4B09200E4BBA200CAF0F200C4EEF000BBEDEF00B2EFF200A9F6
      FB009AFFFF00BDB2A600B54A2C00918E8D000000000000000000BDBAB800AF6D
      4F00D3653700E87C4800D2794600CAB09900E9DEC500DE865700DE623000A652
      2C0052558200043AD5005A6FB900E8D3AD009F979F00265BC5001A5AE6002445
      B6007C809100000000000000000000000000E7AD2600FFCD9900CEA982008FE1
      D8008FE1D8008FE1D8008FE1D8008FE1D8008FE1D8008FE1D8008FE1D8008FE1
      D8008FE1D800DFE4CA00FFB55100E6A24600D9973D00CD8E3500CD8B2E00CD88
      2600D98D1D00FF9D0D00FF9A0300AE602A00000000000000000000000000B58F
      8B00FFE7D100FFE7D100FFE7D100FFE7D100FFE7D100FFE7D100FFE7D100FFE7
      D100FFE7D100FEE6D000FEE6D000FCE3CE00F3DDC500E7D1B700DAC5A900CCB8
      9900BDAB8A00A376730000000000000000000000000000000000000000009393
      93002A1E1E008C4D5300A3797E00C7DCD700CBCFCE008A898900A5A3A400D7E1
      E200D7D5CF00F5B79900E5BDA300D0EEF200CBECEE00C4F0F100BCEEF100B4EA
      ED00A6F4FA00C4B9AC00B5503200918E8D00000000000000000000000000BDB8
      B500B57E6400A15B3C004A7393002989CD004190C40092766A009F513100A59B
      9800BABBBC006775AB004758880043678600345D8400274F8D0024408C00787B
      870000000000000000000000000000000000E9AE2600FFCD9900BF9A73006AD7
      CB006AD7CB006AD7CB006AD7CB006AD7CB006AD7CB006AD7CB006AD7CB006AD7
      CB006AD7CB00DFE4CA00FFB65600C08B4400B3823F00A7783800B37E32009A6E
      2F00CD872300FF9F1300FF9C0900AE602A00000000000000000000000000B691
      8C00FFE6CF00FFE6CF00FFE6CF00FFE6CF00FFE6CF00FFE6CF00FFE6CF00FFE5
      CF00FEE5CE00FEE5CE00FBE2CB00F3DAC100E7CFB400D9C2A500CBB69600CEBC
      A000DDC7B000B58F8800000000000000000000000000BDBDBD0099999C003736
      360060383C00A7656C00AFB3B200DEF5F100D2D8D8008B8A8A0091909000CDD3
      D400DEDDD600F4B79900E4B59A00DCF4F500D2EFF000C8EBEB00C2EBED00BBEC
      EF00AFF6F900CABCAE00B6553700918E8D000000000000000000000000000000
      0000BABABA003F769F001E95ED00228FE3001F92EA001E7ABD00656B70000000
      0000B8B8B9007C818A00265A8B002167AD002469AD00254E76002B2E30005351
      4E009F9F9F00000000000000000000000000E7AC1D00FFCD9900EFC08F00BF9A
      7300BF9A7300BF9A7300BF9A7300BF9A7300BF997100BF976A00BF946300BF92
      5C00BF8F5400EFB97300FFB85C00F2AD5100F2AA4700FFAF3F00E69D3600CD8B
      2E00FFA52200FFA11800FF9E0F00AE602A00000000000000000000000000B792
      8E00FFE3CC00FFE3CC00FFE3CC00FFE3CC00FFE3CC00FFE3CC00FFE3CB00FEE2
      CB00FEE2CB00FBE0C700F2D8BD00F4E9DC00FEFEFE00FEFEFC00FEF6EE00EED7
      CA00B58F8800000000000000000000000000000000008484A2002C2C6E00301E
      19008F535800987A7D00D1E9E500DCEFEB00D4E2E000C7C8C800BBBAB900CBD3
      D300E1E3DD00E7C8B700DFD0C400EDF4F400F3FFFF00E6FFFF00D2F7F900C3EE
      F000B5F7FA00CEC0B100B65A3A00918D8C000000000000000000000000000000
      00008399A7003099EA0039A1F400379CEC00399FEF0031A1F8003B668200B2B2
      B200A2A1A000314558002B75BE002E76C1002D78C5002A5F9500292728002827
      280082828300000000000000000000000000E2A40000FAC57C00FFCD9900FFCD
      9900FFCD9900FFCD9900FFCD9900FFCD9900FFCD9900FFCB9200FFC78900FFC4
      7F00FFC17500FFBE6D00FFBA6200FFB75800FFB44E00FFB14600FFAD3B00FFAA
      3100FFA62700FFA31E00E9921700A6662200000000000000000000000000B792
      8F00FFE2C900FFE2C900FFE2C900FFE2C900FFE2C900FFE2C900FEE1C700FEE1
      C700FADEC400F0D5BA00E5CBAC00F0E7DA00FEFCFB00FEF4EB00E3C9BD00AD84
      800000000000000000000000000000000000ACACB100454596001A121D007847
      4600A161680076737300C2D1CF00DEF2EE00D9EBE700D9E6E300D8E1DE00E2EE
      EB00E8F5F200E1EBE800DEE9E800DDE1E000B5B1AF00C3BDBA00E0E6E300E2FB
      FB00D3FFFF00D7C9BA00BA5E3D00959291000000000000000000000000000000
      00006491AE0043B0FF0047AFFF0043A9FB0043A8FA0046B2FF003875A000A1A1
      A100BCBCBC00556D86002F83D7003082D5002E88E1002C74BB00272A30002926
      27008182820000000000000000000000000000000000E4A70A00EDB33900F0B8
      4D00EEB64D00EEB64D00EBB44D00E9B24D00E9B24D00E6AF4B00E4AA4400E4AA
      4400E1A43B00E1A43B00DF9F3300DD9B2E00DC982900DB952500DA922000D88F
      1B00D78C1B00C67F1800AA6B1A0000000000000000000000000000000000B895
      9100FFE1C600FFE1C600FFE1C600FFE1C600FFE0C500FEE0C500FEE0C500FADC
      C000EFD3B600E3C9A900D5BB9A00F8F3ED00FEF3E900D5B6AC00B58F88000000
      0000000000000000000000000000000000007171AA001516520042241800B46C
      700079585D00A5A5A500AFB1B100DCEDEA00DCEFEA00E0EFEC00E7F3F100EAF4
      F200EAF4F200EBF6F400F3FEFC00D7E0DE0089888800BAB8B700BCB4B100BBB2
      AF00C3B6B100D7B2A300A97C6D00B4B4B3000000000000000000000000000000
      00005C86A0002F72AA003390D70048B3FF004EB7FF0052C0FF003E7BA300A5A5
      A60000000000788796002D86E0002B7AC8002A5E92002B44600029282A00302F
      3200989898000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BA96
      9200FFE0C400FFE0C400FFE0C400FFDEC200FEDEC200FEDEC100F8D9BC00EFD0
      B200E2C6A500D4BA9700DDCAB100F8EBE000C7A59D00B58F8800000000000000
      0000000000000000000000000000000000006461A30020187D0079589900A66C
      7400706D6D0000000000BEBEBE00BABEBD00D9EAE700E4F3F000E5F2F000EAF4
      F200EDF5F300F0F8F600FEFFFF00A5A5A500B0B0B00000000000000000000000
      0000BFBFBE00BDB6B400BCBBBB00000000000000000000000000000000000000
      000070899B0036567C00285483002B82C2003EA4EC003C9FE3004E6D8100BABA
      BA00000000008A8E93002B4B6D003A495B00453F3D00403A3800323234005454
      5500B9B9B9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BB96
      9200FFDEC100FFDEC100FFDEC100FEDDC000FEDDC000F8D8BA00EDCFAF00E1C4
      A300D3B79500C9B08C00EBD8CB00BF9A9600B58F880000000000000000000000
      000000000000000000000000000000000000867F7E008F566100966DAA005952
      8300ADADAD000000000000000000BEBEBE00B9BBBA00D3DDDC00E7F3F000EEF8
      F500F3FAF900FCFFFF00BCBDBC00A3A3A3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A3ACB30040688A004D6E9800517AA400467FB0002E597D0097999A000000
      000000000000ABABAB004F4B4A00554F4C006F6B6A00535152004C4B4E00A4A4
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BB97
      9300BA969200BA969200BA959100BA939000B8928F00B7928F00B6918E00B590
      8C00B58F8B00B48E8A00B58F8800B58F88000000000000000000000000000000
      000000000000000000000000000000000000B7B6B600968583006F5B5D008D8D
      95000000000000000000000000000000000000000000BABABA00BCBEBD00CBCE
      CD00CBCCCB00A4A4A400B4B4B400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094A3AC005A7F9B00527A9C005B788F00989B9E00000000000000
      00000000000000000000AFAFB000858586007A7A7A0081818200B1B1B1000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A6A9AB0087898B008A8C8E009293
      94009E9E9E00AEAEAE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AAABAA008F91
      8F00878A8700878A87008A8C8A00929292009D9D9D00AAAAAA00B6B6B600BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AFAFAF0099999900AAAAAA00BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B8BABB006F91A80096B7C4007FA1B7007291
      A900647F94005D6A750063696F006E7277007E80820091919200A2A2A200B1B1
      B100B9B9B900BDBDBD0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000879588002E7B32001B8B
      25001F932C0024973400299339002F8A3C00337D3D003C6E41004B694D006270
      620084858400A5A5A500BBBBBB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B6B6B600778189002C75AA00408CBB00495B6A0089898900B2B2B2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E600C5C5C6009B9AA900CECECF00E8E8
      E800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B3B6B90088AECA00AEF6FF0089E4FF0094E4
      FF0095DFFF0087B5CC007B9DB0007693A5006B809000697E8D00637C8F005B6F
      7E00626F7A006D747A0093949400000000000000000000000000000000000000
      000000000000000000000000000000000000BABDBA002E9533000CBF1F0019C9
      310028D4450034DF570040E8650046EC6E0046ED6F0040E7670031CE4E0022B0
      38001C8728003463370076797600B2B2B2000000000000000000000000000000
      0000BFBFBF00BDBDBD0000000000000000000000000000000000BBBBBB009093
      9600356C9500268ED300389DDF0076D2FE0069C4F60035739F005D636A009696
      9600B8B8B8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EAEAEA00E2E2E200B7B7BA0064619B002C28CD00223EE7003852C2007C7B
      9A00CECECE00E9E9E90000000000000000000000000000000000B2A7A200837A
      76008C8786009E9E9E00B7B7B700A5ABAF008FB8D40090E5FE006BD4F6006CD5
      FC006AC6E80066A1B90067A0B90068A0BA006CAAC90079CCF40087D9FF008BD1
      F8008ECCF0007BB1D400626F7900000000000000000000000000000000000000
      000000000000000000000000000000000000B7BCB70024982C0010BE24001DC3
      36002DCF4A003ADA5E0046E56F0052F07F0051EF7E003DDD650042E76A0035DD
      570026D5420014C028001E6D23008F908F000000000000000000000000000000
      0000998C88007F7E7D009D9D9D00B5B5B500BCBCBC00A3A3A4004A6D88002687
      CA003793E000336CE40045A9E4006DC9F9006FC7F40077CDF70053B4E8003561
      82006E6F7200A1A1A100BCBCBC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EAEAEA00DADA
      DA00A3A1A4005350A2002320E1001E1EF0001F1FE900234CE9002C89F500338A
      F6003D5EC8009595A900EAEAEA00000000000000000000000000D7A28D00E08E
      7000BF8370009D6A5800856054007065670092B9D30093EBFF0078DAF60074D6
      F70060ABC7005D99B10062A5C20062B5DB0061C3F1005BC9FC0056C4F90052C1
      F8005CCAFF0081CCF5006E798100000000000000000000000000000000000000
      000000000000000000000000000000000000BDBEBD003C99410012BD250020C6
      3A0030D24F003DDE63004CE977005CFD900053DF7B0048A551003DD7620037DA
      5A0027CB430018CC310010901C0085888500000000000000000000000000A498
      9500E5664200D866450092503F0076605A005A6D7D00277EBB003B9FE00042A6
      E1003A75E700375EEA004CA0EA0068C6F70065ABD100F2D0BF00A8C3D20070CD
      FC00449CD2003E5B710080808000B0B0B0000000000000000000000000000000
      000000000000000000000000000000000000E9E9E900D4D4D4009D9793009975
      5000AD734A001D1DF4001D1FF1001F1EE900211EE000234CE9002C89F400369D
      F8003FAEFD005C6AAF00E8E8E800000000000000000000000000CCA69800F9C7
      B300FFF9F400FFE8DC00FFD0BC00C0A29F009DC6DE008DE8FD007DE0FA0073CC
      E700687C84005A90AF004AACDF004FB2E6004BACDF004CABDF004EADE10057BD
      F0005CC8FE0073BDE500747B8200000000000000000000000000000000000000
      0000B9BABA009C9C9C00AFAFAF00000000000000000074A6750011B1220021CA
      3B002FD14E003DDD620050ED7A004CF4810061C77700C7D1BD0041C1580033DC
      580027CB430018C930001A86230098999800000000000000000000000000C666
      4D00DE603C00F3916D00F88B630053749C00399EE0003F8BE6004AAAE6004EAD
      E8003F6EEB00406EEB005BBCF00060BFF30074ACCE00FFE9DC00FFE3D200E6D2
      C70091C1DC0069C9FC00337CAF008F8F8F000000000000000000000000000000
      00000000000000000000E7E7E700C9C9C900928D87009E754D00C3813700C583
      3500B27544001E1DEE001F1FE900211EE000231ED800234CE8002C88F400369D
      F8003FAEFD005C69AF00E8E8E800000000000000000000000000C6ADA300EFBF
      AA00FFFDF800FFEEDD00FFF9E500C9D4D900A1D0E7008FE9FA0081E2F9007DD9
      F400AE9398006E454900457B940060C7EF0059BCEB0050B0E1004DADE00056BF
      F00062CEFF0077B6DA007C818500000000000000000000000000000000000000
      0000738A98002A6F9C005B656C00A5A5A50000000000B4B9B4003D9D41001DC8
      33002CD24B0039D95C0044EB70003ECE5700BBCB9900FFF4EA006BB7680020CC
      450026D0430014BF280047774900B8B8B8000000000000000000A99E9B00DC5C
      3900D9593600F1967100F6936B004293C8003F78EB003C64EB0053ADEB005BB8
      EE0055A2EF005CB0EF0064C1F40058B8EF006DA7CB00FFE7DB00FDD5C500FCCB
      B500FFE0C70099BBD1004DADE5008B8B8B000000000000000000000000000000
      0000E4E4E400BCBCBC006F7F6A00447B220096812500C6843600C5833500C37F
      3200B07141001F1EE700211FE000231FD800241FD100244CE7002C89F500369D
      F9003FAEFD005C69AF00E8E8E800000000000000000000000000C7AFA500EFBA
      A400FFF9F200FFEBDC00FFF4E500BECAD400A3D7EA0093EEFB0087E6FA007BDC
      F400A3879500984D5000391F2000244659004AA3D1004DACE1004CABE0005FC2
      FB0063D0FF0072ADCF0086898B0000000000000000000000000000000000B5B7
      B8004083AE002A9EEF000E6BAC00405B6D008C8C8C00BCBCBC009EA79F00218D
      320023CD3B0034E0550029C44000639C5D00BDB7B100DCC8B700B1BB79001EC1
      37001CCF37002C873300A1A3A100000000000000000000000000BB756200DF6A
      4600DA5D3900F0967100F79C75004A98CB004478ED004168EE0059B3EB003A95
      D00066C2F30069C5F5006BC7F7004DAFEA00669FC500FFFCF600FCD5C700FCD2
      BF00FFD6C10074BAE30047A5DF008B8B8B000000000000000000E6E6E600B1B2
      B100667A5F00437F1B00469307004896030097832300C5833500C3803200C07B
      2E00AD6D3D00211DE000231FD800241ED200241ED400223EE700296BEE00369C
      F8003FAEFD005C69AF00E8E8E800000000000000000000000000BCA59B00F4C4
      B000FFFEF800FEECE200FFC9B500B8AFB900A5DEF00098F2FC008CE8F80081E8
      FD008D9AA800B7666B00683B3E0019010000386F850066D7FB0071BBD8008FB3
      9300A0BBAA008197A9008E90930000000000000000000000000000000000919A
      A0002790D6004395CE0093AABD003685BE001E5A8500686F76007E818A001F4F
      66001976300021A32900117D63002879BC001D7EC9003080C300618F90002398
      24003F874400A1A5A100000000000000000000000000BCBBBB00D8634200E171
      4D00DC654100EC916D00F8A57D004C96CF004E84F0005DA9F3004FA8DC004399
      CF006CC8F60072CCF9006DC9F70046A9E60044A1DE00AEBAC900F0E3EE00EEE4
      EE00FFDECD0069B2DF0041A0DC008B8B8B000000000000000000A5A9A5004284
      16004795050048970300489603004795030096822300C3803200C17C2F00BD77
      2A00AA683900221CDA002224DC00223FE900225EF300226AF8002261F5002555
      EF003274F2005E68B100E9E9E900000000000000000000000000B89B8E00FAD5
      C500FFFBF500FFF7F000FFFAF800B3C4D800A8E2EE009BF6FC0090ECF8008AED
      FD006D919D00AC5F6500A161680043212200191D20005DBCDE0097D7E40068B5
      6E008BBE78008A8C940095969900000000000000000000000000000000006289
      A0002297E60080A5C300FFDBB500E2C5B30076A2C4002273AD001F5883001744
      7C0026425E00215C68001F85D700238DE600208CDE001D8CE4001886D600295B
      63009B9B9B0000000000000000000000000000000000A4949000E4724E00E378
      5400E0704C00E98C6800F9AF870053A0D1006DCAF6006ECAF7005FB5E40057AB
      DA0074CDFA0044A1DB001F81C9003AA0E10048ACE800359DE0003E7DD700978C
      DD00FFF4E5005FA9D900399AD8008B8B8B000000000000000000929D8C004795
      03004897030048960300479403004793030095812100C17C2F00BD772A00BA72
      2600B66D2300846BAC003E52E4002352F0002264F600226AF8002268F8002A53
      E7005E63B300C4C4CA0000000000000000000000000000000000C89D8900FFED
      E200FFF9F300FFDFCD00F9D0BF00AFBED000B3EEF700A3FDFD0097F3FA0093F6
      FF0073CDD700765F6600BF6D7300794A4F00230A0A002F5B6B00A9DCEC00599B
      C900A5C2D400899199009D9D9E00000000000000000000000000B2B5B600338C
      C1002C99E300C2C3C300FFD0B000FFC1A000FFC9A500D0BBB00080A2BC002F5F
      88001F4B7C001E7FCC00339BEF003197E6003197E6003197E600339EF4002374
      B50073777B00BEBEBE00000000000000000000000000BD7A6800E7835E00E680
      5B00E37A5600E78B6600FCB88F0057A4D40071CBF90073CCFA006DC1EB0060B2
      DE002A8ACD00389BDC003B9DDE00369ADC003598DC0046AAE70041A6E4002E95
      DB00749FC30050A2D9003193D3008B8B8B000000000000000000929C8C004695
      030048960300479503004793030046910200947F2000BD772A00BA722600B66C
      2100B4691F00EBC79100F9E4BB00CCBDC8008481D600434CBF008887AE00D8D8
      D900EAEAEA0000000000000000000000000000000000B7B4B200D7A89000FFFE
      F800FFF8F100FFE6D700F6CDB80098ACC100A9D8EE00B2E7F200A8E0EF00A8E2
      F200AAEBFB00718C9B009B5B6300AD686D00512E3100120F12008FA6AC00C7D3
      DA00D5D7D700778EA000AEAEAF0000000000000000000000000081939E002B84
      C400658DB400EDE2D200FFE8CF00FDCEB500FECFB300FFD1AF00FFD3AA00707C
      8700145B9500339EEE003BA1F400399FF100399FF100399FF0003CA4F700309A
      E90050657300B8B8B800000000000000000000000000D2705300E98C6700E886
      6300E6835E00E98A6400C5B3A6004FA3D70079D2FE0065BFF00048A0D7002D86
      C5002F89C700409DD90048A8E40046A7E30042A3E3003FA1E00042A4E2004BAF
      E900349CDF003095DB00288ACF008B8B8B000000000000000000929D8C004694
      0300479403004793030046910200458F0200937E1F00BA722600B66D2100B367
      1C00B1651B00EBC79100FCE7BA00FCECC200FBEEC5009C8F8000EAEAEA000000
      00000000000000000000000000000000000000000000B0A29A00FBD3BD00FFFE
      FD00FFF5EF00FEECE500FEF1EB00CED5DA00B6C5CF00BFC9D300BFCAD300BBC8
      D100BBCCD600AABDC2007C5F6100B86B7200824F54002E171700242C2E00566F
      AA00546EAC007E888E00000000000000000000000000BFBFBF004C83A300947A
      8300F2A08100FEDDC900FEDAC400FFE4CD00FFE4CD00FFE5CA00F1D8BB004E69
      81001A6FAF0044B3FF0047AFFF0044AAFC0042A8FB0042A8FB0045ABFD003FAA
      FD0048667A00B3B3B3000000000000000000B8B5B400E3775200EB926C00E98F
      6A00E8896400EC946D00A2C0C5004EAEE20044A0DA0043A2DC005CBAEE0054B0
      E600459DD4003D94CB00449CD3004FABE30050AFE9004EAEE7004BAAE70048A8
      E4004EB0EA0048ACE9002287CD008F8F8F000000000000000000929C8C004693
      03004793030046910200458F0200448D0200927C1E00B66D2100B3671D00AF62
      1800AE611700EBC79100FCE7BA00FBEBC200FAEDC5009E908100EAEAEA000000
      000000000000000000000000000000000000BFBFBF00B5998900FFF1E300FFFF
      FF00FEEFEA00FCC9B900FCC6B400FFCBB500FFC8AE00FFC4A700FFC7A900FFC9
      AA00FFCAAA00FFE5C400BAAEA100865A63009C5E65005F3B3E0021110900201C
      5200433EB80079788300B9B9B9000000000000000000A3A9AD004988B100E095
      7B00FFD3BA00FED7C400FBBFA500FCC9B000FDD0B800FFE1C200C0BCAF002E59
      7F001D6398002C7CBB003391D80047B1FF004CB3FF004AB0FF004DB3FF0045B2
      FF003D637B00A5A5A5000000000000000000A7989400EC8D6700ED997300ED97
      7100E98E6800ED9D7600BDC5BF003695CD0056B3E90069C5F60065C1F30064C0
      F30062BEF1005BB4E70052A6D9004EA1D40056ACDE0059B5EA0056B6EC0056B4
      EB0054B3EA0049AEEB003985B900B3B3B3000000000000000000929C8C004591
      020046910200458F0200448D0200448B0100917A1C00B3681C00AF621800AC5E
      1400AC5D1400EBC79100FCE7BA00FBEBC100FAEDC5009E908100EAEAEA000000
      000000000000000000000000000000000000B7B3B100DEB89E00FFFEF800FFFF
      FF00FFF9F700FEF8F600FEF4F000FEF0EC00FEEEE900FEE5DA00FED8C500FDD1
      BC00FDC8AE00FFD9BF00F4E9DD008F666400B76D760092575D00492C2D00160E
      0A002B2B72004C4A9C00999999000000000000000000728D9C006C98B600FAB8
      9300FFEEE200FFEEE000FFDDC900FEDDC900FED9C300FFDDC000909CA3002857
      840027557C0031537900204B79002077B6003DA8F4004BB5FF0051BBFF0040A9
      F00026648C009F9F9F000000000000000000A8857C00F19E7900F0A07B00EF9E
      7900E98D6800F1B08800B7C5C200C3FFFF0075C4E4004AA4D9006AC4F5006DC8
      F7006AC5F60069C4F50067C2F30064BAE8005CAFDC005BAEDB0064BAE8005BBB
      F100429AD100776671009F9F9F00000000000000000000000000929C8C00448F
      0200458F0200448D0200438B01004389010090781B00B0631800AD5E1400AA5A
      1100AB5B1200EBC79100FCE7BA00FBEBC200FAEDC5009E908100EAEAEA000000
      000000000000000000000000000000000000AAA09900FEE4CB00FFFFFF00FFFB
      F900FED3C400FECFBE00FDD6C800FDD8CC00FDDDD200FDE0D500FEDBCA00FED9
      C500FEDCC700FFF2E000F6D4C5007E554C009A616B00BC7178006D4246002F1C
      190018141C003B3AA10064648000B3B3B300B9BBBB004B86A8002E61D800C0A6
      C300FFE5CD00FEDBCA00FEE7D600FFEAD800FFEBD800FFEED400909DA300295B
      8C002A5D8A002F5B86003D5A83002B537F002671A7002E89C8002E7FBF001463
      9D0044667A00B7B7B7000000000000000000C17F6D00F4AC8600F2A88200F1A5
      7F00E98C6600F6C29C009DCBCF0072B7CD0098CFE5007CC6E9003490CC0049A7
      DF0072CDFB0070CAF8006DC9F8006DC8F7006CC5F4006DC0EB004396CC007695
      A800CEBBA000C0715500A1A1A100000000000000000000000000929D8C00448D
      0200448D0200438B010043890100428701008F761A00AD5F1500B1641B00BD77
      2E00CE924800D49C5400DBA96700E2BB8100ECD09E00A0938400000000000000
      000000000000000000000000000000000000C7AE9C00F7ECDF00F9FDFF00FBF8
      F700FDEAE400FEE4DC00FFE0D600FFDBCE00FDD5C800FDD2C300FCCEBF00FCC4
      B200FDCBB300FFFAEE00DBAE9C00837D7A0067545900C67981009B5E64005431
      2F001B0F020023234E0042429F00949497009AA2A5003386CD003F62F400D9D2
      EC00FFE0CA00FCC5B000FCCEBA00FDD3BE00FED7C300FFEAD400DED3C2006C88
      9E00497898002F5E8300386491004E739F005B83AC004975A400245675000F60
      710079838800000000000000000000000000CB796200F6B69000F3AE8800F4AE
      8800E7876200F8DAB200F2E3BD0048C3E700D6ECF300EAFFFF00E4FFFF00C1ED
      F6004488B60058B6EC0076D0FD0076CFFC005BBEF40065A1C400D3A88C00DB8E
      6C00D8C6A800B46D5600A6A6A600000000000000000000000000929C8C00438B
      0100438B010043890100428701004185000083831F00C0843900D3995000DBA6
      5D00DDA96000DCA85F00D49C5400B38B5C00A6988900D7D6D500000000000000
      000000000000000000000000000000000000BDA49100C6B5AA00C1B5B000C1B3
      AE00C2B8B400C4BCBB00C5C7C900E2E9EB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFCF900FFFEF800B78A7A00AEADAD008283850095616500C77675007048
      63002721830003078F0031329F0097979B006E8E9E004990ED009E9FE800FFF4
      E600FFF1E400FFE9DC00FFECE100FEEADD00FEE1D000FFE9D700FFEDD800F3D7
      BF00E1CAB500C5C1B70061859C0044749C00437098005C7B9B00639A9C002F77
      8200A5A6A700000000000000000000000000D17C6100FABE9800F7B79100F7B5
      8F00E7886300F1C6A000FCE6BF00F3ECC700C5D4C900B6CED200AFD0E000A7D5
      ED00CDC4AD00CEC7B2005CA1CB0055A4D300B2877C00F1926800E79F7900D3BA
      9D00D8CAAC00A6655300ADADAD00000000000000000000000000929C8C004289
      0100438901004287010041850000418300006DA73100A6D06600AAC45F00B1B5
      5600A89C44009F8B7300C8C5C300E8E8E8000000000000000000000000000000
      000000000000000000000000000000000000C5B7AC00F4CFB600EBBCA400E4AB
      9400DF9F8A00D77A5F00B5705D00CFD4D600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF4EC0096776A00B7B7B700BBBBBB006B5B5A00A3759D007F72
      D8004D3A9C003B245D00383145009F9F9F0050A2CB0067ACF000DCD1E200FFE1
      CC00FDD0BD00FDDCCC00FDE2D200FFEADB00FFEEDE00FFEAD900FFE6D300FFE0
      CA00FFCCB100FFCCAF00F6D5BF00D0C8BF00CACDC600EDE3D60072AED6005171
      8500BEBEBE00000000000000000000000000D47B6000F6AE8700F9BB9500F9C0
      9900F9BF9800EF9A7500E7886300E6886300EA9B7500F2B89000F9D9AE00F7E6
      C000FEEDC500FDE8BF00FDE5BB00FBE1B800FDE4BC00FAE0BA00E6BA9600D5A2
      8300DACEB100905F5200B5B5B500000000000000000000000000929D8C004288
      0100428701004185000040830000408200006DA73100A6D36800A6D36800A6D3
      68007AAE4400D2D3D20000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0BFBF00DEDCD900FEFDFA00FFF1
      E500FFF4E700FACDBE00C57F6B00DCE1E300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFE5D80088736A00BCBCBC000000000093949C005047BA00B079
      9800A7635B00BB706D00725B5B00B1B1B10050A2CC0063C7F700C7DDE900FEE7
      DA00FFDBC800FFE1D100FFE0D100FFDAC800FFECDD00FFEEDE00FFE4D000FEDD
      CA00FEE1CF00FEE0CE00FFE1D100FFEBDC00FFFFF300DDE1E3003887BC00868C
      8F0000000000000000000000000000000000BBBABA00AA9A9600B2887D00D080
      6900DB806200E98F6900F4A78100F9BA9400F9BC9600F3AA8500EB936D00E786
      6100E58B6600EAA17C00F1C19B00F9DEB700FCEAC200FDE8C000E1CFAF00D6D1
      B400DECBAA0084645D00BABABA00000000000000000000000000929C8C004186
      0000418500004183000040820000408100006DA73100A5D26700A5D26700A5D2
      67007AAE4400D3D3D30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DAD9D700FCEA
      DD00FFEBD600F8D4C400C2918100DFE5E800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FCDBCE0085736C00BCBCBC00000000000000000069618900663E
      370067404300826A6D00AAA9A90000000000A2B0B900649AB90051A6D3007EC0
      E500B0D2E500D9E5EA00F8F3EF00FDF3EA00FFF5E700FFF3E400FFE6D300FFD0
      B700FECBB400FEDECC00FFEEE100FFF5EC00FFFBEE009CC6E20037729600ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      000000000000BDBBBA00AD9F9C00B28B8000CF826D00D97E6200E78B6600F1A2
      7C00F8BC9600F5B28C00EF9C7700E9896400E5836000E68E6900DDA18000E0C8
      A900E1BA9B00907F7B00BFBFBF00000000000000000000000000929C8C004084
      0000418300003F8200003C8100003D8902004D9B130068AA2D0074B0390081B7
      46006DA33700D7D7D70000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D5D2
      D000F8F0E800FBD9CB00C7998800DEE5E700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEE4D800816E6600B7B7B7000000000000000000AFAEB3008781
      8000A49C9D00BEBEBE0000000000000000000000000000000000A8B4BB00739E
      B600569AC1004C9AC7005CA1CB006AA9CF0078AED0006FA5C70087AEC600E4D7
      D200FFD9C400FFE1CF00FFE3D400FFFAF300F5EDE80061AAD8005E7583000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBEBE00B089
      8000F6B18A00F9BE9800F9BC9600F8BB9500F8BC9500F09A7500907B7600A592
      8E00C88F8000BABABA0000000000000000000000000000000000A7ADA2003D80
      06003B8602003E930400439F070045A4070045A6080043A007004B911C006C8B
      5600ABB2A600E9E9E90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CDCBCA00F1E2DA00D1A59000D6D6D600FFFEFC00FFFAF700FFF9F500FFF6
      F100FFF6F100FFE4D30092756800B4B4B4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AFB7BC009AADB8008AA8B90083A5B90084A4B7006597B400549C
      C70094C5E000CEE5EF00EFF3F500FFFBF800CFE2EF003A8BBA00939598000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B7B0
      AE00F0977100FCC8A000FDC9A200FCC7A000FCC59E00C66B5000AEAEAE000000
      0000000000000000000000000000000000000000000000000000E9E9E900DBDB
      DA00D3D4D100C5C8C300B7BDB300AFB6AA00A7B0A000BCC0B900E4E4E400EAEA
      EA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C5C4C400D0B4A500C8AA9700E7C6AE00E3BDA700DFB8A300DBB4
      9E00D8B09C00DBB09B00B0A09900BEBEBE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A8B5
      BC00769FB6005B97BA0061A2C80075B1D10064B2DC0066879A00BCBCBC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A9989400C98B7B00CD7F6800D8816500DB7C5C00A29C9A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000900000000100010000000000C00600000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00FF000000000000FFFE3FFC
      003F000000000000FFFC1FF0000F000000000000FFE007E00007000000000000
      FFC003C00003000000000000FFC003C00003000000000000FFC0038000010000
      00000000FF8001800001000000000000FF0180000000000000000000FC018000
      0000000000000000F00001000000000000000000E00003000000000000000000
      C00003000000000000000000C000030000000000000000008000070000000000
      0000000003001F00000000000000000003023F8000010000000000008007FF80
      0001000000000000C007FFC00003000000000000C007FFC00003000000000000
      E00FFFE00007000000000000F03FFFF0000F000000000000FC7FFFFC003F0000
      00000000FFFFFFFF00FF000000000000FFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFF
      FFFF87FFFFF8001FFFFFFFFFFFFF000000F0000FFF03FFC87031000000F0000F
      FF001FC06131000000F0000FFF0003C06103000000F0000FE10001C000030000
      00F0000FC00001C00003000000F0000FC00000C00003000000F0000FC0000080
      0001000000F0000FC00000000000000000F0000FC00000000000000000F0000F
      800000000000000000F0000F800000000000000000F8001F8000000000000000
      00FC7E3F800001800401000000FC7E3F800001C00203000000FC7E3F00007FE0
      0107000000FC7E3F8000FFF8009F000000FC3C3FC000FFFFE07F000000FC003F
      F800FFFFE03F800001FE007FFF80FFFFE03FFFFFFFFF00FFFFF1FFFFFFFFFFFF
      FFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFF00001FF0000FF
      007FC7FFFFF00001000000FF007F83FFFF100001000000FC001F81FFFF000001
      000000F8000F80FFFF000001000000E00003C07FFF800001000000C00001E03F
      FFC00001000000800000F01FFFE00001000000800000F81FFFF0000100000080
      0000FC1C1FF00001000000800000FE0007F00001000000800000FFC003F00001
      000000800000FFC001F00001000000800000FFC001F00001000000800000FF80
      00F00001000000C00001FF8000F0000100003FC00001FF8000F0000100003FE0
      0003FF8000F0000100003FFE003FFF8000F0000300003FFE003FFFC001F00007
      00007FFE003FFFC001F0000F0000FFFE007FFFE003F0001F0001FFFE00FFFFF0
      07F0003F0003FFFE01FFFFFC1FF0007FE00007E00003FFFFFFE00003E00007E0
      0003FFFFFFE00003E00007E00003FFFFFFE00003E00007E00003F9FF9FE00003
      E00007E00003F0FF0FE00003E00007E00003E07E07E00003E00007E00003E03C
      07E00003E00007E00003F0180FE00003E00007E00003F8001FE00003000000E0
      0003FC003FE00003600006E00003FE007FE00003600006E00003FF00FFE00003
      600006E00003FF00FFE00003000000E00003FE007FE00003E00007E00003FC00
      3FE00003E00007E00003F8001FE00003E00007E00003F0180FE00003E00007E0
      0003E03C07E00003E00007E00003E07E07E00003E00007E00007F0FF0FE00007
      E00007E0000FF9FF9FE0000FE00007E0001FFFFFFFE0001FE00007E0003FFFFF
      FFE0003FE00007FFFFFFFFFFFFFFFFFFFFFFFFE00003FFC1FFFFC1FFFFFFFFE0
      0003FF001FFF001FFFFFFFE00003FE0003FE0001800001E00003F80000F80000
      000000E00003E00000E00000000000E00003C00000C00000000000E000030000
      00000000000000E00003000000000000000000E00003000000000000000000E0
      0003000001000001000000E00003000000000003000000E00003000000000001
      000000E00003000000000001000000E00003E00000800001000000E00003F000
      00C00003000000E00003E00000C00007000000E00003E00000E0000F000000E0
      0003800000F01007000000E00007800000F00007000000E0000F000000F00007
      800001E0001F000000F00807FFFFFFE0003F040071F00807FFFFFFE0007F0600
      FFF0180FFFFFFFE000FF0F81FFF83C1FFF03FFFFC00FFFFC3FFFFFFFFE0003FF
      8001FFF01FFFFE0FFE0001FF0000F3C007FFF003C00001FF0000F00001FFC001
      C00001FF0000E00000FF0001C00001F18000E00000FC0001C00001F08000C000
      00F00001C00001E00001C00000C00001C00001E00003800000C00001C00001E0
      0007800000C00003C00001C00003800000C00007800001C00003800000C0001F
      800003800003000000C0001F000001800003000000C0001F0000018000030000
      01C0001F000000000003000001C0003F000000000007000001C0003F00000000
      0007000001C000FF000000000007000001C003FF00008000000F000001C003FF
      C000C100000FF80001C003FFE000C3C0001FFFC003C003FFF000FFF8001FFFE0
      1FC00FFFF800FFFFE01FFFF03FFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object AppEvent: TApplicationEvents
    OnActivate = AppEventActivate
    Left = 460
    Top = 144
  end
  object popProdukt: TTBXPopupMenu
    Images = ImageList16
    Left = 712
    Top = 152
    object TBXItem114: TTBXItem
      Action = acNy
    end
    object TBXItem44: TTBXItem
      Action = acEndre
    end
    object TBXSeparatorItem40: TTBXSeparatorItem
    end
    object TBXItem47: TTBXItem
      Action = acPrint
    end
    object TBXItem45: TTBXItem
      Action = acPreview
    end
    object TBXItem50: TTBXItem
      Action = acProdLagre
    end
    object TBXSeparatorItem14: TTBXSeparatorItem
    end
    object TBXItem61: TTBXItem
      Action = acOppdater
    end
    object TBXSeparatorItem15: TTBXSeparatorItem
    end
    object TBXItem46: TTBXItem
      Action = acSok
    end
    object TBXItem64: TTBXItem
      Action = acPrisHistorikk
    end
    object TBXSeparatorItem22: TTBXSeparatorItem
    end
    object TBXSubmenuItem12: TTBXSubmenuItem
      Caption = 'Send'
      object TBXItem48: TTBXItem
        Action = acProdEmail
      end
      object TBXItem49: TTBXItem
        Action = acProdEmailKunde
      end
    end
  end
  object popFaktura: TTBXPopupMenu
    Images = ImageList16
    Left = 648
    Top = 152
    object TBXItem101: TTBXItem
      Action = acNy
    end
    object TBXItem51: TTBXItem
      Action = acEndre
    end
    object TBXSeparatorItem21: TTBXSeparatorItem
    end
    object TBXItem52: TTBXItem
      Action = acPrint
    end
    object TBXItem54: TTBXItem
      Action = acPreview
    end
    object TBXItem55: TTBXItem
      Action = acFakturaLagre
    end
    object TBXSeparatorItem16: TTBXSeparatorItem
    end
    object TBXItem62: TTBXItem
      Action = acOppdater
    end
    object TBXItem63: TTBXItem
      Action = acFakturaStatus
    end
    object TBXSeparatorItem17: TTBXSeparatorItem
    end
    object TBXItem56: TTBXItem
      Action = acBetaling
    end
    object TBXItem99: TTBXItem
      Action = acInnbetalinger
    end
    object TBXSeparatorItem37: TTBXSeparatorItem
    end
    object TBXSubmenuItem13: TTBXSubmenuItem
      Caption = 'Send'
      object TBXItem53: TTBXItem
        Action = acFakturaEmailKunde
      end
    end
    object tbxSubRegnskap: TTBXSubmenuItem
      Caption = 'Regnskap'
      object TBXItem96: TTBXItem
        Action = acGenFakturaBilag
      end
      object TBXItem97: TTBXItem
        Action = acGenBetalingBilag
      end
    end
  end
  object popPurring: TTBXPopupMenu
    Images = ImageList16
    Left = 648
    Top = 216
    object TBXItem59: TTBXItem
      Action = acPreview
    end
    object TBXItem58: TTBXItem
      Action = acBetaling
    end
    object TBXSeparatorItem20: TTBXSeparatorItem
    end
    object TBXItem83: TTBXItem
      Action = acFakturaStatus
    end
    object TBXSeparatorItem31: TTBXSeparatorItem
    end
    object TBXItem60: TTBXItem
      Action = acOppdater
    end
  end
  object popKunde: TTBXPopupMenu
    Images = ImageList16
    Left = 680
    Top = 152
    object TBXItem112: TTBXItem
      Action = acNy
    end
    object TBXItem67: TTBXItem
      Action = acEndre
    end
    object TBXSeparatorItem23: TTBXSeparatorItem
    end
    object TBXItem68: TTBXItem
      Action = acOppdater
    end
    object TBXSeparatorItem24: TTBXSeparatorItem
    end
    object TBXSubmenuItem14: TTBXSubmenuItem
      Caption = 'Online'
      object TBXItem65: TTBXItem
        Action = acPureHelp
      end
      object TBXItem66: TTBXItem
        Action = acBrReg
      end
    end
  end
  object popLeverandor: TTBXPopupMenu
    Images = ImageList16
    Left = 680
    Top = 184
    object TBXItem113: TTBXItem
      Action = acNy
    end
    object TBXItem72: TTBXItem
      Action = acEndre
    end
    object TBXSeparatorItem26: TTBXSeparatorItem
    end
    object TBXItem73: TTBXItem
      Action = acOppdater
    end
    object TBXSeparatorItem27: TTBXSeparatorItem
    end
    object TBXSubmenuItem16: TTBXSubmenuItem
      Caption = 'Online'
      object TBXItem75: TTBXItem
        Action = acPureHelp
      end
      object TBXItem74: TTBXItem
        Action = acBrReg
      end
    end
  end
  object popBilag: TTBXPopupMenu
    Images = ImageList16
    OnPopup = popBilagPopup
    Left = 744
    Top = 152
    object TBXItem115: TTBXItem
      Action = acNy
    end
    object TBXItem89: TTBXItem
      Action = acEndre
    end
    object TBXItem91: TTBXItem
      Action = acGodkjenn
    end
    object TBXSeparatorItem36: TTBXSeparatorItem
    end
    object TBXItem92: TTBXItem
      Action = acPreview
    end
    object TBXItem93: TTBXItem
      Action = acPrint
    end
    object TBXSubmenuItem22: TTBXSubmenuItem
      Caption = 'Dokument'
      object TBXItem116: TTBXItem
        Action = acBilagOpenDoc
      end
      object TBXSeparatorItem45: TTBXSeparatorItem
      end
      object TBXItem117: TTBXItem
        Action = acBilagLinkDoc
      end
      object TBXItem118: TTBXItem
        Action = acBilagSlettDoc
      end
    end
    object TBXSeparatorItem38: TTBXSeparatorItem
    end
    object TBXItem90: TTBXItem
      Action = acOppdater
    end
    object TBXSeparatorItem39: TTBXSeparatorItem
    end
    object TBXItem94: TTBXItem
      Action = acSok
    end
    object TBXItem95: TTBXItem
      Action = acKontoOppslag
    end
  end
  object popOrdre: TTBXPopupMenu
    Images = ImageList16
    Left = 648
    Top = 184
    object TBXItem88: TTBXItem
      Action = acNy
    end
    object TBXItem102: TTBXItem
      Action = acEndre
    end
    object TBXSeparatorItem34: TTBXSeparatorItem
    end
    object TBXItem105: TTBXItem
      Action = acPrint
    end
    object TBXItem106: TTBXItem
      Action = acPreview
    end
    object TBXItem107: TTBXItem
      Action = acOrdreLagre
    end
    object TBXSeparatorItem35: TTBXSeparatorItem
    end
    object TBXItem103: TTBXItem
      Action = acOppdater
    end
    object TBXSeparatorItem43: TTBXSeparatorItem
    end
    object TBXItem111: TTBXItem
      Action = acGenOrdreFaktura
    end
    object TBXSubmenuItem21: TTBXSubmenuItem
      Caption = 'Send'
      object TBXItem104: TTBXItem
        Action = acOrdreEmailKunde
      end
    end
  end
  object popAbo: TTBXPopupMenu
    Images = ImageList16
    Left = 648
    Top = 248
    object TBXItem110: TTBXItem
      Action = acNy
    end
    object TBXItem109: TTBXItem
      Action = acEndre
    end
    object TBXSeparatorItem44: TTBXSeparatorItem
    end
    object TBXItem108: TTBXItem
      Action = acOppdater
    end
  end
end
