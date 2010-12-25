object FrmDBCheck: TFrmDBCheck
  Left = 434
  Top = 424
  BorderStyle = bsDialog
  Caption = 'Database Kontroll & Optimalisering'
  ClientHeight = 241
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object BtnAvbryt: TButton
    Left = 348
    Top = 208
    Width = 87
    Height = 25
    Cancel = True
    Caption = '&Lukk'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 1
  end
  object BtnOk: TButton
    Left = 256
    Top = 208
    Width = 87
    Height = 25
    Caption = '&Start'
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BtnOkClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 427
    Height = 193
    Caption = 'Optimalisering '
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 397
      Height = 29
      AutoSize = False
      Caption = 
        'Disse operasjonene kan ta noen minutter. Pass p'#229' at alle brukere' +
        ' har avsluttet Fakuva f'#248'r operasjonene kj'#248'res!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
      WordWrap = True
    end
    object CbIndex: TCheckBox
      Left = 20
      Top = 72
      Width = 197
      Height = 17
      Caption = 'Generer indekser p'#229' nytt'
      TabOrder = 0
    end
    object PbIndex: TProgressBar
      Left = 16
      Top = 100
      Width = 397
      Height = 16
      TabOrder = 1
    end
    object CbPack: TCheckBox
      Left = 20
      Top = 132
      Width = 221
      Height = 17
      Caption = 'Komprimer og optimaliser databasen'
      TabOrder = 2
    end
    object PbPack: TProgressBar
      Left = 16
      Top = 156
      Width = 397
      Height = 16
      TabOrder = 3
    end
  end
  object blsDBCheck: TblsDBCheck
    IniFile = '.\fakuva.ini'
    OnCheckIndexs = blsDBCheckCheckIndexs
    OnPackDatabase = blsDBCheckPackDatabase
    Left = 8
    Top = 204
  end
end
