object frmEndreFakturanr: TfrmEndreFakturanr
  Left = 453
  Top = 170
  ActiveControl = editNo
  BorderStyle = bsDialog
  Caption = 'Endre fakturanummer'
  ClientHeight = 111
  ClientWidth = 290
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 273
    Height = 65
    Caption = 'Nytt fakturanummer:'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 28
      Width = 131
      Height = 13
      Caption = 'Oppgi nytt fakturanummer:'
    end
    object editNo: TblsAlignEdit
      Left = 164
      Top = 24
      Width = 93
      Height = 21
      TabOrder = 0
      EditType = etInteger
    end
  end
  object btnAvbryt: TButton
    Left = 200
    Top = 80
    Width = 81
    Height = 25
    Cancel = True
    Caption = '&Avbryt'
    ModalResult = 2
    TabOrder = 1
  end
  object btnOK: TButton
    Left = 112
    Top = 80
    Width = 81
    Height = 25
    Caption = '&OK'
    Default = True
    TabOrder = 2
    OnClick = btnOKClick
  end
  object adoFakturanr: TADODataSet
    Connection = Dm.adoConn
    CommandText = 
      'select IDFAKTURA from FAKTURA'#13#10'where FAKTURANR = :Fakturanr'#13#10'and' +
      ' IDKLIENT = :IdKlient;'
    Parameters = <
      item
        Name = 'Fakturanr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
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
    Top = 76
    object adoFakturanrIDFAKTURA: TIntegerField
      FieldName = 'IDFAKTURA'
    end
  end
end
