unit rsMvaPeriode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, blsList, Mask, JvExMask, JvSpin, DB, ADODB,
  DBClient, frxClass, frxDBSet, frxADOComponents;

type
  TfrmMvaPeriode = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnLukk: TButton;
    blsList1: TblsList;
    Panel3: TPanel;
    Bevel1: TBevel;
    gbConfig: TGroupBox;
    cbBilag: TCheckBox;
    cbAvrund: TCheckBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    cbTermin: TComboBox;
    editAar: TJvSpinEdit;
    Label2: TLabel;
    btnVisMva: TButton;
    btnPeriodeAvslutt: TButton;
    Bevel2: TBevel;
    Image1: TImage;
    lblLukket: TLabel;
    adoMvaUt: TADODataSet;
    adoMvaInn: TADODataSet;
    adoMvaOppgave: TADODataSet;
    frDBMvaOppgave: TfrxDBDataSet;
    frDBMvaInn: TfrxDBDataSet;
    frMva: TfrxReport;
    frDBMvaUt: TfrxDBDataSet;
    adoMvaOppgavePOSTID: TIntegerField;
    adoMvaOppgaveTEKST: TStringField;
    cdsMvaOppgave: TClientDataSet;
    cdsMvaOppgavePostID: TIntegerField;
    cdsMvaOppgaveTekst: TStringField;
    cdsMvaOppgaveGrunnlag: TFloatField;
    cdsMvaOppgaveMoms: TFloatField;
    adoMvaInnKONTONR: TIntegerField;
    adoMvaInnKONTONAVN: TStringField;
    adoMvaInnMVAKODE: TIntegerField;
    adoMvaInnMVA: TStringField;
    adoMvaInnSATS: TFloatField;
    adoMvaInnGRUNNLAG: TBCDField;
    adoMvaInnMOMS: TFloatField;
    adoMvaUtKONTONR: TIntegerField;
    adoMvaUtKONTONAVN: TStringField;
    adoMvaUtMVAKODE: TIntegerField;
    adoMvaUtMVA: TStringField;
    adoMvaUtSATS: TFloatField;
    adoMvaUtGRUNNLAG: TBCDField;
    adoMvaUtMOMS: TFloatField;
    cbMva: TCheckBox;
    cbPrintAvrund: TCheckBox;
    adoMvaBilag: TADODataSet;
    adoMvaBilagKONTONR: TIntegerField;
    adoMvaBilagSUM: TBCDField;
    frxRptconn: TfrxADOComponents;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbTerminChange(Sender: TObject);
    procedure btnVisMvaClick(Sender: TObject);
    procedure btnPeriodeAvsluttClick(Sender: TObject);
    procedure cbAvrundClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frMvaGetValue(const VarName: string; var Value: Variant);
  private
    procedure FyllMvaTabell;
    procedure GenererMvaOppgave;
    procedure PrintMvaOppgave;
    procedure VisMvaOppgave;
    function GenererMvaBilag(var Avrunding: Double): Integer;
    function GenererAvrundBilag(Avrunding: Double): Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMvaPeriode: TfrmMvaPeriode;

implementation

uses rsData, rsPreview, blsDialogs, rsPrint, rsFunction, DateUtils;

{$R *.dfm}

procedure TfrmMvaPeriode.FormCreate(Sender: TObject);
begin
  Dm.cdsPeriode.Open;
  cbTerminChange(Self);
end;

procedure TfrmMvaPeriode.FormDestroy(Sender: TObject);
begin
  Dm.cdsPeriode.Close;
end;

procedure TfrmMvaPeriode.cbTerminChange(Sender: TObject);
begin
  lblLukket.Visible := Dm.ErTerminLukket(cbTermin.ItemIndex + 1, editAar.AsInteger);
  btnPeriodeAvslutt.Enabled := not lblLukket.Visible;
  cbMva.Enabled := not lblLukket.Visible;
  cbBilag.Enabled := not lblLukket.Visible;
  cbAvrund.Enabled := not lblLukket.Visible;
  cbPrintAvrund.Enabled := not lblLukket.Visible;
end;

procedure TfrmMvaPeriode.FyllMvaTabell;
var Tot, TotMva, TotFri, TotHoy, TotMid, TotLav, TotTjen: Double;
    MvaHoy, MvaMid, MvaLav, MvaTjen, InnHoy, InnMid, InnLav: Double;
    DirMva: Double;
