object FrmPakkeListe: TFrmPakkeListe
  Left = 309
  Top = 310
  BorderStyle = bsDialog
  Caption = 'Pakkeliste'
  ClientHeight = 349
  ClientWidth = 655
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 640
    Height = 303
    Color = 16187391
    DataSource = DsPost
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PakkeNr'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Dato'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kunde'
        Width = 229
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pakketype'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pris'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 564
    Top = 320
    Width = 87
    Height = 25
    Caption = '&Lukk'
    ModalResult = 2
    TabOrder = 1
  end
  object Button2: TButton
    Left = 472
    Top = 320
    Width = 87
    Height = 25
    Caption = '&Endre'
    TabOrder = 2
  end
  object TblPost: TTable
    DatabaseName = 'FakuvaDir'
    TableName = 'Pakke.DB'
    Left = 20
    Top = 276
    object TblPostPakkeNr: TStringField
      FieldName = 'PakkeNr'
    end
    object TblPostDato: TDateField
      FieldName = 'Dato'
    end
    object TblPostKunde: TStringField
      FieldName = 'Kunde'
      Size = 100
    end
    object TblPostPostboks: TStringField
      FieldName = 'Postboks'
      Size = 150
    end
    object TblPostFPostnr: TStringField
      FieldName = 'FPostnr'
      Size = 4
    end
    object TblPostFPoststed: TStringField
      FieldName = 'FPoststed'
      Size = 30
    end
    object TblPostPostnr: TStringField
      FieldName = 'Postnr'
      Size = 4
    end
    object TblPostAdresse: TStringField
      FieldName = 'Adresse'
      Size = 150
    end
    object TblPostTelefon: TStringField
      FieldName = 'Telefon'
      Size = 14
    end
    object TblPostPakketype: TIntegerField
      FieldName = 'Pakketype'
    end
    object TblPostSone: TIntegerField
      FieldName = 'Sone'
    end
    object TblPostHoyde: TFloatField
      FieldName = 'Hoyde'
    end
    object TblPostBredde: TFloatField
      FieldName = 'Bredde'
    end
    object TblPostDybde: TFloatField
      FieldName = 'Dybde'
    end
    object TblPostVolum: TFloatField
      FieldName = 'Volum'
    end
    object TblPostVekt: TFloatField
      FieldName = 'Vekt'
    end
    object TblPostVolumVekt: TFloatField
      FieldName = 'VolumVekt'
    end
    object TblPostPris: TFloatField
      FieldName = 'Pris'
      DisplayFormat = '# ##0.00'
    end
    object TblPostInfo: TStringField
      FieldName = 'Info'
      Size = 50
    end
  end
  object DsPost: TDataSource
    DataSet = TblPost
    Left = 52
    Top = 276
  end
end
