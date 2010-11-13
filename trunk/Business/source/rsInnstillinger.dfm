object frmInnstillinger: TfrmInnstillinger
  Left = 470
  Top = 258
  BorderStyle = bsDialog
  Caption = 'Innstillinger'
  ClientHeight = 492
  ClientWidth = 455
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
    Top = 462
    Width = 455
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 426
    object btnLukk: TButton
      Left = 369
      Top = 0
      Width = 81
      Height = 25
      Cancel = True
      Caption = '&Lukk'
      ModalResult = 2
      TabOrder = 1
    end
    object btnOK: TButton
      Left = 277
      Top = 0
      Width = 87
      Height = 25
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = btnOKClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 455
    Height = 462
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 1
    ExplicitWidth = 426
    object Pc: TPageControl
      Left = 5
      Top = 5
      Width = 445
      Height = 452
      ActivePage = tsMva
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 416
      object tsGenerelt: TTabSheet
        Caption = 'Generelt'
        ExplicitWidth = 408
      end
      object tsMva: TTabSheet
        Caption = 'Merverdiavgift'
        ImageIndex = 1
        ExplicitWidth = 408
        object blsBorderPanel1: TblsBorderPanel
          Left = 0
          Top = 25
          Width = 437
          Height = 399
          Align = alClient
          BorderWidth = 8
          Caption = 'blsBorderPanel1'
          TabOrder = 0
          ExplicitWidth = 408
          object JvDBGrid1: TJvDBGrid
            Left = 9
            Top = 9
            Width = 419
            Height = 381
            Align = alClient
            DataSource = Dm.dsMva
            PopupMenu = popMva
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            AutoSizeColumns = True
            AutoSizeColumnIndex = 1
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            CanDelete = False
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'MVAKODE'
                Title.Caption = 'Mva.'
                Width = 32
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BESKRIVELSE'
                Title.Caption = 'Beskrivelse'
                Width = 268
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SATS'
                Title.Caption = 'Sats'
                Width = 53
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'GRUPPE'
                Title.Caption = ' G '
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AKTIV'
                Title.Caption = 'Aktiv'
                Width = 28
                Visible = True
              end>
          end
        end
        object blsBorderPanel2: TblsBorderPanel
          Left = 0
          Top = 0
          Width = 437
          Height = 25
          Align = alTop
          Caption = 'blsBorderPanel2'
          TabOrder = 1
          ExplicitWidth = 408
          object Label1: TLabel
            Left = 10
            Top = 10
            Width = 385
            Height = 13
            Caption = 
              'Global liste over merverdiavgifter. NB: Endringer her kan f'#229' sto' +
              're konsekvenser!'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsItalic]
            ParentFont = False
          end
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 360
    Top = 120
    object acDeleteMva: TAction
      Caption = 'Slett merverdiavgift'
      ShortCut = 16430
      OnExecute = acDeleteMvaExecute
    end
  end
  object popMva: TTBXPopupMenu
    Left = 392
    Top = 120
    object TBXItem1: TTBXItem
      Action = acDeleteMva
    end
  end
end
