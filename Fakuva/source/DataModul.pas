unit DataModul;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, Db, DBTables, DBActns, ActnList, Registry, IniFiles, ComCtrls, blsMva;

type
  TDm = class(TDataModule)
    KundeDB: TTable;
    KundeDS: TDataSource;
    FirmaDB: TTable;
    PostDB: TTable;
    FirmaDS: TDataSource;
    VareDS: TDataSource;
    VareDB: TTable;
    KategoriDB: TTable;
    FakturaDB: TTable;
    FakturaDS: TDataSource;
    LeverandorDB: TTable;
    LeverandorDS: TDataSource;
    FakturaDBFakturanr: TFloatField;
    FakturaDBFakturaDato: TDateField;
    FakturaDBForfallsDato: TDateField;
    FakturaDBBetalt: TStringField;
    FakturaDBDRef: TStringField;
    FakturaDBVRef: TStringField;
    FakturaDBStatus: TStringField;
    FakturaDBEks: TCurrencyField;
    FakturaDBRabatt: TCurrencyField;
    FakturaDBMVA: TCurrencyField;
    FakturaDBTotal: TCurrencyField;
    FakturaDBKunde: TStringField;
    KoblingDB: TTable;
    KoblingDS: TDataSource;
    KategoriDBIdKategori: TAutoIncField;
    KategoriDBKategori: TStringField;
    KategoriDS: TDataSource;
    FakturaDBOrdrenr: TStringField;
    FakturaDBPakkenr: TStringField;
    ReferanseDB: TTable;
    ReferanseDS: TDataSource;
    ReferanseDBReferanse: TStringField;
    KoblingDBInfo: TStringField;
    KoblingDBRabatt: TFloatField;
    KoblingDBPris: TCurrencyField;
    FakturaDBKundeadr: TStringField;
    FakturaDBKPostnr: TStringField;
    FakturaDBKPoststed: TStringField;
    FakturaDBPurretekst: TBooleanField;
    LagerDB: TTable;
    LagerDS: TDataSource;
    KoblingDBVarenr: TStringField;
    TBilder: TImageList;
    PostDS: TDataSource;
    KundeDBIdKunde: TAutoIncField;
    KundeDBKundenr: TFloatField;
    KundeDBKunde: TStringField;
    KundeDBAdresse: TStringField;
    KundeDBPostnr: TStringField;
    KundeDBKontaktperson: TStringField;
    KundeDBTelefon: TStringField;
    KundeDBTelefax: TStringField;
    KundeDBMobil: TStringField;
    KundeDBUrl: TStringField;
    KundeDBOrgnr: TStringField;
    KundeDBKundeinfo: TBlobField;
    FirmaDBFirma: TStringField;
    FirmaDBAdresse: TStringField;
    FirmaDBPostnr: TStringField;
    FirmaDBTelefon: TStringField;
    FirmaDBTelefax: TStringField;
    FirmaDBMobil: TStringField;
    FirmaDBEpost: TStringField;
    FirmaDBUrl: TStringField;
    FirmaDBBankkontonr: TStringField;
    FirmaDBPurregebyr: TCurrencyField;
    FirmaDBLogo: TGraphicField;
    FirmaDBFakturanr: TFloatField;
    FirmaDBKundenr: TFloatField;
    FirmaDBVarenr: TFloatField;
    FirmaDBLeverandornr: TFloatField;
    KundeDBPoststed: TStringField;
    FirmaDBPoststed: TStringField;
    LeverandorDBLeverandornr: TFloatField;
    LeverandorDBLeverandor: TStringField;
    LeverandorDBAdresse: TStringField;
    LeverandorDBPostnr: TStringField;
    LeverandorDBKontaktperson: TStringField;
    LeverandorDBTelefon: TStringField;
    LeverandorDBTelefax: TStringField;
    LeverandorDBMobil: TStringField;
    LeverandorDBEpost: TStringField;
    LeverandorDBUrl: TStringField;
    LeverandorDBOrgnr: TStringField;
    LeverandorDBLeverandorinfo: TBlobField;
    LeverandorDBPoststed: TStringField;
    LeverandorDBIdLeverandor: TAutoIncField;
    KundeDBEpost: TStringField;
    Hendelser: TActionList;
    KundeFirst: TDataSetFirst;
    KundeLast: TDataSetLast;
    KundeNext: TDataSetNext;
    KundePrior: TDataSetPrior;
    LeverandorFirst: TDataSetFirst;
    LeverandorNext: TDataSetNext;
    LeverandorPrior: TDataSetPrior;
    LeverandorLast: TDataSetLast;
    KundeCancel: TDataSetCancel;
    LeverandorCancel: TDataSetCancel;
    PostDBPostnr: TStringField;
    PostDBPoststed: TStringField;
    VareFirst: TDataSetFirst;
    VareNext: TDataSetNext;
    VarePrior: TDataSetPrior;
    VareLast: TDataSetLast;
    VareCancel: TDataSetCancel;
    VareDBVarenr: TStringField;
    VareDBVare: TStringField;
    VareDBMerknader: TBlobField;
    VareDBKategori: TStringField;
    VareDBLeverandor: TStringField;
    VareDBInnpris: TCurrencyField;
    VareDBPris: TCurrencyField;
    KategoriFirst: TDataSetFirst;
    KategoriNext: TDataSetNext;
    KategoriPrior: TDataSetPrior;
    KategoriLast: TDataSetLast;
    KategoriCancel: TDataSetCancel;
    KategoriInsert: TDataSetInsert;
    RefFirst: TDataSetFirst;
    RefNext: TDataSetNext;
    RefPrior: TDataSetPrior;
    RefLast: TDataSetLast;
    RefCancel: TDataSetCancel;
    RefInsert: TDataSetInsert;
    KoblingDBInnpris: TCurrencyField;
    FirmaDBKontantnr: TFloatField;
    VareDBIdKategori: TIntegerField;
    VareDBIdLeverandor: TIntegerField;
    FirmaDBFakturaTekst: TBlobField;
    FirmaDBPurreTekst: TBlobField;
    FirmaDBOrgnr: TStringField;
    RefDelete: TDataSetDelete;
    KategoriDelete: TDataSetDelete;
    FakturaDBIdKunde: TIntegerField;
    FakturaDBFakturatekst: TBlobField;
    FakturaDBPurredato: TDateField;
    FakturaDBPurregebyr: TCurrencyField;
    FakturaDBPurretotal: TCurrencyField;
    KoblingDBSumEks: TCurrencyField;
    KoblingDBSumInk: TCurrencyField;
    KundeDBForfallsdager: TIntegerField;
    FakturaDBIdFaktura: TAutoIncField;
    KoblingDBIdFaktura: TIntegerField;
    FakturaDBKid: TStringField;
    FakturaDBKundenr: TFloatField;
    FirmaDBPass: TBooleanField;
    FirmaDBPassord: TStringField;
    KoblingDBIdLinje: TAutoIncField;
    KoblingDBAntall: TFloatField;
    LagerDBVarenr: TStringField;
    LagerDBLagerantall: TFloatField;
    LagerDBSalgsantall: TFloatField;
    LagerDBLagergrense: TFloatField;
    LagerDBLagerverdi: TFloatField;
    LagerDBAnkomst: TDateField;
    LagerDBMerknad: TStringField;
    FakturaQry: TQuery;
    VareDBMvaKlasse: TFloatField;
    VareDBRegDato: TDateField;
    VareDBEndretDato: TDateField;
    VareDBEnhet: TStringField;
    KundeDBPostadresse: TStringField;
    KundeDBLand: TStringField;
    KundeDBIdGruppe: TIntegerField;
    KundeDBKreditt: TFloatField;
    KundeDBRegDato: TDateField;
    KundeDBEndretDato: TDateField;
    KoblingDBEnhet: TStringField;
    KoblingDBMva: TFloatField;
    KundeDBRabatt: TFloatField;
    FirmaDBPurrerente: TFloatField;
    DBPurreListe: TTable;
    DSPurreListe: TDataSource;
    DBFakuva: TDatabase;
    DBPurreListeIdPurring: TAutoIncField;
    DBPurreListePurreTittel: TStringField;
    DBPurreListeGebyr: TFloatField;
    DBPurreListeRente: TFloatField;
    FakturaDBKontrollNr: TStringField;
    FakturaDBTotKr: TStringField;
    FakturaDBTotOre: TStringField;
    FakturaDBPurKr: TStringField;
    FakturaDBPurOre: TStringField;
    LeverandorDBRegDato: TDateField;
    LeverandorDBEndretDato: TDateField;
    ImgPageControl: TImageList;
    KundeDBPbPostnr: TStringField;
    KundeDBPbPoststed: TStringField;
    LeverandorDBLand: TStringField;
    LeverandorDBPostadresse: TStringField;
    VareDBAvanse: TFloatField;
    VareDBAvanseP: TFloatField;
    VareDBPrisInk: TFloatField;
    VareDBVekt: TFloatField;
    VareDBVolum: TFloatField;
    VareDBVaretype: TSmallintField;
    VareDBVareTypeNavn: TStringField;
    FakturaDBBetaltdato: TDateField;
    FirmaDBPostNrSted: TStringField;
    FirmaDBTelefonnr: TStringField;
    FakturaDBPurKnr: TStringField;
    procedure KoblingDBCalcFields(DataSet: TDataSet);
    procedure KoblingDBAfterDelete(DataSet: TDataSet);
    procedure KoblingDBAfterPost(DataSet: TDataSet);
    procedure KoblingDBBeforeDelete(DataSet: TDataSet);
    procedure KoblingDBBeforeEdit(DataSet: TDataSet);
    procedure KundeDBPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure LeverandorDBPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure VareDBPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure VareDBBeforeCancel(DataSet: TDataSet);
    procedure KundeDBBeforeCancel(DataSet: TDataSet);
    procedure LeverandorDBBeforeCancel(DataSet: TDataSet);
    procedure VareDBBeforeDelete(DataSet: TDataSet);
    procedure KundeDBBeforeDelete(DataSet: TDataSet);
    procedure LeverandorDBBeforeDelete(DataSet: TDataSet);
    procedure KategoriDBBeforeDelete(DataSet: TDataSet);
    procedure ReferanseDBBeforeDelete(DataSet: TDataSet);
    procedure FakturaDBCalcFields(DataSet: TDataSet);
    procedure FirmaDBPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure LagerDBAfterPost(DataSet: TDataSet);
    procedure FakturaDBPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure VareDBNewRecord(DataSet: TDataSet);
    procedure KundeDBNewRecord(DataSet: TDataSet);
    procedure KoblingDBNewRecord(DataSet: TDataSet);
    procedure KoblingDBBeforePost(DataSet: TDataSet);
    procedure KundeDBBeforePost(DataSet: TDataSet);
    procedure VareDBBeforePost(DataSet: TDataSet);
    procedure LeverandorDBBeforePost(DataSet: TDataSet);
    procedure FirmaDBAfterOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure LeverandorDBNewRecord(DataSet: TDataSet);
    procedure VareDBCalcFields(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure LagerDBNewRecord(DataSet: TDataSet);
    procedure FakturaDBNewRecord(DataSet: TDataSet);
    procedure FirmaDBCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    UseKid: Boolean;
    Klient: String;
    SKid: String;
    procedure TrekkVareFraLager(Vnr: String; Ant: Double);
    procedure KansellerVareKjop(Vnr: String; Ant: Double);
    procedure GetVars;
    function MakeKidString(KID, Kunde, Faktura, Klinet: String): String;
    procedure SaveAndClose(Table: TTable);

  public
    { Public declarations }
//    Mva: Double;
    MvaListe : TblsMvaList;
    procedure SorterVarer(Felt: String);
    procedure SorterKunder(Felt: String);
    procedure SorterLeverandorer(Felt: String);
    procedure SorterFakturaer(Felt: String);
    procedure SkrivTilLogg(Tekst: String);
    procedure SettFakturaBetalt(Status: String);
    function SummerFaktura:Double;
    procedure SettStatus(Status: String);
    function UtskriftKopi:Boolean;
//    procedure LesMoms;
    function Lagerstyring():Boolean;
    function SlettRenter:Boolean;
    function FakturaAdresse(KundeId:Integer):String;
    procedure SettRegisterBane;
    procedure CloseAllDataSet;
    procedure OpenAllDataSet(PB: TProgressBar = nil);
    procedure RefreshDataSet;
    function SjekkSerienummer: Boolean;
    function TestSerieNummer(Snr: String): Boolean;
    function RenskOrgNr(Orgnr: String): String;
    function HentBrRegData(Orgnr: String): String;
  end;

var
  Dm: TDm;

implementation

uses blsMisc, blsString, unitReg, blsFileUtil, JclFileUtils, JclSysInfo,
  unitVar, JclIniFiles, blsWebUtil;

{$R *.DFM}

procedure TDm.SettRegisterBane;
begin
  unitReg.SettRegisterBane(FirmaDBFirma.Value);
end;

function TDm.Lagerstyring:Boolean;
begin
 If FileExists('lager.exe') or FileExists('lagerstyring.exe') then
  Result := True
 else
  Result := False;
end;

procedure TDm.SorterVarer(Felt: String);
begin
 VareDB.IndexFieldNames := Felt;
end;

procedure TDm.SorterKunder(Felt: String);
begin
 KundeDB.IndexFieldNames := Felt;
end;

procedure TDm.SorterLeverandorer(Felt: String);
begin
 LeverandorDB.IndexFieldNames := Felt;
end;

procedure TDm.SorterFakturaer(Felt: String);
begin
 FakturaDB.IndexFieldNames := Felt;
end;

procedure TDm.SkrivTilLogg(Tekst: String);
var S: TStringList;
    Reg: TRegistry;
    Fil: String;
begin
 S := TStringList.Create;
 Reg := TRegistry.Create;
 try
  Reg.OpenKey('\Software\Bls\Fakuva5\' + FirmaDBFirma.Value, True);
  If (Reg.ValueExists('Logging')) and (Reg.ReadBool('Logging') = True) then
  begin

    If Reg.ValueExists('Loggfil') then
       Fil := Reg.ReadString('Loggfil');

    if FileExists(Fil) then S.LoadFromFile(Fil);
    S.Add(DateToStr(Date) + ': ' + Tekst);
    S.SaveToFile(Fil);

  end;
 finally
  S.Free;
  Reg.Free;
 end;
end;

procedure TDm.SettFakturaBetalt(Status: String);
begin
  DM.FakturaDB.Edit;
  DM.FakturaDBBetalt.Value := Status;
  DM.FakturaDB.Post;
  SkrivTilLogg('Faktura nr ' + FloatToStr(DM.FakturaDBFakturanr.Value) + ' ble satt til betalt: ' + Status);
end;

procedure TDm.SettStatus(Status: String);
begin
 DM.FakturaDB.Edit;
 DM.FakturaDBStatus.Value := Status;
 DM.FakturaDB.Post;
end;

function TDm.SlettRenter:Boolean;
var ErSlettet:Boolean;
begin
 ErSlettet := False;
 If Dm.FakturaDBPurregebyr.Value > 0 then
  If MessageBox(Application.Handle, 'Dette sletter beregnede renter og gebyrer!', 'Purring', MB_OKCANCEL + MB_ICONQUESTION) = IdOK then
   begin
     Dm.FakturaDB.Edit;
     Dm.FakturaDBPurregebyr.Value := 0;
     Dm.FakturaDBPurretotal.Value := 0;
     Dm.FakturaDB.Post;
     ErSlettet := True;
   end;
 Result := ErSlettet;
end;

procedure TDm.KoblingDBCalcFields(DataSet: TDataSet);
begin

  KoblingDBSumEks.Value := (KoblingDBPris.Value - (KoblingDBPris.Value * (KoblingDBRabatt.Value / 100))) * KoblingDBAntall.Value;
  KoblingDBSumInk.Value := KoblingDBSumEks.Value * (1 + (KoblingDBMva.Value / 100));

//  DM.KoblingDBSumEks.Value           := (DM.KoblingDBPris.Value - (DM.KoblingDBPris.Value * (DM.KoblingDBRabatt.Value / 100))) * DM.KoblingDBAntall.Value;
//  DM.KoblingDBSumInk.Value           := DM.KoblingDBSumEks.Value * (1 + (DM.FakturaDBMVASats.Value / 100));
//  If DM.KoblingDBMoms.Value = 'Nei' then
//  DM.KoblingDBSumInk.Value           := DM.KoblingDBSumEks.Value;
end;

function TDm.SummerFaktura:Double;
var Eks, Ink, Rabatt, Inn: Double;
    S: TBookmark;
    Reg: TRegistry;
begin
 Eks    := 0;
 Ink    := 0;
 Rabatt := 0;
 Inn    := 0;

 With KoblingDB do
 begin
   S:= GetBookmark;
   DisableControls;

   First;
   While NOT KoblingDB.EOF do
     begin
     Inn := Inn + KoblingDBInnpris.Value * KoblingDBAntall.Value;
     Eks := Eks + KoblingDBSumEks.Value;
     Ink := Ink + KoblingDBSumInk.Value;
     Rabatt := Rabatt + ((KoblingDBPris.Value * KoblingDBAntall.Value) - KoblingDBSumEks.Value);

     Next;
     end;

   EnableControls;

 FakturaDB.Edit;
 FakturaDBEks.Value      := StrToFloat(FloatToStrf(Eks, ffFixed, 10, 2));
 FakturaDBRabatt.Value   := StrToFloat(FloatToStrf(Rabatt, ffFixed, 10, 2));
 FakturaDBMva.Value      := StrToFloat(FloatToStrf((Ink - Eks), ffFixed, 10, 2));

 Reg := TRegistry.Create;
   try
     Reg.OpenKey('\Software\Bls\Fakuva5\' + FirmaDBFirma.Value, True);
     If Reg.ValueExists('Avrunding') then
       Case Reg.ReadInteger('Avrunding') of
         0: FakturaDBTotal.Value    := RundAvHele(Ink);
         1: FakturaDBTotal.Value    := RundAv50(Ink);
       else
        FakturaDBTotal.Value    := Ink;
       end;
 finally
     Reg.Free;
 end;

  FakturaDB.Post;
  GotoBookmark(S);
  FreeBookmark(S);
 end;
 SummerFaktura := Inn;
end;

procedure TDm.KoblingDBAfterDelete(DataSet: TDataSet);
begin
  SummerFaktura;
end;

procedure TDm.TrekkVareFraLager(Vnr: String; Ant: Double);
 procedure SettInn;
  begin
   LagerDB.Edit;
    LagerDBSalgsAntall.Value := LagerDBSalgsAntall.Value + Ant;
    LagerDBLagerAntall.Value := LagerDBLagerAntall.Value - Ant;
   LagerDB.Post;
  end;
begin
 If Dm.Lagerstyring then begin
   If LagerDBVarenr.Value = Vnr then
    SettInn
   else
    If LagerDB.Locate('Varenr', Vnr, []) then
     SettInn;
  end;
end;

procedure TDm.KoblingDBAfterPost(DataSet: TDataSet);
begin
 SummerFaktura;
 TrekkVareFraLager(KoblingDbVarenr.Value, KoblingDBAntall.Value);
end;

procedure TDm.KansellerVareKjop(Vnr: String; Ant: Double);
 procedure SettInn;
  begin
   LagerDB.Edit;
    LagerDBSalgsAntall.Value := LagerDBSalgsAntall.Value - Ant;
    LagerDBLagerAntall.Value := LagerDBLagerAntall.Value + Ant;
   LagerDB.Post;
  end;
begin
 If Dm.Lagerstyring then
  begin
    If LagerDBVarenr.Value = Vnr then
     SettInn
    else
     If LagerDB.Locate('Varenr', Vnr, []) then
      SettInn;
  end;
end;

procedure TDm.KoblingDBBeforeDelete(DataSet: TDataSet);
begin
 KansellerVareKjop(KoblingDBVarenr.Value, KoblingDBAntall.Value);
end;

function TDm.UtskriftKopi:Boolean;
var Reg: TRegistry;
begin
    Reg := TRegistry.Create;
      try
       Reg.OpenKey('\Software\Bls\Fakuva5\' + FirmaDBFirma.Value, True);
       UtskriftKopi := (Reg.ValueExists('UtskriftKopi') = True) and (Reg.ReadInteger('UtskriftKopi') = 1);
       finally
        Reg.Free;
       end;
end;

//***************** Leser momsen fra registret ******************//
{procedure TDm.LesMoms;
begin
  Mva := HentMoms;

  if MvaListe.Mva.Count > 0 then
    Mva := 1 + (MvaListe.DefaultMva / 100);
end;}

procedure TDm.KoblingDBBeforeEdit(DataSet: TDataSet);
begin
 KansellerVareKjop(KoblingDBVarenr.Value, KoblingDBAntall.Value);
end;

procedure TDm.KundeDBPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
 Action := daAbort;
 MessageDlg('Feltene Kundenavn, Adresse og Postnummer må fylles ut!', mtInformation, [mbok],0);
end;

procedure TDm.LeverandorDBPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
 Action := daAbort;
 MessageDlg('Feltene Leverandørnavn, Adresse og Postnr må fylles ut!', mtInformation, [mbok],0);
end;

procedure TDm.VareDBPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
 Action := daAbort;
 If (VareDBVarenr.IsNull) or (VareDBVare.IsNull) or (VareDBPris.IsNull) then
    MessageDlg('Feltet "Varenr", "Vare" og "Pris" må fylles ut!', mtInformation, [mbok],0)
 else
    MessageDlg('Varenummeret finnes fra før. Vennligst bytt varenummeret!', mtInformation, [mbOK], 0);
end;

procedure TDm.VareDBBeforeCancel(DataSet: TDataSet);
begin
   If DM.VareDB.State = dsInsert then
   begin
    DM.FirmaDB.Edit;
    DM.FirmaDBVarenr.Value := DM.FirmaDBVarenr.Value - 1;
    DM.FirmaDB.Post;
   end;
end;

procedure TDm.KundeDBBeforeCancel(DataSet: TDataSet);
begin
    If DM.KundeDB.State = dsInsert then
      begin
       DM.FirmaDB.Edit;
       DM.FirmaDBKundenr.Value := DM.FirmaDBKundenr.Value - 1;
       DM.FirmaDB.Post;
      end;
end;

procedure TDm.LeverandorDBBeforeCancel(DataSet: TDataSet);
begin
    If DM.LeverandorDB.State = dsInsert then
     begin
       DM.FirmaDB.Edit;
       DM.FirmaDBLeverandornr.Value := DM.FirmaDBLeverandornr.Value - 1;
       DM.FirmaDB.Post;
     end;
end;

procedure TDm.VareDBBeforeDelete(DataSet: TDataSet);
begin
 SkrivTilLogg('Vare nr ' + VareDBVarenr.Value + ' "' + VareDBVare.Value + '" slettet!');
end;

procedure TDm.KundeDBBeforeDelete(DataSet: TDataSet);
begin
 SkrivTilLogg('Kunde nr ' + FloatToStr(KundeDBKundenr.Value) + ' "' + KundeDBKunde.Value + '" slettet!');
end;

procedure TDm.LeverandorDBBeforeDelete(DataSet: TDataSet);
begin
 SkrivTilLogg('Leverandør nr ' + FloatToStr(LeverandorDBLeverandornr.Value) + ' "' + LeverandorDBLeverandor.Value + '" slettet!');
end;

procedure TDm.KategoriDBBeforeDelete(DataSet: TDataSet);
begin
 SkrivTilLogg('Kategori "' + KategoriDBKategori.Value + '" ble slettet!');
end;

procedure TDm.ReferanseDBBeforeDelete(DataSet: TDataSet);
begin
 SkrivTilLogg('Referansen "' + ReferanseDBReferanse.Value + '" ble slettet!');
end;

procedure TDm.GetVars;
var Ini: TIniFile;
begin
 Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'FAKUVA.INI');
 try
   Klient := Ini.ReadString('KID', 'Klientnr', '0000');
   SKID := Ini.ReadString('KID', 'KIDStruktur', 'Kunde(7)+Klient+Faktura(7)+1');
 finally
   Ini.Free;
 end;
end;

function TDm.MakeKidString(KID: String; Kunde, Faktura, Klinet: String): String;
var S: TStringList;
    I: Integer;
    Sx: String;
begin
 S := TStringList.Create;
 try
   S.Delimiter := '+';
   S.DelimitedText := KID;
   Sx := '';
   for I := 0 to S.Count -1 do begin
     if Copy(S[I], 0, Length(S[I]) -3) = 'Kunde' then
      Sx := Sx + FillWithChar(Kunde, StrToInt(Copy(S[I], Pos('(', S[I]) + 1, Pos(')', S[I]) -1 - Pos('(', S[I]))), '0')
     else if Copy(S[I], 0, Length(S[I]) -3) = 'Faktura' then
      Sx := Sx + FillWithChar(Faktura, StrToInt(Copy(S[I], Pos('(', S[I])+ 1, Pos(')', S[I]) -1 - Pos('(', S[I]))), '0')
     else if S[I] = 'Klient' then
      Sx := Sx + Klient
     else Sx := Sx + S[I];
   end;
   Result := Sx;
 finally
  S.Free;
 end;
end;

procedure TDm.FakturaDBCalcFields(DataSet: TDataSet);
var S: String;
    Tmp: Extended;
begin
  S := FormatFloat('#,##0.00', FakturaDBTotal.Value);
  FakturaDBTotKr.Value := Copy(S, 1, Length(S) -3);
  FakturaDbTotOre.Value := Copy(S, Length(S)-1, Length(S) +1);

  S := FormatFloat('###0.00', FakturaDBPurretotal.Value);
  FakturaDBPurKr.Value := Copy(S, 1, Length(S) -3);
  FakturaDbPurOre.Value := Copy(S, Length(S)-1, Length(S) +1);

  if UseKid then begin
   GetVars;
   S := MakeKidString(SKid, FakturaDBKundenr.AsString, FakturaDBFakturanr.AsString, Klient);
   S := S + Modulus10(S);
   FakturaDBKid.Value := S;

   Tmp := Abs(FakturaDBTotal.Value);
   FakturaDBKontrollNr.Value := Modulus10(IntToStr(StripFloatForSeparator(Tmp)));

{   S := FormatFloat('###0.00', Abs(FakturaDBPurreTotal.Value));
   FakturaDBPurKnr.Value := Modulus10(StripFloatForSeparator(S))}
  end;
end;

procedure TDm.FirmaDBPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
 Action := daAbort;
 MessageDlg('Feltet "Organisasjonsnummer" må fylles ut!', mtInformation, [mbok],0);
end;

procedure TDm.LagerDBAfterPost(DataSet: TDataSet);
begin
 If HentLagerMelding then
  begin
    If (LagerDBLagerGrense.Value >= LagerDBLagerAntall.Value) then
    MessageDlg('Det er nå ' + LagerDBLagerAntall.AsString + ' stk igjen av varen ' + LagerDBVarenr.Value + ' på lager! Kanskje på tide med et nytt innkjøp?', mtInformation, [mbOK], 0);
  end;
end;

procedure TDm.FakturaDBPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
 Action := daAbort;
 MessageDlg('Fakturanummeret eksisterer fra før!', mtInformation, [mbok],0);
end;

function TDm.FakturaAdresse(KundeId: Integer): String;
var Adr, Adresse, Postadr, Postnr, Poststed, Land: String;
begin
  Result := '';
  if not Dm.KundeDB.Locate('IdKunde', KundeId, []) then Exit;

  Postadr := Dm.KundeDBPostadresse.Value;
  Adresse := Dm.KundeDBAdresse.Value;
  Postnr := Dm.KundeDBPostnr.Value;
  Poststed := Dm.KundeDBPoststed.Value;
  Land := Dm.KundeDBLand.Value;

  Adr := Dm.KundeDBKunde.Value + Chr(13) + Chr(10);

  if (Dm.KundeDBPostadresse.Value <> '') then begin
    //Her er full postboksadresse oppgitt
    if (Dm.KundeDBPbPostnr.Value <> '') then begin
      Adr := Adr + Dm.KundeDBPostadresse.Value + Chr(13) + Chr(10)
             + Dm.KundeDBPbPostnr.Value + ' ' + Dm.KundeDBPbPoststed.Value;
      if AnsiCompareStr(Land, 'Norge') <> 0 then
        Adr := Adr + AnsiUpperCase(Land);
      Result := Adr;
      Exit;
    end;

    //Her settes postboks sammen med leveringsadrese
    if Dm.KundeDBAdresse.Value <> '' then
      Adr := Adr + Dm.KundeDBAdresse.Value + Chr(13) + Chr(10);
    Adr := Adr + Dm.KundeDBPostadresse.Value + Chr(13) + Chr(10)
           + Dm.KundeDBPostnr.Value + ' ' + Dm.KundeDBPoststed.Value;
    if AnsiCompareStr(Land, 'Norge') <> 0 then
      Adr := Adr + AnsiUpperCase(Land);
    Result := Adr;
    Exit;
  end;

  Adr := Adr + Dm.KundeDBAdresse.Value + Chr(13) + Chr(10);
  if Dm.KundeDBPostnr.Value <> '' then
    Adr := Adr + Dm.KundeDBPostnr.Value + ' ' + Dm.KundeDBPoststed.Value
  else if Dm.KundeDBPbPostnr.Value <> '' then
    Adr := Adr + Dm.KundeDBPbPostnr.Value + ' ' + Dm.KundeDBPbPoststed.Value;

  if AnsiCompareStr(Land, 'Norge') <> 0 then
    Adr := Adr + AnsiUpperCase(Land);
  Result := Adr;
end;

procedure TDm.VareDBNewRecord(DataSet: TDataSet);
begin
  VareDBEnhet.Value := 'Stk';
  VareDBRegDato.Value := Date;
  VareDBVolum.Value := 0;
  VareDBVekt.Value := 0;
  //KAN FJERNES NÅR 25% MVA ER INNFØRT
  VareDBMvaKlasse.Value := 24.00;

  if MvaListe.Mva.Count > 0 then
    VareDBMvaKlasse.Value := MvaListe.DefaultMva;

  VareDBVareType.Value := 0;
  VareDBInnpris.Value := 0;
  VareDBPris.Value := 0;
end;

procedure TDm.KundeDBNewRecord(DataSet: TDataSet);
begin
  KundeDBLand.Value := 'Norge';
  KundeDBRegDato.Value := Date;
  KundeDBForfallsdager.Value := 14;
  KundeDBKreditt.Value := 0;
  KundeDBRabatt.Value := 0;
end;

procedure TDm.KoblingDBNewRecord(DataSet: TDataSet);
begin
  //KAN FJERNES NÅR 25% MVA ER INNFØRT
  KoblingDBMva.Value       := 24.00;

  if MvaListe.Mva.Count > 0 then
    KoblingDBMva.Value := MvaListe.DefaultMva;

  KoblingDBEnhet.Value     := 'Stk';
  KoblingDBAntall.Value    := 1;
  KoblingDBInnPris.Value   := 0.00;
  KoblingDBPris.Value      := 0.00;
end;

procedure TDm.KoblingDBBeforePost(DataSet: TDataSet);
begin
  if MvaListe.Mva.Count > 0 then begin
    if not MvaListe.FindMva(KoblingDBMva.Value) then begin
      if MessageBox(Application.Handle, 'Ugyldig MVA-sats! Vil du benytte standard sats?', 'Ugyldig sats',
        MB_YESNO + MB_ICONQUESTION) = idYes then
        KoblingDBMva.Value := MvaListe.DefaultMva;
    end;
  end
  else begin
    //KAN FJERNES NÅR 25% MVA ER INNFØRT
    if (KoblingDBMva.Value <> 24.00) and (KoblingDBMva.Value <> 12) and
       (KoblingDBMva.Value <> 0) then begin
      MessageBox(Application.Handle, 'Ugyldig Mva-sats! Standardsats benyttes.', 'Ugyldig verdi', Mb_Ok + Mb_IconInformation);
      KoblingDBMva.Value := 24.00;
    end;
  end;
end;

procedure TDm.KundeDBBeforePost(DataSet: TDataSet);
begin
  if KundeDB.Modified and (KundeDB.State in [dsEdit]) then
    KundeDBEndretDato.Value := Date;
end;

procedure TDm.VareDBBeforePost(DataSet: TDataSet);
begin
  if VareDB.Modified and (VareDB.State in [dsEdit]) then
    VareDBEndretDato.Value := Date;
end;

procedure TDm.LeverandorDBBeforePost(DataSet: TDataSet);
begin
  if LeverandorDB.Modified and (LeverandorDB.State in [dsEdit]) then
    LeverandorDBEndretDato.Value := Date;
end;

procedure TDm.FirmaDBAfterOpen(DataSet: TDataSet);
begin
  SettRegisterBane;
  UseKid := HentBrukKid;
end;

procedure TDm.DataModuleCreate(Sender: TObject);
var Ini: TIniFile;
    Path: String;
    TmpDir: String;
begin
  Session.NetFileDir := Dir;
  TmpDir := AddBackSlash(PathGetLongName(GetWindowsTempFolder)) + 'Fakuva\';
  ForceDirectories(TmpDir);
  Session.PrivateDir := TmpDir;

  MvaListe := TblsMvaList.Create;

  Ini := TIniFile.Create(Dir + 'Fakuva.ini');
  try
    Path := Ini.ReadString('Database', 'Data', '');
    if Path = '' then
      Path := Dir
    else
      Path := ExpandFileName(Path);
  finally
    Ini.Free;
  end;

  DbFakuva.Close;
  DbFakuva.Params.Values['Path'] := Path;
  DbFakuva.Open;
end;

procedure TDm.LeverandorDBNewRecord(DataSet: TDataSet);
begin
  LeverandorDBLand.Value := 'Norge';
  LeverandorDBRegDato.Value := Date;
end;

procedure TDm.VareDBCalcFields(DataSet: TDataSet);
begin
  if VareDBMvaKlasse.Value > 0 then
    VareDBPrisInk.Value := VareDBPris.Value + ((VareDBPris.Value * VareDBMvaKlasse.Value) / 100)
  else
    VareDBPrisInk.Value := VareDBPris.Value;
  VareDBAvanse.Value := VareDBPris.Value - VareDBInnPris.Value;
  if (VareDBAvanse.Value = 0) or (VareDBInnPris.Value = 0) then
    VareDBAvanseP.Value := 0
  else
    VareDBAvanseP.Value := (VareDBAvanse.Value / VareDBInnPris.Value) * 100;

  if not VareDBVareType.IsNull then
    if VareDBVareType.Value in [0, 1, 2] then
      VareDBVareTypeNavn.Value := VareType[VareDBVareType.Value];
end;

procedure TDm.SaveAndClose(Table: TTable);
begin
  if Table.State in [dsEdit, dsInsert] then
    Table.Post;
  Table.Close;
end;

procedure TDm.CloseAllDataSet;
begin
  SaveAndClose(DBPurreListe);
  SaveAndClose(KategoriDB);
  SaveAndClose(ReferanseDB);
  SaveAndClose(LagerDB);
  SaveAndClose(VareDB);
  SaveAndClose(LeverandorDB);
  SaveAndClose(KundeDB);
  SaveAndClose(PostDB);
  SaveAndClose(KoblingDB);
  SaveAndClose(FakturaDB);
  SaveAndClose(FirmaDB);
end;

procedure TDm.OpenAllDataSet(PB: TProgressBar = nil);
begin
  if PB <> nil then Pb.Position := 10;
  FirmaDB.Open;
  if PB <> nil then Pb.Position := 20;
  FakturaDB.Open;
  if PB <> nil then Pb.Position := 30;
  KoblingDB.Open;
  if PB <> nil then Pb.Position := 40;

  PostDB.Open;
  if PB <> nil then Pb.Position := 50;
  KundeDB.Open;
  if PB <> nil then Pb.Position := 60;
  LeverandorDB.Open;
  if PB <> nil then Pb.Position := 70;
  VareDB.Open;
  if PB <> nil then Pb.Position := 80;
  LagerDB.Open;
  if PB <> nil then Pb.Position := 90;

  KategoriDB.Open;
  ReferanseDB.Open;
  DBPurreListe.Open;
  if PB <> nil then Pb.Position := 100;
end;

procedure TDm.RefreshDataSet;
begin
  FirmaDB.Refresh;
  FakturaDB.Refresh;
  KundeDB.Refresh;
  LeverandorDB.Refresh;
  VareDB.Refresh;
end;

procedure TDm.DataModuleDestroy(Sender: TObject);
begin
  RemoveDir(Session.PrivateDir);
  MvaListe.Free;
end;

procedure TDm.LagerDBNewRecord(DataSet: TDataSet);
begin
  LagerDBLagerantall.Value := 0;
  LagerDBSalgsantall.Value := 0;
  LagerDBLagergrense.Value := 0;
  LagerDBLagerverdi.Value := 0;
end;

procedure TDm.FakturaDBNewRecord(DataSet: TDataSet);
begin
  FakturaDBBetalt.Value := '-';
  FakturaDBMva.Value := 0;
  FakturaDBEks.Value := 0;
  FakturaDBRabatt.Value := 0;
  FakturaDBTotal.Value := 0;
  FakturaDBPurreTekst.Value := True;
  FakturaDBPurregebyr.Value := 0;
  FakturaDBPurreTotal.Value := 0;
end;

function TDm.TestSerieNummer(Snr: String): Boolean;
var A, B: String;
begin
  A := Snr[1] + Snr[2] + Snr[3] + Snr[4] + Snr[5];
  B := Snr[11] + Snr[12] + Snr[13];
  Result := (Length(Snr) = 16) and (Snr[7] + Snr[8] + Snr[9] = 'BLS') and
    (Modulus10(A) = Snr[15]) and (Modulus10(B) = Snr[16]);
end;

function TDm.SjekkSerienummer: Boolean;
var Reg: TRegistry;
    A, B, S: String;
begin
 Reg := TRegistry.Create;
 try

 Reg.RootKey := HKEY_LOCAL_MACHINE;
 Reg.OpenKey('SOFTWARE\BLS\Fakuva 5\5', false);

 if Reg.ValueExists('Serial') then begin
   S := Reg.ReadString('Serial');

   A := S[1] + S[2] + S[3] + S[4] + S[5];
   B := S[11] + S[12] + S[13];
 end;
 Result := (Length(S) = 16) and (S[7] + S[8] + S[9] = 'BLS') and
           (Modulus10(A) = S[15]) and (Modulus10(B) = S[16]);

 finally
  Reg.Free;
 end;
end;

procedure TDm.FirmaDBCalcFields(DataSet: TDataSet);
var S: String;
begin
  FirmaDBPostNrSted.Value := FirmaDBPostnr.Value + ' ' + FirmaDBPostSted.Value;

  S := '';
  if FirmaDBTelefon.Value <> '' then
    S := 'Tlf: ' + FirmaDBTelefon.Value + '  ';
  if FirmaDBTelefax.Value <> '' then
    S := S + 'Fax: ' + FirmaDBTelefax.Value;
{  if FirmaDBMobil.Value <> '' then
    S := S + 'Mob: ' + FirmaDBMobil.Value;}

  FirmaDBTelefonnr.Value := S;
end;

function TDm.RenskOrgNr(Orgnr: String): String;
var I: Integer;
begin
  Result := '';
  for I := 1 to Length(Orgnr) do
    if Orgnr[I] in ['0'..'9'] then
      Result := Result + Orgnr[I];
end;



const
  strId = '<!-- Her kommer dokumentet -->';

function TDm.HentBrRegData(Orgnr: String): String;
var
  Url, S: String;
  Sl: TStringList;
  I, Ix: Integer;
begin
  Url := JclIniFiles.IniReadString(Dir + 'fakuva.ini', 'Innstillinger', 'UrlBrReg');
  if Url <> '' then begin
    Orgnr := RenskOrgNr(Orgnr);
    Url := StringReplace(Url, '$X', Orgnr, []);

    Sl := TStringList.Create;
    try
      //Henter Resultatet fra Brreg.no
      ReadUrl(nil, Url, Sl);

      if Sl.Count > 0 then begin
        //Sletter linjer frem til dere data kommer
        S := Trim(Sl[0]);
        while (Sl.Count > 0) and (S <> strID) do begin
          Sl.Delete(0);
          S := Trim(Sl[0]);
        end;

        //Finner slutten av dataene
        Ix := 0;
        while ((Sl.Count -1) > Ix) and (Pos('</TABLE>', AnsiUpperCase(Sl[Ix])) = 0) do
          Inc(Ix);

        //Sletter linjer etter slutten av dataene
        while Sl.Count > Ix do
          Sl.Delete(Ix);

        if Sl.Count > 0 then begin
          //Fjerner HTML formateringen
          S := ExtractTextFromHTML(Sl.Text);
          Sl.Text := S;

          //Fjerner blanke linjer
          I := 0;
          while (I < Sl.Count -1) do begin
            if Trim(Sl[I]) = '' then
              Sl.Delete(I)
            else
              Inc(I);
          end;

          Result := Sl.Text;
        end;
      end;

    finally
      Sl.Free;
    end;

  end;
end;




end.


