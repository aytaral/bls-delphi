object frmPrint: TfrmPrint
  Left = 273
  Top = 205
  BorderStyle = bsDialog
  Caption = 'Print Report'
  ClientHeight = 133
  ClientWidth = 303
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
  object frRpt: TfrxReport
    Version = '4.5.37'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Forvalgt'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Compressed = True
    ReportOptions.CreateDate = 39307.930986273150000000
    ReportOptions.LastChange = 39307.930986273150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    StoreInDFM = False
    OnGetValue = frRptGetValue
    Left = 8
    Top = 8
  end
  object frxRptConn: TfrxADOComponents
    DefaultDatabase = Dm.adoConn
    Left = 36
    Top = 8
  end
  object frxPDFExport: TfrxPDFExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = False
    OverwritePrompt = False
    PrintOptimized = True
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'BLS'
    Subject = 'BLS Business PDF export'
    Creator = 'BLS Business'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 68
    Top = 8
  end
  object adoFakturaArt: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select IDFAKTURAART'#13#10'from FAKTURA'#13#10'where IDKLIENT = :IdKlient'#13#10'a' +
      'nd IDFAKTURA = :IdFaktura;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdFaktura'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 8
    Top = 48
    object adoFakturaArtIDFAKTURAART: TIntegerField
      FieldName = 'IDFAKTURAART'
    end
  end
end
