object frmBilagSerier: TfrmBilagSerier
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Rediger Bilagserier'
  ClientHeight = 242
  ClientWidth = 420
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
    Top = 210
    Width = 420
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      420
      32)
    object btnOK: TButton
      Left = 240
      Top = 0
      Width = 83
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnLukk: TButton
      Left = 329
      Top = 0
      Width = 83
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
    Width = 420
    Height = 210
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 1
    object dbgBilagnr: TJvDBGrid
      Left = 8
      Top = 8
      Width = 404
      Height = 194
      Align = alClient
      DataSource = dsBilagnr
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = popBilagSerie
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = dbgBilagnrDrawColumnCell
      OnEditButtonClick = dbgBilagnrEditButtonClick
      AutoAppend = False
      AutoSizeColumns = True
      AutoSizeColumnIndex = 1
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      CanDelete = False
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'IDBILAGSERIE'
          ReadOnly = True
          Title.Caption = 'ID Serie'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BILAGSERIE'
          Title.Caption = 'Bilag serie'
          Width = 154
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STARTNR'
          Title.Caption = 'Start nr.'
          Width = 68
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'FARGETEKST'
          Title.Caption = 'Farge'
          Width = 66
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'BILDEINDEX'
          Title.Caption = 'Symbol'
          Visible = True
        end>
    end
  end
  object cdColor: TColorDialog
    Left = 16
    Top = 88
  end
  object cdsBilagnr: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBilagnr'
    BeforeOpen = cdsBilagnrBeforeOpen
    OnCalcFields = cdsBilagnrCalcFields
    OnNewRecord = cdsBilagnrNewRecord
    Left = 144
    Top = 88
    object cdsBilagnrIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsBilagnrIDBILAGSERIE: TIntegerField
      FieldName = 'IDBILAGSERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsBilagnrBILAGSERIE: TStringField
      FieldName = 'BILAGSERIE'
    end
    object cdsBilagnrSTARTNR: TIntegerField
      FieldName = 'STARTNR'
    end
    object cdsBilagnrFARGE: TIntegerField
      FieldName = 'FARGE'
    end
    object cdsBilagnrFARGETEKST: TStringField
      FieldKind = fkCalculated
      FieldName = 'FARGETEKST'
      Size = 10
      Calculated = True
    end
    object cdsBilagnrBILDEINDEX: TIntegerField
      FieldName = 'BILDEINDEX'
    end
  end
  object adoBilagnr: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select * '#13#10'from BILAGSERIE'#13#10'where IDKLIENT = :IdKlient'#13#10'order by' +
      ' IDBILAGSERIE'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 80
    Top = 88
    object adoBilagnrIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoBilagnrIDBILAGSERIE: TIntegerField
      FieldName = 'IDBILAGSERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoBilagnrBILAGSERIE: TStringField
      FieldName = 'BILAGSERIE'
    end
    object adoBilagnrSTARTNR: TIntegerField
      FieldName = 'STARTNR'
    end
    object adoBilagnrFARGE: TIntegerField
      FieldName = 'FARGE'
    end
    object adoBilagnrBILDEINDEX: TIntegerField
      FieldName = 'BILDEINDEX'
    end
  end
  object dspBilagnr: TDataSetProvider
    DataSet = adoBilagnr
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 88
  end
  object dsBilagnr: TDataSource
    DataSet = cdsBilagnr
    Left = 176
    Top = 88
  end
  object popBilagSerie: TTBXPopupMenu
    Left = 288
    Top = 48
    object TBXItem2: TTBXItem
      Action = acClearBilde
    end
    object TBXItem1: TTBXItem
      Action = acClearFarge
    end
  end
  object ActionList: TActionList
    Left = 320
    Top = 48
    object acClearFarge: TAction
      Caption = 'Slett valgt farge'
      OnExecute = acClearFargeExecute
    end
    object acClearBilde: TAction
      Caption = 'Slett valgt symbol'
      OnExecute = acClearBildeExecute
    end
  end
end
