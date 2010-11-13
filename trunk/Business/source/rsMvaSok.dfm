object frmMvaSok: TfrmMvaSok
  Left = 489
  Top = 324
  ActiveControl = dbgMva
  BorderStyle = bsDialog
  Caption = 'Merverdiavgift'
  ClientHeight = 319
  ClientWidth = 412
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 289
    Width = 412
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      412
      30)
    object btnOK: TButton
      Left = 231
      Top = 0
      Width = 85
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object btnAvbryt: TButton
      Left = 319
      Top = 0
      Width = 85
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Lukk'
      ModalResult = 2
      TabOrder = 1
    end
    object btnRediger: TButton
      Left = 8
      Top = 0
      Width = 85
      Height = 25
      Caption = '&Rediger'
      TabOrder = 2
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 412
    Height = 289
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 1
    object dbgMva: TDBGrid
      Left = 8
      Top = 8
      Width = 396
      Height = 273
      Align = alClient
      DataSource = dsMva
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'MVAKODE'
          Title.Caption = 'Mva. kode'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BESKRIVELSE'
          Title.Caption = 'Beskrivelse'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SATS'
          Title.Caption = 'Sats'
          Visible = True
        end>
    end
  end
  object blsDbGridScroll1: TblsDbGridScroll
    Enabled = True
    Left = 16
    Top = 152
  end
  object adoMva: TADODataSet
    Connection = Dm.adoConn
    CommandText = 'select * from MVA'#13#10'order by MVAKODE;'
    Parameters = <>
    Left = 16
    Top = 184
  end
  object dspMva: TDataSetProvider
    DataSet = adoMva
    Left = 48
    Top = 184
  end
  object cdsMva: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMva'
    Left = 80
    Top = 184
    object cdsMvaMVAKODE: TIntegerField
      FieldName = 'MVAKODE'
    end
    object cdsMvaBESKRIVELSE: TStringField
      FieldName = 'BESKRIVELSE'
      Size = 40
    end
    object cdsMvaSATS: TFloatField
      FieldName = 'SATS'
      DisplayFormat = '#,##0.00 %'
      EditFormat = '0.00'
    end
    object cdsMvaAKTIV: TSmallintField
      FieldName = 'AKTIV'
    end
  end
  object dsMva: TDataSource
    DataSet = cdsMva
    OnDataChange = dsMvaDataChange
    Left = 112
    Top = 184
  end
end
