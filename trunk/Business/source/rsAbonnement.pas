unit rsAbonnement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, ComCtrls,
  StdCtrls, Mask, ExtCtrls, ActnList, ImgList, TB2Item,
  TBX, TB2Dock, TB2Toolbar, DB, ADODB, DBClient, Provider, JvExComCtrls,
  JvDateTimePicker, JvDBDateTimePicker;

type
  TfrmAbonnement = class(TForm)
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem1: TTBXItem;
    ActionList: TActionList;
    acNew: TAction;
    Panel3: TPanel;
    pnlInfo: TPanel;
    Label1: TLabel;
    Label9: TLabel;
    dbeKundenr: TDBEdit;
    btnFinnKunde: TButton;
    Panel5: TPanel;
    dbgLinje: TJvDBGrid;
    Panel1: TPanel;
    Panel6: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label16: TLabel;
    Label17: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    btnAvbryt: TButton;
    btnOK: TButton;
    Label2: TLabel;
    adoIntervall: TADODataSet;
    DBLookupComboBox1: TDBLookupComboBox;
    adoAbo: TADODataSet;
    dspAbo: TDataSetProvider;
    cdsAbo: TClientDataSet;
    dsAbo: TDataSource;
    adoAboLinje: TADODataSet;
    dspAboLinje: TDataSetProvider;
    cdsAboLinje: TClientDataSet;
    dsAboLinje: TDataSource;
    adoAboIDABO: TIntegerField;
    adoAboIDKLIENT: TIntegerField;
    adoAboKUNDENR: TIntegerField;
    adoAboIDINTERVALL: TIntegerField;
    adoAboGJENTAGELSE: TIntegerField;
    adoAboFORFALL: TDateTimeField;
    adoAboBRUKER: TStringField;
    adoAboREGDATO: TDateTimeField;
    cdsAboIDABO: TIntegerField;
    cdsAboIDKLIENT: TIntegerField;
    cdsAboKUNDENR: TIntegerField;
    cdsAboIDINTERVALL: TIntegerField;
    cdsAboGJENTAGELSE: TIntegerField;
    cdsAboFORFALL: TDateTimeField;
    cdsAboBRUKER: TStringField;
    cdsAboREGDATO: TDateTimeField;
    adoAboLinjeIDABO: TIntegerField;
    adoAboLinjeIDLINJE: TIntegerField;
    adoAboLinjeSORTID: TFloatField;
    adoAboLinjePRODNR: TStringField;
    adoAboLinjeTEKST: TStringField;
    adoAboLinjeENHET: TStringField;
    adoAboLinjePRIS: TFloatField;
    adoAboLinjeRABATT: TFloatField;
    adoAboLinjeMVA: TFloatField;
    cdsAboLinjeIDABO: TIntegerField;
    cdsAboLinjeIDLINJE: TIntegerField;
    cdsAboLinjeSORTID: TFloatField;
    cdsAboLinjePRODNR: TStringField;
    cdsAboLinjeTEKST: TStringField;
    cdsAboLinjeENHET: TStringField;
    cdsAboLinjePRIS: TFloatField;
    cdsAboLinjeRABATT: TFloatField;
    cdsAboLinjeMVA: TFloatField;
    cbGjentagelse: TDBComboBox;
    dsIntervall: TDataSource;
    adoAboLinjeINNPRIS: TFloatField;
    cdsAboLinjeINNPRIS: TFloatField;
    spNyAboLinjeID: TADOStoredProc;
    spNyAboLinjeIDID: TIntegerField;
    adoIntervallIDINTERVALL: TIntegerField;
    adoIntervallBESKRIVELSE: TStringField;
    cdsAboLinjeSUMEKS: TFloatField;
    cdsAboLinjeSUMINK: TFloatField;
    adoAboLinjeAVGIFT: TFloatField;
    cdsAboLinjeAVGIFT: TFloatField;
    ImageList: TImageList;
    adoKunde: TADODataSet;
    acDelete: TAction;
    pnlFortjeneste: TPanel;
    lblFortjenesteP: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    lblSumInn: TLabel;
    lblFortjeneste: TLabel;
    TBXItem2: TTBXItem;
    adoAboINTERNREF: TStringField;
    adoAboENDRETDATO: TDateField;
    adoAboAKTIV: TSmallintField;
    cdsAboINTERNREF: TStringField;
    cdsAboENDRETDATO: TDateField;
    cdsAboAKTIV: TSmallintField;
    acInsert: TAction;
    acUp: TAction;
    acDown: TAction;
    TBXItem3: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    adoAboTITTEL: TStringField;
    adoAboSUMEKS: TFloatField;
    adoAboSUMMVA: TFloatField;
    adoAboSUMRAB: TFloatField;
    adoAboSUMAVG: TFloatField;
    adoAboSUMTOT: TFloatField;
    cdsAboTITTEL: TStringField;
    cdsAboSUMEKS: TFloatField;
    cdsAboSUMMVA: TFloatField;
    cdsAboSUMRAB: TFloatField;
    cdsAboSUMAVG: TFloatField;
    cdsAboSUMTOT: TFloatField;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    dbcRef: TDBComboBox;
    DBCheckBox1: TDBCheckBox;
    adoRef: TADODataSet;
    adoRefIDKLIENT: TIntegerField;
    adoRefREF: TStringField;
    adoRefSTANDARD: TSmallintField;
    acProdSok: TAction;
    adoKundeKONTAKTNR: TIntegerField;
    adoKundeNAVN: TStringField;
    adoKundeFORFALLSDAGER: TIntegerField;
    adoKundeRABATT: TFloatField;
    acPrisInk: TAction;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXItem6: TTBXItem;
    acReferanser: TAction;
    TBXItem7: TTBXItem;
    adoAboFAKTURADAGER: TIntegerField;
    Bevel1: TBevel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    cdsAboFAKTURADAGER: TIntegerField;
    edKunde: TEdit;
    adoAboLinjeANTALL: TBCDField;
    cdsAboLinjeANTALL: TBCDField;
    acSort: TAction;
    TBXItem8: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    acVisInn: TAction;
    TBXItem9: TTBXItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    TBXItem10: TTBXItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    acProdLinjer: TAction;
    dbtForfall: TJvDBDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnFinnKundeClick(Sender: TObject);
    procedure cdsAboLinjeCalcFields(DataSet: TDataSet);
    procedure acNewExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure cdsAboLinjeNewRecord(DataSet: TDataSet);
    procedure dsAboLinjeDataChange(Sender: TObject; Field: TField);
    procedure acUpExecute(Sender: TObject);
    procedure acDownExecute(Sender: TObject);
    procedure acInsertExecute(Sender: TObject);
    procedure dbgLinjeColExit(Sender: TObject);
    procedure acProdSokExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acPrisInkExecute(Sender: TObject);
    procedure acReferanserExecute(Sender: TObject);
    procedure acSortExecute(Sender: TObject);
    procedure acVisInnExecute(Sender: TObject);
  private
    { Private declarations }
    FFDager: Integer;
    LastSortID: Double;
    PRabatt: Double;
    DoSum: Boolean;  //Sier om summering av faktura skjer..
    procedure SummerAbo;
    procedure LastReferanser(OppdaterAbo: Boolean = True);
    function HentSisteSortID: Double;
  public
    { Public declarations }
    NyttAbo: Boolean;
  end;

