unit rsBilag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExMask, JvSpin, JvDBSpinEdit, StdCtrls, Mask, DBCtrls,
  ComCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  TB2Item, TBX, ActnList, TB2Dock, TB2Toolbar, ExtCtrls, DB, DBClient,
  Provider, ADODB, blsAlignEdit, ImgList, DBActns, JvToolEdit, JvDBControls,
  Menus, Buttons;

type

  TKontoType = (ktUkjent, ktKonto, ktKunde, ktLeverandor);

  TKonto = class(TObject)
    Kontonr: Integer;
    Navn: String;
    KontoType: TKontoType;
    MvaKode: Integer;
    MvaTekst: String;
    procedure Clear;
    function IsEmpty: Boolean;
    procedure SetVerdier(aNr: Integer; aNavn: String;
      aKontoType: TKontoType; aMvaKode: Integer; aMvaTekst: String);
    procedure SetKonto(aNr: Integer; aNavn: String; aKontoType: TKontoType);
    procedure SetMva(aMvaKode: Integer; aMvaTekst: String);
  end;

  TPostering = class(TObject)
  private
    Debet: TKonto;
    Kredit: TKonto;
    Fakturanr: String;
    TekstId: Integer;
    Tekst: String;
    Forfall: TDate;
    Belop: Double;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Clear;
  end;

  TfrmBilag = class(TForm)
    Panel1: TPanel;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    ActionList: TActionList;
    acNyttBilag: TAction;
    TBXItem1: TTBXItem;
    pnlTop: TPanel;
    Panel3: TPanel;
    btnOK: TButton;
    btnAvbryt: TButton;
    Panel4: TPanel;
    dbgPostering: TJvDBGrid;
    pnlBilag: TPanel;
    pnlHurtigReg: TPanel;
    adoPostering: TADODataSet;
    dspPostering: TDataSetProvider;
    cdsPostering: TClientDataSet;
    dsPostering: TDataSource;
    cdsPosteringIDBILAG: TIntegerField;
    cdsPosteringIDPOSTERING: TIntegerField;
    cdsPosteringIDKLIENT: TIntegerField;
    cdsPosteringKONTONR: TIntegerField;
    cdsPosteringMVAKODE: TIntegerField;
    cdsPosteringTEKST: TStringField;
    cdsPosteringKONTAKTNR: TIntegerField;
    Panel7: TPanel;
    pcHurtigReg: TPageControl;
    TabSheet1: TTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    btnLagre: TButton;
    editDKonto: TEdit;
    editKKonto: TEdit;
    editTekst: TEdit;
    editDMva: TblsAlignEdit;
    editKMva: TblsAlignEdit;
    editBelop: TblsAlignEdit;
    gbHeader: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbeBilagnr: TDBEdit;
    editPeriode: TJvDBSpinEdit;
    editAar: TJvDBSpinEdit;
    acHurtigReg: TAction;
    TBXItem2: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    dsBilag: TDataSource;
    adoBilag: TADODataSet;
    dspBilag: TDataSetProvider;
    cdsBilag: TClientDataSet;
    cdsBilagIDBILAG: TIntegerField;
    cdsBilagIDKLIENT: TIntegerField;
    cdsBilagBILAGNR: TIntegerField;
    cdsBilagAAR: TSmallintField;
    cdsBilagPERIODENR: TSmallintField;
    cdsBilagGODKJENT: TSmallintField;
    cdsBilagBRUKER: TStringField;
    cdsBilagREGDATO: TDateTimeField;
    adoBilagIDBILAG: TIntegerField;
    adoBilagIDKLIENT: TIntegerField;
    adoBilagBILAGNR: TIntegerField;
    adoBilagAAR: TSmallintField;
    adoBilagPERIODENR: TSmallintField;
    adoBilagGODKJENT: TSmallintField;
    adoBilagBRUKER: TStringField;
    adoBilagREGDATO: TDateTimeField;
    adoPosteringIDBILAG: TIntegerField;
    adoPosteringIDPOSTERING: TIntegerField;
    adoPosteringIDKLIENT: TIntegerField;
    adoPosteringKONTONR: TIntegerField;
    adoPosteringMVAKODE: TIntegerField;
    adoPosteringTEKST: TStringField;
    adoPosteringKONTAKTNR: TIntegerField;
    Label12: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    adoTekst: TADODataSet;
    adoTekstIDTEKST: TIntegerField;
    adoTekstTEKST: TStringField;
    acSok: TAction;
    TBXItem3: TTBXItem;
    lblDKonto: TLabel;
    adoKonto: TADODataSet;
    dspKonto: TDataSetProvider;
    cdsKonto: TClientDataSet;
    cdsKontoKONTONR: TIntegerField;
    cdsKontoNAVN: TStringField;
    cdsKontoMVAKODE: TIntegerField;
    cdsKontoKTYPE: TIntegerField;
    acLagreBilag: TAction;
    Label19: TLabel;
    lblDMva: TLabel;
    editFakturanr: TEdit;
    Label20: TLabel;
    lblKKonto: TLabel;
    Panel5: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label17: TLabel;
    lblKMva: TLabel;
    adoPosteringFAKTURANR: TStringField;
    cdsPosteringFAKTURANR: TStringField;
    cdsPosteringDK: TStringField;
    cdsPosteringMVATEKST: TStringField;
    cdsPosteringKONTONAVN: TStringField;
    cdsPosteringKONTAKT: TStringField;
    adoMvaKonto: TADODataSet;
    adoMvaKontoMVAKODE: TIntegerField;
    adoMvaKontoBESKRIVELSE: TStringField;
    adoMvaKontoSATS: TFloatField;
    adoMvaKontoKONTONR: TIntegerField;
    lblDSaldo: TLabel;
    lblKSaldo: TLabel;
    acPosteringTekst: TAction;
    acEndreNummer: TAction;
    lblDSum: TLabel;
    lblKSum: TLabel;
    lblDiff: TLabel;
    ImageList24: TImageList;
    acSlettPost: TAction;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    adoBilagDATO: TDateField;
    cdsBilagDATO: TDateField;
    acFirst: TDataSetFirst;
    acPrior: TDataSetPrior;
    acNext: TDataSetNext;
    acLast: TDataSetLast;
    TBXSeparatorItem4: TTBXSeparatorItem;
    TBXItem6: TTBXItem;
    TBXItem7: TTBXItem;
    TBXItem8: TTBXItem;
    TBXItem9: TTBXItem;
    dsMaster: TDataSource;
    dtDato: TJvDateEdit;
    editTekstId: TblsAlignEdit;
    adoPosteringIDTEKST: TIntegerField;
    adoPosteringFORFALL: TDateField;
    cdsPosteringIDTEKST: TIntegerField;
    cdsPosteringFORFALL: TDateField;
    editForfall: TJvDateEdit;
    Label14: TLabel;
    adoBilagSYSID: TIntegerField;
    cdsBilagSYSID: TIntegerField;
    spSaldo: TADOStoredProc;
    spSaldoSALDO: TBCDField;
    acKontoOppslag: TAction;
    TBXItem10: TTBXItem;
    dblSerie: TDBLookupComboBox;
    lblSerie: TLabel;
    adoBilagSerie: TADODataSet;
    dsBilagSerie: TDataSource;
    adoBilagIDBILAGSERIE: TIntegerField;
    cdsBilagIDBILAGSERIE: TIntegerField;
    popGrid: TTBXPopupMenu;
    acInvert: TAction;
    TBXItem11: TTBXItem;
    TBXItem12: TTBXItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    adoPosteringBELOP: TBCDField;
    cdsPosteringBELOP: TBCDField;
    adoBilagDOKUMENT: TStringField;
    cdsBilagDOKUMENT: TStringField;
    dbeDokument: TDBEdit;
    btnOpen: TBitBtn;
    acOpenDok: TAction;
    cdsBilagDOKUMENTCALC: TStringField;
    popDokument: TTBXPopupMenu;
    acSlettDok: TAction;
    TBXItem13: TTBXItem;
    acVisDokFelt: TAction;
    TBXItem14: TTBXItem;
    procedure acHurtigRegExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsPosteringNewRecord(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure dsBilagDataChange(Sender: TObject; Field: TField);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure editDKontoExit(Sender: TObject);
    procedure editDMvaExit(Sender: TObject);
    procedure editKKontoExit(Sender: TObject);
    procedure editKMvaExit(Sender: TObject);
    procedure editTekstExit(Sender: TObject);
    procedure editTekstKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editFakturanrExit(Sender: TObject);
    procedure editBelopExit(Sender: TObject);
    procedure acLagreBilagExecute(Sender: TObject);
    procedure cdsPosteringCalcFields(DataSet: TDataSet);
    procedure adoMvaKontoBeforeOpen(DataSet: TDataSet);
    procedure dbgPosteringShowCellHint(Sender: TObject; Field: TField;
      var AHint: String; var ATimeOut: Integer);
    procedure acPosteringTekstExecute(Sender: TObject);
    procedure dsPosteringDataChange(Sender: TObject; Field: TField);
    procedure acNyttBilagExecute(Sender: TObject);
    procedure acSlettPostExecute(Sender: TObject);
    procedure dbgPosteringEnter(Sender: TObject);
    procedure dbgPosteringExit(Sender: TObject);
    procedure acSokExecute(Sender: TObject);
    procedure acEndreNummerExecute(Sender: TObject);
    procedure dsMasterDataChange(Sender: TObject; Field: TField);
    procedure dtDatoInvalidDate(Sender: TObject; const DateString: String;
      var NewDate: TDateTime; var Accept: Boolean);
    procedure dtDatoExit(Sender: TObject);
    procedure editTekstIdExit(Sender: TObject);
    procedure editForfallInvalidDate(Sender: TObject;
      const DateString: String; var NewDate: TDateTime;
      var Accept: Boolean);
    procedure editForfallExit(Sender: TObject);
    procedure editFakturanrKeyPress(Sender: TObject; var Key: Char);
    procedure spSaldoBeforeOpen(DataSet: TDataSet);
    procedure acKontoOppslagExecute(Sender: TObject);
    procedure cdsBilagIDBILAGSERIEChange(Sender: TField);
    procedure acInvertExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acOpenDokExecute(Sender: TObject);
    procedure cdsBilagCalcFields(DataSet: TDataSet);
    procedure acSlettDokExecute(Sender: TObject);
    procedure acVisDokFeltExecute(Sender: TObject);
  private
    { Private declarations }
    Post: TPostering;
    DoSum: Boolean;
    SisteFakturanr: String;
    BrukSerier: Boolean;
    procedure SettInnBilagData;
    function FinnKonto(SokStr: String): Boolean;
    function LagrePostering(Post: TPostering): Boolean;
    function SettMvaKode(Kode: Integer; ErDebet: Boolean): Boolean;
    function HentMvaKode(Kontonr: Integer; KontoType: TKontoType): Integer;
    procedure VisKontoInfo(Konto: TKonto; ErDebet: Boolean);
    function SettKontoNummer(ErDebet: Boolean): Boolean;
    procedure NullStillHurtigReg;
    procedure PostKonto(Konto: TKonto; ErDebet: Boolean);
    function SjekkSystemKonto: Boolean;
    procedure NullStillLabels;
    procedure SummerBilag;
    function SokBilagTekst: String;
    function SokBilagKonto(Tekst: String): String;
    function SokMvaKode: String;
    procedure OppdaterPeriodeStatus;
    function ErGyldigBilag: Boolean;
    function HentSaldo(Kontonr: Integer): String;
    function SokBilagTekstId: Integer;
    procedure BilagsSperre(Sperret: Boolean);
    function FinnKontoAntall(Str: String): Integer;
  public
    { Public declarations }
    NyttBilag: Boolean;
  end;

var
  frmBilag: TfrmBilag;

implementation

uses rsData, blsRegistry, DateUtils, JclStrings, rsBilagTekst, blsDialogs,
  rsBilagKontoSok, rsEndreBilagnr, rsMvaSok, rsKontoOppslag, blsMisc,
  rsFunction;

{$R *.dfm}

{ TPostering }

constructor TPostering.Create;
begin
  Debet := TKonto.Create;
  Debet.Clear;
  Kredit := TKonto.Create;
  Kredit.Clear;
end;

destructor TPostering.Destroy;
begin
  inherited;
  Debet.Free;
  Kredit.Free;
end;

procedure TPostering.Clear;
begin
  Debet.Clear;
  Kredit.Clear;
  Tekst := '';
  Fakturanr := '';
  TekstId := -1;
  Belop := 0.00;
end;

{ TKonto }

function TKonto.IsEmpty: Boolean;
begin
  Result := Kontonr <= 0;
end;

procedure TKonto.Clear;
begin
  Kontonr := 0;
  Navn := '';
  KontoType := ktUkjent;
  MvaKode := -1;
  MvaTekst := '';
end;

procedure TKonto.SetKonto(aNr: Integer; aNavn: String;
  aKontoType: TKontoType);
begin
  Kontonr := aNr;
  Navn := aNavn;
  KontoType := aKontoType;
end;

procedure TKonto.SetMva(aMvaKode: Integer; aMvaTekst: String);
begin
  MvaKode := aMvaKode;
  MvaTekst := aMvaTekst
end;

procedure TKonto.SetVerdier(aNr: Integer; aNavn: String;
  aKontoType: TKontoType; aMvaKode: Integer; aMvaTekst: String);
begin
  Kontonr := aNr;
  Navn := aNavn;
  KontoType := aKontoType;
  MvaKode := aMvaKode;
  MvaTekst := aMvaTekst;
end;

{ TfrmBilag }

procedure TfrmBilag.acHurtigRegExecute(Sender: TObject);
begin
  SetUserBool(RegPath, 'BilagHurtigReg', acHurtigReg.Checked);
  pnlHurtigReg.Visible := acHurtigReg.Checked;
end;

procedure TfrmBilag.SettInnBilagData;
begin
  if NyttBilag then begin
    cdsBilag.Edit;
    //cdsBilagPERIODENR.Value := MonthOf(Date);  //Flyttet til onNewRecord
    //cdsBilagAAR.Value := YearOf(Date);
    cdsBilagDATO.Value := Date;
    dtDato.Date := Date;
    cdsBilag.Post;
  end;
end;

function TfrmBilag.SjekkSystemKonto: Boolean;
begin
  Result := False;
  if not adoMvaKonto.Active then Exit;

  adoMvaKonto.First;
  while not adoMvaKonto.Eof do begin
    if not adoMvaKontoKONTONR.IsNull then begin
      Result := True;
      Break;
    end;
    adoMvaKonto.Next;
  end;
end;

procedure TfrmBilag.FormShow(Sender: TObject);
begin
  if NyttBilag then begin
    acFirst.Visible := False;
    acNext.Visible := False;
    acPrior.Visible := False;
    acLast.Visible := False;
  end;

  acHurtigReg.Checked := GetUserBool(RegPath, 'BilagHurtigReg', True);
  pnlHurtigReg.Visible := acHurtigReg.Checked;
  NullStillLabels;
  SettInnBilagData;
  SummerBilag;
  BilagsSperre(cdsBilagGODKJENT.Value = 1);
  if SjekkSystemKonto = False then
    blsDialogs.InfoDialog('Systemkonto', 'Det er ikke spesifisert noen systemkontoer ' +
      'for de ulike Mva-kodene!' + #13#10 + 'Dette kan settes under firmainfo for aktivt firma.');

  if not GetUserBool(RegPath, 'BilagVisDokFelt', True) then
    acVisDokFelt.Execute;
end;

procedure TfrmBilag.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult <> mrOK then begin
    if cdsBilag.Active then    //Gjør det mulig å gå ut hvis feil har oppstått.
      cdsBilag.CancelUpdates;
    if cdsPostering.Active then   //Gjør det mulig å gå ut hvis feil har oppstått.
      cdsPostering.CancelUpdates;
  end;
end;

procedure TfrmBilag.FormCreate(Sender: TObject);
begin
  DoSum := True;
  NyttBilag := False;
  Post := TPostering.Create;
  adoTekst.Open;
  adoMvaKonto.Open;
  //Åpner kontolista som brukes for oppslag
  adoKonto.Parameters.ParamValues['IdKlient1'] := Dm.g_KlientID;
  adoKonto.Parameters.ParamValues['IdKlient2'] := Dm.g_KlientID;
  cdsKonto.Open;
  Dm.adoKlient.Open;
  Dm.cdsPeriode.Open;

  adoBilag.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoBilag.Parameters.ParamValues['IdBilag'] := Dm.cdsBilagIDBILAG.Value;
  cdsBilag.Open;
  dtDato.Date := cdsBilagDATO.Value;
  cdsPostering.Open;

  BrukSerier := Dm.adoKlientBILAGSERIER.Value = 1;
  if BrukSerier then begin
    lblSerie.Visible := True;
    dblSerie.Visible := True;
    adoBilagSerie.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
    adoBilagSerie.Open;
  end;
end;

procedure TfrmBilag.FormDestroy(Sender: TObject);
begin
  Post.Free;
  adoTekst.Close;
  cdsPostering.Close;
  cdsBilag.Close;
  cdsKonto.Close;
  adoMvaKonto.Open;
  Dm.cdsPeriode.Close;
  Dm.adoKlient.Close;
end;

procedure TfrmBilag.cdsPosteringNewRecord(DataSet: TDataSet);
begin
  cdsPosteringIDKLIENT.Value := Dm.g_KlientID;
  //cdsPosteringIDPOSTERING.Value := cdsPostering.RecordCount;
  Dm.spPostID.Open;
  cdsPosteringIDPOSTERING.Value := Dm.spPostIDIDPOSTERING.Value;
  Dm.spPostID.Close;
end;

function TfrmBilag.ErGyldigBilag: Boolean;
begin
  if cdsPostering.RecordCount = 0 then begin
    Result := False;
    blsDialogs.InfoDialog('Ingen data', 'Bilaget inneholder ingen data og kan ikke lagres!');
  end
  else
    Result := True;
end;

procedure TfrmBilag.btnOKClick(Sender: TObject);
begin
  if ErGyldigBilag then begin
    cdsBilag.ApplyUpdates(-1);
    cdsPostering.ApplyUpdates(-1);
    ModalResult := mrOk;
  end;
end;

procedure TfrmBilag.OppdaterPeriodeStatus;
begin
  if Dm.ErPeriodeLukket(cdsBilagPERIODENR.Value, cdsBilagAAR.Value) then begin
    editPeriode.Color := clRed;
    editAar.Color := clRed;
    btnOk.Enabled := False;
    acNyttBilag.Enabled := False;
  end
  else begin
    if MonthOf(cdsBilagDATO.Value) <> cdsBilagPERIODENR.Value then
      editPeriode.Color := clYellow
    else
      editPeriode.Color := clWindow;
    if YearOf(cdsBilagDATO.Value) <> cdsBilagAAR.Value then
      editAar.Color := clYellow
    else
      editAar.Color := clWindow;

    btnOk.Enabled := (lblDiff.Caption = FormatFloat('#,##0.00', 0));
    acNyttBilag.Enabled := True;
  end;
end;

procedure TfrmBilag.dsBilagDataChange(Sender: TObject; Field: TField);
begin
  if Field = nil then Exit;

  if (Field.FieldName = 'DATO') or (Field.FieldName = 'AAR') or
     (Field.FieldName = 'PERIODENR') then begin
    OppdaterPeriodeStatus;
  end;
end;

procedure TfrmBilag.PostKonto(Konto: TKonto; ErDebet: Boolean);
var Mva, Amount: Double;
    MK, MvaKonto: Integer;
begin
  Mva := 0;
  cdsPostering.Append;
  if Konto.KontoType = ktKunde then begin
    cdsPosteringKONTONR.Value := Dm.adoKlientKONTOKUNDE.Value;
    cdsPosteringKONTAKTNR.Value := Konto.Kontonr;
    cdsPosteringMVAKODE.Value := HentMvaKode(cdsPosteringKONTONR.Value, ktKunde);
    if Post.Forfall > 0 then
      cdsPosteringFORFALL.Value := Post.Forfall;
  end
  else if Konto.KontoType = ktLeverandor then begin
    cdsPosteringKONTONR.Value := Dm.adoKlientKONTOLEVERANDOR.Value;
    cdsPosteringKONTAKTNR.Value := Konto.Kontonr;
    cdsPosteringMVAKODE.Value := HentMvaKode(cdsPosteringKONTONR.Value, ktLeverandor);
    if Post.Forfall > 0 then
      cdsPosteringFORFALL.Value := Post.Forfall;
  end
  else if Konto.KontoType = ktKonto then begin
    cdsPosteringKONTONR.Value := Konto.Kontonr;
    cdsPosteringMVAKODE.Value := Konto.MvaKode;
  end;

  if Post.TekstId > -1 then
    cdsPosteringIDTEKST.Value := Post.TekstId;
  cdsPosteringTEKST.Value := Post.Tekst;
  if Post.Fakturanr <> '' then
    cdsPosteringFAKTURANR.Value := Post.Fakturanr;
  if not cdsPosteringMVAKODE.IsNull then begin
    if adoMvaKonto.Locate('MVAKODE', cdsPosteringMVAKODE.Value, []) then begin
      if (adoMvaKontoSATS.Value > 0) and (Post.Belop <> 0) then begin
        if adoMvaKontoSATS.Value = 100 then //direktemva - ingen ekstra mva-postering
          Mva := 0
        else
          Mva := Post.Belop - (Post.Belop / (1 + (adoMvaKontoSATS.Value / 100)));

        Amount := Post.Belop - Mva;
        //Amount := Round(Amount * 100) / 100;  //Runder av til 2 desimaler
        cdsPosteringBELOP.Value := AvrundBelop(Amount);
      end
      else
        cdsPosteringBELOP.Value := Post.Belop;
    end;
  end
  else
    cdsPosteringBELOP.Value := Post.Belop;
  if not ErDebet then
    cdsPosteringBelop.Value := cdsPosteringBelop.Value * -1;
  cdsPostering.Post;

  MK := cdsPosteringMVAKODE.Value;
  if (Mva <> 0) and (adoMvaKonto.Locate('MVAKODE', MK, [])) then begin
    if not adoMvaKontoKONTONR.IsNull then begin
      MvaKonto := adoMvaKontoKONTONR.Value; //Lagres fordi recorden flyttes i calcrecord ved cdsPostering.Append;
      cdsPostering.Append;
      cdsPosteringKONTONR.Value := MvaKonto;
      cdsPosteringBELOP.Value := AvrundBelop(Mva);
      if Post.TekstId > -1 then
        cdsPosteringIDTEKST.Value := Post.TekstId;
      cdsPosteringTEKST.Value := Post.Tekst;
      if Post.Fakturanr <> '' then
        cdsPosteringFAKTURANR.Value := Post.Fakturanr;
      if not ErDebet then
        cdsPosteringBelop.Value := cdsPosteringBelop.Value * -1;
      cdsPostering.Post;
    end;
  end;
 
end;


function TfrmBilag.LagrePostering(Post: TPostering): Boolean;
begin
  Result := True;
  if not Post.Debet.IsEmpty then
    PostKonto(Post.Debet, True);
  if not Post.Kredit.IsEmpty then
    PostKonto(Post.Kredit, False);
  Post.Clear;
end;

procedure TfrmBilag.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if ActiveControl = dbgPostering then Exit;

  if Ord(Key) = VK_RETURN then begin
    Key := #0;
    if HiWord(GetKeyState(VK_SHIFT)) = 0 then
      Perform(WM_NEXTDLGCTL, 0, 0)
    else
      Perform(WM_NEXTDLGCTL, -1, 0)
  end;
end;

function TfrmBilag.FinnKontoAntall(Str: String): Integer;
var
  Sql: String;
begin
  Sql := 'select count(*) from KONTOSOK where UPPER(NAVN) starting with ' +
         QuotedStr(AnsiUpperCase(Str)) + ' and IDKLIENT = ' + IntToStr(Dm.g_KlientID);
  Dm.adoData.CommandText := Sql;
  Dm.adoData.Open;
  Result := Dm.adoData.FieldByName('COUNT').AsInteger;
  Dm.adoData.Close;
  Dm.adoData.CommandText := '';
end;

function TfrmBilag.FinnKonto(SokStr: String): Boolean;
var
  Kontonr: String;
begin
  if StrIsDigit(SokStr) then
    Result := cdsKonto.Locate('KONTONR', SokStr, [])
  else begin
    if FinnKontoAntall(SokStr) > 1 then begin
      Kontonr := SokBilagKonto(SokStr);
      if Kontonr <> '' then
        Result := cdsKonto.Locate('KONTONR', Kontonr, [])
      else
        Result := False;
    end
    else
      Result := cdsKonto.Locate('NAVN', SokStr, [loCaseInsensitive, loPartialKey]);
  end;
end;

function TfrmBilag.SettMvaKode(Kode: Integer; ErDebet: Boolean): Boolean;
begin
  Result := True;
  case ErDebet of
    True: begin
      if adoMvaKonto.Locate('MVAKODE', Kode, []) then
        Post.Debet.SetMva(adoMvaKontoMVAKODE.Value, adoMvaKontoBESKRIVELSE.Value +
          ', ' + FormatFloat('0.0%', adoMvaKontoSATS.Value))
      else begin
        Post.Debet.SetMva(-1, '');
        Result := False;
      end;
      VisKontoInfo(Post.Debet, True);
    end;

    False: begin
      if adoMvaKonto.Locate('MVAKODE', Kode, []) then
        Post.Kredit.SetMva(adoMvaKontoMVAKODE.Value, adoMvaKontoBESKRIVELSE.Value +
          ', ' + FormatFloat('0.0%', adoMvaKontoSATS.Value))
      else begin
        lblKMva.Caption := '';
        Post.Kredit.SetMva(-1, '');
        Result := False;
      end;
      VisKontoInfo(Post.Kredit, False);
    end;
  end;
end;

function TfrmBilag.HentMvaKode(Kontonr: Integer; KontoType: TKontoType): Integer;
begin
  Result := -1;
  if KontoType = ktKonto then begin
    if cdsKonto.Locate('KONTONR', Kontonr, []) then
      Result := cdsKontoMvaKode.Value;
  end
  else if KontoType = ktKunde then begin
    if cdsKonto.Locate('KONTONR', Dm.adoKlientKONTOKUNDE.Value, []) then
      Result := cdsKontoMvaKode.Value
    else
      AlertDialog('Systemkonto', 'Angitt systemkonto for "Kundefordringer" er ikke gyldig!' +
        'Dette kan rettes under firmainformasjon for aktivt firma.');
  end
  else if KontoType = ktLeverandor then begin
    if cdsKonto.Locate('KONTONR', Dm.adoKlientKONTOLEVERANDOR.Value, []) then
      Result := cdsKontoMvaKode.Value
    else
      AlertDialog('Systemkonto', 'Angitt systemkonto for "Leverandørgjeld" er ikke gyldig!' +
        'Dette kan rettes under firmainformasjon for aktivt firma.');
  end
  else
    Result := -1;
end;

function TfrmBilag.HentSaldo(Kontonr: Integer): String;
begin
  Result := '';
  spSaldo.Parameters.ParamValues['KONTONR'] := Kontonr;
  spSaldo.Open;
  Result := FormatFloat('#,##0.00', spSaldoSALDO.Value);
  spSaldo.Close;
end;

procedure TfrmBilag.VisKontoInfo(Konto: TKonto; ErDebet: Boolean);
begin
  case ErDebet of
    True: begin
      lblDKonto.Caption := Konto.Navn;
      lblDMva.Caption := Konto.MvaTekst;
      if Konto.Navn <> '' then
        lblDSaldo.Caption := HentSaldo(Konto.Kontonr) //'0,00'
      else
        lblDSaldo.Caption := ''
    end;

    False: begin
      lblKKonto.Caption := Konto.Navn;
      lblKMva.Caption := Konto.MvaTekst;
      if Konto.Navn <> '' then
        lblKSaldo.Caption := HentSaldo(Konto.Kontonr) //'0,00'
      else
        lblKSaldo.Caption := ''
    end;
  end;
end;

procedure TfrmBilag.NullStillLabels;
begin
  lblDKonto.Caption := '';
  lblDMva.Caption := '';
  lblDSaldo.Caption := '';
  lblKKonto.Caption := '';
  lblKMva.Caption := '';
  lblKSaldo.Caption := '';
end;

function TfrmBilag.SettKontoNummer(ErDebet: Boolean): Boolean;
var I: Integer;
begin
  Result := True;

  if ErDebet then begin
    if FinnKonto(editDKonto.Text) then begin
      editDKonto.Text := cdsKontoKONTONR.AsString;
      Post.Debet.SetKonto(cdsKontoKONTONR.Value, cdsKontoNAVN.Value,
        TKontoType(cdsKontoKTYPE.Value));
      I := HentMvaKode(Post.Debet.Kontonr, Post.Debet.KontoType);
      if I > -1 then begin
        editDMva.AsInteger := I;
        SettMvaKode(I, True);
      end
      else //Hvis ikke SettMvaKode kjøres må VisKontoInfo kalles ...
        VisKontoInfo(Post.Debet, True);
    end
    else begin //Søket feilet, så fokus blir værende...
      Post.Debet.Clear;
      VisKontoInfo(Post.Debet, True);
      Result := False;
    end;
  end

  else begin
    if FinnKonto(editKKonto.Text) then begin
      editKKonto.Text := cdsKontoKONTONR.AsString;
      Post.Kredit.SetKonto(cdsKontoKONTONR.Value, cdsKontoNAVN.Value,
        TKontoType(cdsKontoKTYPE.Value));
      I := HentMvaKode(Post.Kredit.Kontonr, Post.Kredit.KontoType);
      if I > -1 then begin
        editKMva.AsInteger := I;
        SettMvaKode(I, False);
      end
      else //Hvis ikke SettMvaKode kjøres må VisKontoInfo kalles ...
        VisKontoInfo(Post.Kredit, False);
    end
    else begin //Søket feilet, så fokus blir værende...
      Post.Kredit.Clear;
      VisKontoInfo(Post.Kredit, False);
      Result := False;
    end;
  end;
end;

procedure TfrmBilag.editDKontoExit(Sender: TObject);
begin
  if Trim(editDKonto.Text) = '' then begin
    Post.Debet.SetKonto(0, '', ktUkjent);
    VisKontoInfo(Post.Debet, True);
    Exit;
  end;
  if not SettKontoNummer(True) then
    editDKonto.SetFocus;
end;

procedure TfrmBilag.editKKontoExit(Sender: TObject);
begin
  if Trim(editKKonto.Text) = '' then begin
    Post.Kredit.SetKonto(0, '', ktUkjent);
    VisKontoInfo(Post.Kredit, False);
    Exit;
  end;

  if not SettKontoNummer(False) then
    editKKonto.SetFocus;
end;

procedure TfrmBilag.editDMvaExit(Sender: TObject);
begin
  if editDMva.Text = '' then begin
    Post.Debet.SetMva(-1, '');
    VisKontoInfo(Post.Debet, True);
    Exit;
  end;
  if not SettMvaKode(editDMva.AsInteger, True) then
    editDMva.SetFocus;
end;

procedure TfrmBilag.editKMvaExit(Sender: TObject);
begin
  if editKMva.Text = '' then begin
    Post.Kredit.SetMva(-1, '');
    VisKontoInfo(Post.Kredit, False);
    Exit;
  end;
  if not SettMvaKode(editKMva.AsInteger, False) then
    editKMva.SetFocus;
end;

procedure TfrmBilag.editTekstExit(Sender: TObject);
begin
  if StrIsDigit(editTekst.Text) then
    if adoTekst.Locate('IDTEKST', StrToIntDef(editTekst.Text, -1), []) then
      editTekst.Text := adoTekstTEKST.Value;
  if editTekstID.Text <> '' then
    Post.TekstId := editTekstID.AsInteger;
  Post.Tekst := editTekst.Text;
end;

procedure TfrmBilag.editTekstKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_SPACE then begin
    if (StrIsDigit(editTekst.Text)) and
        adoTekst.Locate('IDTEKST', StrToIntDef(editTekst.Text, -1), []) then begin
      editTekst.Text := adoTekstTEKST.Value;
      editTekst.SelStart := Length(editTekst.Text);
    end;
  end;
end;

procedure TfrmBilag.editFakturanrExit(Sender: TObject);
begin
  Post.Fakturanr := editFakturanr.Text;
  if editFakturanr.Text <> '' then
    SisteFakturanr := editFakturanr.Text;
end;

procedure TfrmBilag.editBelopExit(Sender: TObject);
begin
  Post.Belop := editBelop.AsFloat;
end;

procedure TfrmBilag.NullStillHurtigReg;
begin
  editDKonto.Text := '';
  editDMva.Text := '';
  editKKonto.Text := '';
  editKMva.Text := '';
  editTekst.Text := '';
  editFakturanr.Text := '';
  editBelop.AsFloat := 0;
  editForfall.Clear;
  editTekstId.Text := '';

  VisKontoInfo(Post.Debet, True);
  VisKontoInfo(Post.Kredit, False);
end;

procedure TfrmBilag.acLagreBilagExecute(Sender: TObject);
begin
  DoSum := False;
  btnLagre.SetFocus; //Sikrer at alle editExit prosedyrene kjøres...
  if LagrePostering(Post) then begin
    NullStillHurtigReg;
    editDKonto.SetFocus;
  end;
  SummerBilag;
  DoSum := True;
end;

procedure TfrmBilag.cdsPosteringCalcFields(DataSet: TDataSet);
begin
  if cdsPosteringBELOP.Value < 0 then
    cdsPosteringDK.Value := 'K'
  else if cdsPosteringBELOP.Value > 0 then
    cdsPosteringDK.Value := 'D'
  else if cdsPosteringBELOP.Value = 0 then
    cdsPosteringDK.Value := '';

  if (not cdsPosteringMVAKODE.IsNull) and
    (adoMvaKonto.Locate('MVAKODE', cdsPosteringMVAKODE.Value, [])) then
    cdsPosteringMVATEKST.Value := FormatFloat('0%', adoMvaKontoSATS.Value) + ' - ' + adoMvaKontoBESKRIVELSE.Value
  else
    cdsPosteringMVATEKST.Value := '';

  if cdsKonto.Locate('KONTONR', cdsPosteringKONTONR.Value, []) then
    cdsPosteringKONTONAVN.Value := cdsKontoNAVN.Value
  else
    cdsPosteringKONTONAVN.Value := '';

  if cdsKonto.Locate('KONTONR', cdsPosteringKONTAKTNR.Value, []) then
    cdsPosteringKONTAKT.Value := cdsKontoNAVN.Value
  else
    cdsPosteringKONTAKT.Value := '';
end;

procedure TfrmBilag.adoMvaKontoBeforeOpen(DataSet: TDataSet);
begin
  adoMvaKonto.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
end;

procedure TfrmBilag.dbgPosteringShowCellHint(Sender: TObject;
  Field: TField; var AHint: String; var ATimeOut: Integer);
begin
  if Field.FieldName = 'MVAKODE' then begin
    if Dm.cdsMva.Locate('MVAKODE', Field.Value, []) then
      AHint := Dm.cdsMvaBESKRIVELSE.Value;
  end;
end;

procedure TfrmBilag.acPosteringTekstExecute(Sender: TObject);
begin
  frmBilagTekst := TfrmBilagTekst.Create(Application);
  if frmBilagTekst.ShowModal = mrOk then begin
    if editTekst.Text = '' then
      editTekst.Text := frmBilagTekst.cdsTekstTEKST.Value;
  end;
  frmBilagTekst.Release;
end;

procedure TfrmBilag.SummerBilag;
var Id: Integer;
    Diff, Kredit, Debet: Double;
begin
  cdsPostering.DisableControls;
  Id := cdsPosteringIDPOSTERING.Value;

  Kredit := 0;
  Debet := 0;
  cdsPostering.First;
  while not cdsPostering.Eof do begin
    if cdsPosteringBELOP.Value < 0 then
      Kredit := Kredit + cdsPosteringBELOP.Value
    else if cdsPosteringBELOP.Value > 0 then
      Debet := Debet + cdsPosteringBELOP.Value;
    cdsPostering.Next;
  end;
  Diff := Debet + Kredit;

  cdsPostering.Locate('IDPOSTERING', Id, []);
  cdsPostering.EnableControls;

  lblDSum.Caption := FormatFloat('#,##0.00', Debet);
  lblKSum.Caption := FormatFloat('#,##0.00', Kredit);
  lblDiff.Caption := FormatFloat('#,##0.00', Diff);

  btnOK.Enabled := (Round(Diff * 100))/100 = 0;
  acNyttBilag.Enabled := btnOK.Enabled;
end;

procedure TfrmBilag.dsPosteringDataChange(Sender: TObject; Field: TField);
begin
  if DoSum and (Field <> nil) and
    (Field.FieldName = 'BELOP') then
      SummerBilag; 
end;

procedure TfrmBilag.acNyttBilagExecute(Sender: TObject);
var Dato: TDate;
    Aar, Periode, IdSerie: Integer;
begin
  if not ErGyldigBilag then
    Exit;

  Dato := cdsBilagDATO.AsDateTime;
  Aar := cdsBilagAAR.AsInteger;
  Periode := cdsBilagPERIODENR.AsInteger;
  IdSerie := cdsBilagIDBILAGSERIE.AsInteger;

  if cdsBilag.State in [dsEdit, dsInsert] then
    cdsBilag.Post;
  if cdsPostering.State in [dsEdit, dsInsert] then
    cdsPostering.Post;
  cdsBilag.ApplyUpdates(-1);
  cdsPostering.ApplyUpdates(-1);
  Dm.cdsBilag.RefreshRecord;  //Oppdaterer grid i bakgrunnen.

  Dm.cdsBilag.Insert;
  Dm.cdsBilag.Post;
  Dm.cdsBilag.ApplyUpdates(-1);
  adoBilag.Parameters.ParamValues['IdBilag'] := Dm.cdsBilagIDBILAG.Value;
  cdsBilag.Refresh;

  cdsBilag.Edit;
  cdsBilagDATO.Value := Dato;
  dtDato.Date := Dato;
  cdsBilagAAR.Value := Aar;
  cdsBilagPERIODENR.Value := Periode;
  if BrukSerier then begin
    if IdSerie > 0 then
      cdsBilagIDBILAGSERIE.Value := IdSerie;
  end;

  cdsBilag.Post;

  SummerBilag;
  dtDato.SetFocus;
end;

procedure TfrmBilag.acOpenDokExecute(Sender: TObject);
begin
  dmFunction.LinkBilagDok(cdsBilag, False);
end;

procedure TfrmBilag.acSlettDokExecute(Sender: TObject);
begin
  dmFunction.SlettBilagDok(cdsBilag, False);
end;

procedure TfrmBilag.acSlettPostExecute(Sender: TObject);
begin
  if cdsPostering.RecordCount = 0 then Exit;

  if blsDialogs.ConfirmDialog('Bekreft', 'Er du sikker på at du vil slette valgt postering?') then begin
    cdsPostering.Delete;
    SummerBilag;
  end;
end;

procedure TfrmBilag.dbgPosteringEnter(Sender: TObject);
begin
  acSlettPost.Enabled := True;
end;

procedure TfrmBilag.dbgPosteringExit(Sender: TObject);
begin
  acSlettPost.Enabled := False;
end;

function TfrmBilag.SokBilagTekst: String;
begin
  Result := '';
  frmBilagTekst := TfrmBilagTekst.Create(Application);
  if frmBilagTekst.ShowModal = mrOK then
      Result := frmBilagTekst.cdsTekstTEKST.Value;
  frmBilagTekst.Release;
end;

function TfrmBilag.SokBilagTekstId: Integer;
begin
  Result := -1;
  frmBilagTekst := TfrmBilagTekst.Create(Application);
  if frmBilagTekst.ShowModal = mrOK then
      Result := frmBilagTekst.cdsTekstIDTEKST.Value;
  frmBilagTekst.Release;
end;

function TfrmBilag.SokBilagKonto(Tekst: String): String;
begin
  Result := '';
  frmBilagKontoSok := TfrmBilagKontoSok.Create(Application);
  frmBilagKontoSok.editSok.Text := Tekst;
  if frmBilagKontoSok.ShowModal = mrOK then begin
    Result := frmBilagKontoSok.cdsSokKONTONR.AsString;
    cdsKonto.Refresh;
  end;
  frmBilagKontoSok.Release;
end;

function TfrmBilag.SokMvaKode: String;
begin
  Result := '';
  frmMvaSok := TfrmMvaSok.Create(Application);
  if frmMvaSok.ShowModal = mrOK then
    Result := frmMvaSok.cdsMvaMVAKODE.AsString;
  frmMvaSok.Release;
end;

procedure TfrmBilag.acSokExecute(Sender: TObject);
var Sok: String;
    Id: Integer;
begin
  if ActiveControl = editTekst then begin
    Sok := SokBilagTekst;
    if Sok <> '' then
      editTekst.Text := Sok;
  end

  else if ActiveControl = editTekstId then begin
    Id := SokBilagTekstId;
    if Id <> -1 then
      editTekstId.AsInteger := Id;
  end

  else if ActiveControl = editDKonto then begin
    Sok := SokBilagKonto(editDKonto.Text);
    if Sok <> '' then
      editDKonto.Text := Sok;
  end

  else if ActiveControl = editKKonto then begin
    Sok := SokBilagKonto(editKKonto.Text);
    if Sok <> '' then
      editKKonto.Text := Sok;
  end

  else if ActiveControl = editKMva then begin
    Sok := SokMvaKode;
    if Sok <> '' then
      editKMva.Text := Sok;
  end

  else if ActiveControl = editDMva then begin
    Sok := SokMvaKode;
    if Sok <> '' then
      editDMva.Text := Sok;
  end

  else SokBilagKonto('');
end;

procedure TfrmBilag.acVisDokFeltExecute(Sender: TObject);
begin
  if acVisDokFelt.Checked then begin
    dbeDokument.Visible := True;
    btnOpen.Visible := True;
  end
  else begin
    dbeDokument.Visible := False;
    btnOpen.Visible := False;
  end;
  SetUserBool(RegPath, 'BilagVisDokFelt', acVisDokFelt.Checked);
end;

procedure TfrmBilag.acEndreNummerExecute(Sender: TObject);
begin
  if Dm.HarAdminTilgang = False then Exit;

  frmEndreBilagnr := TfrmEndreBilagnr.Create(Application);
  frmEndreBilagnr.BilagAar := editAar.AsInteger;
  if frmEndreBilagnr.ShowModal = mrOK then begin
    cdsBilag.Edit;
    cdsBilagBILAGNR.Value := frmEndreBilagnr.editNo.AsInteger;
    cdsBilag.Post;
    cdsBilag.ApplyUpdates(0);
  end;
  frmEndreBilagnr.Release;
end;

procedure TfrmBilag.BilagsSperre(Sperret: Boolean);
begin
  gbHeader.Enabled := not Sperret;
  pcHurtigReg.Enabled := not Sperret;
  dbgPostering.Enabled := not Sperret;
  acEndreNummer.Enabled := not Sperret;

  acNyttBilag.Enabled := not Sperret;
  acSok.Enabled := not Sperret;
  acPosteringTekst.Enabled := not Sperret;
  acLagreBilag.Enabled := not Sperret;
  acEndreNummer.Enabled := not Sperret;
  acInvert.Enabled := not Sperret;
  acKontoOppslag.Enabled := not Sperret;
  acSlettPost.Enabled := not Sperret;
end;

procedure TfrmBilag.dsMasterDataChange(Sender: TObject; Field: TField);
begin
  if (cdsBilag.Active) and (Field = nil) then begin
    cdsBilag.ApplyUpdates(-1);
    adoBilag.Parameters.ParamValues['IdBilag'] := Dm.cdsBilagIDBILAG.Value;
    cdsBilag.Refresh;
    SummerBilag;
    dtDato.Date := cdsBilagDATO.Value;
    BilagsSperre(cdsBilagGODKJENT.Value = 1);
  end;
end;

procedure TfrmBilag.dtDatoInvalidDate(Sender: TObject;
  const DateString: String; var NewDate: TDateTime; var Accept: Boolean);
begin
  NewDate := Date;
  cdsBilag.Edit;
  cdsBilagDATO.Value := Date;
  Accept := True;
end;

procedure TfrmBilag.dtDatoExit(Sender: TObject);
begin
  cdsBilag.Edit;
  cdsBilagDATO.Value := dtDato.Date;
end;

procedure TfrmBilag.editTekstIdExit(Sender: TObject);
begin
  if editTekstId.Text = '' then begin
    Post.TekstId := -1;
    Exit;
  end;

  if adoTekst.Locate('IDTEKST', editTekstId.AsInteger, []) then begin
    editTekst.Text := adoTekstTEKST.Value;
    Post.TekstId := editTekstId.AsInteger;
  end
  else
    editTekstId.SetFocus;
end;

procedure TfrmBilag.editForfallInvalidDate(Sender: TObject;
  const DateString: String; var NewDate: TDateTime; var Accept: Boolean);
begin
  NewDate := dtDato.Date;
  Accept := True;
end;

procedure TfrmBilag.editForfallExit(Sender: TObject);
begin
  if editForfall.Date = 0 then begin
    if (Post.Debet.KontoType = ktKunde) or
       (Post.Debet.KontoType = ktLeverandor) or
       (Post.Kredit.KontoType = ktKunde) or
       (Post.Kredit.KontoType = ktLeverandor) then
       editForfall.Date := dtDato.Date;
  end;
  Post.Forfall := editForfall.Date;
end;

procedure TfrmBilag.editFakturanrKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = '*' then begin
    editFakturanr.Text := SisteFakturanr;
    Key := #0;
  end;
end;

procedure TfrmBilag.spSaldoBeforeOpen(DataSet: TDataSet);
begin
  spSaldo.Parameters.ParamValues['IDKLIENT'] := Dm.g_KlientID;
  spSaldo.Parameters.ParamValues['AAR'] := editAar.Value;
  spSaldo.Parameters.ParamValues['PERIODE'] := 13 + 1;
end;

procedure TfrmBilag.acKontoOppslagExecute(Sender: TObject);
begin
  frmKontoOppslag := TfrmKontoOppslag.Create(Application);
  frmKontoOppslag.ShowModal;
  frmKontoOppslag.Release;
end;

procedure TfrmBilag.cdsBilagCalcFields(DataSet: TDataSet);
begin
  if cdsBilagDOKUMENT.AsString <> '' then
    cdsBilagDOKUMENTCALC.AsString := Copy(cdsBilagDOKUMENT.AsString, Pos('_', cdsBilagDOKUMENT.AsString) + 1, 50);
end;

procedure TfrmBilag.cdsBilagIDBILAGSERIEChange(Sender: TField);
begin
  if NyttBilag then begin
    cdsBilag.Edit;
    cdsBilagBILAGNR.Value := Dm.NyttBilagSeriennr(editAar.AsInteger, cdsBilagIDBILAGSERIE.Value);
    //cdsBilag.Post;  //Får feilmelding når Post kjøres etterpå...
  end;
end;

procedure TfrmBilag.acInvertExecute(Sender: TObject);
begin
  if cdsPostering.RecordCount = 0 then Exit;

  cdsPostering.Edit;
  cdsPosteringBELOP.Value := cdsPosteringBELOP.Value * -1;
end;

end.
