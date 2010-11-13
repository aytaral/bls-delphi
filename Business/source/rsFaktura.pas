unit rsFaktura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, TB2Item, TBX, ActnList, Menus,
  ImgList, TB2Dock, TB2Toolbar, ExtCtrls, StdCtrls, DBCtrls,
  Mask, DB, ADODB, DBClient, Provider,
  Buttons, TBXDkPanels, pngimage, JvExDBGrids, JvDBGrid, JvExComCtrls,
  JvDateTimePicker, JvDBDateTimePicker;

type
  TfrmFaktura = class(TForm)
    pnlSum: TPanel;
    Panel2: TPanel;
    TBXDock1: TTBXDock;
    tbVerktoy: TTBXToolbar;
    ImageList: TImageList;
    ActionList: TActionList;
    acInsert: TAction;
    Panel3: TPanel;
    Panel4: TPanel;
    dbgLinje: TJvDBGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    dbmAdresse: TDBMemo;
    btnFinnKunde: TButton;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    dbeEksternRef: TDBEdit;
    Label3: TLabel;
    btnAvbryt: TButton;
    btnOK: TButton;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    dbeOrdrenr: TDBEdit;
    Label6: TLabel;
    dblBetaling: TDBLookupComboBox;
    Label7: TLabel;
    dbcRef: TDBComboBox;
    dbeRef: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
