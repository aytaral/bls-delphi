object frmFastAvtaleSok: TfrmFastAvtaleSok
  Left = 331
  Top = 198
  ActiveControl = edSokAvtale
  BorderStyle = bsDialog
  Caption = 'Velg fast avtale'
  ClientHeight = 337
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 304
    Width = 584
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object btnOK: TButton
      Left = 424
      Top = 5
      Width = 75
      Height = 25
      Caption = '&OK'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
    end
    object btnCancel: TButton
      Left = 504
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Lukk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
    end
    object rbKunde: TRadioButton
      Left = 8
      Top = 8
      Width = 93
      Height = 17
      Caption = 'Kundeavtaler'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = rbKundeClick
    end
    object rbFelles: TRadioButton
      Left = 108
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Fellesavtaler'
      TabOrder = 3
      OnClick = rbFellesClick
    end
    object rbAlle: TRadioButton
      Left = 208
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Alle avtaler'
      TabOrder = 4
      OnClick = rbAlleClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 35
    Width = 584
    Height = 269
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 6
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 6
      Top = 6
      Width = 572
      Height = 257
      Align = alClient
      DataSource = DM.dsAvtale
      Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Dato'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Beskrivelse'
          Width = 172
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Avtalepris'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AvtaleType'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Kundenavn'
          Width = 155
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 584
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label41: TLabel
      Left = 8
      Top = 12
      Width = 51
      Height = 13
      Caption = 'S'#248'ketekst:'
    end
    object edSokAvtale: TEdit
      Left = 68
      Top = 8
      Width = 509
      Height = 21
      TabOrder = 0
      OnKeyUp = edSokAvtaleKeyUp
    end
  end
  object blsDbGridScroll1: TblsDbGridScroll
    Enabled = True
    Left = 520
    Top = 139
  end
end
