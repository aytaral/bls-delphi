object frmBil: TfrmBil
  Left = 522
  Top = 298
  BorderStyle = bsDialog
  Caption = 'Registrering av kj'#248'ret'#248'y'
  ClientHeight = 469
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 633
    Height = 34
    Align = alTop
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 1
    object TBXDock1: TTBXDock
      Left = 0
      Top = 0
      Width = 633
      Height = 34
      object TBXToolbar1: TTBXToolbar
        Left = 0
        Top = 0
        Caption = 'TBXToolbar1'
        Images = dmData.ImageList24
        TabOrder = 0
        object TBXItem1: TTBXItem
          Action = acNy
        end
        object TBXItem6: TTBXItem
          Action = acPost
        end
        object TBXItem7: TTBXItem
          Action = acCancel
        end
        object TBXSeparatorItem1: TTBXSeparatorItem
        end
        object TBXItem2: TTBXItem
          Action = acFirst
        end
        object TBXItem5: TTBXItem
          Action = acPrior
        end
        object TBXItem4: TTBXItem
          Action = acNext
        end
        object TBXItem3: TTBXItem
          Action = acLast
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 439
    Width = 633
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      633
      30)
    object btnAvbryt: TButton
      Left = 540
      Top = 0
      Width = 87
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Avbryt'
      ModalResult = 2
      TabOrder = 1
    end
    object btnOK: TButton
      Left = 448
      Top = 0
      Width = 87
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&OK'
      Default = True
      TabOrder = 0
      OnClick = btnOKClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 34
    Width = 633
    Height = 405
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 6
    TabOrder = 0
    object Pc: TPageControl
      Left = 6
      Top = 6
      Width = 621
      Height = 393
      ActivePage = tsGenerelt
      Align = alClient
      Images = dmData.ImageListPC
      TabOrder = 0
      object tsGenerelt: TTabSheet
        Caption = 'Generelle opplysninger'
        ImageIndex = -1
        object GroupBox1: TGroupBox
          Left = 12
          Top = 8
          Width = 589
          Height = 141
          Caption = 'Kj'#248'ret'#248'ysopplysninger:'
          TabOrder = 0
          object Label1: TLabel
            Left = 16
            Top = 20
            Width = 37
            Height = 13
            Caption = 'Regnr.:'
            FocusControl = dbeRegnr
          end
          object Label2: TLabel
            Left = 120
            Top = 20
            Width = 33
            Height = 13
            Caption = 'Merke:'
            FocusControl = DBEdit2
          end
          object Label3: TLabel
            Left = 516
            Top = 20
            Width = 50
            Height = 13
            Caption = #197'rsmodell:'
            FocusControl = DBEdit3
          end
          object Label4: TLabel
            Left = 16
            Top = 64
            Width = 54
            Height = 13
            Caption = 'Lasteevne:'
            FocusControl = DBEdit4
          end
          object Label5: TLabel
            Left = 120
            Top = 64
            Width = 77
            Height = 13
            Caption = 'Rammenummer:'
            FocusControl = DBEdit5
          end
          object Label9: TLabel
            Left = 360
            Top = 64
            Width = 36
            Height = 13
            Caption = 'Biltype:'
          end
          object dbeRegnr: TDBEdit
            Left = 16
            Top = 36
            Width = 97
            Height = 21
            DataField = 'REGNR'
            DataSource = dsBil
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 120
            Top = 36
            Width = 389
            Height = 21
            DataField = 'MERKE'
            DataSource = dsBil
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 516
            Top = 36
            Width = 57
            Height = 21
            DataField = 'AARGANG'
            DataSource = dsBil
            TabOrder = 2
          end
          object DBEdit4: TDBEdit
            Left = 16
            Top = 80
            Width = 97
            Height = 21
            DataField = 'LASTEEVNE'
            DataSource = dsBil
            TabOrder = 3
          end
          object DBEdit5: TDBEdit
            Left = 120
            Top = 80
            Width = 229
            Height = 21
            DataField = 'RAMMENR'
            DataSource = dsBil
            TabOrder = 4
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 360
            Top = 80
            Width = 213
            Height = 21
            DataField = 'IDBILTYPE'
            DataSource = dsBil
            DropDownRows = 12
            KeyField = 'IDBILTYPE'
            ListField = 'BILTYPE'
            ListSource = dsBiltype
            NullValueKey = 46
            TabOrder = 5
          end
          object DBCheckBox1: TDBCheckBox
            Left = 16
            Top = 112
            Width = 181
            Height = 17
            Caption = 'Denne bilen er aktiv'
            DataField = 'AKTIV'
            DataSource = dsBil
            TabOrder = 6
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object GroupBox3: TGroupBox
          Left = 12
          Top = 160
          Width = 589
          Height = 189
          Caption = 'Teknisk informasjon:'
          TabOrder = 1
          object DBMemo1: TDBMemo
            Left = 16
            Top = 24
            Width = 557
            Height = 149
            DataField = 'TEKNISK'
            DataSource = dsBil
            TabOrder = 0
          end
        end
      end
      object tsKm: TTabSheet
        Caption = 'Km. historikk'
        ImageIndex = -1
        object GroupBox2: TGroupBox
          Left = 12
          Top = 8
          Width = 589
          Height = 341
          Caption = 'Historikk'
          TabOrder = 0
          object dbgHistorikk: TJvDBGrid
            Left = 16
            Top = 20
            Width = 557
            Height = 305
            DataSource = dsHistorikk
            Options = [dgTitles, dgColumnResize, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            AutoSizeColumns = True
            AutoSizeColumnIndex = 2
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
                FieldName = 'KMDATO'
                Title.Caption = ' Dato'
                Width = 107
                Visible = True
              end
              item
                Alignment = taLeftJustify
                Expanded = False
                FieldName = 'KMSTAND'
                Title.Caption = 'Kilometerstand'
                Width = 156
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BRUKER'
                Title.Caption = 'Registrert av bruker'
                Width = 178
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'REGDATE'
                Title.Caption = 'Dato registrert'
                Visible = True
              end>
          end
        end
      end
    end
  end
  object ActionList1: TActionList
    Images = dmData.ImageList24
    Left = 592
    Top = 4
    object acNy: TAction
      Caption = 'acNy'
      ImageIndex = 4
      OnExecute = acNyExecute
    end
    object acFirst: TDataSetFirst
      Category = 'Dataset'
      Caption = 'DataSetFirst1'
      ImageIndex = 0
      DataSource = dmData.dsBil
    end
    object acPrior: TDataSetPrior
      Category = 'Dataset'
      Caption = 'DataSetPrior1'
      ImageIndex = 1
      DataSource = dmData.dsBil
    end
    object acNext: TDataSetNext
      Category = 'Dataset'
      Caption = 'DataSetNext1'
      ImageIndex = 2
      DataSource = dmData.dsBil
    end
    object acLast: TDataSetLast
      Category = 'Dataset'
      Caption = 'DataSetLast1'
      ImageIndex = 3
      DataSource = dmData.dsBil
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      Enabled = False
      ImageIndex = 6
      DataSource = dsBil
    end
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      Enabled = False
      ImageIndex = 5
      DataSource = dsBil
    end
  end
  object adoBil: TADODataSet
    Connection = dmData.adoConn
    CommandText = 
      'select IDBIL, REGNR, MERKE, IDBILTYPE, AARGANG, LASTEEVNE, RAMME' +
      'NR, TEKNISK, AKTIV'#13#10'from BIL '#13#10'where IDBIL = :IdBil;'
    Parameters = <
      item
        Name = 'IdBil'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 180
    Top = 400
    object adoBilIDBIL: TIntegerField
      FieldName = 'IDBIL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoBilREGNR: TStringField
      FieldName = 'REGNR'
      Size = 10
    end
    object adoBilMERKE: TStringField
      FieldName = 'MERKE'
      Size = 40
    end
    object adoBilIDBILTYPE: TIntegerField
      FieldName = 'IDBILTYPE'
    end
    object adoBilAARGANG: TIntegerField
      FieldName = 'AARGANG'
    end
    object adoBilLASTEEVNE: TBCDField
      FieldName = 'LASTEEVNE'
      Precision = 18
    end
    object adoBilRAMMENR: TStringField
      FieldName = 'RAMMENR'
      Size = 40
    end
    object adoBilTEKNISK: TMemoField
      FieldName = 'TEKNISK'
      BlobType = ftMemo
    end
    object adoBilAKTIV: TSmallintField
      FieldName = 'AKTIV'
    end
  end
  object dspBil: TDataSetProvider
    DataSet = adoBil
    UpdateMode = upWhereKeyOnly
    Left = 212
    Top = 400
  end
  object cdsBil: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBil'
    Left = 244
    Top = 400
    object cdsBilIDBIL: TIntegerField
      FieldName = 'IDBIL'
    end
    object cdsBilREGNR: TStringField
      FieldName = 'REGNR'
      Size = 10
    end
    object cdsBilMERKE: TStringField
      FieldName = 'MERKE'
      Size = 40
    end
    object cdsBilIDBILTYPE: TIntegerField
      FieldName = 'IDBILTYPE'
    end
    object cdsBilAARGANG: TIntegerField
      FieldName = 'AARGANG'
    end
    object cdsBilLASTEEVNE: TBCDField
      FieldName = 'LASTEEVNE'
      DisplayFormat = '#,##0.00'
      EditFormat = '0'
      Precision = 18
    end
    object cdsBilRAMMENR: TStringField
      FieldName = 'RAMMENR'
      Size = 40
    end
    object cdsBilTEKNISK: TMemoField
      FieldName = 'TEKNISK'
      BlobType = ftMemo
    end
    object cdsBilAKTIV: TSmallintField
      FieldName = 'AKTIV'
    end
  end
  object dsBil: TDataSource
    DataSet = cdsBil
    OnDataChange = dsBilDataChange
    Left = 276
    Top = 400
  end
  object dsMasterBil: TDataSource
    DataSet = dmData.cdsBil
    OnDataChange = dsMasterBilDataChange
    Left = 560
    Top = 4
  end
  object adoBiltype: TADODataSet
    Connection = dmData.adoConn
    CommandText = 'select * from BILTYPE'#13#10'order by IDBILTYPE'
    Parameters = <>
    Left = 398
    Top = 284
  end
  object dspBiltype: TDataSetProvider
    DataSet = adoBiltype
    Left = 426
    Top = 284
  end
  object cdsBiltype: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBiltype'
    Left = 454
    Top = 284
  end
  object dsBiltype: TDataSource
    DataSet = cdsBiltype
    Left = 482
    Top = 284
  end
  object adoHistorikk: TADODataSet
    Connection = dmData.adoConn
    CommandText = 'select * from KMHISTORIKK'#13#10'where IDBIL = :IdBil;'
    Parameters = <
      item
        Name = 'IdBil'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 400
    Top = 46
    object adoHistorikkKMDATO: TDateField
      FieldName = 'KMDATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoHistorikkIDBIL: TIntegerField
      FieldName = 'IDBIL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoHistorikkKMSTAND: TIntegerField
      FieldName = 'KMSTAND'
    end
    object adoHistorikkBRUKER: TStringField
      FieldName = 'BRUKER'
      Size = 10
    end
    object adoHistorikkREGDATE: TDateTimeField
      FieldName = 'REGDATE'
    end
  end
  object dspHistorikk: TDataSetProvider
    DataSet = adoHistorikk
    UpdateMode = upWhereKeyOnly
    Left = 432
    Top = 46
  end
  object cdsHistorikk: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspHistorikk'
    BeforeOpen = cdsHistorikkBeforeOpen
    Left = 464
    Top = 46
    object cdsHistorikkKMDATO: TDateField
      FieldName = 'KMDATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsHistorikkIDBIL: TIntegerField
      FieldName = 'IDBIL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsHistorikkKMSTAND: TIntegerField
      FieldName = 'KMSTAND'
      DisplayFormat = '###,##0'
    end
    object cdsHistorikkBRUKER: TStringField
      FieldName = 'BRUKER'
      Size = 10
    end
    object cdsHistorikkREGDATE: TDateTimeField
      FieldName = 'REGDATE'
    end
  end
  object dsHistorikk: TDataSource
    DataSet = cdsHistorikk
    Left = 496
    Top = 46
  end
end
