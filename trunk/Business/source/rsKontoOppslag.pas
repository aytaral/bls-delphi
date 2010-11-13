unit rsKontoOppslag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  blsBorderPanel, ComCtrls, ExtCtrls, Mask, JvExMask, JvSpin, JvDBSpinEdit,
  DBClient, Provider, blsList, Printers, frxClass, frxADOComponents;

type
  TfrmKontoOppslag = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Pc: TPageControl;
    tsTrans: TTabSheet;
    blsBorderPanel1: TblsBorderPanel;
    dbgTrans: TJvDBGrid;
    btnLukk: TButton;
    GroupBox1: TGroupBox;
    editKonto: TEdit;
    btnSokKonto: TButton;
    Label5: TLabel;
    editKontonavn: TEdit;
    Label2: TLabel;
    dsTrans: TDataSource;
    adoKonto: TADODataSet;
    dspKonto: TDataSetProvider;
    cdsKonto: TClientDataSet;
    cdsKontoKONTONR: TIntegerField;
    cdsKontoNAVN: TStringField;
    cdsKontoMVAKODE: TIntegerField;
    cdsKontoKTYPE: TIntegerField;
    adoTrans: TADODataSet;
    dspTrans: TDataSetProvider;
    cdsTrans: TClientDataSet;
    cdsTransBILAGNR: TIntegerField;
    cdsTransDATO: TDateField;
    cdsTransPERIODENR: TSmallintField;
    cdsTransAAR: TSmallintField;
    cdsTransMVAKODE: TIntegerField;
    cdsTransIDTEKST: TIntegerField;
    cdsTransTEKST: TStringField;
    cdsTransFAKTURANR: TStringField;
    cdsTransDEBET: TBCDField;
    cdsTransKREDIT: TBCDField;
    cdsTransIDBILAG: TIntegerField;
    Panel5: TPanel;
    spSaldo: TADOStoredProc;
    spSaldoSALDO: TBCDField;
    frRpt: TfrxReport;
    frxRptConn: TfrxADOComponents;
    tsMndtall: TTabSheet;
    blsBorderPanel2: TblsBorderPanel;
    Panel6: TPanel;
    Panel4: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    lblDebet: TLabel;
    lblKredit: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    lblInn: TLabel;
    lblPeriode: TLabel;
    lblUt: TLabel;
    Panel7: TPanel;
    Label1: TLabel;
    editPStart: TJvSpinEdit;
    Label3: TLabel;
    editPSlutt: TJvSpinEdit;
    editAarSlutt: TJvSpinEdit;
    editAarStart: TJvSpinEdit;
    btnPreview: TButton;
    btnPrint: TButton;
    blsBorderPanel3: TblsBorderPanel;
    dbgMnd: TJvDBGrid;
    adoMnd: TADODataSet;
    dsMnd: TDataSource;
    adoMndPERIODENR: TSmallintField;
    adoMndAAR1: TBCDField;
    adoMndAAR2: TBCDField;
    cdsMnd: TClientDataSet;
    cdsMndPeriode: TIntegerField;
    cdsMndPeriodenavn: TStringField;
    cdsMndAar1: TFloatField;
    cdsMndAar2: TFloatField;
    procedure btnSokKontoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsKontoBeforeOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure editKontoEnter(Sender: TObject);
    procedure editKontoExit(Sender: TObject);
    procedure editKontonavnChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgTransDblClick(Sender: TObject);
    procedure editKontoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPreviewClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure editPStartChange(Sender: TObject);
    procedure editPSluttChange(Sender: TObject);
    procedure frRptGetValue(const VarName: string; var Value: Variant);
    procedure PcChange(Sender: TObject);
    procedure adoMndBeforeOpen(DataSet: TDataSet);
    procedure editKontoKeyPress(Sender: TObject; var Key: Char);
    procedure cdsTransBeforeOpen(DataSet: TDataSet);
    procedure dbgTransTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgTransTitleBtnDblClick(Sender: TObject; ACol: Integer;
      Field: TField);
  private
    function FinnKonto(SokStr: String): Boolean;
    procedure OppdaterTransaksjoner;
    procedure SokKonto;
    procedure OppdaterSummering;
    procedure HentMndTall;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKontoOppslag: TfrmKontoOppslag;

implementation

uses rsData, rsBilagKontoSok, DateUtils, JclStrings, rsPreview,
  blsRegistry, rsPrint, blsMisc;