var
  frmAbonnement: TfrmAbonnement;

implementation

uses rsData, rsKundeSok, rsProduktSok, blsDialogs, rsFakturaRef, rsFunction,
  blsRegistry, blsMisc;

{$R *.dfm}

procedure TfrmAbonnement.acUpExecute(Sender: TObject);
begin
  dmFunction.MoveRecordUp(cdsAboLinje, 'IDFAKTURA;IDLINJE;SORTID');
end;

procedure TfrmAbonnement.acVisInnExecute(Sender: TObject);
begin
  pnlFortjeneste.Visible := acVisInn.Checked;
  if acVisInn.Checked then begin
    dbgLinje.Columns[4].Visible := True;
    dbgLinje.Columns[1].Width := dbgLinje.Columns[1].Width - 55 - 1;
  end
  else begin
    dbgLinje.Columns[4].Visible := False;
    dbgLinje.Columns[1].Width := dbgLinje.Columns[1].Width + 55 + 1;
  end;
  SetUserBool(RegPath, 'AboVisInnPris', acVisInn.Checked);
end;

procedure TfrmAbonnement.acDownExecute(Sender: TObject);
begin
  dmFunction.MoveRecordDown(cdsAboLinje, 'IDFAKTURA;IDLINJE;SORTID');
end;

