object FrmFakturaInfo: TFrmFakturaInfo
  Left = 446
  Top = 336
  BorderStyle = bsDialog
  Caption = 'Faktura Informasjon'
  ClientHeight = 308
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  DesignSize = (
    329
    308)
  PixelsPerInch = 96
  TextHeight = 14
  object Button1: TButton
    Left = 143
    Top = 277
    Width = 87
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object Button2: TButton
    Left = 235
    Top = 277
    Width = 87
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = '&Avbryt'
    ModalResult = 2
    TabOrder = 1
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 313
    Height = 261
    ActivePage = TabSheet1
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Generelt'
      object Label1: TLabel
        Left = 20
        Top = 20
        Width = 77
        Height = 14
        Caption = 'Fakturanummer:'
      end
      object Label2: TLabel
        Left = 20
        Top = 36
        Width = 60
        Height = 14
        Caption = 'Fakturadato:'
      end
      object Label3: TLabel
        Left = 20
        Top = 52
        Width = 60
        Height = 14
        Caption = 'Forfallsdato:'
      end
      object Label4: TLabel
        Left = 20
        Top = 80
        Width = 54
        Height = 14
        Caption = 'Betalt dato:'
      end
      object DBText1: TDBText
        Left = 112
        Top = 20
        Width = 44
        Height = 14
        AutoSize = True
        DataField = 'Fakturanr'
        DataSource = Dm.FakturaDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 112
        Top = 36
        Width = 44
        Height = 14
        AutoSize = True
        DataField = 'Fakturadato'
        DataSource = Dm.FakturaDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 112
        Top = 52
        Width = 44
        Height = 14
        AutoSize = True
        DataField = 'Forfallsdato'
        DataSource = Dm.FakturaDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 112
        Top = 80
        Width = 44
        Height = 14
        AutoSize = True
        DataField = 'Betaltdato'
        DataSource = Dm.FakturaDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
