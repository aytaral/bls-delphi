object frmLogin: TfrmLogin
  Left = 515
  Top = 321
  BorderStyle = bsDialog
  Caption = 'Logg p'#229
  ClientHeight = 167
  ClientWidth = 278
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 80
    Width = 35
    Height = 13
    Caption = 'Bruker:'
  end
  object Label2: TLabel
    Left = 12
    Top = 108
    Width = 42
    Height = 13
    Caption = 'Passord:'
  end
  object EditPassord: TEdit
    Left = 64
    Top = 104
    Width = 201
    Height = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Wingdings'
    Font.Style = []
    ParentFont = False
    PasswordChar = 'l'
    TabOrder = 1
  end
  object BtnOK: TButton
    Left = 88
    Top = 132
    Width = 85
    Height = 25
    Caption = '&OK'
    Default = True
    TabOrder = 2
    OnClick = BtnOKClick
  end
  object BtnCancel: TButton
    Left = 180
    Top = 132
    Width = 85
    Height = 25
    Cancel = True
    Caption = '&Avbryt'
    ModalResult = 2
    TabOrder = 3
  end
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 278
    Height = 61
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 4
    object Bevel1: TBevel
      Left = 0
      Top = 56
      Width = 278
      Height = 5
      Align = alBottom
      Shape = bsBottomLine
    end
    object Label3: TLabel
      Left = 84
      Top = 8
      Width = 88
      Height = 23
      Caption = 'P'#229'logging '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Image1: TImage
      Left = 16
      Top = 5
      Width = 48
      Height = 48
      AutoSize = True
    end
    object Label5: TLabel
      Left = 86
      Top = 32
      Width = 64
      Height = 13
      Caption = 'BLS Bilservice'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
    end
  end
  object editBruker: TEdit
    Left = 64
    Top = 76
    Width = 201
    Height = 21
    TabOrder = 0
  end
  object adoUsers: TADOQuery
    Connection = dmData.adoConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT B.Brukernavn, B.Passord, B.Tilgang'
      'FROM Bruker B'
      'WHERE B.Aktiv = 1'
      'ORDER BY B.Brukernavn;')
    Left = 12
    Top = 128
  end
  object dspUsers: TDataSetProvider
    DataSet = adoUsers
    Left = 44
    Top = 128
  end
  object cdsUsers: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Brukernavn'
    Params = <>
    ProviderName = 'dspUsers'
    Left = 76
    Top = 128
    object cdsUsersBRUKERNAVN: TStringField
      FieldName = 'BRUKERNAVN'
      Size = 10
    end
    object cdsUsersPASSORD: TStringField
      FieldName = 'PASSORD'
      Size = 32
    end
    object cdsUsersTILGANG: TIntegerField
      FieldName = 'TILGANG'
    end
  end
end
