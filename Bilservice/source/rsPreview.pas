unit rsPreview;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TB2Dock, TB2Toolbar, TBX, TB2Item, Menus,
  ActnList, ImgList, frxClass, frxPreview, TBXStatusBars, frxExportPDF,
  frxExportODF, frxExportImage, frxExportXLS, frxExportRTF, frxExportHTML;

type
  TfrmPreview = class(TForm)
    frPreview: TfrxPreview;
    Panel1: TPanel;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXPopupMenu1: TTBXPopupMenu;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    ActionList: TActionList;
    acLukk: TAction;
    TBXItem3: TTBXItem;
    acFirst: TAction;
    acPrev: TAction;
    acNext: TAction;
    acLast: TAction;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    TBXItem6: TTBXItem;
    TBXItem7: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    acSave: TAction;
    TBXItem8: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXItem9: TTBXItem;
    acOpen: TAction;
    acPrint: TAction;
    TBXItem10: TTBXItem;
    Img: TImageList;
    acZoomIn: TAction;
    acZoomOut: TAction;
    TBXItem11: TTBXItem;
    TBXItem12: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    acPage: TAction;
    acZoom100: TAction;
    acPageWidth: TAction;
    TBXItem13: TTBXItem;
    TBXItem14: TTBXItem;
    TBXItem15: TTBXItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    acSearch: TAction;
    TBXItem16: TTBXItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    TBXItem17: TTBXItem;
    TBXItem18: TTBXItem;
    TBXSeparatorItem6: TTBXSeparatorItem;
    TBXItem19: TTBXItem;
    TBXItem20: TTBXItem;
    TBXItem21: TTBXItem;
    acTwoPage: TAction;
    acZoom75: TAction;
    acZoom50: TAction;
    TBXSeparatorItem7: TTBXSeparatorItem;
    TBXItem22: TTBXItem;
    TBXItem23: TTBXItem;
    TBXSubmenuItem1: TTBXSubmenuItem;
    TBXSubmenuItem2: TTBXSubmenuItem;
    acZoom25: TAction;
    TBXItem24: TTBXItem;
    acNewPage: TAction;
    TBXItem25: TTBXItem;
    acZoom125: TAction;
    acZoom150: TAction;
    acDelete: TAction;
    TBXItem26: TTBXItem;
    TBXItem27: TTBXItem;
    TBXItem28: TTBXItem;
    sbStatus: TTBXStatusBar;
    frxPDFExport: TfrxPDFExport;
    acThumb: TAction;
    TBXSeparatorItem8: TTBXSeparatorItem;
    TBXItem29: TTBXItem;
    acMail: TAction;
    frxHTMLExport: TfrxHTMLExport;
    frxRTFExport: TfrxRTFExport;
    frxXLSExport: TfrxXLSExport;
    frxBMPExport: TfrxBMPExport;
    frxJPEGExport: TfrxJPEGExport;
    frxODSExport: TfrxODSExport;
    frxODTExport: TfrxODTExport;
    frxTIFFExport: TfrxTIFFExport;
    TBXItem30: TTBXItem;
    SaveDialog: TSaveDialog;
    procedure acLukkExecute(Sender: TObject);
    procedure acFirstExecute(Sender: TObject);
    procedure acPrevExecute(Sender: TObject);
    procedure acNextExecute(Sender: TObject);
    procedure acLastExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acOpenExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acZoomInExecute(Sender: TObject);
    procedure acZoomOutExecute(Sender: TObject);
    procedure acPageExecute(Sender: TObject);
    procedure acZoom100Execute(Sender: TObject);
    procedure acPageWidthExecute(Sender: TObject);
    procedure acSearchExecute(Sender: TObject);
    procedure acTwoPageExecute(Sender: TObject);
    procedure acZoom75Execute(Sender: TObject);
    procedure acZoom50Execute(Sender: TObject);
    procedure acZoom25Execute(Sender: TObject);
    procedure acNewPageExecute(Sender: TObject);
    procedure acZoom125Execute(Sender: TObject);
    procedure acZoom150Execute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure frPreviewPageChanged(Sender: TfrxPreview; PageNo: Integer);
    procedure acThumbExecute(Sender: TObject);
    procedure acMailExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPreview: TfrmPreview;

