unit bsRapport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ImgList, DB, DBClient, Printers,
  ADODB, frxClass, frxDBSet, frxExportCSV, frxExportRTF,
  frxExportPDF, frxADOComponents;

type
  TRapport = class;

  TfrmRapport = class(TForm)
    Panel2: TPanel;
    btnAvbryt: TButton;
    btnPreview: TButton;
    Panel1: TPanel;
    Panel3: TPanel;
    lvReg: TListView;
    GroupBox1: TGroupBox;
    btnPrint: TButton;
    btnSave: TButton;
    ImageList: TImageList;
    cdsRpt: TClientDataSet;
    cdsRptFile: TStringField;
    cdsRptName: TStringField;
    cdsRptSQL: TMemoField;
    cdsRptType: TIntegerField;
    cdsRptParam: TMemoField;
    cdsRptDesc: TMemoField;
    frReport: TfrxReport;
    SaveDialog: TSaveDialog;
    adoData: TADODataSet;
    frDBDataSet: TfrxDBDataSet;
    pnlDato: TPanel;
//    dtStart: TadpDBDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
//    dtSlutt: TadpDBDateTimePicker;
    rptAdoConn: TfrxADOComponents;
    frxPDFExport: TfrxPDFExport;
    dtStart: TDateTimePicker;
    dtSlutt: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure lvRegSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure lvRegInfoTip(Sender: TObject; Item: TListItem;
      var InfoTip: String);
    procedure frReportGetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    procedure LastRapporter;
    procedure FreeItems(List: TListView);
    procedure ExportRpt;
    procedure PreviewRpt;
    procedure PrintRpt;
    procedure StartRapport(Preview: Boolean = True; Eksporter: Boolean = False);
    function LastRapportCfg(Rpt: TRapport): Boolean;
    procedure SettAktivKnapper;
    function FindParam(Name, Params: String): Boolean;
    function GenererExportNavn: String;
  public
    { Public declarations }
  end;

  TRapport = class(TObject)
    Fil: TFileName;
    Navn: String;
    Sql: String;
    Param: String;
    RptType: Integer;
    Desc: String;
  end;

var
  frmRapport: TfrmRapport;

implementation

uses bsData, rsPreview, DateUtils;

{$R *.dfm}

procedure TfrmRapport.LastRapporter;
var Node: TListItem;
    Rpt: TRapport;
begin
  Node := nil;
  cdsRpt.LoadFromFile(dmData.g_ReportDir + 'reportlist.xml');
  cdsRpt.Open;

  while not cdsRpt.Eof do begin
    Rpt := TRapport.Create;
    Rpt.Sql := cdsRptSQL.Value;
    Rpt.Param := cdsRptParam.Value;
    Rpt.Fil := dmData.g_ReportDir + cdsRptFile.Value;
    Rpt.Navn := cdsRptName.Value;
    Rpt.RptType := cdsRptType.Value;
    Rpt.Desc := cdsRptDesc.Value;

    Node := lvReg.Items.Add;

    if Node <> nil then begin
      Node.ImageIndex := 0;
      Node.Caption := cdsRptName.Value;
      Node.Data := Rpt;
    end;

    cdsRpt.Next;
  end;
end;

procedure TfrmRapport.FormCreate(Sender: TObject);
begin
  LastRapporter;
  dtStart.Date := DateUtils.StartOfTheYear(Date);
  dtSlutt.Date := DateUtils.EndOfTheYear(Date);
end;

procedure TfrmRapport.FreeItems(List: TListView);
var I: Integer;
begin
  for I := 0 to List.Items.Count - 1 do
    if List.Items[I].Data <> nil then
      TObject(List.Items[I].Data).Free;
end;

procedure TfrmRapport.frReportGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'StartDate' then
    Value := dtStart.Date;
  if VarName = 'EndDate' then
    Value := dtSlutt.Date;
end;

