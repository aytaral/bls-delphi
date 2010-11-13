object frmAboHistorikk: TfrmAboHistorikk
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Abonnement Historikk'
  ClientHeight = 404
  ClientWidth = 806
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 372
    Width = 806
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 399
    ExplicitWidth = 809
    DesignSize = (
      806
      32)
    object Label1: TLabel
      Left = 258
      Top = 6
      Width = 62
      Height = 13
      Caption = 'Generert av:'
    end
    object DBText1: TDBText
      Left = 326
      Top = 6
      Width = 65
      Height = 17
      DataField = 'BRUKER'
      DataSource = dsAboHistorikk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnLukk: TButton
      Left = 696
      Top = 0
      Width = 102
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Lukk'
      Default = True
      ModalResult = 2
      TabOrder = 0
    end
    object cbSingle: TCheckBox
      Left = 10
      Top = 6
      Width = 233
      Height = 17
      Caption = 'Vis histroikk kun for valgt abonnement'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = cbSingleClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 806
    Height = 372
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 1
    ExplicitWidth = 809
    ExplicitHeight = 399
    object dbgAboHistorikk: TJvDBGrid
      Left = 8
      Top = 8
      Width = 790
      Height = 356
      Align = alClient
      DataSource = dsAboHistorikk
      Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleButtons = True
      AutoSizeColumns = True
      AutoSizeColumnIndex = 3
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'PROSESSDATO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'Prosessdato'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FORFALL'
          Title.Caption = 'Forfall'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KUNDENR'
          Title.Caption = 'Kundenr'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAVN'
          Title.Caption = 'Kundenavn'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TITTEL'
          Title.Caption = 'Tittel'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUMRAB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'Rabatt'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUMTOT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'Totalt'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORDRENR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'Ordrenr'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FAKTURANR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'Fakturanr'
          Visible = True
        end>
    end
  end
  object adoAboHistorikk: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select AH.PROSESSDATO, AH.FORFALL, AH.BRUKER, A.KUNDENR, K.NAVN,' +
      ' A.TITTEL, A.SUMEKS, A.SUMMVA, A.SUMRAB, A.SUMTOT, O.ORDRENR, F.' +
      'FAKTURANR'#13#10'from ABOHISTORIKK AH'#13#10'join ABONNEMENT A on (A.IDABO =' +
      ' AH.IDABO)'#13#10'join KONTAKT K on (A.KUNDENR = K.KONTAKTNR and K.IDK' +
      'LIENT = A.IDKLIENT)'#13#10'left join ORDRE O on (AH.IDORDRE = O.IDORDR' +
      'E)'#13#10'left join FAKTURA F on (AH.IDFAKTURA = F.IDFAKTURA)'#13#10'where A' +
      '.IDKLIENT = :IdKlient'#13#10'and ((0 = :DoFilter) or (AH.IDABO = :IdAb' +
      'o))'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'DoFilter'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdAbo'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 48
    Top = 56
    object adoAboHistorikkPROSESSDATO: TDateTimeField
      FieldName = 'PROSESSDATO'
    end
    object adoAboHistorikkFORFALL: TDateField
      FieldName = 'FORFALL'
    end
    object adoAboHistorikkBRUKER: TStringField
      FieldName = 'BRUKER'
    end
    object adoAboHistorikkKUNDENR: TIntegerField
      FieldName = 'KUNDENR'
    end
    object adoAboHistorikkNAVN: TStringField
      FieldName = 'NAVN'
      Size = 80
    end
    object adoAboHistorikkTITTEL: TStringField
      FieldName = 'TITTEL'
      Size = 40
    end
    object adoAboHistorikkSUMEKS: TFloatField
      FieldName = 'SUMEKS'
      DisplayFormat = '#,##0.00'
    end
    object adoAboHistorikkSUMMVA: TFloatField
      FieldName = 'SUMMVA'
      DisplayFormat = '#,##0.00'
    end
    object adoAboHistorikkSUMRAB: TFloatField
      FieldName = 'SUMRAB'
      DisplayFormat = '#,##0.00'
    end
    object adoAboHistorikkSUMTOT: TFloatField
      FieldName = 'SUMTOT'
      DisplayFormat = '#,##0.00'
    end
    object adoAboHistorikkORDRENR: TIntegerField
      FieldName = 'ORDRENR'
    end
    object adoAboHistorikkFAKTURANR: TIntegerField
      FieldName = 'FAKTURANR'
    end
  end
  object dsAboHistorikk: TDataSource
    DataSet = adoAboHistorikk
    Left = 80
    Top = 56
  end
end
