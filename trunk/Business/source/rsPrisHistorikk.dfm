object frmPrisHistorikk: TfrmPrisHistorikk
  Left = 326
  Top = 213
  Width = 699
  Height = 521
  Caption = 'Prisutvikling'
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
    Top = 0
    Width = 691
    Height = 463
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 0
    object DBChart1: TDBChart
      Left = 5
      Top = 5
      Width = 681
      Height = 453
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Gradient.EndColor = 14858398
      Gradient.StartColor = clSilver
      Gradient.Visible = True
      MarginBottom = 3
      MarginTop = 3
      Title.Font.Charset = ANSI_CHARSET
      Title.Font.Color = clBlack
      Title.Font.Height = -19
      Title.Font.Name = 'Trebuchet MS'
      Title.Font.Style = [fsBold]
      Title.Text.Strings = (
        'Prisutvikling')
      LeftAxis.Title.Caption = 'Pris i Kroner'
      LeftAxis.TitleSize = 4
      Legend.Alignment = laTop
      Legend.ColorWidth = 20
      Legend.ShadowSize = 2
      Legend.TopPos = 0
      Legend.VertMargin = 11
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = clSilver
      TabOrder = 0
      object Series2: TLineSeries
        Marks.Arrow.Visible = False
        Marks.ArrowLength = 8
        Marks.BackColor = clWhite
        Marks.Frame.Visible = False
        Marks.Style = smsValue
        Marks.Transparent = True
        Marks.Visible = False
        DataSource = cdsPrisTrend
        SeriesColor = clGreen
        Title = 'Innkj'#248'prspris'
        ValueFormat = '#,##0.00'
        XLabelsSource = 'ENDRET'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = True
        XValues.DateTime = True
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        XValues.ValueSource = 'ENDRET'
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'GAMMELINNPRIS'
      end
      object Series1: TLineSeries
        Marks.Arrow.Visible = False
        Marks.ArrowLength = 8
        Marks.BackColor = clWhite
        Marks.Frame.Visible = False
        Marks.Style = smsValue
        Marks.Transparent = True
        Marks.Visible = False
        DataSource = cdsPrisTrend
        SeriesColor = clRed
        Title = 'Utsalgspris'
        ValueFormat = '# ##0.00'
        XLabelsSource = 'ENDRET'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = True
        XValues.DateTime = True
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        XValues.ValueSource = 'ENDRET'
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'GAMMELPRIS'
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 463
    Width = 691
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      691
      31)
    object Button1: TButton
      Left = 604
      Top = 2
      Width = 82
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Lukk'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
  end
  object adoPrisTrend: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select * from PRISHISTORIKK'#13#10'where IDKLIENT = :IdKlient '#13#10'and PR' +
      'ODUKTNR = :Pnr'#13#10'order by ENDRET;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'Pnr'
        DataType = ftString
        Precision = 30
        Size = 30
        Value = '54824'
      end>
    Left = 8
    Top = 8
    object adoPrisTrendIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object adoPrisTrendPRODUKTNR: TStringField
      FieldName = 'PRODUKTNR'
      Size = 30
    end
    object adoPrisTrendENDRET: TDateTimeField
      FieldName = 'ENDRET'
      DisplayFormat = 'DD.MM.YY'
    end
    object adoPrisTrendGAMMELPRIS: TFloatField
      FieldName = 'GAMMELPRIS'
      DisplayFormat = '#,##0.00'
    end
    object adoPrisTrendENDRINGPRIS: TFloatField
      FieldName = 'ENDRINGPRIS'
    end
    object adoPrisTrendGAMMELINNPRIS: TFloatField
      FieldName = 'GAMMELINNPRIS'
      DisplayFormat = '#,##0.00'
    end
    object adoPrisTrendENDRINGINNPRIS: TFloatField
      FieldName = 'ENDRINGINNPRIS'
    end
  end
  object dspPrisTrend: TDataSetProvider
    DataSet = adoPrisTrend
    Left = 8
    Top = 36
  end
  object cdsPrisTrend: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPrisTrend'
    Left = 8
    Top = 64
    object cdsPrisTrendIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object cdsPrisTrendPRODUKTNR: TStringField
      FieldName = 'PRODUKTNR'
      Size = 30
    end
    object cdsPrisTrendENDRET: TDateTimeField
      FieldName = 'ENDRET'
      DisplayFormat = 'DD.MM.YYYY'
    end
    object cdsPrisTrendGAMMELPRIS: TFloatField
      FieldName = 'GAMMELPRIS'
    end
    object cdsPrisTrendENDRINGPRIS: TFloatField
      FieldName = 'ENDRINGPRIS'
    end
    object cdsPrisTrendGAMMELINNPRIS: TFloatField
      FieldName = 'GAMMELINNPRIS'
    end
    object cdsPrisTrendENDRINGINNPRIS: TFloatField
      FieldName = 'ENDRINGINNPRIS'
    end
  end
end