begin
  // Beregner utgående mva
  Tot := 0; TotMva := 0; TotFri := 0; DirMva := 0;
  TotMid := 0; TotHoy := 0; TotLav := 0; TotTjen := 0;
  MvaHoy := 0; MvaMid := 0; MvaLav := 0; MvaTjen := 0;
  adoMvaUt.First;
  while not adoMvaUt.Eof do begin
    if not adoMvaUtMVAKODE.IsNull then begin
      Tot := Tot + adoMvaUtGRUNNLAG.Value;
      if not (adoMvaUtMVAKODE.Value in [7, 25]) then
        TotMva := TotMva + adoMvaUtGRUNNLAG.Value;
      if adoMvaUtMVAKODE.Value = 6 then
        TotFri := TotFri + adoMvaUtGRUNNLAG.Value;
      if adoMvaUtMVAKODE.Value = 3 then begin
        TotHoy := TotHoy + adoMvaUtGRUNNLAG.Value;
        MvaHoy := MvaHoy + adoMvaUtMOMS.Value;
      end;
      if adoMvaUtMVAKODE.Value = 13 then begin
        TotMid := TotMid + adoMvaUtGRUNNLAG.Value;
        MvaMid := MvaMid + adoMvaUtMOMS.Value;
      end;
      if adoMvaUtMVAKODE.Value = 23 then begin
        TotLav := TotLav + adoMvaUtGRUNNLAG.Value;
        MvaLav := MvaLav + adoMvaUtMOMS.Value;
      end;
      if adoMvaUtMVAKODE.Value = 25 then begin
        TotTjen := TotTjen + adoMvaUtGRUNNLAG.Value;
        MvaTjen := MvaTjen + adoMvaUtMOMS.Value;
      end;
    end;
    adoMvaUt.Next;
  end;

  // Beregner inngående mva
  InnHoy := 0; InnMid := 0; InnLav := 0;
  adoMvaInn.First;
  while not adoMvaInn.Eof do begin
    if not adoMvaInnMVAKODE.IsNull then begin
      if adoMvaInnMVAKODE.Value = 1 then
        InnHoy := InnHoy + adoMvaInnMOMS.Value;
      if adoMvaInnMVAKODE.Value = 5 then
        DirMva := DirMva + adoMVAInnMOMS.Value;
      if adoMvaInnMVAKODE.Value = 11 then
        InnMid := InnMid + adoMvaInnMOMS.Value;
      if adoMvaInnMVAKODE.Value = 21 then
        InnLav := InnLav + adoMvaInnMOMS.Value;
    end;
    adoMvaInn.Next;
  end;

  cdsMvaOppgave.CreateDataSet;
  adoMvaOppgave.First;
  while not adoMvaOppgave.Eof do begin
    cdsMvaOppgave.Append;
    cdsMvaOppgavePOSTID.Value := adoMvaOppgavePOSTID.Value;
    cdsMvaOppgaveTEKST.Value := adoMvaOppgaveTEKST.Value;
    case adoMvaOppgavePOSTID.Value of
      1: cdsMvaOppgaveGRUNNLAG.Value := Trunc(Tot) * -1;
      2: cdsMvaOppgaveGRUNNLAG.Value := Trunc(TotMva) * -1;
      3: cdsMvaOppgaveGRUNNLAG.Value := Trunc(TotFri) * -1;
      4: begin
        cdsMvaOppgaveGRUNNLAG.Value := Trunc(TotHoy) * -1;
        cdsMvaOppgaveMOMS.Value := Trunc(MvaHoy) * -1;
      end;
      5: begin
        cdsMvaOppgaveGRUNNLAG.Value := Trunc(TotMid) * -1;
        cdsMvaOppgaveMOMS.Value := Trunc(MvaMid) * -1;
      end;
      6: begin
        cdsMvaOppgaveGRUNNLAG.Value := Trunc(TotLav) * -1;
        cdsMvaOppgaveMOMS.Value := Trunc(MvaLav) * -1;
      end;
      7: begin
        cdsMvaOppgaveGRUNNLAG.Value := Trunc(TotTjen) * -1;
        cdsMvaOppgaveMOMS.Value := Trunc(MvaTjen) * -1;
      end;
      8: cdsMvaOppgaveMOMS.Value := Trunc(InnHoy + DirMva) * -1;
      9: cdsMvaOppgaveMOMS.Value := Trunc(InnMid) * -1;
      10: cdsMvaOppgaveMOMS.Value := Trunc(InnLav) * -1;
    end;
    cdsMvaOppgave.Post;
    adoMvaOppgave.Next;
  end;
