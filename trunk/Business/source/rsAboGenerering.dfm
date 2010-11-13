object frmAboGenerering: TfrmAboGenerering
  Left = 0
  Top = 0
  ActiveControl = btnStart
  BorderStyle = bsDialog
  Caption = 'Prosessering av abonnement'
  ClientHeight = 392
  ClientWidth = 658
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 658
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 2
    object Bevel1: TBevel
      Left = 0
      Top = 56
      Width = 658
      Height = 9
      Align = alBottom
      Shape = bsBottomLine
      ExplicitWidth = 646
    end
    object Label1: TLabel
      Left = 18
      Top = 11
      Width = 215
      Height = 21
      Caption = 'Behandling av abonnementer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 18
      Top = 32
      Width = 415
      Height = 13
      Caption = 
        'Prosesseringen av abonnementer vil beregne nytt forfall og gener' +
        'ere ordre og faktura'
      ShowAccelChar = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 351
    Width = 658
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btnAvslutt: TButton
      Left = 551
      Top = 6
      Width = 90
      Height = 25
      Cancel = True
      Caption = '&Avbryt'
      ModalResult = 2
      TabOrder = 1
    end
    object btnStart: TButton
      Left = 455
      Top = 6
      Width = 90
      Height = 25
      Caption = '&Start >'
      Default = True
      TabOrder = 0
      OnClick = btnStartClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 658
    Height = 286
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 329
      Top = 115
      Width = 312
      Height = 162
      Caption = 'Fakturagenerering:'
      TabOrder = 0
      object Panel5: TPanel
        Left = 2
        Top = 15
        Width = 308
        Height = 35
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cbGenFaktura: TCheckBox
          Left = 20
          Top = 13
          Width = 233
          Height = 17
          Caption = 'Generer faktura for abonnementene'
          TabOrder = 0
          OnClick = cbGenFakturaClick
        end
      end
      object pnlFaktura: TPanel
        Left = 2
        Top = 50
        Width = 308
        Height = 110
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Label4: TLabel
          Left = 20
          Top = 17
          Width = 84
          Height = 13
          Caption = 'Velg fakturadato:'
        end
        object rbAboForfall: TRadioButton
          Left = 20
          Top = 81
          Width = 265
          Height = 17
          Caption = 'Bruk forfallet p'#229' abonnementet som forfallsdato'
          TabOrder = 0
        end
        object dtFakturaDato: TDateTimePicker
          Left = 140
          Top = 14
          Width = 137
          Height = 21
          Date = 39473.816516944450000000
          Time = 39473.816516944450000000
          TabOrder = 1
        end
        object rbKundeDager: TRadioButton
          Left = 20
          Top = 61
          Width = 257
          Height = 17
          Caption = 'Beregn forfall ut i fra kundens forfallsdager '
          TabOrder = 2
        end
        object rbAboDager: TRadioButton
          Left = 20
          Top = 41
          Width = 281
          Height = 17
          Caption = 'Beregn forfall ut i fra fakturadager p'#229' abonnementet'
          Checked = True
          TabOrder = 3
          TabStop = True
        end
      end
    end
    object GroupBox2: TGroupBox
      Left = 18
      Top = 115
      Width = 295
      Height = 162
      Caption = 'Ordregenerering:'
      TabOrder = 1
      object pnlOrdre: TPanel
        Left = 2
        Top = 50
        Width = 291
        Height = 110
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label5: TLabel
          Left = 22
          Top = 17
          Width = 75
          Height = 13
          Caption = 'Velg ordredato:'
        end
        object dtOrdreDato: TDateTimePicker
          Left = 128
          Top = 14
          Width = 137
          Height = 21
          Date = 39473.816516944450000000
          Time = 39473.816516944450000000
          TabOrder = 0
        end
      end
      object Panel4: TPanel
        Left = 2
        Top = 15
        Width = 291
        Height = 35
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object cbGenOrdre: TCheckBox
          Left = 20
          Top = 8
          Width = 233
          Height = 17
          Caption = 'Generer ordrer for abonnementene'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = cbGenOrdreClick
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 18
      Top = 16
      Width = 623
      Height = 89
      Caption = 'Innstillinger:'
      TabOrder = 2
      object dtAbo: TDateTimePicker
        Left = 309
        Top = 48
        Width = 131
        Height = 21
        Date = 39473.816516944450000000
        Time = 39473.816516944450000000
        Enabled = False
        TabOrder = 0
      end
      object rbMultiAbo: TRadioButton
        Left = 22
        Top = 51
        Width = 259
        Height = 17
        Caption = 'Prosesser alle abonnementer som har forfall f'#248'r'
        Enabled = False
        TabOrder = 1
        OnClick = rbMultiAboClick
      end
      object rbSigelAbo: TRadioButton
        Left = 22
        Top = 28
        Width = 281
        Height = 17
        Caption = 'Prosesser bare valgt abonnement '
        Checked = True
        TabOrder = 2
        TabStop = True
        OnClick = rbMultiAboClick
      end
    end
  end
  object adoAboHistorikk: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 'select * '#13#10'from ABOHISTORIKK'#13#10'where IDABO = -1;'
    Parameters = <>
    Left = 472
    Top = 40
    object adoAboHistorikkIDABO: TIntegerField
      FieldName = 'IDABO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoAboHistorikkPROSESSDATO: TDateTimeField
      FieldName = 'PROSESSDATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoAboHistorikkFORFALL: TDateField
      FieldName = 'FORFALL'
    end
    object adoAboHistorikkIDORDRE: TIntegerField
      FieldName = 'IDORDRE'
    end
    object adoAboHistorikkIDFAKTURA: TIntegerField
      FieldName = 'IDFAKTURA'
    end
    object adoAboHistorikkBRUKER: TStringField
      FieldName = 'BRUKER'
    end
  end
  object dspAboHistorikk: TDataSetProvider
    DataSet = adoAboHistorikk
    UpdateMode = upWhereKeyOnly
    Left = 504
    Top = 40
  end
  object cdsAboHistorikk: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAboHistorikk'
    OnNewRecord = cdsAboHistorikkNewRecord
    Left = 536
    Top = 40
    object cdsAboHistorikkIDABO: TIntegerField
      FieldName = 'IDABO'
    end
    object cdsAboHistorikkPROSESSDATO: TDateTimeField
      FieldName = 'PROSESSDATO'
    end
    object cdsAboHistorikkFORFALL: TDateField
      FieldName = 'FORFALL'
    end
    object cdsAboHistorikkIDORDRE: TIntegerField
      FieldName = 'IDORDRE'
    end
    object cdsAboHistorikkIDFAKTURA: TIntegerField
      FieldName = 'IDFAKTURA'
    end
    object cdsAboHistorikkBRUKER: TStringField
      FieldName = 'BRUKER'
    end
  end
end