procedure TfrmRapport.FormDestroy(Sender: TObject);
begin
  cdsRpt.Close;
  FreeItems(lvReg);
end;

procedure TfrmRapport.PreviewRpt;
begin
  frmPreview := TfrmPreview.Create(Application);
  try
    frReport.Preview := frmPreview.frPreview;
    frReport.ShowReport;
    frmPreview.ShowModal;
  finally
    frmPreview.Release;
  end;
end;

procedure TfrmRapport.PrintRpt;
begin
  if frReport.PrepareReport then
    frReport.Print;
end;

function TfrmRapport.GenererExportNavn: String;
var
  FName: String;
begin
  Result := '';
  if lvReg.Selected <> nil then
     FName := TRapport(lvReg.Selected.Data).Navn;
  if FName <> '' then
    Result := StringReplace(FName, ' ', '_', [rfReplaceAll]) + '.pdf';
end;

procedure TfrmRapport.ExportRpt;
begin
  SaveDialog.FileName := GenererExportNavn;
  if SaveDialog.Execute then
    if frReport.PrepareReport then begin
      frxPDFExport.FileName := SaveDialog.FileName;
      frReport.Export(frxPDFExport);
    end;
end;

procedure TfrmRapport.StartRapport(Preview: Boolean = True; Eksporter: Boolean = False);
var MyRpt: TRapport;
begin
  MyRpt := nil;

  if lvReg.Selected = nil then Exit;
  MyRpt := TRapport(lvReg.Selected.Data);

  if MyRpt <> nil then
    LastRapportCfg(MyRpt);

  if Eksporter then begin
    ExportRpt;
  end
  else begin
    if Preview then
      PreviewRpt
    else
      PrintRpt;
  end;
end;

function TfrmRapport.LastRapportCfg(Rpt: TRapport): Boolean;
begin
  adoData.Close;
  adoData.CommandText := Rpt.Sql;

  if adoData.CommandText <> '' then begin
    //Her settes parameterverider...
    if FindParam('STARTDATE', Rpt.Param) then begin
      adoData.Parameters.ParamValues['STARTDATE'] := dtStart.Date;
      adoData.Parameters.ParamValues['ENDDATE'] := dtSlutt.Date;
    end;
    adoData.Open;
  end;

  frReport.LoadFromFile(Rpt.Fil);
  Result := True;
end;

procedure TfrmRapport.btnPreviewClick(Sender: TObject);
begin
  StartRapport;
end;

procedure TfrmRapport.btnSaveClick(Sender: TObject);
begin
  StartRapport(False, True);
end;

procedure TfrmRapport.btnPrintClick(Sender: TObject);
begin
  StartRapport(False);
end;

procedure TfrmRapport.SettAktivKnapper;
var Aktiv: Boolean;
begin
  Aktiv := lvReg.Selected <> nil;

  btnPreview.Enabled := Aktiv;
  btnPrint.Enabled := Aktiv;
  btnSave.Enabled := Aktiv;
end;

procedure TfrmRapport.lvRegSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  SettAktivKnapper;

  if Selected then begin
    pnlDato.Visible := FindParam('STARTDATE', TRapport(Item.Data).Param);
  end
  else begin
    pnlDato.Visible := False;
  end;
end;

function TfrmRapport.FindParam(Name, Params: String): Boolean;
var S: TStringList;
    I: Integer;
begin
  Result := False;
  S := TStringList.Create;
  try
    S.Text := Params;
    for I := 0 to S.Count -1 do
      if UpperCase(S[I]) = UpperCase(Name) then begin
        Result := True;
        Break;
      end;
  finally
    S.Free;
  end;
end;

procedure TfrmRapport.lvRegInfoTip(Sender: TObject; Item: TListItem;
  var InfoTip: String);
begin
  if Trim(TRapport(Item.Data).Desc) <> '' then
    InfoTip := TRapport(Item.Data).Desc;
end;

end.