end;

procedure TfrmMvaPeriode.GenererMvaOppgave;
var PStart, PSlutt: Integer;
begin
  PStart := (cbTermin.ItemIndex + 1) * 2 - 1;
  PSlutt := PStart + 1;

  adoMvaInn.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoMvaInn.Parameters.ParamValues['Aar'] := editAar.Value;
  adoMvaInn.Parameters.ParamValues['PStart'] := PStart;
  adoMvaInn.Parameters.ParamValues['PSlutt'] := PSlutt;
  adoMvaUt.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoMvaUt.Parameters.ParamValues['Aar'] := editAar.Value;
  adoMvaUt.Parameters.ParamValues['PStart'] := PStart;
  adoMvaUt.Parameters.ParamValues['PSlutt'] := PSlutt;

  adoMvaInn.Open;
  adoMvaUt.Open;
  adoMvaOppgave.Open;
  FyllMvaTabell;
end;

procedure TfrmMvaPeriode.PrintMvaOppgave;
begin
  GenererMvaOppgave;

  frMva.LoadFromFile(Dm.g_ReportDir + 'rpt_Mva.fr3');
  if frMva.PrepareReport then
    frMva.Print;

  cdsMvaOppgave.Close;
  adoMvaOppgave.Open;
  adoMvaInn.Close;
  adoMvaUt.Close;
end;

procedure TfrmMvaPeriode.VisMvaOppgave;
begin
  GenererMvaOppgave;
  
  frmPreview := TfrmPreview.Create(Application);
  frMva.Preview := frmPreview.frPreview;
  frMva.LoadFromFile(Dm.g_ReportDir + 'rpt_Mva.fr3');
  frMva.ShowReport;
  frmPreview.ShowModal;
  frmPreview.Release;

  cdsMvaOppgave.Close;
  adoMvaOppgave.Open;
  adoMvaInn.Close;
  adoMvaUt.Close;
end;

procedure TfrmMvaPeriode.btnVisMvaClick(Sender: TObject);
begin
  VisMvaOppgave;
end;

function TfrmMvaPeriode.GenererAvrundBilag(Avrunding: Double): Integer;
begin
  Result := 0;
  if (Avrunding > 0.04) or (Avrunding < -0.04) then begin
    Result := dmFunction.GenererMvaBilag(editAar.AsInteger, cbTermin.ItemIndex + 1);
    dmFunction.GenererMvaPostering(Result, Dm.adoKlientKONTOMVA.Value, Avrunding * -1, '@Mva. øreavrunding');
    dmFunction.GenererMvaPostering(Result, Dm.adoKlientKONTOAVRUNDING.Value, Avrunding, '@Mva. øreavrunding');
  end;
end;

function TfrmMvaPeriode.GenererMvaBilag(var Avrunding: Double): Integer;
var P1, P2: Integer;
    RTot, Tot: Double;
begin
  if cbTermin.ItemIndex = 6 then begin
    P1 := 13;
    P2 := 13;
  end
  else begin
    P1 := (cbTermin.ItemIndex + 1) * 2 - 1;
    P2 := P1 + 1;
  end;

  Result := dmFunction.GenererMvaBilag(editAar.AsInteger, cbTermin.ItemIndex + 1);
  adoMvaBilag.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoMvaBilag.Parameters.ParamValues['Aar'] := editAar.Value;
  adoMvaBilag.Parameters.ParamValues['PStart'] := P1;
  adoMvaBilag.Parameters.ParamValues['PSlutt'] := P2;
  adoMvaBilag.Open;
  adoMvaBilag.First;

  Tot := 0; RTot := 0;
  while not adoMvaBilag.Eof do begin
    dmFunction.GenererMvaPostering(Result, adoMvaBilagKONTONR.Value, adoMvaBilagSUM.Value * -1, '@Mva. Oppgjør');
    Tot := Tot + adoMvaBilagSUM.Value;
    RTot := RTot + Trunc(adoMvaBilagSUM.Value);
    adoMvaBilag.Next;
  end;

  dmFunction.GenererMvaPostering(Result, Dm.adoKlientKONTOMVA.Value, Tot, '@Mva. Oppgjør');
  adoMvaBilag.Close;

  Avrunding := Tot - RTot;
