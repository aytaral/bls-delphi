object frmSettings: TfrmSettings
  Left = 487
  Top = 300
  BorderStyle = bsDialog
  Caption = 'Innstillinger'
  ClientHeight = 299
  ClientWidth = 321
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  DesignSize = (
    321
    299)
  PixelsPerInch = 96
  TextHeight = 13
  object btnOK: TButton
    Left = 136
    Top = 268
    Width = 85
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
    OnClick = btnOKClick
  end
  object btnAvbryt: TButton
    Left = 228
    Top = 268
    Width = 85
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
    Width = 306
    Height = 253
    ActivePage = TabSheet1
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Generelt'
      object GroupBox1: TGroupBox
        Left = 8
        Top = 86
        Width = 281
        Height = 123
        Caption = 'Database:'
        TabOrder = 0
        object Label2: TLabel
          Left = 16
          Top = 24
          Width = 36
          Height = 13
          Caption = 'Server:'
        end
        object Label3: TLabel
          Left = 16
          Top = 68
          Width = 58
          Height = 13
          Caption = 'Databasefil:'
        end
        object editServer: TEdit
          Left = 16
          Top = 40
          Width = 249
          Height = 21
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 0
        end
        object editDB: TEdit
          Left = 16
          Top = 84
          Width = 249
          Height = 21
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 12
        Width = 281
        Height = 61
        Caption = 'Sikkerhetskopiering:'
        TabOrder = 1
        object Label1: TLabel
          Left = 16
          Top = 28
          Width = 181
          Height = 13
          Caption = 'Antall sikkerhetskopier som blir lagret:'
        end
        object editAnt: TSpinEdit
          Left = 208
          Top = 24
          Width = 57
          Height = 22
          MaxValue = 50
          MinValue = 1
          TabOrder = 0
          Value = 7
        end
      end
    end
  end
end
