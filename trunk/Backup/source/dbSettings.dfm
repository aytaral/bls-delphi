object frmSettings: TfrmSettings
  Left = 487
  Top = 300
  BorderStyle = bsDialog
  Caption = 'Innstillinger'
  ClientHeight = 348
  ClientWidth = 323
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
    323
    348)
  PixelsPerInch = 96
  TextHeight = 13
  object btnOK: TButton
    Left = 138
    Top = 317
    Width = 85
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
    OnClick = btnOKClick
    ExplicitLeft = 136
    ExplicitTop = 268
  end
  object btnAvbryt: TButton
    Left = 230
    Top = 317
    Width = 85
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = '&Avbryt'
    ModalResult = 2
    TabOrder = 1
    ExplicitLeft = 228
    ExplicitTop = 268
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 306
    Height = 297
    ActivePage = TabSheet1
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Generelt'
      ExplicitHeight = 225
      object GroupBox1: TGroupBox
        Left = 8
        Top = 86
        Width = 281
        Height = 171
        Caption = 'Database:'
        TabOrder = 0
        object Label2: TLabel
          Left = 16
          Top = 24
          Width = 85
          Height = 13
          Caption = 'Database Server:'
        end
        object Label3: TLabel
          Left = 16
          Top = 68
          Width = 169
          Height = 13
          Caption = 'Databasefil (Lokal bane p'#229' server):'
        end
        object Label4: TLabel
          Left = 16
          Top = 116
          Width = 89
          Height = 13
          Caption = 'UNC Data katalog:'
        end
        object editServer: TEdit
          Left = 16
          Top = 40
          Width = 249
          Height = 21
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 0
          OnDblClick = editServerDblClick
        end
        object editDB: TEdit
          Left = 16
          Top = 84
          Width = 249
          Height = 21
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 1
          OnDblClick = editServerDblClick
        end
        object edUNCPath: TEdit
          Left = 16
          Top = 132
          Width = 249
          Height = 21
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 2
          OnDblClick = editServerDblClick
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
