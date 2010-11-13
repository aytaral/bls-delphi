object frmMvaPeriode: TfrmMvaPeriode
  Left = 366
  Top = 224
  BorderStyle = bsDialog
  Caption = 'Merverdiavgift'
  ClientHeight = 347
  ClientWidth = 516
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
  object Panel1: TPanel
    Left = 0
    Top = 306
    Width = 516
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      516
      41)
    object btnLukk: TButton
      Left = 416
      Top = 10
      Width = 89
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Lukk'
      Default = True
      ModalResult = 2
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 516
    Height = 249
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel2: TBevel
      Left = 0
      Top = 247
      Width = 516
      Height = 2
      Align = alBottom
      Shape = bsBottomLine
    end
    object gbConfig: TGroupBox
      Left = 12
      Top = 88
      Width = 493
      Height = 113
      Caption = 'Innstillinger for periodeavsluttning:'
      TabOrder = 0
      object cbBilag: TCheckBox
        Left = 20
        Top = 44
        Width = 401
        Height = 17
        Caption = 
          'Skriv ut bilaget for overf'#248'ring til oppgj'#248'rskonto for merverdiav' +
          'gift'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object cbAvrund: TCheckBox
        Left = 20
        Top = 64
        Width = 337
        Height = 17
        Caption = 'Automatisk '#248'reavrunding'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = cbAvrundClick
      end
      object cbMva: TCheckBox
        Left = 20
        Top = 24
        Width = 209
        Height = 17
        Caption = 'Skriv ut momsoppgaven'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object cbPrintAvrund: TCheckBox
        Left = 20
        Top = 84
        Width = 321
        Height = 17
        Caption = 'Skriv ut bilaget for automatisk '#248'reavrunding'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
    end
    object GroupBox2: TGroupBox
      Left = 12
      Top = 20
      Width = 493
      Height = 57
      Caption = 'Periode:'
      TabOrder = 1
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 85
        Height = 13
        Caption = 'Velg termin og '#229'r:'
      end
      object lblLukket: TLabel
        Left = 380
        Top = 24
        Width = 90
        Height = 13
        Caption = 'Perioden er lukket!'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object cbTermin: TComboBox
        Left = 120
        Top = 20
        Width = 165
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 'Termin 1. Jan - Feb'
        OnChange = cbTerminChange
        Items.Strings = (
          'Termin 1. Jan - Feb'
          'Termin 2. Mar - Apr'
          'Termin 3. Mai - Jun'
          'Termin 4. Jul - Aug'
          'Termin 5. Sep - Okt'
          'Termin 6. Nov - Des'
          'Termin 7. Tilleggsoppgave')
      end
      object editAar: TJvSpinEdit
        Left = 300
        Top = 20
        Width = 65
        Height = 21
        MaxValue = 2100.000000000000000000
        MinValue = 1970.000000000000000000
        Value = 2006.000000000000000000
        MaxLength = 4
        TabOrder = 1
        OnChange = cbTerminChange
      end
    end
    object btnVisMva: TButton
      Left = 12
      Top = 212
      Width = 241
      Height = 25
      Caption = 'Vis momsoppgave'
      TabOrder = 2
      OnClick = btnVisMvaClick
    end
    object btnPeriodeAvslutt: TButton
      Left = 268
      Top = 212
      Width = 237
      Height = 25
      Caption = 'Kj'#248'r periodeavsluttning'
      TabOrder = 3
      OnClick = btnPeriodeAvsluttClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 516
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object Bevel1: TBevel
      Left = 0
      Top = 55
      Width = 516
      Height = 2
      Align = alBottom
      Shape = bsBottomLine
    end
    object Label2: TLabel
      Left = 20
      Top = 16
      Width = 263
      Height = 22
      Caption = 'Beregning av merverdiavgift'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Image1: TImage
      Left = 460
      Top = 12
      Width = 45
      Height = 27
      AutoSize = True
      Picture.Data = {
        07544269746D617046090000424D460900000000000036040000280000002D00
        00001B000000010008000000000010050000120B0000120B0000000100000000
        0000FFFFFF00FAFAFA00F5F5F500F3F3EF00E6E6E600EAE8DF00D7D7D700D8E2
        CF00E2D8CF00C7C7C700D5CFBF00B8B8B800CAB8A700B7C9A500A4A4A4009C9C
        9C00BBA58F008989890096B17D00AF947A00747474006D6D6D00666666009F7F
        60006C9148008E6844008259300057802D00784C200067340300326500000000
        000014510800F8A00000980012000012F90012FAE80088F000007077FA0077F5
        3800FFFFFF0044A8FF007077F90077F57D00F58A3A0000007700000000000040
        000048863800F9B800000000120000000000F944CB00A2A87700CD00180077F5
        8B001407780090370000D077F5000018A20018A2B000BD6C0000A80018000014
        010018AFC80000040000100000000000000012FB0400FD1800003C0076000012
        F900D4410B00FD187700080076000000000000000100FB040000980012000018
        AF0012F974009BAA0000B377F50077F59B0018AF900000240000400002000014
        D20012FA2C00FA3000000000120000000000F944CB00BD507700CD00180077F5
        8B001407D800903700006C77F5000018BD0018BD5800000000003700000077F5
        90000000050000280000000000000000000018ADC60000000000000000000001
        000014000000F8FC0000C00012000014030012F9E40088F000008877FA0077F5
        1C00FFFFFF009037FF005677F50077F69400F694710045E077006477FC0077F6
        940018A2D000A2B000006C0018000018BD00FDE00000F9CC7F00030012000000
        000012FA280088F000002077FA0077F51600FFFFFF009464FF008477F60077F6
        9D000000070000380000580000000018BD00000000009B580000B80018000001
        480014000000F9740000000012000000000012FA740088F000008877FA0077F5
        1C00FFFFFF009037FF002177F50077E7EF0014000000000000002D00000077E7
        EF00D4BC6400000077000A0040000000000018AD8800E0000000007FFD000040
        00000000000000000000240000000000010018BD5800FA440000000012000000
        000012FFB000480900009877E90077E91000FFFFFF00EF2DFF005C77E7000043
        570018BD5800BC6400000077D40000400000000020002F5E00006C1CAF0001C3
        4F00B3F40E004F6C1C003401C30067434A00C34A080000000100F80000000000
        040000002400012000006C0000006F676F0069672E007B006600000045000000
        000012FB180051080000000014000014000012F8D400FB040000340012000012
        FB00FA88F0001C787700FF77F500FFFFFF00F58A3A00A6D477000077E7000014
        000014000800A6E500006477E70077D4BC000000000000000000000000000000
        000000000000DA4400002C0044000014510016F2CC0051300000600014000048
        8600FFFFFF005108FF009E0014000044DA0014512C00D0730000080044000014
        5100000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000005
        0D121818181818181818120D0500000000000000000000000000000000000000
        00000000000000000000000007121B1E1E1E1E1E1E1E1E1E1E1E1E1E1E1B1207
        00000000000000000000000000000000000000000000000000000A181E1E1E1E
        1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E180A0000000000000000000000000000
        000000000000000002181E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E
        1E1E180300000000000000000000000000000000000000031B1E1E1E1E1E1E1E
        1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1B020000000000000000000000
        000000000000021B1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E
        1E1E1E1E1B0200000000000000000000000000000000121E1E1E1E1E1E1E1E1E
        1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1200000000000000000000
        0000000000001E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E
        1E1E1E1E1E1E000000000000000000000000000000001E1E1E1E1E1E1E1E1E1E
        1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E05000000000000000000
        0000000000001E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E
        1E1E1E1E1E1E020000000000000000000000000000001E1E1E1E1E1E1E1E1E1E
        1E1E1E1E1E1E0D1B1E1E1E1E1E1E1E1E1E1E1E1E1E1E00000000000000000000
        000000000000121E1E1E1E1E1E1E1E1E1E1E1E1E1E1E0A031B1E1E1E1E1E1E1E
        1E1E1E1E1E1200000000000000000000000000000000031B1E1E1E1E1E1E1E1E
        1E1E1E1E1E1E0800031B1E1E1E1E1E1E1E1E1E1E1B0300000000000000000000
        00000000000000031B1E1E1E1E1E1E1E1E1E1E1E1E1E120000031B1E1E1E1E1E
        1E1E1E1B020000000000000000000000000000000000000002181E1E1E1E1E1E
        1E1E1E1E1E1E1E0D0000031B1E1E1E1E1E1E1803000000000000000000000000
        000000000000000000000A181E1E1E1E1E1E1E1E1E1E1E1E0D0000031B1E1E1E
        180A000000000000000000000000000000000000000000000000000007121B1E
        1E1E1E1E1E1E1E1E1E0D00000318120700000000000000000000000000000000
        000000000000000000000000000000050D121818181B1E1E1E1E0D0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000A1E1E1E1E1E0D0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000A1E1E1E1E1E1E0D000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000A1E1E1E1E1E1E1E0D000000000000000000000000000000000000
        0000000000000000000000000000000000000000000A1E1E1E1E18180C050000
        000000000000000000000000000000000000}
    end
  end
  object blsList1: TblsList
    Lines.Strings = (
      'select P.KONTONR, sum(P.BELOP)'
      'from POSTERING P'
      
        'where P.KONTONR in (select KONTONR from MVAKONTO where IDKLIENT ' +
        '= P.IDKLIENT)'
      'and P.IDKLIENT = 1'
      'group by P.IDKLIENT, P.KONTONR')
    Left = 476
    Top = 76
  end
  object adoMvaUt: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select P.KONTONR,K.NAVN as KONTONAVN, P.MVAKODE, M.BESKRIVELSE A' +
      'S MVA, M.SATS, sum(P.BELOP) as GRUNNLAG,'#13#10'(sum(P.BELOP) * COALES' +
      'CE(M.SATS, 100) / 100) as MOMS'#13#10'from BILAG B'#13#10'join POSTERING P o' +
      'n (B.IDBILAG = P.IDBILAG)'#13#10'join KONTO K on (P.KONTONR = K.KONTON' +
      'R and K.IDKLIENT = B.IDKLIENT)'#13#10'left join MVA M on (P.MVAKODE = ' +
      'M.MVAKODE)'#13#10'where B.IDKLIENT = :IdKlient'#13#10'and'#13#10'  ((P.MVAKODE in ' +
      '(select MVAKODE from MVA where GRUPPE = '#39'U'#39')) or'#13#10'   (P.KONTONR ' +
      'in (select KONTONR from MVAKONTO join MVA on'#13#10'                  ' +
      '(MVA.MVAKODE = MVAKONTO.MVAKODE)'#13#10'                  where IDKLIE' +
      'NT = B.IDKLIENT and GRUPPE = '#39'U'#39')))'#13#10'and B.PERIODENR between :PS' +
      'tart and :PSlutt'#13#10'and B.AAR = :Aar'#13#10'and B.SYSID is null'#13#10'and P.M' +
      'VAKODE is not null'#13#10'group by P.IDKLIENT, K.NAVN, P.KONTONR, P.MV' +
      'AKODE, M.BESKRIVELSE, M.SATS'#13#10'order by P.KONTONR;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'PStart'
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end
      item
        Name = 'PSlutt'
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 4
      end
      item
        Name = 'Aar'
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 2006
      end>
    Left = 12
    Top = 309
    object adoMvaUtKONTONR: TIntegerField
      FieldName = 'KONTONR'
    end
    object adoMvaUtKONTONAVN: TStringField
      FieldName = 'KONTONAVN'
      Size = 80
    end
    object adoMvaUtMVAKODE: TIntegerField
      FieldName = 'MVAKODE'
    end
    object adoMvaUtMVA: TStringField
      FieldName = 'MVA'
      Size = 40
    end
    object adoMvaUtSATS: TFloatField
      FieldName = 'SATS'
    end
    object adoMvaUtGRUNNLAG: TBCDField
      FieldName = 'GRUNNLAG'
      Precision = 18
    end
    object adoMvaUtMOMS: TFloatField
      FieldName = 'MOMS'
    end
  end
  object adoMvaInn: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select P.KONTONR,K.NAVN as KONTONAVN, P.MVAKODE, M.BESKRIVELSE A' +
      'S MVA, M.SATS, sum(P.BELOP) as GRUNNLAG,'#13#10'(sum(P.BELOP) * COALES' +
      'CE(M.SATS, 100) / 100) as MOMS'#13#10'from BILAG B'#13#10'join POSTERING P o' +
      'n (B.IDBILAG = P.IDBILAG)'#13#10'join KONTO K on (P.KONTONR = K.KONTON' +
      'R and K.IDKLIENT = B.IDKLIENT)'#13#10'left join MVA M on (P.MVAKODE = ' +
      'M.MVAKODE)'#13#10'where B.IDKLIENT = :IdKlient'#13#10'and'#13#10'  ((P.MVAKODE in ' +
      '(select MVAKODE from MVA where GRUPPE = '#39'I'#39')) or'#13#10'   (P.KONTONR ' +
      'in (select KONTONR from MVAKONTO join MVA on'#13#10'                  ' +
      '(MVA.MVAKODE = MVAKONTO.MVAKODE)'#13#10'                  where IDKLIE' +
      'NT = B.IDKLIENT and GRUPPE = '#39'I'#39')))'#13#10'and B.PERIODENR between :PS' +
      'tart and :PSlutt'#13#10'and B.AAR = :Aar'#13#10'and B.SYSID is null'#13#10'and P.M' +
      'VAKODE is not null'#13#10'group by P.IDKLIENT, K.NAVN, P.KONTONR, P.MV' +
      'AKODE, M.BESKRIVELSE, M.SATS'#13#10'order by P.KONTONR;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'PStart'
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end
      item
        Name = 'PSlutt'
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 2
      end
      item
        Name = 'Aar'
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 2006
      end>
    Left = 40
    Top = 309
    object adoMvaInnKONTONR: TIntegerField
      FieldName = 'KONTONR'
    end
    object adoMvaInnKONTONAVN: TStringField
      FieldName = 'KONTONAVN'
      Size = 80
    end
    object adoMvaInnMVAKODE: TIntegerField
      FieldName = 'MVAKODE'
    end
    object adoMvaInnMVA: TStringField
      FieldName = 'MVA'
      Size = 40
    end
    object adoMvaInnSATS: TFloatField
      FieldName = 'SATS'
    end
    object adoMvaInnGRUNNLAG: TBCDField
      FieldName = 'GRUNNLAG'
      Precision = 18
    end
    object adoMvaInnMOMS: TFloatField
      FieldName = 'MOMS'
    end
  end
  object adoMvaOppgave: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select PostID, Tekst  from MVAOPPGAVE'#13#10'where revisjon = (select ' +
      'max(REVISJON) from MVAOPPGAVE);'
    Parameters = <>
    Left = 68
    Top = 309
    object adoMvaOppgavePOSTID: TIntegerField
      FieldName = 'POSTID'
    end
    object adoMvaOppgaveTEKST: TStringField
      FieldName = 'TEKST'
      Size = 120
    end
  end
  object frDBMvaOppgave: TfrxDBDataset
    UserName = 'frDBMvaOppgave'
    CloseDataSource = False
    DataSet = cdsMvaOppgave
    Left = 204
    Top = 309
  end
  object frDBMvaInn: TfrxDBDataset
    UserName = 'frDBMvaInn'
    CloseDataSource = False
    DataSet = adoMvaInn
    Left = 232
    Top = 309
  end
  object frMva: TfrxReport
    Version = '4.3.27'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Forvalgt'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39300.834776099500000000
    ReportOptions.LastChange = 39337.842120717590000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      'end.          ')
    ShowProgress = False
    StoreInDFM = False
    OnGetValue = frMvaGetValue
    Left = 300
    Top = 308
  end
  object frDBMvaUt: TfrxDBDataset
    UserName = 'frDBMvaUt'
    CloseDataSource = False
    DataSet = adoMvaUt
    Left = 260
    Top = 309
  end
  object cdsMvaOppgave: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 100
    Top = 309
    object cdsMvaOppgavePostID: TIntegerField
      FieldName = 'PostID'
    end
    object cdsMvaOppgaveTekst: TStringField
      FieldName = 'Tekst'
      Size = 120
    end
    object cdsMvaOppgaveGrunnlag: TFloatField
      FieldName = 'Grunnlag'
    end
    object cdsMvaOppgaveMoms: TFloatField
      FieldName = 'Moms'
    end
  end
  object adoMvaBilag: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select P.KONTONR, sum(BELOP)'#13#10'from BILAG B'#13#10'join POSTERING P on ' +
      '(B.IDBILAG = P.IDBILAG)'#13#10'join MVAKONTO MK on (MK.KONTONR = P.KON' +
      'TONR and MK.IDKLIENT = P.IDKLIENT)'#13#10'where B.IDKLIENT = :IdKlient' +
      #13#10'and B.AAR = :Aar'#13#10'and B.PERIODENR between :PStart and :PSlutt'#13 +
      #10'group by P.KONTONR'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Aar'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'PStart'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'PSlutt'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    Left = 476
    Top = 137
    object adoMvaBilagKONTONR: TIntegerField
      FieldName = 'KONTONR'
    end
    object adoMvaBilagSUM: TBCDField
      FieldName = 'SUM'
      Precision = 18
    end
  end
  object frxRptconn: TfrxADOComponents
    DefaultDatabase = Dm.adoConn
    Left = 328
    Top = 308
  end
end
