object frmKundeBrReg: TfrmKundeBrReg
  Left = 437
  Top = 183
  BorderStyle = bsDialog
  Caption = 'Oppdatering fra Br'#248'nn'#248'ysundregistrene'
  ClientHeight = 454
  ClientWidth = 453
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  DesignSize = (
    453
    454)
  PixelsPerInch = 96
  TextHeight = 13
  object btnOK: TButton
    Left = 272
    Top = 422
    Width = 83
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object btnAvbryt: TButton
    Left = 360
    Top = 422
    Width = 83
    Height = 25
    Anchors = [akTop, akRight]
    Cancel = True
    Caption = '&Avbryt'
    ModalResult = 2
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 433
    Height = 405
    Caption = 'Informasjon fra Br'#248'nn'#248'ysundregistrene:'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 54
      Height = 13
      Caption = 'Firmanavn:'
    end
    object Label2: TLabel
      Left = 260
      Top = 24
      Width = 39
      Height = 13
      Caption = 'Org. nr:'
    end
    object Label3: TLabel
      Left = 16
      Top = 274
      Width = 76
      Height = 13
      Caption = 'E-post adresse:'
    end
    object Label4: TLabel
      Left = 16
      Top = 312
      Width = 61
      Height = 13
      Caption = 'Hjemmeside:'
    end
    object Label5: TLabel
      Left = 16
      Top = 236
      Width = 40
      Height = 13
      Caption = 'Telefon:'
    end
    object Label6: TLabel
      Left = 152
      Top = 236
      Width = 28
      Height = 13
      Caption = 'Mobil:'
    end
    object Label7: TLabel
      Left = 288
      Top = 236
      Width = 40
      Height = 13
      Caption = 'Telefax:'
    end
    object Label8: TLabel
      Left = 16
      Top = 356
      Width = 55
      Height = 13
      Caption = 'Merknader:'
    end
    object Label9: TLabel
      Left = 16
      Top = 68
      Width = 75
      Height = 13
      Caption = 'Bes'#248'ksadresse:'
    end
    object Label10: TLabel
      Left = 16
      Top = 106
      Width = 35
      Height = 13
      Caption = 'Postnr:'
    end
    object Label11: TLabel
      Left = 128
      Top = 106
      Width = 46
      Height = 13
      Caption = 'Poststed:'
    end
    object Label12: TLabel
      Left = 16
      Top = 152
      Width = 63
      Height = 13
      Caption = 'Postadresse:'
    end
    object Label13: TLabel
      Left = 16
      Top = 190
      Width = 35
      Height = 13
      Caption = 'Postnr:'
    end
    object Label14: TLabel
      Left = 128
      Top = 190
      Width = 46
      Height = 13
      Caption = 'Poststed:'
    end
    object edFirma: TEdit
      Left = 16
      Top = 38
      Width = 237
      Height = 21
      TabOrder = 0
    end
    object edOrgnr: TEdit
      Left = 260
      Top = 38
      Width = 157
      Height = 21
      TabOrder = 1
    end
    object edEpost: TEdit
      Left = 16
      Top = 288
      Width = 401
      Height = 21
      TabOrder = 2
    end
    object edUrl: TEdit
      Left = 16
      Top = 326
      Width = 401
      Height = 21
      TabOrder = 3
    end
    object edTelefon: TEdit
      Left = 16
      Top = 250
      Width = 129
      Height = 21
      TabOrder = 4
    end
    object edMobil: TEdit
      Left = 152
      Top = 250
      Width = 129
      Height = 21
      TabOrder = 5
    end
    object edTelefax: TEdit
      Left = 288
      Top = 250
      Width = 129
      Height = 21
      TabOrder = 6
    end
    object edBAdresse: TEdit
      Left = 16
      Top = 82
      Width = 401
      Height = 21
      TabOrder = 7
    end
    object edBPostnr: TEdit
      Left = 16
      Top = 120
      Width = 105
      Height = 21
      TabOrder = 8
    end
    object edBPoststed: TEdit
      Left = 128
      Top = 120
      Width = 289
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 9
    end
    object edPAdresse: TEdit
      Left = 16
      Top = 166
      Width = 401
      Height = 21
      TabOrder = 10
    end
    object edPPostnr: TEdit
      Left = 16
      Top = 204
      Width = 105
      Height = 21
      TabOrder = 11
    end
    object edPPoststed: TEdit
      Left = 128
      Top = 204
      Width = 289
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 12
    end
    object edMerknad: TEdit
      Left = 16
      Top = 370
      Width = 401
      Height = 21
      TabOrder = 13
    end
  end
end
