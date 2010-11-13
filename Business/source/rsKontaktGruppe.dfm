object frmKontaktGruppe: TfrmKontaktGruppe
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Grupper'
  ClientHeight = 325
  ClientWidth = 307
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
  object Panel1: TPanel
    Left = 0
    Top = 292
    Width = 307
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 424
    ExplicitWidth = 407
    object btnOK: TButton
      Left = 128
      Top = 0
      Width = 82
      Height = 25
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnAvbryt: TButton
      Left = 216
      Top = 0
      Width = 83
      Height = 25
      Cancel = True
      Caption = '&Avbryt'
      ModalResult = 2
      TabOrder = 1
      OnClick = btnAvbrytClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 307
    Height = 292
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 24
    object JvDBGrid1: TJvDBGrid
      Left = 8
      Top = 8
      Width = 291
      Height = 276
      Align = alClient
      DataSource = dsGruppe
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
          FieldName = 'GRUPPE'
          Title.Caption = 'Gruppe'
          Width = 286
          Visible = True
        end>
    end
  end
  object adoGruppe: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select * from GRUPPE'#13#10'where IdKlient = :IdKlient'#13#10'and IdSerie = ' +
      ':IdSerie'#13#10'order by GRUPPE;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdSerie'
        DataType = ftString
        Precision = 2
        Size = 2
        Value = Null
      end>
    Left = 160
    Top = 24
    object adoGruppeIDGRUPPE: TIntegerField
      FieldName = 'IDGRUPPE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoGruppeIDSERIE: TStringField
      FieldName = 'IDSERIE'
      Size = 2
    end
    object adoGruppeIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object adoGruppeGRUPPE: TStringField
      FieldName = 'GRUPPE'
      Size = 25
    end
  end
  object dspGruppe: TDataSetProvider
    DataSet = adoGruppe
    UpdateMode = upWhereKeyOnly
    Left = 192
    Top = 24
  end
  object cdsGruppe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGruppe'
    OnNewRecord = cdsGruppeNewRecord
    Left = 224
    Top = 24
    object cdsGruppeIDGRUPPE: TIntegerField
      FieldName = 'IDGRUPPE'
    end
    object cdsGruppeIDSERIE: TStringField
      FieldName = 'IDSERIE'
      Size = 2
    end
    object cdsGruppeIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object cdsGruppeGRUPPE: TStringField
      FieldName = 'GRUPPE'
      Size = 25
    end
  end
  object dsGruppe: TDataSource
    DataSet = cdsGruppe
    Left = 256
    Top = 24
  end
  object spGruppe: TADOStoredProc
    Connection = Dm.adoConn
    CursorType = ctStatic
    ProcedureName = 'NY_IDGRUPPE'
    Parameters = <>
    Left = 160
    Top = 64
    object spGruppeID: TIntegerField
      FieldName = 'ID'
    end
  end
end
