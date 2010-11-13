object frmSalgstall: TfrmSalgstall
  Left = 356
  Top = 225
  BorderStyle = bsDialog
  Caption = 'Beregning av salgstall'
  ClientHeight = 602
  ClientWidth = 527
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
    Top = 568
    Width = 527
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object btnLukk: TButton
      Left = 434
      Top = 0
      Width = 83
      Height = 25
      Cancel = True
      Caption = '&Lukk'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object btnExport: TButton
      Left = 10
      Top = 0
      Width = 177
      Height = 25
      Caption = 'Eksporter fakturaliste til Excel'
      TabOrder = 1
      OnClick = btnExportClick
    end
    object btnPrint: TButton
      Left = 282
      Top = 0
      Width = 83
      Height = 25
      Caption = '&Skriv ut'
      TabOrder = 2
      OnClick = btnPrintClick
    end
    object btnPreview: TButton
      Left = 193
      Top = 0
      Width = 83
      Height = 25
      Caption = '&Forh'#229'ndsvis'
      TabOrder = 3
      OnClick = btnPreviewClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 527
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 10
    TabOrder = 1
    object Label12: TLabel
      Left = 12
      Top = 12
      Width = 63
      Height = 13
      Caption = 'Velg periode:'
    end
    object Label13: TLabel
      Left = 96
      Top = 12
      Width = 16
      Height = 13
      Caption = 'Fra'
    end
    object Label14: TLabel
      Left = 244
      Top = 12
      Width = 8
      Height = 13
      Caption = 'til'
    end
    object btnUpdate: TButton
      Left = 400
      Top = 5
      Width = 117
      Height = 25
      Caption = 'Oppdater'
      TabOrder = 0
      OnClick = btnUpdateClick
    end
    object dtStart: TDateTimePicker
      Left = 122
      Top = 8
      Width = 100
      Height = 21
      Date = 40495.733183148150000000
      Time = 40495.733183148150000000
      TabOrder = 1
      OnChange = dtStartChange
    end
    object dtSlutt: TDateTimePicker
      Left = 262
      Top = 8
      Width = 100
      Height = 21
      Date = 40495.733183148150000000
      Time = 40495.733183148150000000
      TabOrder = 2
      OnChange = dtStartChange
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 33
    Width = 527
    Height = 535
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    TabOrder = 2
    object Panel9: TPanel
      Left = 10
      Top = 10
      Width = 507
      Height = 195
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 12
        Top = 60
        Width = 142
        Height = 13
        Caption = 'Total omsetning for perioden:'
      end
      object Label2: TLabel
        Left = 12
        Top = 28
        Width = 172
        Height = 13
        Caption = 'Totalt salg eksklusiv merverdiavgift:'
      end
      object DBText1: TDBText
        Left = 330
        Top = 60
        Width = 65
        Height = 17
        Alignment = taRightJustify
        DataField = 'TOTALT'
        DataSource = dsSalg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 330
        Top = 28
        Width = 65
        Height = 17
        Alignment = taRightJustify
        DataField = 'EKS'
        DataSource = dsSalg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 330
        Top = 44
        Width = 65
        Height = 17
        Alignment = taRightJustify
        DataField = 'MVA'
        DataSource = dsSalg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 12
        Top = 44
        Width = 74
        Height = 13
        Caption = 'Merverdiavgift:'
      end
      object DBText4: TDBText
        Left = 330
        Top = 80
        Width = 65
        Height = 17
        Alignment = taRightJustify
        DataField = 'RABATT'
        DataSource = dsSalg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 12
        Top = 84
        Width = 126
        Height = 13
        Caption = 'Sum rabatt gitt i perioden:'
      end
      object Label5: TLabel
        Left = 12
        Top = 100
        Width = 159
        Height = 13
        Caption = 'Sum spesialavgifter for perioden:'
      end
      object DBText5: TDBText
        Left = 330
        Top = 96
        Width = 65
        Height = 17
        Alignment = taRightJustify
        DataField = 'AVGIFT'
        DataSource = dsSalg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 12
        Top = 116
        Width = 160
        Height = 13
        Caption = 'Sum purregebyr (fritatt for mva):'
      end
      object DBText6: TDBText
        Left = 330
        Top = 112
        Width = 65
        Height = 17
        Alignment = taRightJustify
        DataField = 'PURREGEBYR'
        DataSource = dsSalg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText7: TDBText
        Left = 330
        Top = 128
        Width = 65
        Height = 17
        Alignment = taRightJustify
        DataField = 'PURRERENTER'
        DataSource = dsSalg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 12
        Top = 132
        Width = 162
        Height = 13
        Caption = 'Sum purrerenter (fritatt fra mva):'
      end
      object DBText8: TDBText
        Left = 330
        Top = 144
        Width = 65
        Height = 17
        Alignment = taRightJustify
        DataField = 'AVRUNDING'
        DataSource = dsSalg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 12
        Top = 148
        Width = 75
        Height = 13
        Caption = 'Sum avrunding:'
      end
      object DBText9: TDBText
        Left = 330
        Top = 168
        Width = 65
        Height = 17
        Alignment = taRightJustify
        DataField = 'ANTALL'
        DataSource = dsSalg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 12
        Top = 168
        Width = 141
        Height = 13
        Caption = 'Antall fakturaer for perioden:'
      end
      object Label10: TLabel
        Left = 12
        Top = 10
        Width = 65
        Height = 13
        Caption = 'Beskrivelse'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 336
        Top = 10
        Width = 57
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Bel'#248'p'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel8: TPanel
      Left = 10
      Top = 205
      Width = 507
      Height = 10
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 10
      Top = 215
      Width = 507
      Height = 113
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 2
      object blsBorderPanel1: TblsBorderPanel
        Left = 2
        Top = 2
        Width = 503
        Height = 109
        Align = alClient
        BorderWidth = 5
        Caption = 'blsBorderPanel1'
        TabOrder = 0
        object dbgArt: TDBGrid
          Left = 6
          Top = 6
          Width = 491
          Height = 97
          Align = alClient
          BorderStyle = bsNone
          Color = clBtnFace
          DataSource = dsArt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnEnter = dbgMvaEnter
          Columns = <
            item
              Expanded = False
              FieldName = 'FAKTURAART'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COUNT'
              Title.Alignment = taRightJustify
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taRightJustify
              Width = 90
              Visible = True
            end>
        end
      end
    end
    object Panel4: TPanel
      Left = 10
      Top = 328
      Width = 507
      Height = 10
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
    end
    object Panel10: TPanel
      Left = 10
      Top = 429
      Width = 507
      Height = 97
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 4
      object blsBorderPanel2: TblsBorderPanel
        Left = 2
        Top = 2
        Width = 503
        Height = 93
        Align = alClient
        BorderWidth = 5
        Caption = 'blsBorderPanel2'
        TabOrder = 0
        object dbgMva: TDBGrid
          Left = 6
          Top = 6
          Width = 491
          Height = 81
          Align = alClient
          BorderStyle = bsNone
          Color = clBtnFace
          DataSource = dsMva
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnEnter = dbgMvaEnter
          Columns = <
            item
              Expanded = False
              FieldName = 'MVA'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taRightJustify
              Width = 190
              Visible = True
            end>
        end
      end
    end
    object Panel11: TPanel
      Left = 10
      Top = 338
      Width = 507
      Height = 81
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 5
      object blsBorderPanel3: TblsBorderPanel
        Left = 2
        Top = 2
        Width = 503
        Height = 77
        Align = alClient
        BorderWidth = 5
        Caption = 'blsBorderPanel2'
        TabOrder = 0
        object dbgBetaling: TDBGrid
          Left = 6
          Top = 6
          Width = 491
          Height = 65
          Align = alClient
          BorderStyle = bsNone
          Color = clBtnFace
          DataSource = dsBetaling
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnEnter = dbgMvaEnter
          Columns = <
            item
              Expanded = False
              FieldName = 'BETSTATUS'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COUNT'
              Title.Alignment = taRightJustify
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taRightJustify
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CASE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taRightJustify
              Width = 90
              Visible = True
            end>
        end
      end
    end
    object Panel12: TPanel
      Left = 10
      Top = 419
      Width = 507
      Height = 10
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 6
    end
  end
  object adoSalg: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select'#13#10'    sum(SUMEKS) as EKS,'#13#10'    sum(SUMMVA) as MVA,'#13#10'    su' +
      'm(SUMAVG) as AVGIFT,'#13#10'    sum(SUMRAB) as RABATT,'#13#10'    sum(SUMTOT' +
      ') as TOTALT,'#13#10'    sum(AVRUNDING) as AVRUNDING,'#13#10'    sum(PURREGEB' +
      'YR) as PURREGEBYR,'#13#10'    sum(PURRERENTER) as PURRERENTER,'#13#10'    co' +
      'unt(*) as ANTALL'#13#10'from FAKTURA'#13#10'where IDKLIENT = :IdKlient'#13#10'and ' +
      'FAKTURADATO between :Start and :Slutt;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Start'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 6
        Value = Null
      end
      item
        Name = 'Slutt'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 6
        Value = Null
      end>
    Left = 260
    Top = 52
    object adoSalgEKS: TFloatField
      FieldName = 'EKS'
      DisplayFormat = '#,##0.00'
    end
    object adoSalgMVA: TFloatField
      FieldName = 'MVA'
      DisplayFormat = '#,##0.00'
    end
    object adoSalgAVGIFT: TFloatField
      FieldName = 'AVGIFT'
      DisplayFormat = '#,##0.00'
    end
    object adoSalgRABATT: TFloatField
      FieldName = 'RABATT'
      DisplayFormat = '#,##0.00'
    end
    object adoSalgTOTALT: TFloatField
      FieldName = 'TOTALT'
      DisplayFormat = '#,##0.00'
    end
    object adoSalgAVRUNDING: TFloatField
      FieldName = 'AVRUNDING'
      DisplayFormat = '#,##0.00'
    end
    object adoSalgPURREGEBYR: TFloatField
      FieldName = 'PURREGEBYR'
      DisplayFormat = '#,##0.00'
    end
    object adoSalgPURRERENTER: TFloatField
      FieldName = 'PURRERENTER'
      DisplayFormat = '#,##0.00'
    end
    object adoSalgANTALL: TIntegerField
      FieldName = 'ANTALL'
    end
  end
  object dsSalg: TDataSource
    DataSet = adoSalg
    Left = 288
    Top = 52
  end
  object adoArt: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select FAKTURAART, count(FAKTURAART), sum(SUMTOT)'#13#10'from FAKTURA ' +
      'F'#13#10'join FAKTURAART A on (F.IDFAKTURAART = A.IDFAKTURAART)'#13#10'where' +
      ' IDKLIENT = :IdKlient'#13#10'and FAKTURADATO between :Start and :Slutt' +
      #13#10'group by FAKTURAART'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Start'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 6
        Value = Null
      end
      item
        Name = 'Slutt'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 6
        Value = Null
      end>
    Left = 260
    Top = 280
    object adoArtFAKTURAART: TStringField
      DisplayLabel = 'Fordeling p'#229' betalingsart'
      FieldName = 'FAKTURAART'
      Size = 25
    end
    object adoArtCOUNT: TIntegerField
      DisplayLabel = 'Antall'
      FieldName = 'COUNT'
    end
    object adoArtSUM: TFloatField
      DisplayLabel = 'Bel'#248'p'
      FieldName = 'SUM'
      DisplayFormat = '#,##0.00'
    end
  end
  object dsArt: TDataSource
    DataSet = adoArt
    OnDataChange = dsArtDataChange
    Left = 288
    Top = 280
  end
  object adoBetaling: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select BETSTATUS, '#13#10'  count(distinct F.IDFAKTURA), '#13#10'  sum(SUMTO' +
      'T), '#13#10'  case F.IDBETSTATUS'#13#10'    when 10 then sum(coalesce(BELOP,' +
      ' SUMTOT))'#13#10'    else sum(BELOP)'#13#10'  end'#13#10'from FAKTURA F'#13#10'join BETA' +
      'LTSTATUS B on (F.IDBETSTATUS = B.IDBETSTATUS)'#13#10'left join INNBETA' +
      'LING I on (F.IDFAKTURA = I.IDFAKTURA)'#13#10'where IDKLIENT = :IdKlien' +
      't'#13#10'and FAKTURADATO between :Start and :Slutt'#13#10'group by BETSTATUS' +
      ', F.IDBETSTATUS;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Start'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 6
        Value = Null
      end
      item
        Name = 'Slutt'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 6
        Value = Null
      end>
    Left = 260
    Top = 400
    object adoBetalingBETSTATUS: TStringField
      DisplayLabel = 'Betalingsstatus'
      FieldName = 'BETSTATUS'
      Size = 30
    end
    object adoBetalingCOUNT: TIntegerField
      DisplayLabel = 'Antall'
      FieldName = 'COUNT'
    end
    object adoBetalingSUM: TFloatField
      DisplayLabel = 'Totalbel'#248'p'
      FieldName = 'SUM'
      DisplayFormat = '#,##0.00'
    end
    object adoBetalingCASE: TFloatField
      DisplayLabel = 'Innbetalt'
      FieldName = 'CASE'
      DisplayFormat = '#,##0.00'
    end
  end
  object dsBetaling: TDataSource
    DataSet = adoBetaling
    OnDataChange = dsBetalingDataChange
    Left = 288
    Top = 400
  end
  object adoMva: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select L.MVA, sum((L.PRIS - (coalesce(L.RABATT, 0) * L.PRIS / 10' +
      '0)) * L.ANTALL * (coalesce(L.MVA, 0) / 100))'#13#10'from FAKTURALINJE ' +
      'L'#13#10'join FAKTURA F on (F.IDFAKTURA = L.IDFAKTURA)'#13#10'where F.IDKLIE' +
      'NT = :IdKlient'#13#10'and F.FAKTURADATO between :Start and :Slutt'#13#10'gro' +
      'up by L.MVA'#13#10'order by L.MVA desc;'#13#10
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Start'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 6
        Value = Null
      end
      item
        Name = 'Slutt'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 6
        Value = Null
      end>
    Left = 260
    Top = 472
    object adoMvaMVA: TFloatField
      Alignment = taLeftJustify
      DisplayLabel = 'Fordeling p'#229' Mva-satsene'
      FieldName = 'MVA'
      DisplayFormat = '0.00 %'
    end
    object adoMvaSUM: TFloatField
      DisplayLabel = 'Bel'#248'p'
      FieldName = 'SUM'
      DisplayFormat = '#,##0.00'
    end
  end
  object dsMva: TDataSource
    DataSet = adoMva
    OnDataChange = dsMvaDataChange
    Left = 288
    Top = 472
  end
  object adoFaktura: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    OnCalcFields = adoFakturaCalcFields
    CommandText = 
      'select  FAKTURANR, KUNDENR, KUNDEADR, FAKTURADATO, FORFALLDATO, ' +
      'BETALTDATO, BETSTATUS, FAKTURAART, REFNR, SUMEKS, SUMRAB, SUMAVG' +
      ', SUMMVA, SUMTOT, AVRUNDING, PURREDATO, PURREGEBYR, PURRERENTER'#13 +
      #10'from FAKTURA F'#13#10'join BETALTSTATUS B on (F.IDBETSTATUS = B.IDBET' +
      'STATUS)'#13#10'join FAKTURAART A on (F.IDFAKTURAART = A.IDFAKTURAART)'#13 +
      #10'where IDKLIENT = :IdKlient'#13#10'and FAKTURADATO between :Start and ' +
      ':Slutt'#13#10'order by FAKTURANR;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Start'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 6
        Value = Null
      end
      item
        Name = 'Slutt'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 6
        Value = Null
      end>
    Left = 48
    Top = 525
    object adoFakturaFAKTURANR: TIntegerField
      FieldName = 'FAKTURANR'
    end
    object adoFakturaKUNDENR: TIntegerField
      FieldName = 'KUNDENR'
    end
    object adoFakturaKUNDEADR: TMemoField
      FieldName = 'KUNDEADR'
      Visible = False
      BlobType = ftMemo
    end
    object adoFakturaKUNDE: TStringField
      FieldKind = fkCalculated
      FieldName = 'KUNDE'
      Size = 80
      Calculated = True
    end
    object adoFakturaFAKTURADATO: TDateField
      FieldName = 'FAKTURADATO'
    end
    object adoFakturaFORFALLDATO: TDateField
      FieldName = 'FORFALLDATO'
    end
    object adoFakturaBETALTDATO: TDateField
      FieldName = 'BETALTDATO'
    end
    object adoFakturaBETSTATUS: TStringField
      FieldName = 'BETSTATUS'
      Size = 30
    end
    object adoFakturaFAKTURAART: TStringField
      FieldName = 'FAKTURAART'
      Size = 25
    end
    object adoFakturaREFNR: TStringField
      FieldName = 'REFNR'
    end
    object adoFakturaSUMEKS: TFloatField
      FieldName = 'SUMEKS'
      DisplayFormat = '0.00'
    end
    object adoFakturaSUMRAB: TFloatField
      FieldName = 'SUMRAB'
      DisplayFormat = '0.00'
    end
    object adoFakturaSUMAVG: TFloatField
      FieldName = 'SUMAVG'
      DisplayFormat = '0.00'
    end
    object adoFakturaSUMMVA: TFloatField
      FieldName = 'SUMMVA'
      DisplayFormat = '0.00'
    end
    object adoFakturaSUMTOT: TFloatField
      FieldName = 'SUMTOT'
      DisplayFormat = '0.00'
    end
    object adoFakturaAVRUNDING: TFloatField
      FieldName = 'AVRUNDING'
    end
    object adoFakturaPURREDATO: TDateField
      FieldName = 'PURREDATO'
    end
    object adoFakturaPURREGEBYR: TFloatField
      FieldName = 'PURREGEBYR'
    end
    object adoFakturaPURRERENTER: TFloatField
      FieldName = 'PURRERENTER'
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
    ReportOptions.CreateDate = 39300.834776099500000000
    ReportOptions.LastChange = 39334.724321423610000000
    ScriptLanguage = 'PascalScript'
    ShowProgress = False
    StoreInDFM = False
    OnGetValue = frReportGetValue
    Left = 480
    Top = 469
  end
  object frMva: TfrxDBDataset
    UserName = 'frMva'
    CloseDataSource = False
    DataSet = adoMva
    BCDToCurrency = False
    Left = 316
    Top = 472
  end
  object frBetaling: TfrxDBDataset
    UserName = 'frBetaling'
    CloseDataSource = False
    DataSet = adoBetaling
    BCDToCurrency = False
    Left = 316
    Top = 400
  end
  object frArt: TfrxDBDataset
    UserName = 'frArt'
    CloseDataSource = False
    DataSource = dsArt
    BCDToCurrency = False
    Left = 316
    Top = 280
  end
  object frSalg: TfrxDBDataset
    UserName = 'frSalg'
    CloseDataSource = False
    DataSet = adoSalg
    BCDToCurrency = False
    Left = 316
    Top = 52
  end
  object frxRptConn: TfrxADOComponents
    DefaultDatabase = Dm.adoConn
    Left = 480
    Top = 500
  end
end