procedure TfrmAbonnement.acDeleteExecute(Sender: TObject);
begin
  if cdsAboLinje.RecordCount = 0 then Exit;

  if ConfirmDialog('Slett', 'Er du sikker på at du vil slette ' +
    QuotedStr(cdsAboLinjeTEKST.Value) + ' fra abonnementet?') then begin
    cdsAboLinje.Delete;
    SummerAbo;
  end;
end;

procedure TfrmAbonnement.btnFinnKundeClick(Sender: TObject);
begin
  frmKundeSok := TfrmKundeSok.Create(Application);
  frmKundeSok.KontaktSerie := 'KS';
  if frmKundeSok.ShowModal = mrOK then begin
    cdsAbo.Edit;
    cdsAboKUNDENR.Value := frmKundeSok.cdsSokKONTAKTNR.Value;

    adoKunde.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
    adoKunde.Parameters.ParamValues['Knr'] := cdsAboKUNDENR.Value;
    adoKunde.Open;

    FFDager := adoKundeFORFALLSDAGER.Value;
    PRabatt := adoKundeRABATT.Value;
    edKunde.Text := adoKundeNAVN.Value;

    adoKunde.Close;

    //Dersom forfall ikke er spesifisert settes den på nytt
    if (cdsAboFORFALL.Value = (Date + 14)) then begin
      cdsAbo.Edit;
      cdsAboFORFALL.Value := Date + FFDager;
      cdsAboFAKTURADAGER.Value := FFDager;
    end;
  end;
  frmKundeSok.Release;
end;

procedure TfrmAbonnement.LastReferanser(OppdaterAbo: Boolean = True);
begin
  dbcRef.Clear;
  adoRef.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoRef.Open;
  while not adoRef.Eof do begin
    dbcRef.Items.Add(adoRefREF.Value);
    if OppdaterAbo then begin
      if (adoRefSTANDARD.Value = 1) and (NyttAbo) then begin
        cdsAbo.Edit;
        cdsAboINTERNREF.Value := adoRefREF.Value;
      end;
    end;
    adoRef.Next;
  end;
  adoRef.Close;
end;

procedure TfrmAbonnement.acInsertExecute(Sender: TObject);
var NextNo, PrevNo, NewNo: Double;
begin
  cdsAboLinje.DisableControls;
  NextNo := cdsAboLinjeSORTID.Value;
  cdsAboLinje.Prior;
  PrevNo := cdsAboLinjeSORTID.Value;
  cdsAboLinje.Next;
  if PrevNo = NextNo then
    PrevNo := 0;
  NewNo := ((NextNo + PrevNo) / 2);
  cdsAboLinje.EnableControls;

  cdsAboLinje.Insert;
  if NewNo > 0 then
    cdsAboLinjeSORTID.Value := NewNo;
  dbgLinje.SelectedIndex := 0;
  dbgLinje.EditorMode := True;
end;

procedure TfrmAbonnement.acNewExecute(Sender: TObject);
begin
  frmProduktSok := TfrmProduktSok.Create(Application);
  frmProduktSok.cbAktiv.Checked := False;
  if frmProduktSok.ShowModal = mrOK then begin
    DoSum := False;
    dmFunction.LeggTilProdukt(cdsAboLinje, frmProduktSok.cdsSokPRODUKTNR.Value, True);
    SummerAbo;
    DoSum := True;
  end;
  frmProduktSok.Release;
end;

