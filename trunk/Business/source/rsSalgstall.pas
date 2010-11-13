unit rsSalgstall;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, DBCtrls, Grids, DBGrids,
  blsBorderPanel, ComCtrls, frxClass, frxDBSet,
  frxADOComponents;

type
  TfrmSalgstall = class(TForm)
    Panel1: TPanel;
    btnLukk: TButton;
    Panel2: TPanel;
    btnExport: TButton;
    adoSalg: TADODataSet;
    dsSalg: TDataSource;
    adoSalgEKS: TFloatField;
    adoSalgMVA: TFloatField;
    adoSalgAVGIFT: TFloatField;
    adoSalgRABATT: TFloatField;
    adoSalgTOTALT: TFloatField;
    adoSalgAVRUNDING: TFloatField;
    adoSalgPURREGEBYR: TFloatField;
    adoSalgPURRERENTER: TFloatField;
    adoSalgANTALL: TIntegerField;
    adoArt: TADODataSet;
    dsArt: TDataSource;
    adoArtFAKTURAART: TStringField;
    adoArtCOUNT: TIntegerField;
    adoArtSUM: TFloatField;
    adoBetaling: TADODataSet;
    dsBetaling: TDataSource;
    adoBetalingBETSTATUS: TStringField;
    adoBetalingCOUNT: TIntegerField;
    adoBetalingSUM: TFloatField;
    adoBetalingCASE: TFloatField;
    adoMva: TADODataSet;
    dsMva: TDataSource;
    adoMvaMVA: TFloatField;
    adoMvaSUM: TFloatField;
    Panel7: TPanel;
    Panel9: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label3: TLabel;
    DBText4: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    DBText5: TDBText;
    Label6: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    Label7: TLabel;
    DBText8: TDBText;
    Label8: TLabel;
    DBText9: TDBText;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Panel8: TPanel;
    Panel3: TPanel;
    blsBorderPanel1: TblsBorderPanel;
    dbgArt: TDBGrid;
    Panel4: TPanel;
    Panel10: TPanel;
    blsBorderPanel2: TblsBorderPanel;
    Panel11: TPanel;
    blsBorderPanel3: TblsBorderPanel;
    Panel12: TPanel;
    dbgBetaling: TDBGrid;
    dbgMva: TDBGrid;
    Label12: TLabel;
    //dtStart: TadpDBDateTimePicker;
    //dtSlutt: TadpDBDateTimePicker;
    btnUpdate: TButton;
    Label13: TLabel;
    Label14: TLabel;
    //mxExport: TmxDataSetExport;
    adoFaktura: TADODataSet;
    adoFakturaFAKTURANR: TIntegerField;
    adoFakturaKUNDENR: TIntegerField;
    adoFakturaKUNDEADR: TMemoField;
    adoFakturaFAKTURADATO: TDateField;
    adoFakturaFORFALLDATO: TDateField;
    adoFakturaBETALTDATO: TDateField;
    adoFakturaREFNR: TStringField;
    adoFakturaSUMEKS: TFloatField;
    adoFakturaSUMRAB: TFloatField;
    adoFakturaSUMAVG: TFloatField;
    adoFakturaSUMMVA: TFloatField;
    adoFakturaSUMTOT: TFloatField;
    adoFakturaAVRUNDING: TFloatField;
    adoFakturaPURREDATO: TDateField;
    adoFakturaPURREGEBYR: TFloatField;
    adoFakturaPURRERENTER: TFloatField;
    adoFakturaBETSTATUS: TStringField;
    adoFakturaFAKTURAART: TStringField;
    adoFakturaKUNDE: TStringField;
    frReport: TfrxReport;
    btnPrint: TButton;
    frMva: TfrxDBDataSet;
    frBetaling: TfrxDBDataSet;
    frArt: TfrxDBDataSet;
    frSalg: TfrxDBDataSet;
    btnPreview: TButton;
    frxRptConn: TfrxADOComponents;
    dtStart: TDateTimePicker;
    dtSlutt: TDateTimePicker;
    procedure dsArtDataChange(Sender: TObject; Field: TField);
    procedure dsBetalingDataChange(Sender: TObject; Field: TField);
    procedure dsMvaDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure dtStartChange(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure adoFakturaCalcFields(DataSet: TDataSet);
    procedure dbgMvaEnter(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure frReportGetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    TmpDir: String;
    procedure LastDataSet;
  public
    { Public declarations }
  end;

var
  frmSalgstall: TfrmSalgstall;

implementation

uses rsData, DateUtils, JclSysInfo, blsFileUtil, JclFileUtils, rsPreview;

{$R *.dfm}

procedure TfrmSalgstall.dsArtDataChange(Sender: TObject; Field: TField);
begin
  ShowScrollBar(dbgArt.Handle, SB_BOTH, false); 
end;

procedure TfrmSalgstall.dsBetalingDataChange(Sender: TObject;
  Field: TField);
begin
  ShowScrollBar(dbgBetaling.Handle, SB_BOTH, false);
end;

procedure TfrmSalgstall.dsMvaDataChange(Sender: TObject; Field: TField);
begin
  ShowScrollBar(dbgMva.Handle, SB_BOTH, false);
end;

procedure TfrmSalgstall.LastDataSet;
begin
  adoSalg.Close;
  adoBetaling.Close;
  adoArt.Close;
  adoMva.Close;

  adoSalg.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoBetaling.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoArt.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoMva.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;

  adoSalg.Parameters.ParamValues['Start'] := dtStart.Date;
  adoBetaling.Parameters.ParamValues['Start'] := dtStart.Date;
  adoArt.Parameters.ParamValues['Start'] := dtStart.Date;
  adoMva.Parameters.ParamValues['Start'] := dtStart.Date;

  adoSalg.Parameters.ParamValues['Slutt'] := dtSlutt.Date;
  adoBetaling.Parameters.ParamValues['Slutt'] := dtSlutt.Date;
  adoArt.Parameters.ParamValues['Slutt'] := dtSlutt.Date;
  adoMva.Parameters.ParamValues['Slutt'] := dtSlutt.Date;

  adoSalg.Open;
  adoBetaling.Open;
  adoArt.Open;
  adoMva.Open;
end;

procedure TfrmSalgstall.FormCreate(Sender: TObject);
begin
  TmpDir := '';
  if (MonthOf(Date) mod 2) = 0 then begin
    dtStart.Date := EncodeDate(YearOf(Date), MonthOf(Date) -1, 1);
    dtSlutt.Date := EndOfTheMonth(Date);
  end
  else begin
    dtStart.Date := EncodeDate(YearOf(Date), MonthOf(Date), 1);
    dtSlutt.Date := EndOfTheMonth(IncMonth(Date, 1));
  end;

  LastDataSet;
end;

procedure TfrmSalgstall.FormDestroy(Sender: TObject);
begin
  adoSalg.Close;
  adoBetaling.Close;
  adoArt.Close;
  adoMva.Close;

  if TmpDir <> '' then begin
    if DirectoryExists(TmpDir) then
      JclFileUtils.DeleteDirectory(TmpDir, False);
  end;
end;

procedure TfrmSalgstall.frReportGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'Start' then
    Value := dtStart.Date
  else if VarName = 'Slutt' then
    Value := dtSlutt.Date
  else if VarName = 'IdKlient' then
    Value := Dm.g_KlientID;
end;

procedure TfrmSalgstall.btnUpdateClick(Sender: TObject);
begin
  LastDataSet;
  btnExport.Enabled := True;
end;

procedure TfrmSalgstall.dtStartChange(Sender: TObject);
begin
  btnExport.Enabled := False;
end;

procedure TfrmSalgstall.btnExportClick(Sender: TObject);
begin
  TmpDir := AddBackSlash(JclSysInfo.GetWindowsTempFolder) + 'BlsExport\';
  ForceDirectories(TmpDir);
  //mxExport.TempDir := TmpDir;

  adoFaktura.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoFaktura.Parameters.ParamValues['Start'] := dtStart.Date;
  adoFaktura.Parameters.ParamValues['Slutt'] := dtSlutt.Date;
  adoFaktura.Open;
  //mxExport.Execute;
  adoFaktura.Close;
end;

procedure TfrmSalgstall.adoFakturaCalcFields(DataSet: TDataSet);
begin
  adoFakturaKUNDE.Value := Copy(adoFakturaKUNDEADR.Value, 1,
                                Pos(#13#10, adoFakturaKUNDEADR.Value) -1);
end;

procedure TfrmSalgstall.dbgMvaEnter(Sender: TObject);
begin
  btnLukk.SetFocus;
end;

procedure TfrmSalgstall.btnPreviewClick(Sender: TObject);
begin
  frmPreview := TfrmPreview.Create(Application);
  frReport.Preview := frmPreview.frPreview;
  frReport.LoadFromFile(Dm.g_ReportDir + 'rpt_Salgstall.fr3');
  frReport.ShowReport();
  frmPreview.ShowModal;
  frmPreview.Release;
end;

procedure TfrmSalgstall.btnPrintClick(Sender: TObject);
begin
  frReport.LoadFromFile(Dm.g_ReportDir + 'rpt_Salgstall.fr3');
  if frReport.PrepareReport then
    frReport.Print;
end;

end.
