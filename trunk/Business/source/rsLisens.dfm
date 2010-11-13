object frmLisens: TfrmLisens
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Registrering av lisens'
  ClientHeight = 226
  ClientWidth = 467
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 449
    Height = 113
    Caption = 'Lisensinformasjon'
    TabOrder = 0
    object Label2: TLabel
      Left = 320
      Top = 21
      Width = 82
      Height = 13
      Caption = 'Organisasjonsnr:'
    end
    object Label5: TLabel
      Left = 16
      Top = 64
      Width = 80
      Height = 13
      Caption = 'Programversjon:'
    end
    object Label1: TLabel
      Left = 16
      Top = 21
      Width = 54
      Height = 13
      Caption = 'Firmanavn:'
    end
    object Label3: TLabel
      Left = 320
      Top = 64
      Width = 89
      Height = 13
      Caption = 'Registreringsdato:'
    end
    object Label4: TLabel
      Left = 200
      Top = 64
      Width = 49
      Height = 13
      Caption = 'Gyldighet:'
    end
    object DBEdit2: TDBEdit
      Left = 320
      Top = 37
      Width = 113
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'ORGNR'
      DataSource = dsKlient
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 37
      Width = 261
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'NAVN'
      DataSource = dsKlient
      TabOrder = 0
    end
    object btnFirmaInfo: TButton
      Left = 283
      Top = 37
      Width = 23
      Height = 21
      Caption = '...'
      TabOrder = 5
      OnClick = btnFirmaInfoClick
    end
    object cbProgType: TComboBox
      Left = 16
      Top = 79
      Width = 169
      Height = 21
      Style = csDropDownList
      TabOrder = 2
      OnChange = cbProgTypeChange
      Items.Strings = (
        'BLS Business - Basic'
        'BLS Business - Standard'
        'BLS Business - Pro')
    end
    object cbGyldighet: TComboBox
      Left = 200
      Top = 79
      Width = 106
      Height = 21
      Style = csDropDownList
      TabOrder = 3
      OnChange = cbProgTypeChange
      Items.Strings = (
        '1 '#229'r'
        '2 '#229'r - 2% rabatt'
        '3 '#229'r - 5% rabatt')
    end
    object dtpRegDato: TDateTimePicker
      Left = 320
      Top = 79
      Width = 113
      Height = 21
      Date = 39457.799580798610000000
      Time = 39457.799580798610000000
      TabOrder = 4
      OnChange = cbProgTypeChange
    end
  end
  object btnLukk: TButton
    Left = 374
    Top = 193
    Width = 83
    Height = 25
    Cancel = True
    Caption = '&Lukk'
    TabOrder = 4
    OnClick = btnLukkClick
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 127
    Width = 449
    Height = 55
    Caption = 'Lisensn'#248'kkel'
    TabOrder = 1
    object Label6: TLabel
      Left = 17
      Top = 24
      Width = 56
      Height = 13
      Caption = 'Lisenskode:'
    end
    object lblLisens: TLabel
      Left = 320
      Top = 24
      Width = 63
      Height = 13
      Caption = 'Uregistrert'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnCheck: TBitBtn
      Left = 410
      Top = 21
      Width = 23
      Height = 21
      DoubleBuffered = True
      Enabled = False
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000010000FF00FF000066
        0000149D2100179D270019AA2B001BA92E001AB02D001EAE31001EB1320025A8
        3B0021B4370022B7380031B54D0031C24F003BCB5E0041C5630047D36D004FD6
        790053DE7F000000000000000000000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000000000000001
        0100000000000000000000000000010808010000000000000000000000010D0B
        060A0100000000000000000001100E0901050801000000000000000111120C01
        000103070100000000000000010F010000000001050100000000000000010000
        0000000001030100000000000000000000000000000001010000000000000000
        0000000000000001010000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Layout = blGlyphBottom
      Margin = 2
      ParentDoubleBuffered = False
      TabOrder = 1
      Visible = False
      OnClick = btnCheckClick
    end
    object edKey: TEdit
      Left = 79
      Top = 21
      Width = 227
      Height = 21
      TabOrder = 0
      Text = 'edKey'
      OnChange = edKeyChange
      OnKeyUp = edKeyKeyUp
    end
  end
  object btnManuelt: TButton
    Left = 145
    Top = 193
    Width = 105
    Height = 25
    Caption = 'Registrer manuelt '
    TabOrder = 2
    OnClick = btnManueltClick
  end
  object btnReg: TButton
    Left = 8
    Top = 193
    Width = 131
    Height = 25
    Caption = 'Registrer automatisk'
    Default = True
    TabOrder = 3
    OnClick = btnRegClick
  end
  object adoKlient: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select IDKLIENT, ORGNR, NAVN, ADRESSE, POSTNR, TELEFON, MOBIL, E' +
      'POST, PROGTYPE, REGDATO, GYLDIGHET, LISENSKODE '#13#10'from KLIENT'#13#10'wh' +
      'ere IDKLIENT = :IdKlient;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 136
    Top = 24
    object adoKlientIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoKlientORGNR: TStringField
      FieldName = 'ORGNR'
      Size = 18
    end
    object adoKlientNAVN: TStringField
      FieldName = 'NAVN'
      Size = 50
    end
    object adoKlientADRESSE: TStringField
      FieldName = 'ADRESSE'
      Size = 100
    end
    object adoKlientPOSTNR: TStringField
      FieldName = 'POSTNR'
      Size = 4
    end
    object adoKlientTELEFON: TStringField
      FieldName = 'TELEFON'
      Size = 14
    end
    object adoKlientMOBIL: TStringField
      FieldName = 'MOBIL'
      Size = 14
    end
    object adoKlientEPOST: TStringField
      FieldName = 'EPOST'
      Size = 50
    end
    object adoKlientPROGTYPE: TIntegerField
      FieldName = 'PROGTYPE'
    end
    object adoKlientREGDATO: TDateField
      FieldName = 'REGDATO'
    end
    object adoKlientGYLDIGHET: TIntegerField
      FieldName = 'GYLDIGHET'
    end
    object adoKlientLISENSKODE: TStringField
      FieldName = 'LISENSKODE'
      Size = 32
    end
  end
  object cdsKlient: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspKlient'
    BeforeOpen = cdsKlientBeforeOpen
    Left = 200
    Top = 24
    object cdsKlientIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object cdsKlientORGNR: TStringField
      FieldName = 'ORGNR'
      Size = 18
    end
    object cdsKlientNAVN: TStringField
      FieldName = 'NAVN'
      Size = 50
    end
    object cdsKlientADRESSE: TStringField
      FieldName = 'ADRESSE'
      Size = 100
    end
    object cdsKlientPOSTNR: TStringField
      FieldName = 'POSTNR'
      Size = 4
    end
    object cdsKlientTELEFON: TStringField
      FieldName = 'TELEFON'
      Size = 14
    end
    object cdsKlientMOBIL: TStringField
      FieldName = 'MOBIL'
      Size = 14
    end
    object cdsKlientEPOST: TStringField
      FieldName = 'EPOST'
      Size = 50
    end
    object cdsKlientPROGTYPE: TIntegerField
      FieldName = 'PROGTYPE'
    end
    object cdsKlientREGDATO: TDateField
      FieldName = 'REGDATO'
    end
    object cdsKlientGYLDIGHET: TIntegerField
      FieldName = 'GYLDIGHET'
    end
    object cdsKlientLISENSKODE: TStringField
      FieldName = 'LISENSKODE'
      Size = 32
    end
  end
  object dspKlient: TDataSetProvider
    DataSet = adoKlient
    UpdateMode = upWhereKeyOnly
    Left = 168
    Top = 24
  end
  object dsKlient: TDataSource
    DataSet = cdsKlient
    Left = 232
    Top = 24
  end
end
