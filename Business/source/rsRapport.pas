unit rsRapport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ExtCtrls, JvSpin, blsAlignEdit,
  ImgList, ComCtrls, TB2Item, TBX, TB2Dock, TB2Toolbar, ActnList, DBClient,
  Mask, JvExMask, frxExportCSV, frxClass, frxExportRTF,
  frxDBSet, frxADOComponents, frxExportPDF;

type
  TRapport = class;

  TfrmRapport = class(TForm)
    frReport: TfrxReport;
    adoData: TADODataSet;
    Panel1: TPanel;
    btnPreview: TButton;
    btnLukk: TButton;
    btnPrint: TButton;
    Panel2: TPanel;
    frxData: TfrxDBDataset;
    btnSave: TButton;
    ImageList: TImageList;
    Panel5: TPanel;
    Pc: TPageControl;
    tsSalg: TTabSheet;
    lvSalg: TListView;
    GroupBox1: TGroupBox;
    tsKunde: TTabSheet;
    lvKunde: TListView;
    GroupBox2: TGroupBox;
    tsLev: TTabSheet;
    lvLev: TListView;
    GroupBox3: TGroupBox;
    tsProdukt: TTabSheet;
    lvProd: TListView;
    GroupBox4: TGroupBox;
    Panel6: TPanel;
    ActionList: TActionList;
    acSalg: TAction;
    acKunde: TAction;
    acLeverandor: TAction;
    acProdukt: TAction;
    acRegnskap: TAction;
    Panel3: TPanel;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem4: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem3: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXItem2: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXItem1: TTBXItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    TBXItem5: TTBXItem;
    Panel4: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    tsRegnskap: TTabSheet;
    lvReg: TListView;
    Panel9: TPanel;
    GroupBox5: TGroupBox;
    SaveDialog: TSaveDialog;
    acLagre: TAction;
    acPreview: TAction;
    acPrint: TAction;
    cdsRpt: TClientDataSet;
    pnlKundeSort: TPanel;
    Label4: TLabel;
    cbKSort: TComboBox;
    pnlSalgPeriode: TPanel;
    Label5: TLabel;
//    dtStart: TadpDBDateTimePicker;
    Label7: TLabel;
//    dtSlutt: TadpDBDateTimePicker;
    pnlPerPeriode: TPanel;
    Label1: TLabel;
    editPeriode: TJvSpinEdit;
    pnlBilag: TPanel;
    editBStart: TblsAlignEdit;
    Label8: TLabel;
    editBSlutt: TblsAlignEdit;
    editBPStart: TJvSpinEdit;
    editBPSlutt: TJvSpinEdit;
    Label10: TLabel;
    rbPeriode: TRadioButton;
    rbNummer: TRadioButton;
    pnlPeriode: TPanel;
    editPStart: TJvSpinEdit;
    Label3: TLabel;
    editPSlutt: TJvSpinEdit;
    Label12: TLabel;
    pnlAar: TPanel;
    Label15: TLabel;
    editAar: TJvSpinEdit;
    frxAdoConn: TfrxADOComponents;
    frxPDFExport: TfrxPDFExport;
    pnlLevSort: TPanel;
    Label2: TLabel;
    cbLSort: TComboBox;
    pnlProdSort: TPanel;
    Label6: TLabel;
    cbPSort: TComboBox;
    cdsRptFile: TStringField;
    cdsRptName: TStringField;
    cdsRptSQL: TMemoField;
    cdsRptType: TIntegerField;
    cdsRptParam: TMemoField;
    cdsRptDesc: TMemoField;
    dtStart: TDateTimePicker;
    dtSlutt: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure acSalgExecute(Sender: TObject);
    procedure acKundeExecute(Sender: TObject);
    procedure acLeverandorExecute(Sender: TObject);
    procedure acProduktExecute(Sender: TObject);
    procedure acRegnskapExecute(Sender: TObject);
    procedure acLagreExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acPreviewExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure lvKundeSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure lvKundeInfoTip(Sender: TObject; Item: TListItem;
      var InfoTip: String);
    procedure lvSalgSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure PcChange(Sender: TObject);
    procedure lvLevSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure lvProdSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure lvRegSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure rbPeriodeClick(Sender: TObject);
    procedure rbNummerClick(Sender: TObject);
    procedure frReportGetValue(const VarName: string; var Value: Variant);
  private
    procedure StartRapport(Preview: Boolean = True; Eksporter: Boolean = False);
    procedure LastRapporter;
    procedure FreeItems(List: TListView);
    function LastRapportCfg(Rpt: TRapport): Boolean;
    procedure PreviewRpt;
    procedure PrintRpt;
    procedure ExportRpt;
    function FindParam(Name, Params: String): Boolean;
    procedure SettAktivKnapper;
    procedure SettAktivPage(PageIndex: Integer);
    function GenererExportNavn: String;
    { Private declarations }
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