//    dbtFakturadato: TadpDBDateTimePicker;
//    dbtForfallsdato: TadpDBDateTimePicker;
    Label10: TLabel;
    acDelete: TAction;
    acUp: TAction;
    acDown: TAction;
    acSort: TAction;
    TBXItem2: TTBXItem;
    TBXItem1: TTBXItem;
    TBXItem3: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem4: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXItem5: TTBXItem;
    adoFaktura: TADODataSet;
    dspFaktura: TDataSetProvider;
    cdsFaktura: TClientDataSet;
    dsFaktura: TDataSource;
    adoLinje: TADODataSet;
    dspLinje: TDataSetProvider;
    cdsLinje: TClientDataSet;
    dsLinje: TDataSource;
    adoFakturaFAKTURANR: TIntegerField;
    adoFakturaORDRENR: TIntegerField;
    adoFakturaKUNDENR: TIntegerField;
    adoFakturaKUNDEADR: TMemoField;
    adoFakturaFAKTURADATO: TDateField;
    adoFakturaFORFALLDATO: TDateField;
    adoFakturaEKSTERNREF: TStringField;
    adoFakturaINTERNREF: TStringField;
    adoFakturaREFNR: TStringField;
    adoFakturaSUMAVG: TFloatField;
    adoFakturaSUMEKS: TFloatField;
    adoFakturaSUMRAB: TFloatField;
    adoFakturaSUMMVA: TFloatField;
    adoFakturaSUMTOT: TFloatField;
    adoFakturaIDKLIENT: TIntegerField;
    adoFakturaIDFAKTURA: TIntegerField;
    cdsFakturaIDKLIENT: TIntegerField;
    cdsFakturaIDFAKTURA: TIntegerField;
    cdsFakturaFAKTURANR: TIntegerField;
    cdsFakturaORDRENR: TIntegerField;
    cdsFakturaKUNDENR: TIntegerField;
    cdsFakturaKUNDEADR: TMemoField;
    cdsFakturaFAKTURADATO: TDateField;
    cdsFakturaFORFALLDATO: TDateField;
    cdsFakturaEKSTERNREF: TStringField;
    cdsFakturaINTERNREF: TStringField;
    cdsFakturaREFNR: TStringField;
    cdsFakturaSUMAVG: TFloatField;
    cdsFakturaSUMEKS: TFloatField;
    cdsFakturaSUMRAB: TFloatField;
    cdsFakturaSUMMVA: TFloatField;
    cdsFakturaSUMTOT: TFloatField;
    pnlFortjeneste: TPanel;
    cdsLinjeIDFAKTURA: TIntegerField;
    cdsLinjeIDLINJE: TIntegerField;
    cdsLinjePRODNR: TStringField;
    cdsLinjeTEKST: TStringField;
    cdsLinjeENHET: TStringField;
    cdsLinjeINNPRIS: TFloatField;
    cdsLinjePRIS: TFloatField;
    cdsLinjeAVGIFT: TFloatField;
    cdsLinjeRABATT: TFloatField;
    cdsLinjeMVA: TFloatField;
    adoLinjeIDFAKTURA: TIntegerField;
    adoLinjeIDLINJE: TIntegerField;
    adoLinjePRODNR: TStringField;
    adoLinjeTEKST: TStringField;
    adoLinjeENHET: TStringField;
    adoLinjeINNPRIS: TFloatField;
    adoLinjePRIS: TFloatField;
    adoLinjeAVGIFT: TFloatField;
    adoLinjeRABATT: TFloatField;
    adoLinjeMVA: TFloatField;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label16: TLabel;
    Label17: TLabel;
    cdsLinjeSUMEKS: TFloatField;
    cdsLinjeSUMINK: TFloatField;
    DBText4: TDBText;
    DBText5: TDBText;
    acFooter: TAction;
    TBXItem6: TTBXItem;
    Label21: TLabel;
    DBText9: TDBText;
    acNew: TAction;
    TBXItem7: TTBXItem;
    acProdSok: TAction;
    adoLinjeSORTID: TFloatField;
    cdsLinjeSORTID: TFloatField;
    adoFakturaTEKST: TMemoField;
    cdsFakturaTEKST: TMemoField;
    adoFakturaAVRUNDING: TFloatField;
    cdsFakturaAVRUNDING: TFloatField;
    adoFakturaart: TADODataSet;
    dsFakturaart: TDataSource;
    acRenum: TAction;
    TBXItem8: TTBXItem;
    sbInfo: TSpeedButton;
    acVisInn: TAction;
    TBXItem9: TTBXItem;
    lblFortjenesteP: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    lblSumInn: TLabel;
    lblFortjeneste: TLabel;
    adoRef: TADODataSet;
    adoRefIDKLIENT: TIntegerField;
    adoRefREF: TStringField;
    adoRefSTANDARD: TSmallintField;
    imgInfo: TImage;
    imgWarning: TImage;
    imgStop: TImage;
    Panel7: TPanel;
    Image1: TImage;
    adoFakturaIDFAKTURAART: TIntegerField;
    cdsFakturaIDFAKTURAART: TIntegerField;
    acPrisInk: TAction;
    TBXItem10: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    adoFakturaKLIENTADR: TMemoField;
    cdsFakturaKLIENTADR: TMemoField;
    adoFakturaLOGOFIL: TStringField;
    adoFakturaKID: TStringField;
    cdsFakturaLOGOFIL: TStringField;
    cdsFakturaKID: TStringField;
    adoFakturaBETALTDATO: TDateField;
    cdsFakturaBETALTDATO: TDateField;
    adoFakturaIDBETSTATUS: TIntegerField;
    cdsFakturaIDBETSTATUS: TIntegerField;
    acHentProdLinjer: TAction;
    TBXItem11: TTBXItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    spNyIdLinje: TADOStoredProc;
    spNyIdLinjeIDFAKTURALINJE: TIntegerField;
    adoHentLinjer: TADODataSet;
    adoHentLinjerIDFAKTURA: TIntegerField;
    adoHentLinjerIDLINJE: TIntegerField;
    adoHentLinjerSORTID: TFloatField;
    adoHentLinjerPRODNR: TStringField;
    adoHentLinjerTEKST: TStringField;
    adoHentLinjerANTALL: TFloatField;
    adoHentLinjerENHET: TStringField;
    adoHentLinjerINNPRIS: TFloatField;
    adoHentLinjerPRIS: TFloatField;
    adoHentLinjerAVGIFT: TFloatField;
    adoHentLinjerRABATT: TFloatField;
    adoHentLinjerMVA: TFloatField;
    acReferanse: TAction;
    TBXItem12: TTBXItem;
    adoLinjeANTALL: TBCDField;
    cdsLinjeANTALL: TBCDField;
    adoFakturaIDBILAG: TIntegerField;
    cdsFakturaIDBILAG: TIntegerField;
    adoFakturaIDSTATUS: TIntegerField;
    cdsFakturaIDSTATUS: TIntegerField;
    TBXSeparatorItem5: TTBXSeparatorItem;
    dbtFakturaDato: TJvDBDateTimePicker;
    dbtForfallsDato: TJvDBDateTimePicker;
    procedure acUpExecute(Sender: TObject);
    procedure acDownExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure btnFinnKundeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure dbtFakturadatoChange(Sender: TObject);
    procedure acFooterExecute(Sender: TObject);
    procedure cdsLinjeCalcFields(DataSet: TDataSet);
    procedure acNewExecute(Sender: TObject);
    procedure cdsLinjeNewRecord(DataSet: TDataSet);
    procedure acInsertExecute(Sender: TObject);
    procedure acProdSokExecute(Sender: TObject);
    procedure acRenumExecute(Sender: TObject);
    procedure dbgLinjeColExit(Sender: TObject);
    procedure dsLinjeDataChange(Sender: TObject; Field: TField);
    procedure acVisInnExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbInfoClick(Sender: TObject);
    procedure acPrisInkExecute(Sender: TObject);
    procedure cdsFakturaBeforePost(DataSet: TDataSet);
    procedure dsFakturaDataChange(Sender: TObject; Field: TField);
    procedure acSortExecute(Sender: TObject);
    procedure acHentProdLinjerExecute(Sender: TObject);
    procedure dbmAdresseChange(Sender: TObject);
    procedure acReferanseExecute(Sender: TObject);
  private
    { Private declarations }
    FFDager: Integer;
    LastSortID: Double;
    PRabatt: Double;
    DoSum: Boolean;  //Sier om summering av faktura skjer..
    procedure SummerFaktura;
    procedure LastReferanser(OppdaterFaktura: Boolean = True);
    procedure SettInnFakturaData;
    procedure OppdaterTekst;
    procedure OverforLinjer(FraIDFaktura: Integer; Krediter: Boolean = False);
    function HentSisteSortID: Double;
    procedure FakturaSperre(Sperret: Boolean);
  public
    { Public declarations }
    NyFaktura: Boolean;
  end;