{$R *.dfm}

procedure TfrmKontoOppslag.btnSokKontoClick(Sender: TObject);
begin
  frmBilagKontoSok := TfrmBilagKontoSok.Create(Application);
  if frmBilagKontoSok.ShowModal = mrOK then begin
    editKonto.Text := frmBilagKontoSok.cdsSokKONTONR.AsString;
    editKontonavn.Text := frmBilagKontoSok.cdsSokNAVN.Value;
  end;
  frmBilagKontoSok.Release;
end;

procedure TfrmKontoOppslag.FormCreate(Sender: TObject);
begin
  editAarStart.Value := YearOf(Date);
  if Dm.g_BilagAar > 0 then
    editAarStart.Value := Dm.g_BilagAar;
  editAarSlutt.Value := editAarStart.Value;


  if (GetUserInt(RegPath, 'KontoOppslagPStart' + IntToStr(Dm.g_KlientID)) = -1) or
    (GetUserInt(RegPath, 'KontoOppslagPSlutt' + IntToStr(Dm.g_KlientID)) = -1) then begin
    if (MonthOf(Date) mod 2) = 0 then begin
      editPStart.Value := MonthOf(Date) - 1;
      editPSlutt.Value := MonthOf(Date);
    end
    else begin
      editPStart.Value := MonthOf(Date);
      editPSlutt.Value := MonthOf(Date) + 1;
    end;
  end
  else begin
    editPStart.Value := GetUserInt(RegPath, 'KontoOppslagPStart' + IntToStr(Dm.g_KlientID));
    editPSlutt.Value := GetUserInt(RegPath, 'KontoOppslagPSlutt' + IntToStr(Dm.g_KlientID))
  end;

  dbgMnd.Columns[2].Title.Caption := IntToStr(Dm.g_BilagAar);
  dbgMnd.Columns[3].Title.Caption := IntToStr(Dm.g_BilagAar - 1);

  cdsKonto.Open;
  cdsTrans.Open;
end;

procedure TfrmKontoOppslag.OppdaterTransaksjoner;
begin
  cdsTrans.Close;
  cdsTrans.Open;
  if (editKonto.Text <> '') and StrIsDigit(editKonto.Text) then
    OppdaterSummering;
end;

procedure TfrmKontoOppslag.PcChange(Sender: TObject);
begin
  btnPrint.Visible := Pc.ActivePage = tsTrans;
  btnPreview.Visible := btnPrint.Visible;
end;

procedure TfrmKontoOppslag.OppdaterSummering;
var Debet, Kredit, InnSaldo, UtSaldo, Periode: Double;
    BNr: Integer;
begin
  Debet := 0;
  Kredit := 0;

  BNr := cdsTransBILAGNR.Value;

  cdsTrans.DisableControls;
  cdsTrans.First;
  while not cdsTrans.Eof do begin
    Debet := Debet + cdsTransDEBET.Value;
    Kredit := Kredit + cdsTransKREDIT.Value;
    cdsTrans.Next;
  end;

  cdsTrans.Locate('BILAGNR', BNr, []);
  cdsTrans.EnableControls;

  spSaldo.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  spSaldo.Parameters.ParamValues['Aar'] := editAarStart.Value;
  spSaldo.Parameters.ParamValues['Kontonr'] := StrToInt(editKonto.Text);
  spSaldo.Parameters.ParamValues['Periode'] := editPStart.Value;
  spSaldo.Open;
  InnSaldo := spSaldoSALDO.Value;
  spSaldo.Close;

  spSaldo.Parameters.ParamValues['Aar'] := editAarSlutt.Value;
  spSaldo.Parameters.ParamValues['Periode'] := editPSlutt.Value + 1;
  spSaldo.Open;
  UtSaldo := spSaldoSALDO.Value;
  spSaldo.Close;

  Periode := UtSaldo - InnSaldo;

  lblKredit.Caption := FormatFloat('#,##0.00', Kredit);
  lblDebet.Caption := FormatFloat('#,##0.00', Debet);
  lblInn.Caption := FormatFloat('#,##0.00', InnSaldo);
  lblUt.Caption := FormatFloat('#,##0.00', UtSaldo);
  lblPeriode.Caption := FormatFloat('#,##0.00', Periode);
end;