uses rsData, blsFileUtil, rsPreview, Printers, DateUtils;

{$R *.dfm}

procedure TfrmRapport.LastRapporter;
var Node: TListItem;
    Rpt: TRapport;
begin
  Rpt := nil;
  cdsRpt.LoadFromFile(Dm.g_ReportDir + 'reportlist.xml');
  cdsRpt.Open;

  while not cdsRpt.Eof do begin

    if cdsRptType.Value in [1..5] then begin
      Rpt := TRapport.Create;
      Rpt.Sql := cdsRptSQL.Value;
      Rpt.Param := cdsRptParam.Value;
      Rpt.Fil := Dm.g_ReportDir + cdsRptFile.Value;
      Rpt.Navn := cdsRptName.Value;
      Rpt.RptType := cdsRptType.Value;
      Rpt.Desc := cdsRptDesc.Value;
    end;

    case cdsRptType.Value of
      1: Node := lvSalg.Items.Add;
      2: Node := lvKunde.Items.Add;
      3: Node := lvLev.Items.Add;
      4: Node := lvProd.Items.Add;
      5: Node := lvReg.Items.Add;
      else Node := nil;
    end;

    if Node <> nil then begin
      Node.ImageIndex := cdsRptType.Value -1;
      Node.Caption := cdsRptName.Value;
      Node.Data := Rpt;
    end;

    cdsRpt.Next;
  end;
end;

procedure TfrmRapport.FormCreate(Sender: TObject);
var I: Integer;
    Aar: Integer;
begin
  for I := 0 to Pc.PageCount - 1 do begin
    Pc.Pages[I].TabVisible := False;
    Pc.Pages[I].Visible := True;
  end;
  Pc.ActivePageIndex := 0;

  dtStart.Date := DateUtils.StartOfTheYear(Date);
  dtSlutt.Date := DateUtils.EndOfTheYear(Date);

  Aar := YearOf(Date);
  if Dm.g_BilagAar > 0 then
    Aar := Dm.g_BilagAar;
  editAar.Value := Aar;

  LastRapporter;
end;

procedure TfrmRapport.SettAktivPage(PageIndex: Integer);
begin
  Pc.ActivePageIndex := PageIndex;
  SettAktivKnapper;
end;

procedure TfrmRapport.acSalgExecute(Sender: TObject);
begin
  SettAktivPage(0);
end;

procedure TfrmRapport.acKundeExecute(Sender: TObject);
begin
  SettAktivPage(1);
end;

procedure TfrmRapport.acLeverandorExecute(Sender: TObject);
begin
  SettAktivPage(2);
end;

procedure TfrmRapport.acProduktExecute(Sender: TObject);
begin
  SettAktivPage(3);
end;

procedure TfrmRapport.acRegnskapExecute(Sender: TObject);
begin
  SettAktivPage(4);
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

function TfrmRapport.LastRapportCfg(Rpt: TRapport): Boolean;
begin
  if Rpt.Sql <> '' then begin
    adoData.Close;
    //Her settes parameterverider...
    adoData.CommandText := Rpt.Sql;
    if FindParam('IdKlient', Rpt.Param) then
      adoData.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
    if FindParam('Start', Rpt.Param) then
      adoData.Parameters.ParamValues['Start'] := dtStart.Date;
    if FindParam('Slutt', Rpt.Param) then
      adoData.Parameters.ParamValues['Slutt'] := dtSlutt.Date;
    adoData.Open;
  end;

  frReport.LoadFromFile(Rpt.Fil);
  Result := True;
