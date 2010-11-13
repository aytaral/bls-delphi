object frmPostnrReg: TfrmPostnrReg
  Left = 521
  Top = 267
  ActiveControl = editSok
  BorderStyle = bsDialog
  Caption = 'Postnummer Registrering'
  ClientHeight = 428
  ClientWidth = 452
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
    Top = 395
    Width = 452
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      452
      33)
    object btnOK: TButton
      Left = 275
      Top = 3
      Width = 84
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&OK'
      Default = True
      ModalResult = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnLukk: TButton
      Left = 363
      Top = 3
      Width = 84
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Lukk'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 452
    Height = 76
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 5
      Top = 5
      Width = 442
      Height = 66
      Align = alClient
      Caption = 'S'#248'kekriterier:'
      TabOrder = 0
      object Label1: TLabel
        Left = 12
        Top = 16
        Width = 43
        Height = 13
        Caption = 'S'#248'kefelt:'
      end
      object Label2: TLabel
        Left = 164
        Top = 16
        Width = 51
        Height = 13
        Caption = 'S'#248'ketekst:'
      end
      object cbIndex: TComboBox
        Left = 12
        Top = 32
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 'Postnr'
        OnChange = cbIndexChange
        Items.Strings = (
          'Postnr'
          'Poststed')
      end
      object editSok: TEdit
        Left = 164
        Top = 32
        Width = 265
        Height = 21
        TabOrder = 1
        OnKeyUp = editSokKeyUp
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 76
    Width = 452
    Height = 319
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 2
    object dbgPostnr: TDBGrid
      Left = 5
      Top = 5
      Width = 442
      Height = 309
      Align = alClient
      DataSource = dsPostnr
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
          FieldName = 'POSTNR'
          Title.Caption = 'Postnr'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'POSTSTED'
          Title.Caption = 'Poststed'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KOMMUNENR'
          Title.Caption = 'Kommunenr'
          Visible = True
        end
        item
          Color = clBtnFace
          Expanded = False
          FieldName = 'KOMMUNE'
          ReadOnly = True
          Title.Caption = 'Kommune'
          Width = 150
          Visible = True
        end>
    end
  end
  object adoPostnr: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 'select * from POSTNR'
    Parameters = <>
    Left = 8
    Top = 396
    object adoPostnrPOSTNR: TStringField
      FieldName = 'POSTNR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 6
    end
    object adoPostnrPOSTSTED: TStringField
      FieldName = 'POSTSTED'
      Size = 30
    end
    object adoPostnrKOMMUNENR: TStringField
      FieldName = 'KOMMUNENR'
      Size = 4
    end
  end
  object dspPostnr: TDataSetProvider
    DataSet = adoPostnr
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 396
  end
  object cdsPostnr: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'POSTNR'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'POSTSTED'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'KOMMUNENR'
        DataType = ftString
        Size = 4
      end>
    IndexDefs = <
      item
        Name = 'cdsPostnrIndex1'
        Fields = 'POSTNR'
        Options = [ixPrimary]
      end
      item
        Name = 'cdsPostnrIndex2'
        Fields = 'POSTSTED'
      end>
    IndexFieldNames = 'POSTNR'
    PacketRecords = 100
    Params = <>
    ProviderName = 'dspPostnr'
    StoreDefs = True
    Left = 72
    Top = 396
    object cdsPostnrPOSTNR: TStringField
      FieldName = 'POSTNR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 6
    end
    object cdsPostnrPOSTSTED: TStringField
      FieldName = 'POSTSTED'
      Size = 30
    end
    object cdsPostnrKOMMUNENR: TStringField
      FieldName = 'KOMMUNENR'
      Size = 4
    end
    object cdsPostnrKOMMUNE: TStringField
      FieldKind = fkLookup
      FieldName = 'KOMMUNE'
      LookupDataSet = Dm.cdsKommune
      LookupKeyFields = 'KOMMUNENR'
      LookupResultField = 'KOMMUNE'
      KeyFields = 'KOMMUNENR'
      Size = 30
      Lookup = True
    end
  end
  object dsPostnr: TDataSource
    DataSet = cdsPostnr
    Left = 104
    Top = 396
  end
  object ActionList1: TActionList
    Left = 12
    Top = 356
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'Sett inn nytt Postnummer'
      ShortCut = 16429
      DataSource = dsPostnr
    end
    object acSlett: TAction
      Category = 'Dataset'
      Caption = 'Slett Postnummer'
      ShortCut = 16430
      OnExecute = acSlettExecute
    end
  end
  object TBXPopupMenu1: TTBXPopupMenu
    Left = 52
    Top = 360
    object TBXItem2: TTBXItem
      Action = DataSetInsert1
    end
    object TBXSeparatorItem1: TTBXSeparatorItem
    end
    object TBXItem1: TTBXItem
      Action = acSlett
    end
  end
end
