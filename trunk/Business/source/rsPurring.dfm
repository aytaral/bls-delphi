object frmPurring: TfrmPurring
  Left = 411
  Top = 173
  BorderStyle = bsDialog
  Caption = 'Generer purring'
  ClientHeight = 442
  ClientWidth = 605
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
    Top = 408
    Width = 605
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      605
      34)
    object btnOK: TButton
      Left = 426
      Top = 4
      Width = 83
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnAvbryt: TButton
      Left = 514
      Top = 4
      Width = 83
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Avbryt'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 308
    Top = 120
    Width = 289
    Height = 281
    Caption = 'Purreberegninger:'
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 81
      Height = 13
      Caption = 'Dato for purring:'
    end
    object Label2: TLabel
      Left = 24
      Top = 72
      Width = 58
      Height = 13
      Caption = 'Purregebyr:'
    end
    object Label3: TLabel
      Left = 24
      Top = 96
      Width = 37
      Height = 13
      Caption = 'Renter:'
    end
    object Label4: TLabel
      Left = 24
      Top = 48
      Width = 60
      Height = 13
      Caption = 'Purrestatus:'
    end
    object Label14: TLabel
      Left = 24
      Top = 120
      Width = 76
      Height = 13
      Caption = 'Nytt totalbel'#248'p:'
    end
    object Label15: TLabel
      Left = 15
      Top = 152
      Width = 82
      Height = 13
      Caption = 'Tekst p'#229' purring:'
    end
    object cbStatus: TComboBox
      Left = 128
      Top = 44
      Width = 137
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      OnChange = cbStatusChange
    end
    object memoPurring: TMemo
      Left = 14
      Top = 168
      Width = 261
      Height = 97
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object editGebyr: TblsAlignEdit
      Left = 128
      Top = 68
      Width = 137
      Height = 21
      Alignment = taRightJustify
      TabOrder = 2
      Text = '0,00'
      OnChange = editGebyrChange
      EditType = etFloat
      DisplayMask = '#,##0.00'
    end
    object editRenter: TblsAlignEdit
      Left = 128
      Top = 92
      Width = 137
      Height = 21
      Alignment = taRightJustify
      TabOrder = 3
      Text = '0,00'
      OnChange = editGebyrChange
      EditType = etFloat
      DisplayMask = '#,##0.00'
    end
    object editTotal: TblsAlignEdit
      Left = 128
      Top = 117
      Width = 137
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      Text = '0,00'
      EditType = etFloat
      DisplayMask = '#,##0.00'
    end
    object dtPurreDato: TDateTimePicker
      Left = 128
      Top = 20
      Width = 137
      Height = 21
      Date = 40493.921997210650000000
      Time = 40493.921997210650000000
      TabOrder = 5
      OnChange = dtPurredatoChange
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 589
    Height = 73
    Caption = 'For faktura:'
    TabOrder = 2
    object Label6: TLabel
      Left = 16
      Top = 24
      Width = 51
      Height = 13
      Caption = 'Fakturanr:'
    end
    object DBText1: TDBText
      Left = 84
      Top = 24
      Width = 48
      Height = 13
      AutoSize = True
      DataField = 'FAKTURANR'
      DataSource = Dm.dsPurring
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 304
      Top = 24
      Width = 44
      Height = 13
      Caption = 'Kundenr:'
    end
    object DBText2: TDBText
      Left = 360
      Top = 24
      Width = 48
      Height = 13
      AutoSize = True
      DataField = 'KUNDENR'
      DataSource = Dm.dsPurring
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 360
      Top = 40
      Width = 225
      Height = 13
      DataField = 'NAVN'
      DataSource = Dm.dsPurring
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 304
      Top = 40
      Width = 34
      Height = 13
      Caption = 'Kunde:'
    end
    object DBText4: TDBText
      Left = 220
      Top = 40
      Width = 65
      Height = 13
      Alignment = taRightJustify
      DataField = 'SUMTOT'
      DataSource = Dm.dsPurring
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 160
      Top = 40
      Width = 54
      Height = 13
      Caption = 'Totalbel'#248'p:'
    end
    object Label17: TLabel
      Left = 16
      Top = 40
      Width = 61
      Height = 13
      Caption = 'Forfallsdato:'
    end
    object DBText10: TDBText
      Left = 84
      Top = 40
      Width = 55
      Height = 13
      AutoSize = True
      DataField = 'FORFALLDATO'
      DataSource = Dm.dsPurring
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 160
      Top = 24
      Width = 24
      Height = 13
      Caption = 'Mva:'
    end
    object DBText11: TDBText
      Left = 216
      Top = 24
      Width = 69
      Height = 13
      Alignment = taRightJustify
      DataField = 'SUMMVA'
      DataSource = Dm.dsPurring
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 88
    Width = 589
    Height = 25
    BevelOuter = bvNone
    TabOrder = 3
    object rbEksisterende: TRadioButton
      Left = 16
      Top = 6
      Width = 197
      Height = 17
      Caption = 'Bruk eksisterende purring'
      TabOrder = 0
      OnClick = rbEksisterendeClick
    end
    object rbNy: TRadioButton
      Left = 316
      Top = 6
      Width = 153
      Height = 17
      Caption = 'Generer ny purring'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rbNyClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 120
    Width = 289
    Height = 281
    Caption = 'Eksisterende purring:'
    TabOrder = 4
    object Label16: TLabel
      Left = 15
      Top = 152
      Width = 82
      Height = 13
      Caption = 'Tekst p'#229' purring:'
    end
    object Label5: TLabel
      Left = 24
      Top = 24
      Width = 81
      Height = 13
      Caption = 'Dato for purring:'
    end
    object Label10: TLabel
      Left = 24
      Top = 48
      Width = 60
      Height = 13
      Caption = 'Purrestatus:'
    end
    object Label11: TLabel
      Left = 24
      Top = 72
      Width = 58
      Height = 13
      Caption = 'Purregebyr:'
    end
    object Label12: TLabel
      Left = 24
      Top = 96
      Width = 37
      Height = 13
      Caption = 'Renter:'
    end
    object Label13: TLabel
      Left = 24
      Top = 120
      Width = 54
      Height = 13
      Caption = 'Totalbel'#248'p:'
    end
    object dbtDato: TDBText
      Left = 207
      Top = 24
      Width = 46
      Height = 13
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'PURREDATO'
      DataSource = Dm.dsPurring
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbtStatus: TDBText
      Left = 197
      Top = 48
      Width = 56
      Height = 13
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'STATUS'
      DataSource = Dm.dsPurring
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbtGebyr: TDBText
      Left = 200
      Top = 72
      Width = 53
      Height = 13
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'PURREGEBYR'
      DataSource = Dm.dsPurring
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbtRenter: TDBText
      Left = 195
      Top = 96
      Width = 58
      Height = 13
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'PURRERENTER'
      DataSource = Dm.dsPurring
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbtTotalt: TDBText
      Left = 200
      Top = 120
      Width = 53
      Height = 13
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'PURRETOTAL'
      DataSource = Dm.dsPurring
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbmTekst: TDBMemo
      Left = 14
      Top = 168
      Width = 261
      Height = 97
      Color = clBtnFace
      DataField = 'PURRETEKST'
      DataSource = Dm.dsPurring
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object adoStatus: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select * from STATUS'#13#10'where IDKLIENT = :IdKlient'#13#10'and IDSTATUS >' +
      ' 20'#13#10'and AKTIV = 1'#13#10'order by IDSTATUS;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 556
    Top = 24
    object adoStatusIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object adoStatusIDSTATUS: TIntegerField
      FieldName = 'IDSTATUS'
    end
    object adoStatusSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 25
    end
    object adoStatusTEKST: TMemoField
      FieldName = 'TEKST'
      BlobType = ftMemo
    end
    object adoStatusGEBYR: TFloatField
      FieldName = 'GEBYR'
    end
    object adoStatusAKTIV: TSmallintField
      FieldName = 'AKTIV'
    end
    object adoStatusRENTESATS: TFloatField
      FieldName = 'RENTESATS'
    end
    object adoStatusOVERSKRIFT: TStringField
      FieldName = 'OVERSKRIFT'
      Size = 80
    end
  end
  object adoPurreHist: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 'select * from FAKTURAPURRING'#13#10'where IDFAKTURA = :IdFaktura;'
    Parameters = <
      item
        Name = 'IdFaktura'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 336
    Top = 352
    object adoPurreHistIDFAKTURA: TIntegerField
      FieldName = 'IDFAKTURA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoPurreHistDATO: TDateTimeField
      FieldName = 'DATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoPurreHistPURREDATO: TDateField
      FieldName = 'PURREDATO'
    end
    object adoPurreHistBESKRIVELSE: TStringField
      FieldName = 'BESKRIVELSE'
      Size = 80
    end
    object adoPurreHistTEKST: TMemoField
      FieldName = 'TEKST'
      BlobType = ftMemo
    end
    object adoPurreHistGEBYR: TFloatField
      FieldName = 'GEBYR'
    end
    object adoPurreHistRENTESATS: TFloatField
      FieldName = 'RENTESATS'
    end
    object adoPurreHistBRUKER: TStringField
      FieldName = 'BRUKER'
    end
  end
  object dspPurreHist: TDataSetProvider
    DataSet = adoPurreHist
    UpdateMode = upWhereKeyOnly
    Left = 368
    Top = 352
  end
  object cdsPurreHist: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPurreHist'
    Left = 400
    Top = 352
    object cdsPurreHistIDFAKTURA: TIntegerField
      FieldName = 'IDFAKTURA'
    end
    object cdsPurreHistDATO: TDateTimeField
      FieldName = 'DATO'
    end
    object cdsPurreHistPURREDATO: TDateField
      FieldName = 'PURREDATO'
    end
    object cdsPurreHistBESKRIVELSE: TStringField
      FieldName = 'BESKRIVELSE'
      Size = 80
    end
    object cdsPurreHistTEKST: TMemoField
      FieldName = 'TEKST'
      BlobType = ftMemo
    end
    object cdsPurreHistGEBYR: TFloatField
      FieldName = 'GEBYR'
    end
    object cdsPurreHistRENTESATS: TFloatField
      FieldName = 'RENTESATS'
    end
    object cdsPurreHistBRUKER: TStringField
      FieldName = 'BRUKER'
    end
  end
end
