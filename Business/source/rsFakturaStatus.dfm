object frmFakturaStatus: TfrmFakturaStatus
  Left = 478
  Top = 422
  BorderStyle = bsDialog
  Caption = 'Endre faktura status'
  ClientHeight = 139
  ClientWidth = 221
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 205
    Height = 93
    Caption = 'Fakturastatus:'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 28
      Width = 154
      Height = 13
      Caption = 'Velg ny status for valgt faktura:'
    end
    object dblStatus: TDBLookupComboBox
      Left = 16
      Top = 44
      Width = 173
      Height = 21
      DataField = 'IDSTATUS'
      DataSource = Dm.dsFaktura
      KeyField = 'IDSTATUS'
      ListField = 'STATUS'
      ListSource = dsStatus
      TabOrder = 0
    end
  end
  object btnOK: TButton
    Left = 42
    Top = 108
    Width = 83
    Height = 25
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object btnAvbryt: TButton
    Left = 130
    Top = 108
    Width = 83
    Height = 25
    Cancel = True
    Caption = '&Avbryt'
    ModalResult = 2
    TabOrder = 2
  end
  object adoStatus: TADODataSet
    Connection = Dm.adoConn
    CommandText = 
      'select * from STATUS'#13#10'where IDKLIENT = :IdKlient'#13#10'and AKTIV = 1'#13 +
      #10'order by IDSTATUS;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 128
    Top = 4
  end
  object dsStatus: TDataSource
    DataSet = adoStatus
    Left = 160
    Top = 4
  end
end
