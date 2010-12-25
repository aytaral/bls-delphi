object FrmGruppe: TFrmGruppe
  Left = 522
  Top = 241
  BorderStyle = bsDialog
  Caption = 'Kundegrupper'
  ClientHeight = 325
  ClientWidth = 273
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
  object BtnOk: TButton
    Left = 85
    Top = 296
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
    TabOrder = 0
  end
  object BtnAvbryt: TButton
    Left = 177
    Top = 296
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
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 36
    Width = 257
    Height = 249
    DataSource = DsGruppe
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Gruppe'
        Width = 237
        Visible = True
      end>
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 273
    Height = 28
    AutoSize = True
    Bands = <
      item
        BorderStyle = bsSingle
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 22
        Width = 271
      end>
    EdgeOuter = esNone
    object ToolBar1: TToolBar
      Left = 9
      Top = 2
      Width = 258
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
        Action = DataSetInsert1
      end
      object ToolButton3: TToolButton
        Left = 23
        Top = 0
        Action = AcDelete
      end
      object ToolButton2: TToolButton
        Left = 46
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton4: TToolButton
        Left = 54
        Top = 0
        Action = DataSetFirst1
      end
      object ToolButton5: TToolButton
        Left = 77
        Top = 0
        Action = DataSetPrior1
      end
      object ToolButton6: TToolButton
        Left = 100
        Top = 0
        Action = DataSetNext1
      end
      object ToolButton7: TToolButton
        Left = 123
        Top = 0
        Action = DataSetLast1
      end
    end
  end
  object TblGruppe: TTable
    DatabaseName = 'FakuvaDir'
    TableName = 'Gruppe.DB'
    Left = 8
    Top = 288
    object TblGruppeIdGruppe: TAutoIncField
      FieldName = 'IdGruppe'
      ReadOnly = True
    end
    object TblGruppeGruppe: TStringField
      FieldName = 'Gruppe'
      Size = 50
    end
  end
  object DsGruppe: TDataSource
    DataSet = TblGruppe
    Left = 40
    Top = 288
  end
  object ActionList1: TActionList
    Images = Dm.TBilder
    Left = 72
    Top = 288
    object DataSetFirst1: TDataSetFirst
      Category = 'Dataset'
      Caption = 'DataSetFirst1'
      Hint = 'F'#248'rste post'
      ImageIndex = 16
      DataSource = DsGruppe
    end
    object DataSetPrior1: TDataSetPrior
      Category = 'Dataset'
      Caption = 'DataSetPrior1'
      Hint = 'Forrige post'
      ImageIndex = 14
      DataSource = DsGruppe
    end
    object DataSetNext1: TDataSetNext
      Category = 'Dataset'
      Caption = 'DataSetNext1'
      Hint = 'Neste post'
      ImageIndex = 15
      DataSource = DsGruppe
    end
    object DataSetLast1: TDataSetLast
      Category = 'Dataset'
      Caption = 'DataSetLast1'
      Hint = 'Siste post'
      ImageIndex = 17
      DataSource = DsGruppe
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      Hint = 'Sett inn ny kundegruppe'
      ImageIndex = 0
      ShortCut = 16429
      DataSource = DsGruppe
    end
    object AcDelete: TAction
      Category = 'Dataset'
      Caption = 'AcDelete'
      Hint = 'Slett kundegruppe'
      ImageIndex = 2
      ShortCut = 16430
      OnExecute = AcDeleteExecute
    end
  end
end
