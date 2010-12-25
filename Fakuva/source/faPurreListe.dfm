object FrmPurreListe: TFrmPurreListe
  Left = 597
  Top = 152
  BorderStyle = bsDialog
  Caption = 'Purrerutiner'
  ClientHeight = 285
  ClientWidth = 287
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 232
    Width = 287
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object BtnOK: TButton
      Left = 112
      Top = 4
      Width = 81
      Height = 25
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = BtnOKClick
    end
    object BtnClose: TButton
      Left = 200
      Top = 4
      Width = 81
      Height = 25
      Caption = '&Avbryt'
      ModalResult = 2
      TabOrder = 1
      OnClick = BtnCloseClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 266
    Width = 287
    Height = 19
    Panels = <>
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 287
    Height = 31
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 27
        Width = 283
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 270
      Height = 27
      AutoSize = True
      BorderWidth = 1
      ButtonHeight = 23
      Caption = 'ToolBar1'
      EdgeBorders = []
      Flat = True
      Images = Dm.TBilder
      TabOrder = 0
      object ToolButton5: TToolButton
        Left = 0
        Top = 0
        Action = DataSetInsert1
      end
      object ToolButton6: TToolButton
        Left = 23
        Top = 0
        Action = DataSetDelete1
      end
      object ToolButton7: TToolButton
        Left = 46
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 19
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 54
        Top = 0
        Action = DataSetFirst1
      end
      object ToolButton2: TToolButton
        Left = 77
        Top = 0
        Action = DataSetPrior1
      end
      object ToolButton3: TToolButton
        Left = 100
        Top = 0
        Action = DataSetNext1
      end
      object ToolButton4: TToolButton
        Left = 123
        Top = 0
        Action = DataSetLast1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 31
    Width = 287
    Height = 201
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 3
    object DbgPurreRutiner: TDBGrid
      Left = 5
      Top = 5
      Width = 277
      Height = 191
      Align = alClient
      Ctl3D = True
      DataSource = Dm.DSPurreListe
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PurreTittel'
          Width = 126
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Gebyr'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Rente'
          Visible = True
        end>
    end
  end
  object ActionList: TActionList
    Images = Dm.TBilder
    Left = 8
    Top = 232
    object DataSetFirst1: TDataSetFirst
      Category = 'Dataset'
      Caption = '&First'
      Hint = 'First'
      ImageIndex = 16
      DataSource = Dm.DSPurreListe
    end
    object DataSetPrior1: TDataSetPrior
      Category = 'Dataset'
      Caption = '&Prior'
      Hint = 'Prior'
      ImageIndex = 14
      DataSource = Dm.DSPurreListe
    end
    object DataSetNext1: TDataSetNext
      Category = 'Dataset'
      Caption = '&Next'
      Hint = 'Next'
      ImageIndex = 15
      DataSource = Dm.DSPurreListe
    end
    object DataSetLast1: TDataSetLast
      Category = 'Dataset'
      Caption = '&Last'
      Hint = 'Last'
      ImageIndex = 17
      DataSource = Dm.DSPurreListe
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 0
      ShortCut = 16429
      DataSource = Dm.DSPurreListe
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 1
      ShortCut = 16430
      DataSource = Dm.DSPurreListe
    end
  end
end