procedure TfrmKontoOppslag.cdsKontoBeforeOpen(DataSet: TDataSet);
begin
  adoKonto.Parameters.ParamValues['IdKlient1'] := Dm.g_KlientID;
  adoKonto.Parameters.ParamValues['IdKlient2'] := Dm.g_KlientID;
  cdsKonto.FetchParams;
end;

procedure TfrmKontoOppslag.cdsTransBeforeOpen(DataSet: TDataSet);
begin
  adoTrans.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoTrans.Parameters.ParamValues['PStart'] := editAarStart.Value + (editPStart.Value / 100);
  adoTrans.Parameters.ParamValues['PSlutt'] := editAarSlutt.Value + (editPSlutt.Value / 100);
  adoTrans.Parameters.ParamValues['Konto'] := StrToIntDef(editKonto.Text, 0);
  adoTrans.Parameters.ParamValues['Kontaktnr'] := StrToIntDef(editKonto.Text, 0);
  cdsTrans.FetchParams;
end;

function TfrmKontoOppslag.FinnKonto(SokStr: String): Boolean;
begin
  if StrIsDigit(SokStr) then
    Result := cdsKonto.Locate('KONTONR', SokStr, [])
  else
    Result := cdsKonto.Locate('NAVN', SokStr,
                [loCaseInsensitive, loPartialKey]);
end;

procedure TfrmKontoOppslag.FormDestroy(Sender: TObject);
begin
  cdsKonto.Close;
  cdsTrans.Close;
end;

procedure TfrmKontoOppslag.editKontoEnter(Sender: TObject);
begin
  btnLukk.Default := False;
end;

procedure TfrmKontoOppslag.SokKonto;
begin
  if editKonto.Text = '' then begin
    editKontonavn.Text := '';
    Exit;
  end;

  if FinnKonto(editKonto.Text) then begin
    editKonto.Text := cdsKontoKONTONR.AsString;
    editKontonavn.Text := cdsKontoNAVN.Value;
    editKonto.SelectAll;
    HentMndTall;
  end
  else begin
    editKontonavn.Text := '';
    editKonto.SetFocus;
    editKonto.SelectAll;
  end;
end;

procedure TfrmKontoOppslag.HentMndTall;
var
  I: Integer;
begin
  adoMnd.Open;
  cdsMnd.EmptyDataSet;

  for I := 0 to 13 do begin
    cdsMnd.Append;
    cdsMndPeriode.Value := I;
    if adoMnd.Locate('Periodenr', I, []) then begin
      cdsMndAar1.Value := adoMndAAR1.Value;
      cdsMndAar2.Value := adoMndAAR2.Value;
    end;

    case cdsMndPeriode.Value of
      0: cdsMndPeriodenavn.Value := '0 - Inngående saldo';
      1: cdsMndPeriodenavn.Value := '1 - Januar';
      2: cdsMndPeriodenavn.Value := '2 - Februar';
      3: cdsMndPeriodenavn.Value := '3 - Mars';
      4: cdsMndPeriodenavn.Value := '4 - April';
      5: cdsMndPeriodenavn.Value := '5 - Mai';
      6: cdsMndPeriodenavn.Value := '6 - Juni';
      7: cdsMndPeriodenavn.Value := '7 - Juli';
      8: cdsMndPeriodenavn.Value := '8 - August';
      9: cdsMndPeriodenavn.Value := '9 - September';
      10: cdsMndPeriodenavn.Value := '10 - Oktober';
      11: cdsMndPeriodenavn.Value := '11 - November';
      12: cdsMndPeriodenavn.Value := '12 - Desember';
      13: cdsMndPeriodenavn.Value := '13 - Tilleggsperiode';
    end;
    cdsMnd.Post;
  end;
  adoMnd.Close;
end;

procedure TfrmKontoOppslag.editKontoExit(Sender: TObject);
begin
  btnLukk.Default := True;
end;

procedure TfrmKontoOppslag.editKontonavnChange(Sender: TObject);
begin
  OppdaterTransaksjoner;
  btnPreview.Enabled := editKontonavn.Text <> '';
  btnPrint.Enabled := btnPreview.Enabled;
end;

procedure TfrmKontoOppslag.FormShow(Sender: TObject);
begin
  OppdaterTransaksjoner;
end;

