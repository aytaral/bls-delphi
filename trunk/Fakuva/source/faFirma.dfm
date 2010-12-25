object FrmFirma: TFrmFirma
  Left = 329
  Top = 255
  ActiveControl = DBEdit1
  BorderStyle = bsDialog
  Caption = 'Firmaopplysninger'
  ClientHeight = 436
  ClientWidth = 722
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  object Button1: TButton
    Left = 528
    Top = 404
    Width = 89
    Height = 25
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object Button2: TButton
    Left = 624
    Top = 404
    Width = 89
    Height = 25
    Cancel = True
    Caption = '&Avbryt'
    ModalResult = 2
    TabOrder = 1
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 705
    Height = 390
    ActivePage = tsFirma
    TabOrder = 2
    object tsFirma: TTabSheet
      Caption = 'Firmaopplysninger'
      object Label3: TLabel
        Left = 12
        Top = 8
        Width = 53
        Height = 14
        Caption = 'Firmanavn:'
      end
      object Label4: TLabel
        Left = 12
        Top = 48
        Width = 45
        Height = 14
        Caption = 'Adresse:'
      end
      object Label5: TLabel
        Left = 12
        Top = 88
        Width = 34
        Height = 14
        Caption = 'Postnr:'
      end
      object Label6: TLabel
        Left = 68
        Top = 88
        Width = 45
        Height = 14
        Caption = 'Poststed:'
      end
      object Label8: TLabel
        Left = 12
        Top = 136
        Width = 39
        Height = 14
        Caption = 'Telefon:'
      end
      object Label9: TLabel
        Left = 108
        Top = 136
        Width = 39
        Height = 14
        Caption = 'Telefax:'
      end
      object Label10: TLabel
        Left = 204
        Top = 136
        Width = 27
        Height = 14
        Caption = 'Mobil:'
      end
      object Label17: TLabel
        Left = 156
        Top = 268
        Width = 77
        Height = 14
        Caption = 'Organisasjonnr:'
      end
      object Label16: TLabel
        Left = 12
        Top = 268
        Width = 63
        Height = 14
        Caption = 'Bankkontonr:'
      end
      object Label50: TLabel
        Left = 12
        Top = 308
        Width = 57
        Height = 14
        Caption = 'Purregebyr:'
      end
      object Label39: TLabel
        Left = 84
        Top = 308
        Width = 65
        Height = 14
        Caption = 'Morarente %:'
      end
      object Label11: TLabel
        Left = 12
        Top = 180
        Width = 34
        Height = 14
        Caption = 'E-post:'
      end
      object Label12: TLabel
        Left = 12
        Top = 221
        Width = 65
        Height = 14
        Caption = 'Webadresse:'
      end
      object Label76: TLabel
        Left = 308
        Top = 164
        Width = 245
        Height = 14
        Caption = 'Firmalogo (Dobbeltklikk eller h'#248'yreklikk for '#229' endre):'
      end
      object Label48: TLabel
        Left = 308
        Top = 80
        Width = 122
        Height = 14
        Caption = 'Standardtekst p'#229' purring:'
      end
      object Label52: TLabel
        Left = 308
        Top = 8
        Width = 122
        Height = 14
        Caption = 'Standardtekst p'#229' faktura:'
      end
      object DBEdit1: TDBEdit
        Left = 12
        Top = 24
        Width = 281
        Height = 22
        DataField = 'Firma'
        DataSource = DsFirma
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 12
        Top = 64
        Width = 281
        Height = 22
        DataField = 'Adresse'
        DataSource = DsFirma
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 12
        Top = 104
        Width = 49
        Height = 22
        DataField = 'Postnr'
        DataSource = DsFirma
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 68
        Top = 104
        Width = 197
        Height = 22
        TabStop = False
        Color = clBtnFace
        DataField = 'PostSted'
        DataSource = DsFirma
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 12
        Top = 152
        Width = 89
        Height = 22
        DataField = 'Telefon'
        DataSource = DsFirma
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 108
        Top = 152
        Width = 89
        Height = 22
        DataField = 'Telefax'
        DataSource = DsFirma
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 204
        Top = 152
        Width = 89
        Height = 22
        DataField = 'Mobil'
        DataSource = DsFirma
        TabOrder = 7
      end
      object DBEdit10: TDBEdit
        Left = 156
        Top = 284
        Width = 137
        Height = 22
        DataField = 'Orgnr'
        DataSource = DsFirma
        TabOrder = 11
      end
      object DBEdit8: TDBEdit
        Left = 12
        Top = 284
        Width = 137
        Height = 22
        DataField = 'Bankkontonr'
        DataSource = DsFirma
        TabOrder = 10
      end
      object DBEdit13: TDBEdit
        Left = 12
        Top = 324
        Width = 65
        Height = 22
        DataField = 'Purregebyr'
        DataSource = DsFirma
        TabOrder = 12
      end
      object DBEdit9: TDBEdit
        Left = 84
        Top = 324
        Width = 65
        Height = 22
        DataField = 'Purrerente'
        DataSource = DsFirma
        MaxLength = 4
        TabOrder = 13
      end
      object DBEdit11: TDBEdit
        Left = 12
        Top = 196
        Width = 281
        Height = 22
        DataField = 'Epost'
        DataSource = DsFirma
        TabOrder = 8
      end
      object DBEdit12: TDBEdit
        Left = 12
        Top = 236
        Width = 281
        Height = 22
        DataField = 'Url'
        DataSource = DsFirma
        TabOrder = 9
      end
      object Firmalogo: TDBImage
        Left = 308
        Top = 180
        Width = 377
        Height = 166
        Ctl3D = True
        DataField = 'Logo'
        DataSource = DsFirma
        ParentCtl3D = False
        PopupMenu = PopLogo
        TabOrder = 16
        TabStop = False
        OnDblClick = FirmalogoDblClick
      end
      object DBMemo2: TDBMemo
        Left = 308
        Top = 96
        Width = 377
        Height = 49
        DataField = 'PurreTekst'
        DataSource = DsFirma
        ScrollBars = ssVertical
        TabOrder = 15
      end
      object DBMemo3: TDBMemo
        Left = 308
        Top = 24
        Width = 377
        Height = 49
        DataField = 'FakturaTekst'
        DataSource = DsFirma
        ScrollBars = ssVertical
        TabOrder = 14
      end
      object BtnPostnr: TButton
        Left = 268
        Top = 104
        Width = 25
        Height = 22
        Caption = '...'
        TabOrder = 4
        OnClick = BtnPostnrClick
      end
    end
  end
  object TblFirma: TTable
    DatabaseName = 'FakuvaDir'
    TableName = 'Firma.DB'
    Left = 244
    Top = 352
    object TblFirmaOrgnr: TStringField
      FieldName = 'Orgnr'
      Size = 35
    end
    object TblFirmaFirma: TStringField
      FieldName = 'Firma'
      Size = 100
    end
    object TblFirmaAdresse: TStringField
      FieldName = 'Adresse'
      Size = 150
    end
    object TblFirmaTelefon: TStringField
      FieldName = 'Telefon'
      Size = 25
    end
    object TblFirmaTelefax: TStringField
      FieldName = 'Telefax'
      Size = 25
    end
    object TblFirmaMobil: TStringField
      FieldName = 'Mobil'
      Size = 25
    end
    object TblFirmaEpost: TStringField
      FieldName = 'Epost'
      Size = 50
    end
    object TblFirmaUrl: TStringField
      FieldName = 'Url'
      Size = 100
    end
    object TblFirmaBankkontonr: TStringField
      FieldName = 'Bankkontonr'
    end
    object TblFirmaFakturaTekst: TBlobField
      FieldName = 'FakturaTekst'
      BlobType = ftFmtMemo
      Size = 1
    end
    object TblFirmaPurreTekst: TBlobField
      FieldName = 'PurreTekst'
      BlobType = ftFmtMemo
      Size = 1
    end
    object TblFirmaPurregebyr: TCurrencyField
      FieldName = 'Purregebyr'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
    object TblFirmaLogo: TGraphicField
      FieldName = 'Logo'
      BlobType = ftGraphic
    end
    object TblFirmaFakturanr: TFloatField
      FieldName = 'Fakturanr'
    end
    object TblFirmaKontantnr: TFloatField
      FieldName = 'Kontantnr'
    end
    object TblFirmaKundenr: TFloatField
      FieldName = 'Kundenr'
    end
    object TblFirmaVarenr: TFloatField
      FieldName = 'Varenr'
    end
    object TblFirmaLeverandornr: TFloatField
      FieldName = 'Leverandornr'
    end
    object TblFirmaPassord: TStringField
      FieldName = 'Passord'
      Size = 15
    end
    object TblFirmaPass: TBooleanField
      FieldName = 'Pass'
    end
    object TblFirmaPostnr: TStringField
      FieldName = 'Postnr'
      Size = 6
    end
    object TblFirmaPurrerente: TFloatField
      FieldName = 'Purrerente'
      EditFormat = '0.00'
      MaxValue = 100.000000000000000000
    end
    object TblFirmaOrdrenr: TFloatField
      FieldName = 'Ordrenr'
    end
    object TblFirmaBestillingnr: TFloatField
      FieldName = 'Bestillingnr'
    end
    object TblFirmaInkassotekst: TMemoField
      FieldName = 'Inkassotekst'
      BlobType = ftMemo
      Size = 1
    end
    object TblFirmaPoststed: TStringField
      FieldKind = fkLookup
      FieldName = 'Poststed'
      LookupDataSet = TblPost
      LookupKeyFields = 'Postnr'
      LookupResultField = 'Poststed'
      KeyFields = 'Postnr'
      Size = 30
      Lookup = True
    end
  end
  object DsFirma: TDataSource
    DataSet = TblFirma
    Left = 276
    Top = 352
  end
  object TblPost: TTable
    DatabaseName = 'FakuvaDir'
    TableName = 'Postadr.DB'
    Left = 244
    Top = 385
  end
  object OpenPic: TOpenPictureDialog
    DefaultExt = '*.bmp'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Hent Firmalogo'
    Left = 276
    Top = 385
  end
  object PopLogo: TPopupActionBarEx
    Left = 308
    Top = 352
    object Settinnbilde1: TMenuItem
      Caption = 'Sett inn bilde fra fil'
      OnClick = Settinnbilde1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Slettbilde1: TMenuItem
      Caption = 'Slett eksisterende bilde'
      OnClick = Slettbilde1Click
    end
  end
end
