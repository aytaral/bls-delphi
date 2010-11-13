object frmKmstand: TfrmKmstand
  Left = 519
  Top = 360
  ActiveControl = edKm
  BorderStyle = bsDialog
  Caption = 'Registrering av kilometerstand'
  ClientHeight = 184
  ClientWidth = 331
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 12
    Width = 63
    Height = 13
    Caption = 'For valgt bil :'
  end
  object lblBilinfo: TLabel
    Left = 112
    Top = 12
    Width = 167
    Height = 13
    Caption = 'AA-XXXXX Bilmerke og modell'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 12
    Top = 32
    Width = 85
    Height = 13
    Caption = 'Siste registrering:'
  end
  object DBText1: TDBText
    Left = 192
    Top = 32
    Width = 48
    Height = 13
    AutoSize = True
    DataField = 'KMDATO'
    DataSource = dsKm
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 112
    Top = 32
    Width = 65
    Height = 17
    DataField = 'KMSTAND'
    DataSource = dsKm
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 154
    Width = 331
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      331
      30)
    object btnAvbryt: TButton
      Left = 235
      Top = 0
      Width = 87
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Avbryt'
      ModalResult = 2
      TabOrder = 1
    end
    object btnOK: TButton
      Left = 143
      Top = 0
      Width = 87
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&OK'
      Default = True
      TabOrder = 0
      OnClick = btnOKClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 64
    Width = 313
    Height = 77
    Caption = 'Ny kilometerstand'
    TabOrder = 1
    object Label2: TLabel
      Left = 17
      Top = 24
      Width = 27
      Height = 13
      Caption = 'Dato:'
    end
    object Label3: TLabel
      Left = 168
      Top = 24
      Width = 75
      Height = 13
      Caption = 'Kilometerstand:'
    end
    object edKm: TblsAlignEdit
      Left = 168
      Top = 40
      Width = 129
      Height = 21
      Alignment = taRightJustify
      TabOrder = 0
      Text = '0'
      EditType = etInteger
    end
    object dtDato: TDateTimePicker
      Left = 16
      Top = 40
      Width = 97
      Height = 21
      Date = 40495.767833506940000000
      Time = 40495.767833506940000000
      TabOrder = 1
    end
  end
  object adoKm: TADODataSet
    Connection = dmData.adoConn
    CommandText = 
      'select first 1 KMDATO, KMSTAND'#13#10'from KMHISTORIKK'#13#10'where IDBIL = ' +
      ':IdBil'#13#10'order by KMDATO desc;'
    Parameters = <
      item
        Name = 'IdBil'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 292
    Top = 4
    object adoKmKMDATO: TDateField
      FieldName = 'KMDATO'
    end
    object adoKmKMSTAND: TIntegerField
      FieldName = 'KMSTAND'
      DisplayFormat = '###,##0'
    end
  end
  object dsKm: TDataSource
    DataSet = adoKm
    Left = 292
    Top = 36
  end
end
