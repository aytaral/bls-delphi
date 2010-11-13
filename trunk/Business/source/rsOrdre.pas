unit rsOrdre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, TB2Item, TBX, TB2Dock, TB2Toolbar, ActnList,
  ImgList, StdCtrls, ExtCtrls, JvExDBGrids, JvDBGrid, DBCtrls, ADODB, DB,
  DBClient, Provider, ComCtrls, Mask, JvExComCtrls, JvDateTimePicker,
  JvDBDateTimePicker;

type
  TfrmOrdre = class(TForm)
    ActionList: TActionList;
    acNew: TAction;
    Panel2: TPanel;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem1: TTBXItem;
    Panel3: TPanel;
    pnlInfo: TPanel;
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
    Label21: TLabel;
    DBText9: TDBText;
    btnAvbryt: TButton;
    btnOK: TButton;
    pnlFortjeneste: TPanel;
    lblFortjenesteP: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    lblSumInn: TLabel;
    lblFortjeneste: TLabel;
    adoLinje: TADODataSet;
    dspLinje: TDataSetProvider;
    cdsLinje: TClientDataSet;
    cdsLinjeIDLINJE: TIntegerField;
    cdsLinjeSORTID: TFloatField;
    cdsLinjePRODNR: TStringField;
    cdsLinjeTEKST: TStringField;
    cdsLinjeENHET: TStringField;
    cdsLinjeINNPRIS: TFloatField;
    cdsLinjePRIS: TFloatField;
    cdsLinjeRABATT: TFloatField;
    cdsLinjeMVA: TFloatField;
    cdsLinjeSUMEKS: TFloatField;
    cdsLinjeSUMINK: TFloatField;
    dsLinje: TDataSource;
    spNyIdLinje: TADOStoredProc;
    adoLinjeIDORDRE: TIntegerField;
    adoLinjeIDLINJE: TIntegerField;
    adoLinjeSORTID: TFloatField;
    adoLinjePRODNR: TStringField;
    adoLinjeTEKST: TStringField;
    adoLinjeENHET: TStringField;
    adoLinjeINNPRIS: TFloatField;
    adoLinjePRIS: TFloatField;
    adoLinjeRABATT: TFloatField;
    adoLinjeMVA: TFloatField;
    adoLinjeLEVERT: TFloatField;
    adoLinjeIDLEVERING: TIntegerField;
    cdsLinjeIDORDRE: TIntegerField;
    cdsLinjeLEVERT: TFloatField;
    cdsLinjeIDLEVERING: TIntegerField;
    spNyIdLinjeIDORDRELINJE: TIntegerField;
    adoLinjeAVGIFT: TFloatField;
    cdsLinjeAVGIFT: TFloatField;
    adoOrdre: TADODataSet;
    dspOrdre: TDataSetProvider;
    cdsOrdre: TClientDataSet;
    dsOrdre: TDataSource;
    adoOrdreIDORDRE: TIntegerField;
    adoOrdreORDRENR: TIntegerField;
    cdsOrdreIDORDRE: TIntegerField;
    cdsOrdreORDRENR: TIntegerField;
    Label1: TLabel;
    dbeKundenr: TDBEdit;
    btnFinnKunde: TButton;
    Label4: TLabel;
    dbeOrdrenr: TDBEdit;
    Label2: TLabel;
    dbmLevAdr: TDBMemo;
    Label3: TLabel;
    dbmFaktAdr: TDBMemo;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    DBEdit2: TDBEdit;
    dbcRef: TDBComboBox;
    Label8: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    ImageList: TImageList;
    acInsert: TAction;
    TBXItem2: TTBXItem;
    adoOrdreKUNDENR: TIntegerField;
    adoOrdreFAKTURAADR: TMemoField;
    adoOrdreLEVERINGADR: TMemoField;
    adoOrdreORDREDATO: TDateField;
    adoOrdreLEVERINGSDATO: TDateField;
    adoOrdreEKSTERNREF: TStringField;
    adoOrdreINTERNREF: TStringField;
    adoOrdreREFNR: TStringField;
    adoOrdreTEKST: TMemoField;
    adoOrdreLOGOFIL: TStringField;
    adoOrdreSUMAVG: TFloatField;
    adoOrdreSUMEKS: TFloatField;
    adoOrdreSUMRAB: TFloatField;
    adoOrdreSUMMVA: TFloatField;
    adoOrdreSUMTOT: TFloatField;
    adoOrdreAVRUNDING: TFloatField;
    adoOrdreBRUKER: TStringField;
    adoOrdreREGDATO: TDateTimeField;
    cdsOrdreKUNDENR: TIntegerField;
    cdsOrdreFAKTURAADR: TMemoField;
    cdsOrdreLEVERINGADR: TMemoField;
    cdsOrdreORDREDATO: TDateField;
    cdsOrdreLEVERINGSDATO: TDateField;
    cdsOrdreEKSTERNREF: TStringField;
    cdsOrdreINTERNREF: TStringField;
    cdsOrdreREFNR: TStringField;
    cdsOrdreTEKST: TMemoField;
    cdsOrdreLOGOFIL: TStringField;
    cdsOrdreSUMAVG: TFloatField;
    cdsOrdreSUMEKS: TFloatField;
    cdsOrdreSUMRAB: TFloatField;
    cdsOrdreSUMMVA: TFloatField;
    cdsOrdreSUMTOT: TFloatField;
    cdsOrdreAVRUNDING: TFloatField;
    cdsOrdreBRUKER: TStringField;
    cdsOrdreREGDATO: TDateTimeField;
    Label6: TLabel;
    acDelete: TAction;
    TBXItem3: TTBXItem;
    adoLinjeANTALL: TBCDField;
    cdsLinjeANTALL: TBCDField;
    acUp: TAction;
    acDown: TAction;
    adoRef: TADODataSet;
    adoRefIDKLIENT: TIntegerField;
    adoRefREF: TStringField;
    adoRefSTANDARD: TSmallintField;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    acReferanse: TAction;
    acPrisInk: TAction;
    TBXItem6: TTBXItem;
    TBXItem7: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    acProdSok: TAction;
    DBLookupComboBox1: TDBLookupComboBox;
    Label10: TLabel;
    adoStatus: TADODataSet;
    adoStatusIDORDRESTATUS: TIntegerField;
    adoStatusSTATUSTEKST: TStringField;
    adoOrdreIDORDRESTATUS: TIntegerField;
    cdsOrdreIDORDRESTATUS: TIntegerField;
    dsStatus: TDataSource;
    acVisInn: TAction;
    TBXItem8: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    acSort: TAction;
    TBXItem9: TTBXItem;
    acFooter: TAction;
    TBXItem10: TTBXItem;
    acRenum: TAction;
    TBXItem11: TTBXItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    acProdLinjer: TAction;
    TBXItem12: TTBXItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    dbtOrdreDato: TJvDBDateTimePicker;
    dbtLevering: TJvDBDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure acInsertExecute(Sender: TObject);
    procedure btnFinnKundeClick(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure acUpExecute(Sender: TObject);
    procedure acDownExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsLinjeNewRecord(DataSet: TDataSet);
    procedure cdsLinjeCalcFields(DataSet: TDataSet);
    procedure acReferanseExecute(Sender: TObject);
    procedure dsLinjeDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure dbmFaktAdrChange(Sender: TObject);
    procedure acPrisInkExecute(Sender: TObject);
    procedure acNewExecute(Sender: TObject);
    procedure dbgLinjeColExit(Sender: TObject);
    procedure acProdSokExecute(Sender: TObject);
    procedure acVisInnExecute(Sender: TObject);
    procedure acSortExecute(Sender: TObject);
    procedure acFooterExecute(Sender: TObject);
    procedure acRenumExecute(Sender: TObject);
  private
    { Private declarations }
    DoSum: Boolean;
    PRabatt: Double;
    LastSortID: Double;
    procedure LastReferanser(OppdaterFaktura: Boolean = True);
    function HentSisteSortID: Double;
    procedure SummerOrdre;
    procedure SettInnOrdreData;
  public
    { Public declarations }
    NyOrdre: Boolean;
  end;

var
  frmOrdre: TfrmOrdre;

implementation

uses rsKundeSok, rsData, blsString, blsDialogs, rsFakturaRef, rsFunction,
  rsProduktSok, blsRegistry, rsFakturaTekst, rsEndreOrdrenr, blsMisc;

{$R *.dfm}

procedure TfrmOrdre.acDownExecute(Sender: TObject);
begin
  dmFunction.MoveRecordDown(cdsLinje, 'IDFAKTURA;IDLINJE;SORTID');
end;

procedure TfrmOrdre.acFooterExecute(Sender: TObject);
begin
  frmFakturaTekst := TfrmFakturaTekst.Create(Application);
  frmFakturaTekst.Caption := 'Ordretekst';
  frmFakturaTekst.dbmTekst.DataSource := dsOrdre;
  
  frmFakturaTekst.ShowModal;
  frmFakturaTekst.Release;
end;

procedure TfrmOrdre.acUpExecute(Sender: TObject);
begin
  dmFunction.MoveRecordUp(cdsLinje, 'IDFAKTURA;IDLINJE;SORTID');
end;

procedure TfrmOrdre.acVisInnExecute(Sender: TObject);
begin
  pnlFortjeneste.Visible := acVisInn.Checked;
  if acVisInn.Checked then begin
    dbgLinje.Columns[5].Visible := True;
    dbgLinje.Columns[1].Width := dbgLinje.Columns[1].Width - 55 - 1;
  end
  else begin
    dbgLinje.Columns[5].Visible := False;
    dbgLinje.Columns[1].Width := dbgLinje.Columns[1].Width + 55 + 1;
  end;
  SetUserBool(RegPath, 'OrdreVisInnPris', acVisInn.Checked);
end;

procedure TfrmOrdre.acInsertExecute(Sender: TObject);
var
  NextNo, PrevNo, NewNo: Double;
begin
  cdsLinje.DisableControls;
  NextNo := cdsLinjeSORTID.Value;
  cdsLinje.Prior;
  PrevNo := cdsLinjeSORTID.Value;
  cdsLinje.Next;
  if PrevNo = NextNo then
    PrevNo := 0;
  NewNo := ((NextNo + PrevNo) / 2);
  cdsLinje.EnableControls;

  cdsLinje.Insert;
  if NewNo > 0 then
    cdsLinjeSORTID.Value := NewNo;
  dbgLinje.SelectedIndex := 0;
  dbgLinje.EditorMode := True;
end;

procedure TfrmOrdre.acNewExecute(Sender: TObject);
begin
  frmProduktSok := TfrmProduktSok.Create(Application);
  frmProduktSok.cbAktiv.Checked := False;
  if frmProduktSok.ShowModal = mrOK then begin
    DoSum := False;
    dmFunction.LeggTilProdukt(cdsLinje, frmProduktSok.cdsSokPRODUKTNR.Value, True);
    SummerOrdre;
    DoSum := True;
  end;
  frmProduktSok.Release;
end;

procedure TfrmOrdre.acPrisInkExecute(Sender: TObject);
begin
  cdsLinje.Edit;
  cdsLinjePris.Value := AvrundBelop(cdsLinjePris.Value / (1 + (cdsLinjeMva.Value / 100)));
end;

procedure TfrmOrdre.acProdSokExecute(Sender: TObject);
begin
  if (ActiveControl <> dbgLinje) then Exit;

  frmProduktSok := TfrmProduktSok.Create(Application);
  frmProduktSok.cbAktiv.Checked := False;
  if cdsLinje.State in [dsEdit, dsInsert] then
    cdsLinje.Post;

  frmProduktSok.edProdnr.Text := cdsLinjePRODNR.Value;
  frmProduktSok.editSok.Text := cdsLinjeTEKST.Value;

  if frmProduktSok.ShowModal = mrOK then begin
    DoSum := False;
    dmFunction.LeggTilProdukt(cdsLinje, frmProduktSok.cdsSokPRODUKTNR.Value, False);
    SummerOrdre;
    DoSum := True;
  end;
  frmProduktSok.Release;
end;

procedure TfrmOrdre.acReferanseExecute(Sender: TObject);
begin
  frmFakturaRef := TfrmFakturaRef.Create(Application);
  if frmFakturaRef.ShowModal = mrOK then begin
    LastReferanser(False);
    dbcRef.Text := cdsOrdreINTERNREF.Value;
  end;
  frmFakturaRef.Release;
end;

procedure TfrmOrdre.acRenumExecute(Sender: TObject);
begin
  if Dm.HarAdminTilgang = False then Exit;

  frmEndreOrdrenr := TfrmEndreOrdrenr.Create(Application);
  if frmEndreOrdrenr.ShowModal = mrOK then begin
    cdsOrdre.Edit;
    cdsOrdreORDRENR.Value := frmEndreOrdrenr.editNo.AsInteger;
    cdsOrdre.Post;
    cdsOrdre.ApplyUpdates(0);
  end;
  frmEndreOrdrenr.Release;
end;

procedure TfrmOrdre.acSortExecute(Sender: TObject);
begin
  LastSortID := dmFunction.SorterProduktLinjer(cdsLinje);
end;

procedure TfrmOrdre.acDeleteExecute(Sender: TObject);
begin
  if cdsLinje.RecordCount = 0 then Exit;

  if ConfirmDialog('Slett', 'Er du sikker på at du vil slette ' +
    QuotedStr(cdsLinjeTEKST.Value) + ' fra fakturaen?') then begin
    cdsLinje.Delete;
    SummerOrdre;
  end;
end;

procedure TfrmOrdre.btnFinnKundeClick(Sender: TObject);
begin
  frmKundeSok := TfrmKundeSok.Create(Application);
  frmKundeSok.KontaktSerie := 'KS';
  if frmKundeSok.ShowModal = mrOK then begin
    cdsOrdre.Edit;
    cdsOrdreKUNDENR.Value := frmKundeSok.cdsSokKONTAKTNR.Value;
    dmFunction.adoKunde.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
    dmFunction.adoKunde.Parameters.ParamValues['Knr'] := cdsOrdreKUNDENR.Value;
    dmFunction.adoKunde.Open;

    if dmFunction.adoKunde.RecordCount = 1 then begin
      cdsOrdreFAKTURAADR.Value := dmFunction.HentFakturaAdresse;
      cdsOrdreLEVERINGADR.Value := dmFunction.HentLeveringsAdresse;
      cdsOrdreEKSTERNREF.Value := dmFunction.adoKundeKONTAKT.Value;
      PRabatt := dmFunction.adoKundeRABATT.Value;
    end;
    dmFunction.adoKunde.Close;
  end;
  frmKundeSok.Release;
end;

procedure TfrmOrdre.btnOKClick(Sender: TObject);
begin
  cdsOrdre.ApplyUpdates(-1);
  cdsLinje.ApplyUpdates(-1);
end;

procedure TfrmOrdre.cdsLinjeCalcFields(DataSet: TDataSet);
var
  Eks, Ink: Double;
begin
  if (not cdsLinjeANTALL.IsNull) and (not cdsLinjePRIS.IsNull) then begin
    dmFunction.CalcEKSandINK(cdsLinjeANTALL.AsFloat, cdsLinjePRIS.AsFloat,
      cdsLinjeRABATT.AsFloat, cdsLinjeMVA.AsFloat, Eks, Ink);
    cdsLinjeSUMEKS.Value :=  Eks;
    cdsLinjeSUMINK.Value := Ink;
  end;
end;

procedure TfrmOrdre.cdsLinjeNewRecord(DataSet: TDataSet);
begin
  spNyIdLinje.Open;
  cdsLinjeIDLINJE.Value := spNyIdLinjeIDORDRELINJE.Value;
  spNyIdLinje.Close;

  LastSortID := LastSortID + 10;
  cdsLinjeSORTID.Value := LastSortID;
  //SortID blir overstyrt dersom en linje settes imellom to eksisterende

  cdsLinjeENHET.Value := 'Stk';
  cdsLinjeINNPRIS.Value := 0;
  if PRabatt > 0 then
    cdsLinjeRABATT.Value := PRabatt;

  //Må settes til slutt slik at ikke kalkuleringen av verdiene avbryter insert mode
  cdsLinjeANTALL.Value := 1;
  cdsLinjeMVA.Value := Dm.MvaListe.DefaultMva;
  cdsLinjePRIS.Value := 0;
end;

procedure TfrmOrdre.dbgLinjeColExit(Sender: TObject);
begin
  if dbgLinje.SelectedIndex = 0 then begin

    if (cdsLinjePRODNR.Value <> '') and (cdsLinjeTEKST.Value = '') then begin
      DoSum := False;
      if dmFunction.LeggTilProdukt(cdsLinje, cdsLinjePRODNR.Value, False) = 0 then
        if dmFunction.LeggTilLevProdukt(cdsLinje, cdsLinjePRODNR.Value, False) > 1 then
          InfoDialog('Varenummer', 'Det ble funnet flere produkter med dette produktnummeret!');
      SummerOrdre;
      DoSum := True;
    end;

  end;
end;

procedure TfrmOrdre.dbmFaktAdrChange(Sender: TObject);
begin
  btnOK.Enabled := (dbmFaktAdr.Lines.Text <> '') or (dbmLevAdr.Lines.Text <> '');
end;

procedure TfrmOrdre.dsLinjeDataChange(Sender: TObject; Field: TField);
begin
  //Hindrer at første tegn forvinner på en ny faktura ved innsetting av først varelinje.
  if (cdsLinjePris.Value = 0) and (cdsLinjeInnPris.Value = 0)
    and (cdsLinjeAntall.Value = 1) then Exit;

  if (DoSum) and
     (Field <> nil) and
     ((Field.FieldName = 'ANTALL') or
     (Field.FieldName = 'PRIS') or
     (Field.FieldName = 'MVA') or
     (Field.FieldName = 'INNPRIS') or
     (Field.FieldName = 'RABATT')) then begin
    if (not cdsLinjeAntall.IsNull) and (not cdsLinjePris.IsNull) and
      (not cdsLinjeMva.IsNull) and (not cdsLinjeInnpris.IsNull) then
      SummerOrdre;
  end;
end;

procedure TfrmOrdre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult <> mrOK then begin
    if cdsOrdre.Active then    //Gjør det mulig å gå ut hvis feil har oppstått.
      cdsOrdre.CancelUpdates;
    if cdsLinje.Active then   //Gjør det mulig å gå ut hvis feil har oppstått.
      cdsLinje.CancelUpdates;
  end;
end;

procedure TfrmOrdre.LastReferanser(OppdaterFaktura: Boolean = True);
begin
  dbcRef.Clear;
  adoRef.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoRef.Open;
  while not adoRef.Eof do begin
    dbcRef.Items.Add(adoRefREF.Value);
    if OppdaterFaktura then begin
      if (adoRefSTANDARD.Value = 1) and (NyOrdre) then begin
        cdsOrdre.Edit;
        cdsOrdreINTERNREF.Value := adoRefREF.Value;
      end;
    end;
    adoRef.Next;
  end;
  adoRef.Close;
end;

procedure TfrmOrdre.SettInnOrdreData;
begin
  cdsOrdre.Edit;
  if cdsOrdreLOGOFIL.IsNull then
    cdsOrdreLOGOFIL.Value := Dm.adoKlientLOGO.Value;
  if cdsOrdreTEKST.IsNull then
  if cdsOrdreTEKST.IsNull then
    cdsOrdreTEKST.Value := Dm.adoKlientORDRETEKST.Value;
end;

function TfrmOrdre.HentSisteSortID: Double;
begin
  if cdsLinje.RecordCount = 0 then begin
    Result := 0;
  end
  else begin
    cdsLinje.Last;
    Result := cdsLinjeSORTID.Value;
    cdsLinje.First;
  end;
end;

procedure TfrmOrdre.FormCreate(Sender: TObject);
begin
  DoSum := True;
  NyOrdre := False;
  PRabatt := 0;

  adoStatus.Open;
  Dm.adoKlient.Open;


  adoOrdre.Parameters.ParamValues['IdOrdre'] := Dm.cdsOrdreIDORDRE.Value;
  adoOrdre.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  cdsOrdre.FetchParams;
  cdsOrdre.Open;

  cdsLinje.Open;
  LastSortID := HentSisteSortID;

  SummerOrdre;
  dbgLinje.Columns[7].PickList.Assign(Dm.MvaListe.Mva);
end;

procedure TfrmOrdre.FormDestroy(Sender: TObject);
begin
  adoStatus.Close;
  Dm.adoKlient.Close;
  cdsOrdre.Close;
  cdsLinje.Close;
end;

procedure TfrmOrdre.FormShow(Sender: TObject);
begin
  LastReferanser;  // Variablen NyOrdre må være satt først..
  SettInnOrdreData;

  if not GetUserBool(RegPath, 'OrdreVisInnPris', True) then
    acVisInn.Execute;
end;

procedure TfrmOrdre.SummerOrdre;
var Id: Integer;
    Eks, Mva, Ink, Rab, Avg, Inn: Double;
begin
  cdsLinje.DisableControls;
  Id := cdsLinjeIDLINJE.Value;
  dmFunction.SummerLinjer(cdsLinje, Eks, Mva, Ink, Rab, Avg, Inn);
  cdsLinje.Locate('IDLINJE', Id, []);
  cdsLinje.EnableControls;

  cdsOrdre.Edit;
  cdsOrdreSUMEKS.Value := Eks;
  cdsOrdreSUMMVA.Value := Mva;
  cdsOrdreSUMTOT.Value := Ink;
  cdsOrdreSUMAVG.Value := Avg;
  cdsOrdreSUMRAB.Value := Rab;
  cdsOrdre.Post;

  lblSumInn.Caption := FormatFloat('#,##0.00', Inn);
  lblFortjeneste.Caption := FormatFloat('#,##0.00', Eks - Inn);
  if Inn > 0 then
    lblFortjenesteP.Caption := FormatFloat('#,##0.00 %', ((Eks - Inn) / Inn) * 100);
end;


end.
