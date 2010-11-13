object frmExceptionDialog: TfrmExceptionDialog
  Left = 310
  Top = 255
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'frmExceptionDialog'
  ClientHeight = 320
  ClientWidth = 529
  Color = clBtnFace
  Constraints.MinWidth = 200
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnPaint = FormPaint
  OnResize = FormResize
  OnShow = FormShow
  DesignSize = (
    529
    320)
  PixelsPerInch = 96
  TextHeight = 13
  object BevelDetails: TBevel
    Left = 5
    Top = 91
    Width = 519
    Height = 9
    Anchors = [akLeft, akTop, akRight]
    Shape = bsTopLine
    ExplicitWidth = 483
  end
  object SendBtn: TButton
    Left = 449
    Top = 32
    Width = 75
    Height = 25
    Hint = 'Send bug report using default mail client'
    Anchors = [akTop, akRight]
    Caption = '&Send'
    TabOrder = 0
    OnClick = SendBtnClick
    ExplicitLeft = 352
  end
  object TextLabel: TMemo
    Left = 56
    Top = 8
    Width = 378
    Height = 75
    Hint = 'Use Ctrl+C to copy the report to the clipboard'
    Anchors = [akLeft, akTop, akRight]
    BorderStyle = bsNone
    Ctl3D = True
    Lines.Strings = (
      'TextLabel')
    ParentColor = True
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
    WantReturns = False
    ExplicitWidth = 281
  end
  object OkBtn: TButton
    Left = 449
    Top = 4
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
    ExplicitLeft = 352
  end
  object DetailsBtn: TButton
    Left = 449
    Top = 60
    Width = 75
    Height = 25
    Hint = 'Show or hide additional information|'
    Anchors = [akTop, akRight]
    Caption = '&Details'
    Enabled = False
    TabOrder = 3
    OnClick = DetailsBtnClick
    ExplicitLeft = 352
  end
  object DetailsMemo: TMemo
    Left = 6
    Top = 101
    Width = 518
    Height = 212
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 4
    WantReturns = False
    WordWrap = False
    ExplicitWidth = 482
    ExplicitHeight = 189
  end
end
