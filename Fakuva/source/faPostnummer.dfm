object FrmPostnummer: TFrmPostnummer
  Left = 577
  Top = 213
  BorderStyle = bsDialog
  Caption = 'Postnummer'
  ClientHeight = 371
  ClientWidth = 303
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
  object Label1: TLabel
    Left = 8
    Top = 36
    Width = 42
    Height = 13
    Caption = 'Sortering'
  end
  object Label2: TLabel
    Left = 100
    Top = 36
    Width = 48
    Height = 13
    Caption = 'S'#248'ketekst'
  end
  object BtnOk: TButton
    Left = 117
    Top = 342
    Width = 87
    Height = 25
    Caption = '&OK'
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 1
  end
  object BtnAvbryt: TButton
    Left = 209
    Top = 342
    Width = 87
    Height = 25
    Cancel = True
    Caption = '&Avbryt'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 2
  end
  object CbSortering: TComboBox
    Left = 8
    Top = 52
    Width = 85
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 3
    Text = 'Postnummer'
    OnChange = CbSorteringChange
    Items.Strings = (
      'Postnummer'
      'Poststed')
  end
  object EditSok: TEdit
    Left = 100
    Top = 52
    Width = 195
    Height = 21
    TabOrder = 0
    OnKeyDown = EditSokKeyDown
    OnKeyUp = EditSokKeyUp
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 303
    Height = 28
    AutoSize = True
    Bands = <
      item
        BorderStyle = bsSingle
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 22
        Width = 301
      end>
    EdgeOuter = esNone
    object ToolBar1: TToolBar
      Left = 9
      Top = 2
      Width = 288
      Height = 22
      AutoSize = True
      Caption = 'ToolBar1'
      EdgeBorders = []
      Flat = True
      Images = Dm.TBilder
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Action = AcSettInn
      end
      object ToolButton2: TToolButton
        Left = 23
        Top = 0
        Action = AcDelete
      end
      object ToolButton3: TToolButton
        Left = 46
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 54
        Top = 0
        Action = AcEdit
      end
      object ToolButton9: TToolButton
        Left = 77
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 18
        Style = tbsSeparator
      end
      object ToolButton4: TToolButton
        Left = 85
        Top = 0
        Action = DataSetFirst1
      end
      object ToolButton5: TToolButton
        Left = 108
        Top = 0
        Action = DataSetPrior1
      end
      object ToolButton6: TToolButton
        Left = 131
        Top = 0
        Action = DataSetNext1
      end
      object ToolButton7: TToolButton
        Left = 154
        Top = 0
        Action = DataSetLast1
      end
    end
  end
  object DbgPost: TDBGrid
    Left = 8
    Top = 80
    Width = 287
    Height = 255
    DataSource = DsPost
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DbgPostDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Postnr'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Poststed'
        Width = 215
        Visible = True
      end>
  end
  object TblPost: TTable
    DatabaseName = 'FakuvaDir'
    TableName = 'Postadr.DB'
    Left = 8
    Top = 340
    object TblPostPostnr: TStringField
      FieldName = 'Postnr'
      Size = 6
    end
    object TblPostPoststed: TStringField
      FieldName = 'Poststed'
      Size = 50
    end
  end
  object DsPost: TDataSource
    DataSet = TblPost
    Left = 40
    Top = 340
  end
  object ActionList1: TActionList
    Images = Dm.TBilder
    Left = 72
    Top = 340
    object DataSetFirst1: TDataSetFirst
      Category = 'Dataset'
      Caption = 'DataSetFirst1'
      Hint = 'F'#248'rste post'
      ImageIndex = 16
      DataSource = DsPost
    end
    object DataSetPrior1: TDataSetPrior
      Category = 'Dataset'
      Caption = 'DataSetPrior1'
      Hint = 'Forrige post'
      ImageIndex = 14
      DataSource = DsPost
    end
    object DataSetNext1: TDataSetNext
      Category = 'Dataset'
      Caption = 'DataSetNext1'
      Hint = 'Neste post'
      ImageIndex = 15
      DataSource = DsPost
    end
    object DataSetLast1: TDataSetLast
      Category = 'Dataset'
      Caption = 'DataSetLast1'
      Hint = 'Siste post'
      ImageIndex = 17
      DataSource = DsPost
    end
    object AcDelete: TAction
      Category = 'Dataset'
      Caption = 'AcDelete'
      Enabled = False
      Hint = 'Slett postnummer'
      ImageIndex = 2
      ShortCut = 16430
      OnExecute = AcDeleteExecute
    end
    object AcEdit: TAction
      Category = 'Dataset'
      AutoCheck = True
      Caption = 'AcEdit'
      Hint = 'Endringsmodus'
      ImageIndex = 28
      OnExecute = AcEditExecute
    end
    object AcSettInn: TAction
      Category = 'Dataset'
      Caption = 'SettInn'
      Enabled = False
      Hint = 'Sett inn nytt postnummer'
      ImageIndex = 0
      ShortCut = 16429
      OnExecute = AcSettInnExecute
    end
  end
  object blsDbGridScroll1: TblsDbGridScroll
    Enabled = True
    Left = 264
    Top = 32
  end
end
