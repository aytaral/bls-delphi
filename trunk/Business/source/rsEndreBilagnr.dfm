object frmEndreBilagnr: TfrmEndreBilagnr
  Left = 588
  Top = 407
  BorderStyle = bsDialog
  Caption = 'Endre bilagsnummer'
  ClientHeight = 130
  ClientWidth = 269
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 253
    Height = 81
    Caption = 'Nytt bilagsnummer:'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 52
      Width = 123
      Height = 13
      Caption = 'Oppgi nytt bilagsnummer:'
    end
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 41
      Height = 13
      Caption = 'Bilags'#229'r:'
    end
    object lblAar: TLabel
      Left = 150
      Top = 24
      Width = 28
      Height = 13
      Caption = '2007'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object editNo: TblsAlignEdit
      Left = 148
      Top = 48
      Width = 93
      Height = 21
      TabOrder = 0
      EditType = etInteger
    end
  end
  object btnOK: TButton
    Left = 92
    Top = 96
    Width = 81
    Height = 25
    Caption = '&OK'
    Default = True
    TabOrder = 1
    OnClick = btnOKClick
  end
  object btnAvbryt: TButton
    Left = 180
    Top = 96
    Width = 81
    Height = 25
    Cancel = True
    Caption = '&Avbryt'
    ModalResult = 2
    TabOrder = 2
  end
  object adoBilagnr: TADODataSet
    Connection = Dm.adoConn
    CommandText = 
      'select IDBILAG from BILAG'#13#10'where BILAGNR = :Bilagnr'#13#10'and AAR = :' +
      'Aar'#13#10'and IDKLIENT = :IdKlient;'
    Parameters = <
      item
        Name = 'Bilagnr'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Aar'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 8
    Top = 96
    object adoBilagnrIDBILAG: TIntegerField
      FieldName = 'IDBILAG'
    end
  end
end