var
  frmFaktura: TfrmFaktura;

implementation

uses rsData, rsKundeSok, blsString, rsProduktSok, blsDialogs,
  rsFakturaTekst, rsEndreFakturanr, blsRegistry, 
  rsFakturaSok, rsFakturaRef, rsFunction, blsMisc;

{$R *.dfm}

procedure TfrmFaktura.acUpExecute(Sender: TObject);
begin
  dmFunction.MoveRecordUp(cdsLinje, 'IDFAKTURA;IDLINJE;SORTID');
end;

procedure TfrmFaktura.acDownExecute(Sender: TObject);
begin
  dmFunction.MoveRecordDown(cdsLinje, 'IDFAKTURA;IDLINJE;SORTID');
end;

procedure TfrmFaktura.acDeleteExecute(Sender: TObject);
begin
  if cdsLinje.RecordCount = 0 then Exit;
  
  if ConfirmDialog('Slett', 'Er du sikker på at du vil slette ' +
    QuotedStr(cdsLinjeTEKST.Value) + ' fra fakturaen?') then begin
    cdsLinje.Delete;
    SummerFaktura;
  end;
end;

procedure TfrmFaktura.btnFinnKundeClick(Sender: TObject);
begin
  frmKundeSok := TfrmKundeSok.Create(Application);
  frmKundeSok.KontaktSerie := 'KS';
  if frmKundeSok.ShowModal = mrOK then begin
    cdsFaktura.Edit;
    cdsFakturaKUNDENR.Value := frmKundeSok.cdsSokKONTAKTNR.Value;

    dmFunction.adoKunde.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
    dmFunction.adoKunde.Parameters.ParamValues['Knr'] := cdsFakturaKUNDENR.Value;
    dmFunction.adoKunde.Open;
    if dmFunction.adoKunde.RecordCount = 1 then begin
      cdsFakturaKUNDEADR.Value := dmFunction.HentFakturaAdresse;
      cdsFakturaEKSTERNREF.Value := dmFunction.adoKundeKONTAKT.Value;

      FFDager := dmFunction.adoKundeFORFALLSDAGER.Value;
      PRabatt := dmFunction.adoKundeRABATT.Value;
      cdsFakturaFORFALLDATO.Value := cdsFakturaFAKTURADATO.Value + FFDager;
    end;
    dmFunction.adoKunde.Close;
  end;
  frmKundeSok.Release;
end;

procedure TfrmFaktura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult <> mrOK then begin
    if cdsFaktura.Active then    //Gjør det mulig å gå ut hvis feil har oppstått.
      cdsFaktura.CancelUpdates;
    if cdsLinje.Active then   //Gjør det mulig å gå ut hvis feil har oppstått.
      cdsLinje.CancelUpdates;
  end;
end;

