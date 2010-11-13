object frmAbout: TfrmAbout
  Left = 495
  Top = 272
  BorderStyle = bsDialog
  Caption = 'Om BLS Business'
  ClientHeight = 319
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 116
    Top = 8
    Width = 178
    Height = 33
    Caption = 'BLS Business'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 116
    Top = 48
    Width = 40
    Height = 13
    Caption = 'Versjon:'
  end
  object Bevel1: TBevel
    Left = 116
    Top = 196
    Width = 260
    Height = 5
    Shape = bsBottomLine
  end
  object lblWindows: TLabel
    Left = 216
    Top = 212
    Width = 82
    Height = 13
    Caption = 'Windows Versjon'
  end
  object Label3: TLabel
    Left = 116
    Top = 212
    Width = 80
    Height = 13
    Caption = 'Operativsystem:'
  end
  object Label4: TLabel
    Left = 116
    Top = 228
    Width = 86
    Height = 13
    Caption = 'Minne tilgjengelig:'
  end
  object lblMem: TLabel
    Left = 216
    Top = 228
    Width = 28
    Height = 13
    Caption = 'Minne'
  end
  object lblVersion: TLabel
    Left = 162
    Top = 48
    Width = 45
    Height = 13
    Caption = 'lblVersion'
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 93
    Height = 303
    BevelOuter = bvLowered
    TabOrder = 0
  end
  object Button1: TButton
    Left = 275
    Top = 286
    Width = 101
    Height = 25
    Cancel = True
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
end