procedure TfrmKontoOppslag.frRptGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'IdKlient' then
    Value := Dm.g_KlientID
  else if VarName = 'Konto' then
    Value := StrToInt(editKonto.Text)
  else if VarName = 'Kontonavn' then
    Value := editKontonavn.Text
  else if VarName = 'StartPeriode' then
    Value := editPStart.Value
  else if VarName = 'StartAar' then
    Value := editAarStart.Value
  else if VarName = 'SluttPeriode' then
    Value := editPSlutt.Value
  else if VarName = 'SluttAar' then
    Value := editAarSlutt.Value

  else if VarName = 'Innsaldo' then
    Value := lblInn.Caption
  else if VarName = 'Periode' then
    Value := lblPeriode.Caption
  else if VarName = 'Utsaldo' then
    Value := lblUt.Caption;
end;

procedure TfrmKontoOppslag.dbgTransDblClick(Sender: TObject);
begin
  if cdsTrans.RecordCount = 0 then Exit;
  frmPrint := TfrmPrint.Create(Application);
  frmPrint.VisBilag(cdsTransIDBILAG.Value);
  frmPrint.Release;
end;

procedure TfrmKontoOppslag.dbgTransTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
begin
  with Sender as TJvDbGrid do
    if not IndexFunnet(TJvDbGrid(Sender), Field.DataSet, Field.FieldName) then
      NullStillIndex(TJvDbGrid(Sender), Field.DataSet);
end;

procedure TfrmKontoOppslag.dbgTransTitleBtnDblClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  with Sender as TJvDbGrid do
    NullStillIndex(TJvDbGrid(Sender), Field.DataSet);
end;

procedure TfrmKontoOppslag.editKontoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_UP then
    cdsTrans.Prior
  else if Key = VK_DOWN then
    cdsTrans.Next
  else if Key = VK_PRIOR then
    cdsTrans.MoveBy(-10)
  else if Key = VK_NEXT then
    cdsTrans.MoveBy(10);

  if Key in [VK_UP, VK_DOWN, VK_PRIOR, VK_NEXT] then
    Key := 0;
end;

procedure TfrmKontoOppslag.editKontoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then begin
    SokKonto;
    Key := #0;
  end;
end;

procedure TfrmKontoOppslag.adoMndBeforeOpen(DataSet: TDataSet);
begin
  adoMnd.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoMnd.Parameters.ParamValues['Aar1'] := Dm.g_BilagAar -1;
  adoMnd.Parameters.ParamValues['Aar11'] := Dm.g_BilagAar -1;
  adoMnd.Parameters.ParamValues['Aar2'] := Dm.g_BilagAar;
  adoMnd.Parameters.ParamValues['Aar22'] := Dm.g_BilagAar;
  adoMnd.Parameters.ParamValues['Kontonr'] := editKonto.Text;
  adoMnd.Parameters.ParamValues['Kontaktnr'] := editKonto.Text;
end;

procedure TfrmKontoOppslag.btnPreviewClick(Sender: TObject);
begin
  cdsTrans.DisableControls;
  frmPreview := TfrmPreview.Create(Application);
  frRpt.Preview := frmPreview.frPreview;
  frRpt.LoadFromFile(Dm.g_ReportDir + 'rpt_Kontoutskrift.fr3');
  frRpt.ShowReport;
  frmPreview.ShowModal;
  frmPreview.Release;
  cdsTrans.EnableControls;
end;

procedure TfrmKontoOppslag.btnPrintClick(Sender: TObject);
begin
  cdsTrans.DisableControls;
  frRpt.LoadFromFile(Dm.g_ReportDir + 'rpt_Kontoutskrift.fr3');
  if frRpt.PrepareReport then begin
    frRpt.Print;
  end;
  cdsTrans.EnableControls;
end;

procedure TfrmKontoOppslag.editPStartChange(Sender: TObject);
begin
  if (editPStart.Value > editPSlutt.Value) and (editAarStart.Value = editAarSlutt.Value) then
    editPSlutt.Value := editPStart.Value;
  SetUserInt(RegPath, 'KontoOppslagPStart' + IntToStr(Dm.g_KlientID), editPStart.AsInteger);

  OppdaterTransaksjoner;
end;

procedure TfrmKontoOppslag.editPSluttChange(Sender: TObject);
begin
  if (editPSlutt.Value < editPStart.Value) and (editAarStart.Value = editAarSlutt.Value) then
    editPStart.Value := editPSlutt.Value;
  SetUserInt(RegPath, 'KontoOppslagPSlutt' + IntToStr(Dm.g_KlientID), editPSlutt.AsInteger);

  OppdaterTransaksjoner;
end;

end.