procedure TfrmFaktura.LastReferanser(OppdaterFaktura: Boolean = True);
begin
  dbcRef.Clear;
  adoRef.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoRef.Open;
  while not adoRef.Eof do begin
    dbcRef.Items.Add(adoRefREF.Value);
    if OppdaterFaktura then begin
      if (adoRefSTANDARD.Value = 1) and (NyFaktura) then begin
        cdsFaktura.Edit;
        cdsFakturaINTERNREF.Value := adoRefREF.Value;
      end;
    end;
    adoRef.Next;
  end;
  adoRef.Close;
end;

procedure TfrmFaktura.OppdaterTekst;
begin
  Dm.adoTekst.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  Dm.adoTekst.Parameters.ParamValues['IdStatus'] := 20;
  Dm.adoTekst.Open;

  cdsFaktura.Edit;
  if cdsFakturaIDFAKTURAART.Value = 100 then begin //Kreditnota
    if (cdsFakturaTEKST.IsNull) or (cdsFakturaTEKST.Value = '') or
    (cdsFakturaTEKST.Value = Dm.adoTekst.FieldValues['TEKST']) then //Sjekk mot standardtekst
      cdsFakturaTEKST.Value := Dm.adoKlientKREDITNOTATEKST.Value
    else
      if ConfirmDialog('Fakturatekst', 'Ønsker du å erstatte eksisterende tekst med ny standardtekst for valgt fakturaart?') then
        cdsFakturaTEKST.Value := Dm.adoKlientKREDITNOTATEKST.Value
  end
  else begin
    if (cdsFakturaTEKST.Value <> Dm.adoTekst.FieldValues['TEKST']) then begin //Kun hvis endring.
      if (cdsFakturaTEKST.IsNull) or (cdsFakturaTEKST.Value = '') or
      (cdsFakturaTEKST.Value = Dm.adoKlientKREDITNOTATEKST.Value) then //Sjekk mot kreditnotatekst
        cdsFakturaTEKST.Value := Dm.adoTekst.FieldValues['TEKST']
      else
        if ConfirmDialog('Fakturatekst', 'Ønsker du å erstatte eksisterende tekst med ny standardtekst for valgt fakturaart?') then
          cdsFakturaTEKST.Value := Dm.adoTekst.FieldValues['TEKST']
    end;
  end;

  Dm.adoTekst.Close;
end;

procedure TfrmFaktura.SettInnFakturaData;
begin
  cdsFaktura.Edit;
  if cdsFakturaKLIENTADR.IsNull then
    cdsFakturaKLIENTADR.Value := Dm.HentKlientAdresse;
  if cdsFakturaLOGOFIL.IsNull then
    cdsFakturaLOGOFIL.Value := Dm.adoKlientLOGO.Value;
  if cdsFakturaTEKST.IsNull then
    OppdaterTekst;
end;

function TfrmFaktura.HentSisteSortID: Double;
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

procedure TfrmFaktura.FormCreate(Sender: TObject);
begin
  DoSum := True;
  NyFaktura := False;
  FFDager := 0;
  PRabatt := 0;

  adoFaktura.Parameters.ParamValues['IdFaktura'] := Dm.cdsFakturaIDFAKTURA.Value;
  adoFaktura.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  cdsFaktura.FetchParams;
  cdsFaktura.Open;

  adoFakturaart.Open;
  Dm.adoKlient.Open;
  cdsLinje.Open;
  LastSortID := HentSisteSortID;

  SummerFaktura;
  dbgLinje.Columns[6].PickList.Assign(Dm.MvaListe.Mva);

  //Sperrer faktura for endring
  if cdsFakturaIDBILAG.IsNull = False then
    FakturaSperre(True)
  else if cdsFakturaIDSTATUS.Value > 10 then  //Dvs at status er sendt eller større
    FakturaSperre(True);
end;

procedure TfrmFaktura.FormDestroy(Sender: TObject);
begin
  cdsLinje.Close;
  cdsFaktura.Close;
  adoFakturaart.Close;
  Dm.adoKlient.Close;
end;

procedure TfrmFaktura.btnOKClick(Sender: TObject);
begin
  cdsFaktura.ApplyUpdates(-1);
  cdsLinje.ApplyUpdates(-1);
end;

procedure TfrmFaktura.dbtFakturadatoChange(Sender: TObject);
begin
  if FFDager > 0 then begin
    cdsFaktura.Edit;
    cdsFakturaFORFALLDATO.Value := cdsFakturaFAKTURADATO.Value + FFDager;
  end;
end;

procedure TfrmFaktura.acFooterExecute(Sender: TObject);
begin
  frmFakturaTekst := TfrmFakturaTekst.Create(Application);
  frmFakturaTekst.ShowModal;
  frmFakturaTekst.Release;