implementation

uses blsRegistry, JclMapi, JclSysInfo, blsFileUtil;

{$R *.dfm}

procedure TfrmPreview.acLukkExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmPreview.acMailExecute(Sender: TObject);
var EMail: TJclEmail;
    Rpt: String;
begin
  EMail := TJclEmail.Create;
  try
    Rpt := frPreview.Report.ReportOptions.Name;
    if Rpt = '' then 
      Rpt := 'Rapport';

    EMail.Recipients.Add('angi_epost@domene.com');
    Email.Subject := Rpt;
    Email.Body := 'Se vedlagt fil "' + Rpt + '.PDF"';

    frxPDFExport.FileName := AddBackSlash(JclSysInfo.GetWindowsTempFolder) + Rpt + '.PDF';
    frPreview.Export(frxPDFExport);
    Email.Attachments.Add(frxPDFExport.FileName);

    Email.Send();
  finally
    Email.Free;
    DeleteFile(frxPDFExport.FileName);
  end;
end;

procedure TfrmPreview.acFirstExecute(Sender: TObject);
begin
  frPreview.First;
end;

procedure TfrmPreview.acPrevExecute(Sender: TObject);
begin
  frPreview.Prior;
end;

procedure TfrmPreview.acNextExecute(Sender: TObject);
begin
  frPreview.Next;
end;

procedure TfrmPreview.acLastExecute(Sender: TObject);
begin
  frPreview.Last;
end;

procedure TfrmPreview.acSaveExecute(Sender: TObject);
var
  Ext: String;
begin
  SaveDialog.FileName := frPreview.Report.ReportOptions.Name;
  if SaveDialog.Execute then begin
    Ext := ExtractFileExt(SaveDialog.FileName);
    if Ext = '' then begin
      case SaveDialog.FilterIndex of
        0: ChangeFileExt(SaveDialog.FileName, '.PDF');
        1: ChangeFileExt(SaveDialog.FileName, '.HTML');
        2: ChangeFileExt(SaveDialog.FileName, '.RTF');
        3: ChangeFileExt(SaveDialog.FileName, '.XLS');
        4: ChangeFileExt(SaveDialog.FileName, '.BMP');
        5: ChangeFileExt(SaveDialog.FileName, '.JPG');
        6: ChangeFileExt(SaveDialog.FileName, '.TIF');
        7: ChangeFileExt(SaveDialog.FileName, '.ODS');
        8: ChangeFileExt(SaveDialog.FileName, '.ODT');
        9: ChangeFileExt(SaveDialog.FileName, '.FR3');
      end;
    end;

    if UpperCase(Ext) = '.PDF' then begin
      frxPDFExport.FileName := SaveDialog.FileName;
      frPreview.Export(frxPDFExport);
    end
    else if UpperCase(Ext) = '.HTML' then begin
      frxHTMLExport.FileName := SaveDialog.FileName;
      frPreview.Export(frxHTMLExport);
    end
    else if UpperCase(Ext) = '.RTF' then begin
      frxRTFExport.FileName := SaveDialog.FileName;
      frPreview.Export(frxRTFExport);
    end
    else if UpperCase(Ext) = '.XLS' then begin
      frxXLSExport.FileName := SaveDialog.FileName;
      frPreview.Export(frxXLSExport);
    end

    else if UpperCase(Ext) = '.BMP' then begin
      frxBMPExport.FileName := SaveDialog.FileName;
      frPreview.Export(frxBMPExport);
    end
    else if UpperCase(Ext) = '.JPG' then begin
      frxJPEGExport.FileName := SaveDialog.FileName;
      frPreview.Export(frxJPEGExport);
    end
    else if UpperCase(Ext) = '.TIF' then begin
      frxTIFFExport.FileName := SaveDialog.FileName;
      frPreview.Export(frxTIFFExport);
    end

    else if UpperCase(Ext) = '.ODS' then begin
      frxODSExport.FileName := SaveDialog.FileName;
      frPreview.Export(frxODSExport);
    end
    else if UpperCase(Ext) = '.ODT' then begin
      frxODTExport.FileName := SaveDialog.FileName;
      frPreview.Export(frxODTExport);
    end

    else if UpperCase(Ext) = '.FR3' then begin
      frPreview.SaveToFile(SaveDialog.FileName);
    end;

  end;
