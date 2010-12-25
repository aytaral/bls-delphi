object FrmSalgstall: TFrmSalgstall
  Left = 472
  Top = 275
  BorderStyle = bsDialog
  Caption = 'Omsetningstall'
  ClientHeight = 376
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel5: TBevel
    Left = 8
    Top = 80
    Width = 433
    Height = 257
    Style = bsRaised
  end
  object Label1: TLabel
    Left = 11
    Top = 4
    Width = 182
    Height = 32
    AutoSize = False
    Caption = 'Omsetningstall'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 16
    Top = 48
    Width = 65
    Height = 13
    Caption = 'I perioden fra:'
  end
  object Label14: TLabel
    Left = 216
    Top = 48
    Width = 10
    Height = 13
    Caption = 'til:'
  end
  object Label17: TLabel
    Left = 24
    Top = 96
    Width = 258
    Height = 14
    Caption = 'Samlet omsetning innenfor og utenfor avgiftsomr'#229'det:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 24
    Top = 192
    Width = 44
    Height = 14
    Caption = 'Rabatter:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 128
    Width = 72
    Height = 14
    Caption = 'Merverdiavgift:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = 24
    Top = 148
    Width = 401
    Height = 9
    Shape = bsTopLine
  end
  object Label3: TLabel
    Left = 24
    Top = 152
    Width = 78
    Height = 14
    Caption = 'Total omsetning:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Bevel3: TBevel
    Left = 24
    Top = 170
    Width = 401
    Height = 9
    Shape = bsTopLine
  end
  object Label6: TLabel
    Left = 24
    Top = 224
    Width = 84
    Height = 14
    Caption = 'Sum kreditnotaer:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 24
    Top = 240
    Width = 138
    Height = 14
    Caption = 'Sum fakturaer betalt kontant:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 272
    Width = 87
    Height = 14
    Caption = 'Utest'#229'ende bel'#248'p:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 24
    Top = 256
    Width = 72
    Height = 14
    Caption = 'Innbetalt bel'#248'p:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object InnbetLbl: TLabel
    Left = 400
    Top = 256
    Width = 21
    Height = 14
    Alignment = taRightJustify
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object UteLbl: TLabel
    Left = 400
    Top = 272
    Width = 21
    Height = 14
    Alignment = taRightJustify
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object KontantLbl: TLabel
    Left = 400
    Top = 240
    Width = 21
    Height = 14
    Alignment = taRightJustify
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object KredittLbl: TLabel
    Left = 400
    Top = 224
    Width = 21
    Height = 14
    Alignment = taRightJustify
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object TotalLbl: TLabel
    Left = 400
    Top = 152
    Width = 21
    Height = 14
    Alignment = taRightJustify
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MomsLbl: TLabel
    Left = 400
    Top = 128
    Width = 21
    Height = 14
    Alignment = taRightJustify
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RabattLbl: TLabel
    Left = 400
    Top = 192
    Width = 21
    Height = 14
    Alignment = taRightJustify
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EksLbl: TLabel
    Left = 400
    Top = 96
    Width = 21
    Height = 14
    Alignment = taRightJustify
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel4: TBevel
    Left = 24
    Top = 300
    Width = 401
    Height = 9
    Shape = bsTopLine
  end
  object Label8: TLabel
    Left = 24
    Top = 312
    Width = 139
    Height = 14
    Caption = 'Antall fakturaer for perioden:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object AntFakturaLbl: TLabel
    Left = 415
    Top = 312
    Width = 6
    Height = 14
    Alignment = taRightJustify
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 13
    Top = 5
    Width = 180
    Height = 32
    AutoSize = False
    Caption = 'Omsetningstall'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 24
    Top = 208
    Width = 217
    Height = 13
    Caption = 'Renter og gebyrer p'#229' purringer (fritatt for mva):'
  end
  object RenteLbl: TLabel
    Left = 400
    Top = 208
    Width = 21
    Height = 14
    Alignment = taRightJustify
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 24
    Top = 112
    Width = 197
    Height = 14
    Caption = 'Herav omsetning utenfor avgiftsomr'#229'det:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object MvaFriLbl: TLabel
    Left = 400
    Top = 112
    Width = 21
    Height = 14
    Alignment = taRightJustify
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object PStart: TDateTimePicker
    Left = 96
    Top = 44
    Width = 105
    Height = 22
    CalAlignment = dtaRight
    Date = 36256.915491550920000000
    Time = 36256.915491550920000000
    TabOrder = 0
  end
  object PSlutt: TDateTimePicker
    Left = 240
    Top = 44
    Width = 105
    Height = 22
    CalAlignment = dtaRight
    Date = 36256.915518865740000000
    Time = 36256.915518865740000000
    TabOrder = 1
  end
  object OkBtn: TButton
    Left = 356
    Top = 344
    Width = 85
    Height = 25
    Cancel = True
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object PrintBtn: TButton
    Left = 266
    Top = 344
    Width = 85
    Height = 25
    Caption = '&Skriv ut'
    TabOrder = 3
    OnClick = PrintBtnClick
  end
  object OppdaterBtn: TButton
    Left = 360
    Top = 43
    Width = 81
    Height = 25
    Caption = '&Oppdater'
    TabOrder = 4
    OnClick = OppdaterBtnClick
  end
  object CbListe: TCheckBox
    Left = 16
    Top = 344
    Width = 133
    Height = 17
    Caption = 'Skriv ut fakturaliste'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object BtnEksport: TButton
    Left = 176
    Top = 344
    Width = 85
    Height = 25
    Caption = 'Eksport'
    TabOrder = 6
    OnClick = BtnEksportClick
  end
  object TblFaktura: TTable
    DatabaseName = 'FakuvaDir'
    IndexFieldNames = 'FakturaDato'
    TableName = 'Faktura.DB'
    Left = 416
    Top = 8
    object TblFakturaIdFaktura: TAutoIncField
      FieldName = 'IdFaktura'
      ReadOnly = True
    end
    object TblFakturaFakturanr: TFloatField
      FieldName = 'Fakturanr'
    end
    object TblFakturaIdKunde: TIntegerField
      FieldName = 'IdKunde'
    end
    object TblFakturaFakturaDato: TDateField
      FieldName = 'FakturaDato'
    end
    object TblFakturaForfallsDato: TDateField
      FieldName = 'ForfallsDato'
    end
    object TblFakturaBetalt: TStringField
      FieldName = 'Betalt'
      Size = 7
    end
    object TblFakturaStatus: TStringField
      FieldName = 'Status'
      Size = 15
    end
    object TblFakturaDRef: TStringField
      FieldName = 'DRef'
      Size = 75
    end
    object TblFakturaVRef: TStringField
      FieldName = 'VRef'
      Size = 75
    end
    object TblFakturaFakturatekst: TBlobField
      FieldName = 'Fakturatekst'
      BlobType = ftFmtMemo
      Size = 1
    end
    object TblFakturaOrdrenr: TStringField
      FieldName = 'Ordrenr'
      Size = 25
    end
    object TblFakturaPakkenr: TStringField
      FieldName = 'Pakkenr'
      Size = 25
    end
    object TblFakturaEks: TCurrencyField
      FieldName = 'Eks'
      DisplayFormat = '#,##0.00'
      currency = False
    end
    object TblFakturaRabatt: TCurrencyField
      FieldName = 'Rabatt'
      DisplayFormat = '#,##0.00'
      currency = False
    end
    object TblFakturaMVA: TCurrencyField
      FieldName = 'MVA'
      DisplayFormat = '#,##0.00'
      currency = False
    end
    object TblFakturaTotal: TCurrencyField
      FieldName = 'Total'
      DisplayFormat = '#,##0.00'
      currency = False
    end
    object TblFakturaPurretekst: TBooleanField
      FieldName = 'Purretekst'
    end
    object TblFakturaPurredato: TDateField
      FieldName = 'Purredato'
    end
    object TblFakturaPurregebyr: TCurrencyField
      FieldName = 'Purregebyr'
      DisplayFormat = '#,##0.00'
      currency = False
    end
    object TblFakturaPurretotal: TCurrencyField
      FieldName = 'Purretotal'
      DisplayFormat = '#,##0.00'
      currency = False
    end
    object TblFakturaBetaltdato: TDateField
      FieldName = 'Betaltdato'
    end
    object TblFakturaPurrerenter: TCurrencyField
      FieldName = 'Purrerenter'
      DisplayFormat = '#,##0.00'
      currency = False
    end
    object TblFakturaGodkjent: TBooleanField
      FieldName = 'Godkjent'
    end
    object TblFakturaKunde: TStringField
      FieldKind = fkLookup
      FieldName = 'Kunde'
      LookupDataSet = Dm.KundeDB
      LookupKeyFields = 'IdKunde'
      LookupResultField = 'Kunde'
      KeyFields = 'IdKunde'
      Size = 100
      Lookup = True
    end
    object TblFakturaKundenr: TFloatField
      FieldKind = fkLookup
      FieldName = 'Kundenr'
      LookupDataSet = Dm.KundeDB
      LookupKeyFields = 'IdKunde'
      LookupResultField = 'Kundenr'
      KeyFields = 'IdKunde'
      Lookup = True
    end
    object TblFakturaKundeadr: TStringField
      FieldKind = fkLookup
      FieldName = 'Kundeadr'
      LookupDataSet = Dm.KundeDB
      LookupKeyFields = 'IdKunde'
      LookupResultField = 'Adresse'
      KeyFields = 'IdKunde'
      Size = 100
      Lookup = True
    end
    object TblFakturaKPostnr: TStringField
      FieldKind = fkLookup
      FieldName = 'KPostnr'
      LookupDataSet = Dm.KundeDB
      LookupKeyFields = 'IdKunde'
      LookupResultField = 'Postnr'
      KeyFields = 'IdKunde'
      Size = 6
      Lookup = True
    end
    object TblFakturaKPoststed: TStringField
      FieldKind = fkLookup
      FieldName = 'KPoststed'
      LookupDataSet = Dm.KundeDB
      LookupKeyFields = 'IdKunde'
      LookupResultField = 'Poststed'
      KeyFields = 'IdKunde'
      Size = 30
      Lookup = True
    end
  end
end
