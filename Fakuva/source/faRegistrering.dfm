object FrmRegistrering: TFrmRegistrering
  Left = 477
  Top = 290
  BorderStyle = bsDialog
  Caption = 'Registrering av Fakuva'
  ClientHeight = 160
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 53
    Height = 14
    Caption = 'Firmanavn:'
  end
  object Label2: TLabel
    Left = 8
    Top = 76
    Width = 66
    Height = 14
    Caption = 'Serienummer:'
  end
  object LblHeading: TLabel
    Left = 8
    Top = 8
    Width = 283
    Height = 14
    Caption = 'Vennligst oppgi firmanavn og serienummer mottatt fra BLS.'
  end
  object EditFirma: TEdit
    Left = 8
    Top = 48
    Width = 281
    Height = 22
    TabOrder = 0
    OnChange = EditFirmaChange
  end
  object EditSerial: TEdit
    Left = 8
    Top = 92
    Width = 281
    Height = 22
    TabOrder = 1
    OnChange = EditFirmaChange
  end
  object BtnAvbryt: TButton
    Left = 208
    Top = 124
    Width = 83
    Height = 25
    Cancel = True
    Caption = '&Avbryt'
    ModalResult = 2
    TabOrder = 2
  end
  object BtnOK: TButton
    Left = 120
    Top = 124
    Width = 83
    Height = 25
    Caption = '&OK'
    Default = True
    Enabled = False
    ModalResult = 1
    TabOrder = 3
    OnClick = BtnOKClick
  end
end
