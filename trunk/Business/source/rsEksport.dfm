object frmEksport: TfrmEksport
  Left = 642
  Top = 106
  BorderStyle = bsDialog
  Caption = 'Eksport av data'
  ClientHeight = 268
  ClientWidth = 425
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 425
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    object Bevel1: TBevel
      Left = 0
      Top = 47
      Width = 425
      Height = 2
      Align = alBottom
      Shape = bsBottomLine
    end
    object Label2: TLabel
      Left = 16
      Top = 13
      Width = 261
      Height = 18
      Caption = 'Eksport av data til propriot'#230'rt format'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 227
    Width = 425
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btnLukk: TButton
      Left = 330
      Top = 8
      Width = 83
      Height = 25
      Cancel = True
      Caption = '&Lukk'
      ModalResult = 2
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 49
    Width = 425
    Height = 178
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object GroupBox2: TGroupBox
      Left = 12
      Top = 12
      Width = 401
      Height = 165
      Caption = 'Valg for eksport:'
      TabOrder = 0
      object Label1: TLabel
        Left = 20
        Top = 32
        Width = 130
        Height = 13
        Caption = 'Data som skal eksporteres:'
      end
      object Label3: TLabel
        Left = 20
        Top = 60
        Width = 143
        Height = 13
        Caption = 'Eksport med f'#248'lgende format:'
      end
      object Label4: TLabel
        Left = 20
        Top = 88
        Width = 86
        Height = 13
        Caption = 'Eksporter data til:'
      end
      object cbData: TComboBox
        Left = 172
        Top = 28
        Width = 209
        Height = 21
        Style = csDropDownList
        TabOrder = 0
        OnChange = cbDataChange
        Items.Strings = (
          'Kunder'
          'Leverand'#248'rer'
          'Produkter'
          'Kontoplan'
          'Fakturaliste'
          'Purringer'
          'Produsenter'
          'Bilagsliste')
      end
      object btnStart: TButton
        Left = 172
        Top = 120
        Width = 209
        Height = 25
        Caption = 'Start eksporter'
        Default = True
        Enabled = False
        TabOrder = 1
        OnClick = btnStartClick
      end
      object cbFormat: TComboBox
        Left = 172
        Top = 56
        Width = 209
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 2
        Text = 'Excel format (*.xls)'
        Items.Strings = (
          'Excel format (*.xls)'
          'Word format (*.rtf)'
          'Semicolondelt fil (*.csv)'
          'Internett format (*.html)'
          'Tekst fil (*.txt)'
          'Data Interchange format (*.dif)')
      end
      object cbTil: TComboBox
        Left = 172
        Top = 84
        Width = 209
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 3
        Text = 'Ekstern fil'
        Items.Strings = (
          'Ekstern fil'
          'Visning p'#229' skjerm')
      end
    end
  end
  object scData: TscDataList
    Data = <
      item
        ID = 0
        Text1.Strings = (
          'select KONTAKTNR, NAVN, POSTADR1, POSTADR2, POSTNR'
          'from KONTAKT '
          'where IDSERIE = '#39'KS'#39
          'and IDKLIENT = :IdKlient'
          'order by KONTAKTNR;')
        Description = 'Kunder'
      end
      item
        ID = 1
        Text1.Strings = (
          'select KONTAKTNR, NAVN, ADRESSE'
          'from KONTAKT '
          'where IDSERIE = '#39'LS'#39
          'and IDKLIENT = :IdKlient'
          'order by KONTAKTNR;')
        Description = 'Leverand'#248'rer'
      end>
    Left = 280
    Top = 4
  end
  object adoEksport: TADODataSet
    Connection = Dm.adoConn
    Parameters = <>
    Left = 344
    Top = 4
  end
  object SaveDialog: TSaveDialog
    Left = 376
    Top = 4
  end
end