end;

procedure TfrmPreview.acOpenExecute(Sender: TObject);
begin
  frPreview.LoadFromFile;
end;

procedure TfrmPreview.acPrintExecute(Sender: TObject);
begin
  frPreview.Print;
end;

procedure TfrmPreview.acZoomInExecute(Sender: TObject);
begin
  frPreview.Zoom := frPreview.Zoom + 0.25;
end;

procedure TfrmPreview.acZoomOutExecute(Sender: TObject);
begin
  frPreview.Zoom := frPreview.Zoom - 0.25;
end;

procedure TfrmPreview.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  frPreview.MouseWheelScroll(WheelDelta);
end;

procedure TfrmPreview.FormShow(Sender: TObject);
begin
  frPreview.ThumbnailVisible := blsRegistry.GetUserBool('', 'VisThumbs', True);
  acThumb.Checked := frPreview.ThumbnailVisible;
  frPreview.SetFocus;
  //acPageWidth.Execute;
  acZoom100.Execute;
end;

procedure TfrmPreview.frPreviewPageChanged(Sender: TfrxPreview;
  PageNo: Integer);
begin
  sbStatus.Panels[0].Caption := 'Side ' + IntToStr(PageNo) + ' av ' + IntToStr(frPreview.PageCount);
end;

procedure TfrmPreview.acPageExecute(Sender: TObject);
begin
  frPreview.ZoomMode := zmWholePage;
end;

procedure TfrmPreview.acPageWidthExecute(Sender: TObject);
begin
  frPreview.ZoomMode := zmPageWidth;
end;

procedure TfrmPreview.acTwoPageExecute(Sender: TObject);
begin
  frPreview.ZoomMode := zmManyPages;
end;

procedure TfrmPreview.acSearchExecute(Sender: TObject);
begin
  frPreview.Find;
end;

procedure TfrmPreview.acThumbExecute(Sender: TObject);
begin
  frPreview.ThumbnailVisible := not frPreview.ThumbnailVisible;
  blsRegistry.SetUserBool('', 'VisThumbs', frPreview.ThumbnailVisible);
end;

procedure TfrmPreview.acZoom100Execute(Sender: TObject);
begin
  frPreview.Zoom := 1;
end;

procedure TfrmPreview.acZoom75Execute(Sender: TObject);
begin
  frPreview.Zoom := 0.75;
end;

procedure TfrmPreview.acZoom50Execute(Sender: TObject);
begin
  frPreview.Zoom := 0.50;
end;

procedure TfrmPreview.acZoom25Execute(Sender: TObject);
begin
  frPreview.Zoom := 0.25;
end;

procedure TfrmPreview.acZoom125Execute(Sender: TObject);
begin
  frPreview.Zoom := 1.25;
end;

procedure TfrmPreview.acZoom150Execute(Sender: TObject);
begin
  frPreview.Zoom := 1.50;
end;

procedure TfrmPreview.acNewPageExecute(Sender: TObject);
begin
  frPreview.AddPage;
end;

procedure TfrmPreview.acDeleteExecute(Sender: TObject);
begin
  frPreview.DeletePage;
end;

end.