end;

procedure TfrmRapport.PreviewRpt;
begin
  frmPreview := TfrmPreview.Create(Application);
  frReport.Preview := frmPreview.frPreview;
  frReport.ShowReport;
  frmPreview.ShowModal;
  frmPreview.Release;
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

  case Pc.ActivePageIndex of
    0: begin //Salg
      if lvSalg.Selected <> nil then
        FName := TRapport(lvSalg.Selected.Data).Navn;
    end;

    1: begin //Kunder
      if lvKunde.Selected <> nil then
        FName := TRapport(lvKunde.Selected.Data).Navn;
    end;

    2: begin //Leverandører
      if lvLev.Selected <> nil then
        FName := TRapport(lvLev.Selected.Data).Navn;
    end;

    3: begin //Produkt
      if lvProd.Selected <> nil then
        FName := TRapport(lvProd.Selected.Data).Navn;
    end;

    4: begin //Regnskap
      if lvReg.Selected <> nil then
        FName := TRapport(lvReg.Selected.Data).Navn;
    end;
  end;

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
  case Pc.ActivePageIndex of
    0: begin //Salg
      if lvSalg.Selected = nil then Exit;
      MyRpt := TRapport(lvSalg.Selected.Data);
    end;

    1: begin //Kunder
      if lvKunde.Selected = nil then Exit;
      MyRpt := TRapport(lvKunde.Selected.Data);
    end;

    2: begin //Leverandører
      if lvLev.Selected = nil then Exit;
      MyRpt := TRapport(lvLev.Selected.Data);
    end;

    3: begin //Produkt
      if lvProd.Selected = nil then Exit;
      MyRpt := TRapport(lvProd.Selected.Data);
    end;

    4: begin //Regnskap
      if lvReg.Selected = nil then Exit;
      MyRpt := TRapport(lvReg.Selected.Data);
    end;
  end;

  if MyRpt <> nil then
    LastRapportCfg(MyRpt);

  if Eksporter then begin  //Her er det ekport
    ExportRpt;
  end
  else begin  //Her er det preview/print
    if Preview then
      PreviewRpt
    else
      PrintRpt;
  end;
end;

procedure TfrmRapport.acLagreExecute(Sender: TObject);
begin
  StartRapport(False, True);
end;

procedure TfrmRapport.acPrintExecute(Sender: TObject);
begin
  StartRapport(False);
end;

procedure TfrmRapport.acPreviewExecute(Sender: TObject);
begin
  StartRapport(True);
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
  if VarName = 'IdKlient' then 
    Value := Dm.g_KlientID

  else if VarName = 'Start' then
    Value := dtStart.Date
  else if VarName = 'Slutt' then
    Value := dtSlutt.Date

  else if VarName = 'PeriodeStart' then
    Value := editPStart.AsInteger
  else if VarName = 'PeriodeSlutt' then
    Value := editPSlutt.AsInteger

  else if Varname = 'PerPeriode' then
    Value := editPeriode.AsInteger

  else if VarName = 'Sortering' then begin
    case Pc.ActivePageIndex of
      1: begin //Kunde
        case cbKSort.ItemIndex of
          0: Value := 'KONTAKTNR';
          1: Value := 'NAVN';
        end;
      end;

      2: begin //Leverandør
        case cbLSort.ItemIndex of
          0: Value := 'KONTAKTNR';
          1: Value := 'NAVN';
        end;
      end;

      3: begin //Produkt
        case cbPSort.ItemIndex of
          0: Value := 'PRODUKTNR';
          1: Value := 'NAVN';
        end;
      end;
    end;

  end

  else if VarName = 'Year' then
    Value := editAar.AsInteger;


  //Her overstyres variablene for bilags-journal utskrift
  if pnlBilag.Visible and rbPeriode.Checked then begin
    if VarName = 'PeriodeStart' then
      Value := editBPStart.AsInteger
    else if VarName = 'PeriodeSlutt' then
      Value := editBPSlutt.AsInteger
    else if VarName = 'BilagStart' then
      Value := 0
    else if VarName = 'BilagSlutt' then
      Value := 999999999
  end
  else if pnlBilag.Visible and rbNummer.Checked then begin
    if VarName = 'PeriodeStart' then
      Value := 1
    else if VarName = 'PeriodeSlutt' then
      Value := 13
    else if VarName = 'BilagStart' then
      Value := editBStart.AsInteger
    else if VarName = 'BilagSlutt' then
      Value := editBSlutt.AsInteger;
  end;