end;

procedure TfrmFaktura.cdsLinjeCalcFields(DataSet: TDataSet);
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

procedure TfrmFaktura.acNewExecute(Sender: TObject);
begin
  frmProduktSok := TfrmProduktSok.Create(Application);
  frmProduktSok.cbAktiv.Checked := False;
  if frmProduktSok.ShowModal = mrOK then begin
    DoSum := False;
    dmFunction.LeggTilProdukt(cdsLinje, frmProduktSok.cdsSokPRODUKTNR.Value, True);
    SummerFaktura;
    DoSum := True;
  end;
  frmProduktSok.Release;
end;

procedure TfrmFaktura.cdsLinjeNewRecord(DataSet: TDataSet);
begin
  spNyIdLinje.Open;
  cdsLinjeIDLINJE.Value := spNyIdLinjeIDFAKTURALINJE.Value;
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

procedure TfrmFaktura.acInsertExecute(Sender: TObject);
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

procedure TfrmFaktura.acProdSokExecute(Sender: TObject);
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
    SummerFaktura;
    DoSum := True;
  end;
  frmProduktSok.Release;
end;

procedure TfrmFaktura.acReferanseExecute(Sender: TObject);
begin
  frmFakturaRef := TfrmFakturaRef.Create(Application);
  if frmFakturaRef.ShowModal = mrOK then begin
    LastReferanser(False);
    dbcRef.Text := cdsFakturaINTERNREF.Value;
  end;
  frmFakturaRef.Release;
end;

procedure TfrmFaktura.acRenumExecute(Sender: TObject);
begin
  if Dm.HarAdminTilgang = False then Exit;

  frmEndreFakturanr := TfrmEndreFakturanr.Create(Application);
  if frmEndreFakturanr.ShowModal = mrOK then begin
    cdsFaktura.Edit;
    cdsFakturaFAKTURANR.Value := frmEndreFakturanr.editNo.AsInteger;
    cdsFaktura.Post;
    cdsFaktura.ApplyUpdates(0);
  end;
  frmEndreFakturanr.Release;
end;

procedure TfrmFaktura.SummerFaktura;
var Id: Integer;
    Eks, Mva, Ink, Rab, Avg, Inn: Double;
begin
  cdsLinje.DisableControls;
  Id := cdsLinjeIDLINJE.Value;
  dmFunction.SummerLinjer(cdsLinje, Eks, Mva, Ink, Rab, Avg, Inn);
  cdsLinje.Locate('IDLINJE', Id, []);
  cdsLinje.EnableControls;

  cdsFaktura.Edit;
  cdsFakturaSUMEKS.Value := Eks;
  cdsFakturaSUMMVA.Value := Mva;
  cdsFakturaSUMTOT.Value := Ink;
  cdsFakturaSUMAVG.Value := Avg;
  cdsFakturaSUMRAB.Value := Rab;
  cdsFaktura.Post;

  lblSumInn.Caption := FormatFloat('#,##0.00', Inn);
  lblFortjeneste.Caption := FormatFloat('#,##0.00', Eks - Inn);
  if Inn > 0 then
    lblFortjenesteP.Caption := FormatFloat('#,##0.00 %', ((Eks - Inn) / Inn) * 100);
end;

procedure TfrmFaktura.dbgLinjeColExit(Sender: TObject);
begin
  if dbgLinje.SelectedIndex = 0 then begin

    if (cdsLinjePRODNR.Value <> '') and (cdsLinjeTEKST.Value = '') then begin
      DoSum := False;
      if dmFunction.LeggTilProdukt(cdsLinje, cdsLinjePRODNR.Value, False) = 0 then
        if dmFunction.LeggTilLevProdukt(cdsLinje, cdsLinjePRODNR.Value, False) > 1 then
          InfoDialog('Varenummer', 'Det ble funnet flere produkter med dette produktnummeret!');
      SummerFaktura;
      DoSum := True;
    end;

  end;
end;

procedure TfrmFaktura.dsLinjeDataChange(Sender: TObject; Field: TField);
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
      SummerFaktura;
  end;
end;

procedure TfrmFaktura.acVisInnExecute(Sender: TObject);
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
  SetUserBool(RegPath, 'VisInnPris', acVisInn.Checked);
end;

procedure TfrmFaktura.FormShow(Sender: TObject);
begin
  LastReferanser;  // Variablen NyFaktura må være satt først..
  SettInnFakturaData;

  if not GetUserBool(RegPath, 'VisInnPris', True) then
    acVisInn.Execute;