procedure TfrmAbonnement.acPrisInkExecute(Sender: TObject);
begin
  cdsAboLinje.Edit;
  cdsAboLinjePris.Value := AvrundBelop(cdsAboLinjePris.Value / (1 + (cdsAboLinjeMva.Value / 100)));
end;

procedure TfrmAbonnement.acProdSokExecute(Sender: TObject);
begin
  if (ActiveControl <> dbgLinje) then Exit;

  frmProduktSok := TfrmProduktSok.Create(Application);
  frmProduktSok.cbAktiv.Checked := False;
  if cdsAboLinje.State in [dsEdit, dsInsert] then
    cdsAboLinje.Post;

  frmProduktSok.edProdnr.Text := cdsAboLinjePRODNR.Value;
  frmProduktSok.editSok.Text := cdsAboLinjeTEKST.Value;

  if frmProduktSok.ShowModal = mrOK then begin
    DoSum := False;
    dmFunction.LeggTilProdukt(cdsAboLinje, frmProduktSok.cdsSokPRODUKTNR.Value, False);
    SummerAbo;
    DoSum := True;
  end;
  frmProduktSok.Release;
end;

procedure TfrmAbonnement.acReferanserExecute(Sender: TObject);
begin
  frmFakturaRef := TfrmFakturaRef.Create(Application);
  if frmFakturaRef.ShowModal = mrOK then begin
    LastReferanser(False);
    dbcRef.Text := cdsAboINTERNREF.Value;
  end;
  frmFakturaRef.Release;
end;

procedure TfrmAbonnement.acSortExecute(Sender: TObject);
begin
  LastSortID := dmFunction.SorterProduktLinjer(cdsAboLinje);
end;

procedure TfrmAbonnement.btnOKClick(Sender: TObject);
begin
  cdsAbo.ApplyUpdates(-1);
  cdsAboLinje.ApplyUpdates(-1);
end;

procedure TfrmAbonnement.cdsAboLinjeCalcFields(DataSet: TDataSet);
var
  Eks, Ink: Double;
begin
  if (not cdsAboLinjeANTALL.IsNull) and (not cdsAboLinjePRIS.IsNull) then begin
    dmFunction.CalcEKSandINK(cdsAboLinjeANTALL.AsFloat, cdsAboLinjePRIS.AsFloat,
      cdsAboLinjeRABATT.AsFloat, cdsAboLinjeMVA.AsFloat, Eks, Ink);
    cdsAboLinjeSUMEKS.Value :=  Eks;
    cdsAboLinjeSUMINK.Value := Ink;
  end;
end;

procedure TfrmAbonnement.cdsAboLinjeNewRecord(DataSet: TDataSet);
begin
  spNyAboLinjeID.Open;
  cdsAboLinjeIDLINJE.Value := spNyAboLinjeIDID.Value;
  spNyAboLinjeID.Close;

  LastSortID := LastSortID + 10;
  cdsAboLinjeSORTID.Value := LastSortID;
  //SortID blir overstyrt dersom en linje settes imellom to eksisterende

  cdsAboLinjeENHET.Value := 'Stk';
  cdsAboLinjeINNPRIS.Value := 0;
  if PRabatt > 0 then
    cdsAboLinjeRABATT.Value := PRabatt;

  //Må settes til slutt slik at ikke kalkuleringen av verdiene avbryter insert mode
  cdsAboLinjeANTALL.Value := 1;
  cdsAboLinjeMVA.Value := Dm.MvaListe.DefaultMva;
  cdsAboLinjePRIS.Value := 0;
end;

procedure TfrmAbonnement.dbgLinjeColExit(Sender: TObject);
begin
  if dbgLinje.SelectedIndex = 0 then begin

    if (cdsAboLinjePRODNR.Value <> '') and (cdsAboLinjeTEKST.Value = '') then begin
      DoSum := False;
      if dmFunction.LeggTilProdukt(cdsAboLinje, cdsAboLinjePRODNR.Value, False) = 0 then
        if dmFunction.LeggTilLevProdukt(cdsAboLinje, cdsAboLinjePRODNR.Value, False) > 1 then
          InfoDialog('Varenummer', 'Det ble funnet flere produkter med dette produktnummeret!');
      SummerAbo;
      DoSum := True;
    end;

  end;
