object frmKontoListe: TfrmKontoListe
  Left = 391
  Top = 157
  ActiveControl = editSok
  BorderStyle = bsDialog
  Caption = 'Norsk Standard Kontoplan'
  ClientHeight = 503
  ClientWidth = 515
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 472
    Width = 515
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      515
      31)
    object btnOK: TButton
      Left = 421
      Top = 2
      Width = 87
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Lukk'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object btnAddall: TButton
      Left = 8
      Top = 0
      Width = 97
      Height = 25
      Caption = 'Legg til alle'
      TabOrder = 1
      Visible = False
      OnClick = btnAddallClick
    end
    object btnAdd: TButton
      Left = 108
      Top = 0
      Width = 97
      Height = 25
      Caption = 'Legg til'
      TabOrder = 2
      Visible = False
      OnClick = btnAddClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 515
    Height = 415
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 1
    object dbgListe: TDBGrid
      Left = 8
      Top = 8
      Width = 499
      Height = 399
      Align = alClient
      DataSource = dsKontoplan
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = dbgListeDrawColumnCell
      Columns = <
        item
          Expanded = False
          Width = 10
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KONTONR'
          Title.Caption = 'Konto nr.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAVN'
          Title.Caption = 'Konto'
          Width = 297
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KONTOTYPE'
          Title.Caption = 'Type'
          Width = 53
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MVAKODE'
          Title.Caption = 'Mva Kode'
          Width = 54
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 515
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 10
      Top = 12
      Width = 51
      Height = 13
      Caption = 'S'#248'ketekst:'
    end
    object editSok: TEdit
      Left = 9
      Top = 28
      Width = 497
      Height = 21
      TabOrder = 0
      OnKeyUp = editSokKeyUp
    end
  end
  object adoKontoPlan: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    OnCalcFields = adoKontoPlanCalcFields
    CommandText = 
      'select * from KONTOPLAN'#13#10'where (KODE = :Kode or KODE = '#39'ID'#39')'#13#10'an' +
      'd NAVN <> '#39#39#13#10'order by KONTONR;'
    Parameters = <
      item
        Name = 'Kode'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 2
        Size = 2
        Value = 'PF'
      end>
    Left = 372
    Top = 116
    object adoKontoPlanKONTONR: TStringField
      FieldName = 'KONTONR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object adoKontoPlanNAVN: TStringField
      FieldName = 'NAVN'
      Size = 80
    end
    object adoKontoPlanMVAKODE: TIntegerField
      FieldName = 'MVAKODE'
    end
    object adoKontoPlanKONTOTYPE: TStringField
      FieldName = 'KONTOTYPE'
    end
    object adoKontoPlanIDTYPE: TIntegerField
      FieldName = 'IDTYPE'
    end
    object adoKontoPlanFINNES: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'FINNES'
      Calculated = True
    end
  end
  object dsKontoplan: TDataSource
    DataSet = adoKontoPlan
    OnDataChange = dsKontoplanDataChange
    Left = 404
    Top = 116
  end
  object blsDbGridScroll1: TblsDbGridScroll
    Enabled = True
    Left = 436
    Top = 116
  end
  object blsList: TblsList
    Lines.Strings = (
      'select * from KONTOPLAN'
      'where KONTONR not in'
      '  (select KONTONR from KONTO '
      '   where IDKLIENT = $IdKlient)'
      'and (KODE = :Kode or KODE = '#39'ID'#39')'
      'and NAVN <> '#39#39
      'order by KONTONR;')
    Left = 436
    Top = 149
  end
end
