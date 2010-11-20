object frmSettings: TfrmSettings
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Innstillinger'
  ClientHeight = 335
  ClientWidth = 371
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
  object Pc: TPageControl
    Left = 8
    Top = 8
    Width = 355
    Height = 289
    ActivePage = tsBiltype
    TabOrder = 0
    object tsBiltype: TTabSheet
      Caption = 'Biltyper'
      object blsBorderPanel1: TblsBorderPanel
        Left = 0
        Top = 0
        Width = 347
        Height = 261
        Align = alClient
        BorderWidth = 5
        Caption = 'blsBorderPanel1'
        TabOrder = 0
        object JvDBGrid1: TJvDBGrid
          Left = 6
          Top = 6
          Width = 335
          Height = 249
          Align = alClient
          DataSource = dmData.dsBilType
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = popGrid
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          AutoSizeColumns = True
          AutoSizeColumnIndex = 0
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'BILTYPE'
              Title.Caption = 'Biltype'
              Width = 330
              Visible = True
            end>
        end
      end
    end
    object tsServicetype: TTabSheet
      Caption = 'Servicetyper'
      ImageIndex = 1
      object blsBorderPanel2: TblsBorderPanel
        Left = 0
        Top = 0
        Width = 347
        Height = 261
        Align = alClient
        BorderWidth = 6
        Caption = 'blsBorderPanel1'
        TabOrder = 0
        object JvDBGrid2: TJvDBGrid
          Left = 7
          Top = 7
          Width = 333
          Height = 247
          Align = alClient
          DataSource = dmData.dsServiceType
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = popGrid
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          AutoSizeColumns = True
          AutoSizeColumnIndex = 0
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'SERVICETYPE'
              Title.Caption = 'Servicetype'
              Width = 328
              Visible = True
            end>
        end
      end
    end
  end
  object btnOK: TButton
    Left = 191
    Top = 303
    Width = 83
    Height = 25
    Caption = '&OK'
    Default = True
    TabOrder = 1
    OnClick = btnOKClick
  end
  object btnAvbryt: TButton
    Left = 280
    Top = 303
    Width = 83
    Height = 25
    Cancel = True
    Caption = '&Avbryt'
    TabOrder = 2
    OnClick = btnAvbrytClick
  end
  object popGrid: TTBXPopupMenu
    Left = 172
    Top = 168
    object TBXItem2: TTBXItem
      Action = acNy
    end
    object TBXItem1: TTBXItem
      Action = acSlett
    end
  end
  object ActionList: TActionList
    Left = 204
    Top = 168
    object acSlett: TAction
      Caption = 'Slett'
      ShortCut = 16430
      OnExecute = acSlettExecute
    end
    object acNy: TAction
      Caption = 'Sett inn'
      ShortCut = 45
      OnExecute = acNyExecute
    end
  end
end