end;

procedure TfrmRapport.FormDestroy(Sender: TObject);
begin
  cdsRpt.Close;
  adoData.Close;

  FreeItems(lvSalg);
  FreeItems(lvProd);
  FreeItems(lvKunde);
  FreeItems(lvLev);
  FreeItems(lvReg);
end;

procedure TfrmRapport.lvKundeSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  SettAktivKnapper;
  
  if Selected then
    pnlKundeSort.Visible := FindParam('Sortering', TRapport(Item.Data).Param)
  else
    pnlKundeSort.Visible := False;
end;

procedure TfrmRapport.lvKundeInfoTip(Sender: TObject; Item: TListItem;
  var InfoTip: String);
begin
  if Trim(TRapport(Item.Data).Desc) <> '' then
    InfoTip := TRapport(Item.Data).Desc;
end;

procedure TfrmRapport.lvSalgSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  SettAktivKnapper;

  if Selected then
    pnlSalgPeriode.Visible := FindParam('Start', TRapport(Item.Data).Param)
  else
    pnlSalgPeriode.Visible := False;
end;

procedure TfrmRapport.SettAktivKnapper;
var Aktiv: Boolean;
begin
  Aktiv := False;
  case Pc.ActivePageIndex of
    0: Aktiv := lvSalg.Selected <> nil;
    1: Aktiv := lvKunde.Selected <> nil;
    2: Aktiv := lvLev.Selected <> nil;
    3: Aktiv := lvProd.Selected <> nil;
    4: Aktiv := lvReg.Selected <> nil;
  end;

  btnPreview.Enabled := Aktiv;
  btnPrint.Enabled := Aktiv;
  btnSave.Enabled := Aktiv;
end;

procedure TfrmRapport.PcChange(Sender: TObject);
begin
  SettAktivKnapper;
end;

procedure TfrmRapport.lvLevSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  SettAktivKnapper;

  if Selected then
    pnlLevSort.Visible := FindParam('Sortering', TRapport(Item.Data).Param)
  else
    pnlLevSort.Visible := False;
end;

procedure TfrmRapport.lvProdSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  SettAktivKnapper;

  if Selected then
    pnlProdSort.Visible := FindParam('Sortering', TRapport(Item.Data).Param)
  else
    pnlProdSort.Visible := False;
end;

procedure TfrmRapport.lvRegSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  SettAktivKnapper;

  if Selected then begin
    pnlBilag.Visible := FindParam('BilagStart', TRapport(Item.Data).Param);
    pnlPeriode.Visible := FindParam('PeriodeStart', TRapport(Item.Data).Param) and not pnlBilag.Visible;
    pnlPerPeriode.Visible := FindParam('PerPeriode', TRapport(Item.Data).Param);
    pnlAar.Visible := FindParam('Year', TRapport(Item.Data).Param);
  end
  else begin
    pnlAar.Visible := False;
    pnlBilag.Visible := False;
    pnlPerPeriode.Visible := False;
    pnlPeriode.Visible := False;
  end;
end;

procedure TfrmRapport.rbPeriodeClick(Sender: TObject);
begin
  editBStart.Color := clBtnFace;
  editBSlutt.Color := clBtnFace;

  editBPStart.Color := clWindow;
  editBPSlutt.Color := clWindow;
end;

procedure TfrmRapport.rbNummerClick(Sender: TObject);
begin
  editBStart.Color := clWindow;
  editBSlutt.Color := clWindow;

  editBPStart.Color := clBtnFace;
  editBPSlutt.Color := clBtnFace;
end;

end.
