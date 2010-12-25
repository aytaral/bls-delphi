object FrmPostBeregning: TFrmPostBeregning
  Left = 364
  Top = 209
  BorderStyle = bsDialog
  Caption = 'Postens Pakkelapper'
  ClientHeight = 432
  ClientWidth = 621
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
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 605
    Height = 49
    TabOrder = 0
    object Label8: TLabel
      Left = 12
      Top = 16
      Width = 31
      Height = 14
      Caption = 'Pakke:'
    end
    object Label9: TLabel
      Left = 208
      Top = 16
      Width = 25
      Height = 14
      Caption = 'Dato:'
    end
    object Label10: TLabel
      Left = 336
      Top = 16
      Width = 52
      Height = 14
      Caption = 'Pakketype:'
    end
    object EditID: TEdit
      Left = 52
      Top = 12
      Width = 23
      Height = 22
      TabStop = False
      Color = clBtnFace
      TabOrder = 3
    end
    object EditNR: TEdit
      Left = 76
      Top = 12
      Width = 65
      Height = 22
      TabStop = False
      Color = clBtnFace
      TabOrder = 4
    end
    object EditNO: TEdit
      Left = 142
      Top = 12
      Width = 23
      Height = 22
      TabStop = False
      Color = clBtnFace
      TabOrder = 5
    end
    object EditDate: TDateTimePicker
      Left = 240
      Top = 12
      Width = 85
      Height = 22
      Date = 37803.870843576390000000
      Time = 37803.870843576390000000
      DateMode = dmUpDown
      TabOrder = 1
      OnChange = EditDateChange
    end
    object CbType: TComboBox
      Left = 392
      Top = 12
      Width = 201
      Height = 22
      Style = csDropDownList
      ItemHeight = 14
      TabOrder = 2
      OnChange = CbTypeChange
      Items.Strings = (
        'Bedriftspakke D'#248'r-D'#248'r'
        'Bedriftspakke Express - Over natten'
        'Bedriftspakke Postkontor'
        'Servicepakke')
    end
    object BtnPakkenr: TButton
      Left = 168
      Top = 12
      Width = 21
      Height = 22
      Caption = '...'
      TabOrder = 0
      OnClick = BtnPakkenrClick
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 64
    Width = 605
    Height = 77
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 329
      Height = 55
      Caption = 'Volum:'
      TabOrder = 0
      object Label11: TLabel
        Left = 12
        Top = 24
        Width = 10
        Height = 14
        Caption = 'H:'
      end
      object Label12: TLabel
        Left = 64
        Top = 24
        Width = 10
        Height = 14
        Caption = 'B:'
      end
      object Label13: TLabel
        Left = 116
        Top = 24
        Width = 10
        Height = 14
        Caption = 'D:'
      end
      object Label14: TLabel
        Left = 192
        Top = 24
        Width = 33
        Height = 14
        Caption = 'Volum:'
      end
      object Label15: TLabel
        Left = 300
        Top = 24
        Width = 14
        Height = 14
        Caption = 'dm'
      end
      object Label16: TLabel
        Left = 316
        Top = 24
        Width = 4
        Height = 7
        Caption = '3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 165
        Top = 24
        Width = 14
        Height = 14
        Caption = 'cm'
      end
      object DBEdit12: TDBEdit
        Left = 24
        Top = 20
        Width = 33
        Height = 22
        DataField = 'Hoyde'
        DataSource = DsPost
        TabOrder = 0
      end
      object DBEdit13: TDBEdit
        Left = 76
        Top = 20
        Width = 33
        Height = 22
        DataField = 'Bredde'
        DataSource = DsPost
        TabOrder = 1
      end
      object DBEdit14: TDBEdit
        Left = 128
        Top = 20
        Width = 33
        Height = 22
        DataField = 'Dybde'
        DataSource = DsPost
        TabOrder = 2
      end
      object DBEdit15: TDBEdit
        Left = 232
        Top = 20
        Width = 61
        Height = 22
        DataField = 'Volum'
        DataSource = DsPost
        TabOrder = 3
      end
    end
    object GroupBox2: TGroupBox
      Left = 344
      Top = 8
      Width = 121
      Height = 55
      Caption = 'Vekt:'
      TabOrder = 1
      object Label17: TLabel
        Left = 12
        Top = 24
        Width = 25
        Height = 14
        Caption = 'Vekt:'
      end
      object Label18: TLabel
        Left = 98
        Top = 24
        Width = 11
        Height = 14
        Caption = 'kg'
      end
      object DBEdit11: TDBEdit
        Left = 44
        Top = 20
        Width = 49
        Height = 22
        DataField = 'Vekt'
        DataSource = DsPost
        TabOrder = 0
      end
    end
    object GroupBox3: TGroupBox
      Left = 472
      Top = 8
      Width = 125
      Height = 55
      Caption = 'Beregnet volumvekt:'
      TabOrder = 2
      object DBEdit1: TDBEdit
        Left = 16
        Top = 20
        Width = 97
        Height = 22
        TabStop = False
        Color = clBtnFace
        DataField = 'VolumVekt'
        DataSource = DsPost
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object Panel3: TPanel
    Left = 8
    Top = 148
    Width = 605
    Height = 245
    TabOrder = 2
    object GroupBox4: TGroupBox
      Left = 8
      Top = 8
      Width = 389
      Height = 105
      Caption = 'Mottaker:'
      TabOrder = 0
      object DBEdit2: TDBEdit
        Left = 14
        Top = 20
        Width = 359
        Height = 22
        DataField = 'Kunde'
        DataSource = DsPost
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 14
        Top = 44
        Width = 359
        Height = 22
        DataField = 'Postboks'
        DataSource = DsPost
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 14
        Top = 68
        Width = 57
        Height = 22
        DataField = 'FPostnr'
        DataSource = DsPost
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 73
        Top = 68
        Width = 300
        Height = 22
        DataField = 'FPoststed'
        DataSource = DsPost
        TabOrder = 3
      end
    end
    object GroupBox5: TGroupBox
      Left = 8
      Top = 120
      Width = 389
      Height = 109
      Caption = 'Utleveringsadresse:'
      TabOrder = 1
      object Label19: TLabel
        Left = 14
        Top = 20
        Width = 34
        Height = 14
        Caption = 'Postnr:'
      end
      object Label20: TLabel
        Left = 213
        Top = 20
        Width = 26
        Height = 14
        Caption = 'Gate:'
      end
      object Label21: TLabel
        Left = 272
        Top = 60
        Width = 39
        Height = 14
        Caption = 'Telefon:'
      end
      object Label2: TLabel
        Left = 14
        Top = 60
        Width = 37
        Height = 14
        Caption = 'Innhold:'
      end
      object Label3: TLabel
        Left = 78
        Top = 20
        Width = 45
        Height = 14
        Caption = 'Poststed:'
      end
      object DBEdit6: TDBEdit
        Left = 14
        Top = 35
        Width = 57
        Height = 22
        DataField = 'Postnr'
        DataSource = DsPost
        TabOrder = 0
      end
      object DBEdit7: TDBEdit
        Left = 212
        Top = 35
        Width = 161
        Height = 22
        DataField = 'Adresse'
        DataSource = DsPost
        TabOrder = 1
      end
      object DBEdit8: TDBEdit
        Left = 272
        Top = 76
        Width = 99
        Height = 22
        DataField = 'Telefon'
        DataSource = DsPost
        TabOrder = 2
      end
      object DBEdit16: TDBEdit
        Left = 14
        Top = 76
        Width = 253
        Height = 22
        DataField = 'Innhold'
        DataSource = DsPost
        TabOrder = 3
      end
      object DBEdit17: TDBEdit
        Left = 76
        Top = 35
        Width = 131
        Height = 22
        DataField = 'Poststed'
        DataSource = DsPost
        TabOrder = 4
      end
    end
    object GroupBox6: TGroupBox
      Left = 404
      Top = 124
      Width = 193
      Height = 105
      Caption = 'Beregnet Pris:'
      TabOrder = 2
      object Label22: TLabel
        Left = 12
        Top = 32
        Width = 28
        Height = 14
        Caption = 'Sone:'
      end
      object Label23: TLabel
        Left = 12
        Top = 64
        Width = 72
        Height = 14
        Caption = 'Pris (eks mva):'
      end
      object DBEdit10: TDBEdit
        Left = 92
        Top = 60
        Width = 89
        Height = 22
        TabStop = False
        Color = clBtnFace
        DataField = 'Pris'
        DataSource = DsPost
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit9: TDBEdit
        Left = 92
        Top = 28
        Width = 89
        Height = 22
        TabStop = False
        Color = clBtnFace
        DataField = 'Sone'
        DataSource = DsPost
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object GroupBox7: TGroupBox
      Left = 404
      Top = 8
      Width = 193
      Height = 105
      Caption = 'Kommentarer'
      TabOrder = 3
      object DbMemoInfo: TDBMemo
        Left = 12
        Top = 20
        Width = 169
        Height = 73
        DataField = 'Info'
        DataSource = DsPost
        MaxLength = 50
        TabOrder = 0
      end
    end
  end
  object BtnOK: TButton
    Left = 428
    Top = 400
    Width = 89
    Height = 25
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 3
    OnClick = BtnOKClick
  end
  object BtnPrint: TButton
    Left = 192
    Top = 400
    Width = 89
    Height = 25
    Caption = 'Skriv ut'
    TabOrder = 4
    OnClick = BtnPrintClick
  end
  object BtnPreview: TButton
    Left = 100
    Top = 400
    Width = 89
    Height = 25
    Caption = 'Forh'#229'ndsvis'
    TabOrder = 5
    OnClick = BtnPreviewClick
  end
  object BtnSporing: TButton
    Left = 8
    Top = 400
    Width = 89
    Height = 25
    Caption = 'Sporing'
    TabOrder = 6
    OnClick = BtnSporingClick
  end
  object BtnAvbryt: TButton
    Left = 520
    Top = 400
    Width = 93
    Height = 25
    Cancel = True
    Caption = '&Avbryt'
    ModalResult = 2
    TabOrder = 7
    OnClick = BtnAvbrytClick
  end
  object blsPost: TblsPostSys
    Left = 304
    Top = 400
  end
  object TblPost: TTable
    OnNewRecord = TblPostNewRecord
    DatabaseName = 'FakuvaDir'
    FieldDefs = <
      item
        Name = 'Pakkenr'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Dato'
        DataType = ftDate
      end
      item
        Name = 'Kunde'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Postboks'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'FPostnr'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'FPoststed'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Postnr'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Adresse'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'Telefon'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'Innhold'
        DataType = ftString
        Size = 75
      end
      item
        Name = 'Pakketype'
        DataType = ftInteger
      end
      item
        Name = 'Sone'
        DataType = ftInteger
      end
      item
        Name = 'Hoyde'
        DataType = ftFloat
      end
      item
        Name = 'Bredde'
        DataType = ftFloat
      end
      item
        Name = 'Dybde'
        DataType = ftFloat
      end
      item
        Name = 'Volum'
        DataType = ftFloat
      end
      item
        Name = 'Vekt'
        DataType = ftFloat
      end
      item
        Name = 'Volumvekt'
        DataType = ftFloat
      end
      item
        Name = 'Pris'
        DataType = ftCurrency
      end
      item
        Name = 'Info'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Poststed'
        DataType = ftString
        Size = 30
      end>
    StoreDefs = True
    TableName = 'Pakke.DB'
    Left = 336
    Top = 400
    object TblPostPakkeNr: TStringField
      FieldName = 'PakkeNr'
      OnChange = TblPostPakkeNrChange
    end
    object TblPostDato: TDateField
      FieldName = 'Dato'
    end
    object TblPostPakketype: TIntegerField
      FieldName = 'Pakketype'
    end
    object TblPostKunde: TStringField
      FieldName = 'Kunde'
      Size = 100
    end
    object TblPostPostboks: TStringField
      FieldName = 'Postboks'
      Size = 100
    end
    object TblPostFPostnr: TStringField
      FieldName = 'FPostnr'
      Size = 4
    end
    object TblPostFPoststed: TStringField
      FieldName = 'FPoststed'
      Size = 30
    end
    object TblPostPostnr: TStringField
      FieldName = 'Postnr'
      OnChange = TblPostPostnrChange
      Size = 4
    end
    object TblPostPoststed: TStringField
      FieldName = 'Poststed'
      Size = 30
    end
    object TblPostAdresse: TStringField
      FieldName = 'Adresse'
      Size = 150
    end
    object TblPostTelefon: TStringField
      FieldName = 'Telefon'
      Size = 14
    end
    object TblPostSone: TIntegerField
      FieldName = 'Sone'
    end
    object TblPostVekt: TFloatField
      FieldName = 'Vekt'
      OnChange = TblPostVolumChange
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object TblPostPris: TFloatField
      FieldName = 'Pris'
    end
    object TblPostInfo: TStringField
      FieldName = 'Info'
      Size = 50
    end
    object TblPostVolum: TFloatField
      FieldName = 'Volum'
      OnChange = TblPostVolumChange
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object TblPostHoyde: TFloatField
      FieldName = 'Hoyde'
      OnChange = TblPostHoydeChange
    end
    object TblPostBredde: TFloatField
      FieldName = 'Bredde'
      OnChange = TblPostHoydeChange
    end
    object TblPostDybde: TFloatField
      FieldName = 'Dybde'
      OnChange = TblPostHoydeChange
    end
    object TblPostVolumVekt: TFloatField
      FieldName = 'VolumVekt'
      DisplayFormat = '0.00'
    end
    object TblPostInnhold: TStringField
      FieldName = 'Innhold'
      Size = 75
    end
  end
  object DsPost: TDataSource
    DataSet = TblPost
    Left = 368
    Top = 400
  end
  object Print: TPrintDialog
    Options = [poDisablePrintToFile]
    Left = 400
    Top = 400
  end
end