end;

procedure TfrmFaktura.sbInfoClick(Sender: TObject);
begin
  sbInfo.Glyph := imgWarning.Picture.Bitmap;
end;

procedure TfrmFaktura.acPrisInkExecute(Sender: TObject);
begin
  cdsLinje.Edit;
  cdsLinjePris.Value := AvrundBelop(cdsLinjePris.Value / (1 + (cdsLinjeMva.Value / 100)));
end;

procedure TfrmFaktura.cdsFakturaBeforePost(DataSet: TDataSet);
begin
  if cdsFakturaIDFAKTURAART.Value in [20] then begin //Hvis kontant
    cdsFakturaBETALTDATO.Value := cdsFakturaFAKTURADATO.Value;
    cdsFakturaIDBETSTATUS.Value := 10; //Betalt
  end;
end;

procedure TfrmFaktura.dsFakturaDataChange(Sender: TObject; Field: TField);
begin
  if (Field <> nil) and (Field.FieldName = 'IDFAKTURAART') then
    OppdaterTekst;
end;

procedure TfrmFaktura.acSortExecute(Sender: TObject);
begin
  LastSortID := dmFunction.SorterProduktLinjer(cdsLinje);
end;

procedure TfrmFaktura.acHentProdLinjerExecute(Sender: TObject);
begin
  frmFakturaSok := TfrmFakturaSok.Create(Application);
  if frmFakturaSok.ShowModal = mrOK then begin
    OverforLinjer(frmFakturaSok.cdsSokIDFAKTURA.Value);
  end;
  frmFakturaSok.Release;
end;

procedure TfrmFaktura.OverforLinjer(FraIDFaktura: Integer; Krediter: Boolean = False);
begin
  DoSum := False;
  adoHentLinjer.Parameters.ParamValues['IdFaktura'] := FraIDFaktura;
  adoHentLinjer.Open;

  adoHentLinjer.First;
  while not adoHentLinjer.Eof do begin
    cdsLinje.Append;
    cdsLinjePRODNR.Value := adoHentLinjerPRODNR.Value;
    cdsLinjeTEKST.Value := adoHentLinjerTEKST.Value;
    if Krediter = False then
      cdsLinjeANTALL.Value := adoHentLinjerANTALL.Value
    else
      cdsLinjeANTALL.Value := adoHentLinjerANTALL.Value * -1;
    cdsLinjeENHET.Value := adoHentLinjerENHET.Value;
    cdsLinjeINNPRIS.Value := adoHentLinjerINNPRIS.Value;
    cdsLinjePRIS.Value := adoHentLinjerPRIS.Value;
    cdsLinjeAVGIFT.Value := adoHentLinjerAVGIFT.Value;
    cdsLinjeRABATT.Value := adoHentLinjerRABATT.Value;
    cdsLinjeMVA.Value := adoHentLinjerMVA.Value;
    cdsLinje.Post;

    adoHentLinjer.Next;
  end;

  adoHentLinjer.Close;
  SummerFaktura;
  DoSum := True;
end;

procedure TfrmFaktura.dbmAdresseChange(Sender: TObject);
begin
  btnOK.Enabled := dbmAdresse.Lines.Text <> '';
end;

procedure TfrmFaktura.FakturaSperre(Sperret: Boolean);
begin
  dbgLinje.Enabled := not Sperret;
  dbmAdresse.Enabled := not Sperret;
  dbtFakturadato.Enabled := not Sperret;
  dbtForfallsdato.Enabled := not Sperret;
  dblBetaling.Enabled := not Sperret;
  dbeOrdrenr.Enabled := not Sperret;
  dbeRef.Enabled := not Sperret;
  dbeEksternRef.Enabled := not Sperret;
  dbcRef.Enabled := not Sperret;

  //tbVerktoy.Enabled := not Sperret;
  acUp.Enabled := not Sperret;
  acDown.Enabled := not Sperret;
  acDelete.Enabled := not Sperret;
  acFooter.Enabled := not Sperret;
  acNew.Enabled := not Sperret;
  acInsert.Enabled := not Sperret;
  acProdSok.Enabled := not Sperret;
  acReferanse.Enabled := not Sperret;
  acRenum.Enabled := not Sperret;
  acPrisInk.Enabled := not Sperret;
  acSort.Enabled := not Sperret;
  acHentProdLinjer.Enabled := not Sperret;

  btnFinnKunde.Enabled := not Sperret;
end;

end.
