object frmInnbetalinger: TfrmInnbetalinger
  Left = 542
  Top = 311
  ActiveControl = dbgInnbetalinger
  BorderStyle = bsDialog
  Caption = 'Innbetalinger'
  ClientHeight = 252
  ClientWidth = 427
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 221
    Width = 427
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 291
    DesignSize = (
      427
      31)
    object btnOK: TButton
      Left = 6
      Top = 2
      Width = 83
      Height = 25
      Action = acSlett
      TabOrder = 0
    end
    object btnAvbryt: TButton
      Left = 339
      Top = 2
      Width = 83
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Lukk'
      Default = True
      ModalResult = 1
      TabOrder = 1
      ExplicitLeft = 203
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 427
    Height = 221
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 1
    ExplicitWidth = 291
    object dbgInnbetalinger: TJvDBGrid
      Left = 5
      Top = 5
      Width = 417
      Height = 211
      Align = alClient
      DataSource = dsInnbetaling
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      AutoSizeColumns = True
      AutoSizeColumnIndex = 4
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'DATO'
          Title.Caption = 'Dato'
          Width = 68
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'BILAGNR'
          Title.Caption = 'Bilagnr'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BELOP'
          Title.Caption = 'Innbetalt bel'#248'p'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BETALING'
          Title.Caption = 'Betalingtype'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KOMMENTAR'
          Title.Caption = 'Kommentar'
          Width = 151
          Visible = True
        end>
    end
  end
  object adoInnbetaling: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select I.IDINNBETALING, I.DATO, I.BELOP, I.KOMMENTAR, B.BILAGNR,' +
      ' T.BETALING'#13#10'from INNBETALING I'#13#10'left join BILAG B on I.IDBILAG ' +
      '= B.IDBILAG'#13#10'left join BETALINGTYPE T on I.IDBETALINGTYPE = T.ID' +
      'BETALINGTYPE'#13#10'where IDFAKTURA = :IdFaktura'#13#10'order by I.DATO;'
    Parameters = <
      item
        Name = 'IdFaktura'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 124
    Top = 32
    object adoInnbetalingIDINNBETALING: TIntegerField
      FieldName = 'IDINNBETALING'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoInnbetalingDATO: TDateField
      FieldName = 'DATO'
    end
    object adoInnbetalingBELOP: TFloatField
      FieldName = 'BELOP'
    end
    object adoInnbetalingKOMMENTAR: TStringField
      FieldName = 'KOMMENTAR'
      Size = 60
    end
    object adoInnbetalingBILAGNR: TIntegerField
      FieldName = 'BILAGNR'
      ProviderFlags = []
    end
    object adoInnbetalingBETALING: TStringField
      FieldName = 'BETALING'
      Size = 25
    end
  end
  object dspInnbetaling: TDataSetProvider
    DataSet = adoInnbetaling
    UpdateMode = upWhereKeyOnly
    Left = 152
    Top = 32
  end
  object cdsInnbetaling: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInnbetaling'
    Left = 180
    Top = 32
    object cdsInnbetalingIDINNBETALING: TIntegerField
      FieldName = 'IDINNBETALING'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsInnbetalingDATO: TDateField
      FieldName = 'DATO'
    end
    object cdsInnbetalingBELOP: TFloatField
      FieldName = 'BELOP'
      DisplayFormat = '#,##0.00 '
    end
    object cdsInnbetalingKOMMENTAR: TStringField
      FieldName = 'KOMMENTAR'
      Size = 60
    end
    object cdsInnbetalingBILAGNR: TIntegerField
      FieldName = 'BILAGNR'
      ProviderFlags = []
    end
    object cdsInnbetalingBETALING: TStringField
      FieldName = 'BETALING'
      Size = 25
    end
  end
  object dsInnbetaling: TDataSource
    DataSet = cdsInnbetaling
    Left = 208
    Top = 32
  end
  object ActionList: TActionList
    Left = 124
    Top = 64
    object acSlett: TAction
      Caption = '&Slett'
      OnExecute = acSlettExecute
    end
  end
end