end;

procedure TfrmAbonnement.dsAboLinjeDataChange(Sender: TObject; Field: TField);
begin
  //Hindrer at første tegn forvinner på en ny faktura ved innsetting av først varelinje.
  if (cdsAboLinjePris.Value = 0) and (cdsAboLinjeInnPris.Value = 0)
    and (cdsAboLinjeAntall.Value = 1) then Exit;

  if (DoSum) and
     (Field <> nil) and
     ((Field.FieldName = 'ANTALL') or
     (Field.FieldName = 'PRIS') or
     (Field.FieldName = 'MVA') or
     (Field.FieldName = 'INNPRIS') or
     (Field.FieldName = 'RABATT')) then begin
    if (not cdsAboLinjeAntall.IsNull) and (not cdsAboLinjePris.IsNull) and
      (not cdsAboLinjeMva.IsNull) and (not cdsAboLinjeInnpris.IsNull) then
      SummerAbo;
  end;
end;

procedure TfrmAbonnement.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult <> mrOK then begin
    if cdsAbo.Active then    //Gjør det mulig å gå ut hvis feil har oppstått.
      cdsAbo.CancelUpdates;
    if cdsAboLinje.Active then   //Gjør det mulig å gå ut hvis feil har oppstått.
      cdsAboLinje.CancelUpdates;
  end;
end;

function TfrmAbonnement.HentSisteSortID: Double;
begin
  if cdsAboLinje.RecordCount = 0 then begin
    Result := 0;
  end
  else begin
    cdsAboLinje.Last;
    Result := cdsAboLinjeSORTID.Value;
    cdsAboLinje.First;
  end;
end;

procedure TfrmAbonnement.FormCreate(Sender: TObject);
begin
  DoSum := True;

  adoAbo.Parameters.ParamValues['IdAbo'] := Dm.cdsAboIDABO.Value;
  adoAbo.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  cdsAbo.FetchParams;
  cdsAbo.Open;

  cdsAboLinje.Open;
  LastSortID := HentSisteSortID;
  adoIntervall.Open;

  SummerAbo;
  dbgLinje.Columns[6].PickList.Assign(Dm.MvaListe.Mva);
end;

procedure TfrmAbonnement.FormDestroy(Sender: TObject);
begin
  cdsAboLinje.Close;
  cdsAbo.Close;
  adoIntervall.Close;
end;

procedure TfrmAbonnement.FormShow(Sender: TObject);
begin
  LastReferanser;  // Variablen NyFaktura må være satt først..

  if NyttAbo = False then begin
    dbcRef.Text := cdsAboINTERNREF.Value;
    edKunde.Text := Dm.cdsAboNAVN.Value;
  end;

  if not GetUserBool(RegPath, 'AboVisInnPris', True) then
    acVisInn.Execute;
end;

procedure TfrmAbonnement.SummerAbo;
var
  Id: Integer;
  Eks, Mva, Ink, Rab, Avg, Inn: Double;
begin
  cdsAboLinje.DisableControls;
  Id := cdsAboLinjeIDLINJE.Value;
  dmFunction.SummerLinjer(cdsAboLinje, Eks, Mva, Ink, Rab, Avg, Inn);
  cdsAboLinje.Locate('IDLINJE', Id, []);
  cdsAboLinje.EnableControls;

  cdsAbo.Edit;
  cdsAboSUMEKS.Value := Eks;
  cdsAboSUMMVA.Value := Mva;
  cdsAboSUMTOT.Value := Ink;
  cdsAboSUMAVG.Value := Avg;
  cdsAboSUMRAB.Value := Rab;
  cdsAbo.Post;

  lblSumInn.Caption := FormatFloat('#,##0.00', Inn);
  lblFortjeneste.Caption := FormatFloat('#,##0.00', Eks - Inn);
  if Inn > 0 then
    lblFortjenesteP.Caption := FormatFloat('#,##0.00 %', ((Eks - Inn) / Inn) * 100);
end;

end.