end;

procedure TfrmMvaPeriode.btnPeriodeAvsluttClick(Sender: TObject);
var IdBilag, IdAvrund: Integer;
    Avrund: Double;
    OrgAar: Integer;
begin
  OrgAar := Dm.g_BilagAar; //Året som er valgt på forhånd.
  Dm.g_BilagAar := editAar.AsInteger;
  Dm.adoKlient.Open;

  //Sjekker at nødvendige kontoer er spesifisert.
  if Dm.adoKlientKONTOMVA.Value = 0 then begin
    ErrorDialog('Feil konto', 'Konto for momsoppgjør ikke spesifisert. ' + #13#10 +
                '(Sjekk "Firmainformasjon -> Aktivt firma")', btOK);
    Exit;
  end;
  if cbAvrund.Checked then begin
    if Dm.adoKlientKONTOAVRUNDING.Value = 0 then begin
      ErrorDialog('Feil konto', 'Konto for øreavrunding ikke spesifisert. ' + #13#10 +
                  '(Sjekk "Firmainformasjon -> Aktivt firma")', btOK);
    end;
  end;

  Dm.cdsPeriode.Refresh; //Sjekker om perioden er lukket av annen bruker i mellomtiden.
  if Dm.ErTerminLukket(cbTermin.ItemIndex + 1, editAar.AsInteger) then begin
    AlertDialog('Periode lukket', 'Perioden er allerede lukket!');
    Exit;
  end;

  if ConfirmDialog('Bekreft', 'Er du sikker på at du vil kjøre lukking av valgt periode?') then begin
    //Lukker Perioden
    Dm.LukkTermin(cbTermin.ItemIndex + 1, editAar.AsInteger);
    cbTerminChange(Self); //Oppdaterer felter og label for at perioden er lukket

    //Variabler som holder på avrundingsbeløp
    Avrund := 0;

    //Generer mva-bilag
    IdBilag := GenererMvaBilag(Avrund);

    //Generer avrundings-bilag
    IdAvrund := 0;
    if cbAvrund.Checked then
      IdAvrund := GenererAvrundBilag(Avrund);

    if cbMva.Checked {or cbJournal.Checked} or cbBilag.Checked or cbPrintAvrund.Checked then begin
      if cbMva.Checked then //Printer MvaOppgave
        PrintMvaOppgave;

      if cbBilag.Checked then begin  //Printer Mva Bilag
        frmPrint := TfrmPrint.Create(Application);
        frmPrint.PrintBilag(IdBilag, False);
        frmPrint.Release;
      end;

      if cbAvrund.Checked and cbPrintAvrund.Checked then begin
        frmPrint := TfrmPrint.Create(Application); //Printer Avrunding
        frmPrint.PrintBilag(IdAvrund, False);
        frmPrint.Release;
      end;
    end;

    cbTerminChange(Self);  //Oppdaterer labels mm.
  end; //ConfirmDialog
  Dm.adoKlient.Close;
  Dm.g_BilagAar := OrgAar;
end;

procedure TfrmMvaPeriode.cbAvrundClick(Sender: TObject);
begin
  cbPrintAvrund.Enabled := cbAvrund.Checked;
end;

procedure TfrmMvaPeriode.FormShow(Sender: TObject);
var
  Aar, Termin: Integer;
begin
  Dm.HentSisteLukketPeriode(Aar, Termin);
  editAar.Value := Aar;
  cbTermin.ItemIndex := Termin;
  cbTerminChange(Self);
end;

procedure TfrmMvaPeriode.frMvaGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'Termin' then
    Value := cbTermin.Text
  else if VarName = 'Aar' then
    Value := editAar.Value
  else if VarName = 'Lukket' then
    Value := lblLukket.Visible
  else if VarName = 'IdKlient' then
    Value := Dm.g_KlientID;
end;

end.
