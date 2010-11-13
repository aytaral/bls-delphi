object frmBilagTekst: TfrmBilagTekst
  Left = 775
  Top = 193
  ActiveControl = dbgTekst
  BorderStyle = bsDialog
  Caption = 'Bilagstekster'
  ClientHeight = 368
  ClientWidth = 370
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
    Top = 338
    Width = 370
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      370
      30)
    object btnOK: TButton
      Left = 189
      Top = 0
      Width = 85
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnAvbryt: TButton
      Left = 277
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
      OnClick = btnRedigerClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 370
    Height = 338
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 1
    object dbgTekst: TDBGrid
      Left = 8
      Top = 8
      Width = 354
      Height = 322
      Align = alClient
      DataSource = dsTekst
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = TBXPopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IDTEKST'
          Title.Caption = 'Kode'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TEKST'
          Title.Caption = 'Tekst'
          Width = 286
          Visible = True
        end>
    end
  end
  object adoTekst: TADODataSet
    Connection = Dm.adoConn
    CommandText = 'select * from BILAGTEKST'#13#10'order by IDTEKST;'
    Parameters = <>
    Left = 16
    Top = 284
    object adoTekstIDTEKST: TIntegerField
      FieldName = 'IDTEKST'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoTekstTEKST: TStringField
      FieldName = 'TEKST'
      Size = 25
    end
  end
  object blsDbGridScroll1: TblsDbGridScroll
    Enabled = True
    Left = 144
    Top = 284
  end
  object dspTekst: TDataSetProvider
    DataSet = adoTekst
    UpdateMode = upWhereKeyOnly
    Left = 48
    Top = 284
  end
  object cdsTekst: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTekst'
    OnNewRecord = cdsTekstNewRecord
    Left = 80
    Top = 284
    object cdsTekstIDTEKST: TIntegerField
      FieldName = 'IDTEKST'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsTekstTEKST: TStringField
      FieldName = 'TEKST'
      Size = 25
    end
  end
  object dsTekst: TDataSource
    DataSet = cdsTekst
    Left = 112
    Top = 284
  end
  object ActionList: TActionList
    Left = 24
    Top = 236
    object acSlett: TAction
      Caption = 'Slett tekst'
      ShortCut = 16430
      OnExecute = acSlettExecute
    end
  end
  object TBXPopupMenu1: TTBXPopupMenu
    Left = 272
    Top = 88
    object TBXItem1: TTBXItem
      Action = acSlett
    end
  end
end
