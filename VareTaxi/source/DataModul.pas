unit DataModul;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ImgList, Std, IniFiles, blsFileUtil, JclFileUtils, JclSysInfo;

type
  TDM = class(TDataModule)
    SjoforDB: TTable;
    BilDB: TTable;
    KundeDB: TTable;
    AvtaleDB: TTable;
    OrdreDB: TTable;
    SjoforDS: TDataSource;
    BilDS: TDataSource;
    KundeDS: TDataSource;
    AvtaleDS: TDataSource;
    OrdreDS: TDataSource;
    TBilder: TImageList;
    PostDB: TTable;
    KundeDBIdKunde: TAutoIncField;
    KundeDBPostnr: TStringField;
    KundeDBPoststed: TStringField;
    KundeDBKontaktperson: TStringField;
    KundeDBTelefon: TStringField;
    KundeDBTelefax: TStringField;
    KundeDBMobil: TStringField;
    KundeDBOrganisasjonsnr: TStringField;
    KundeDBKundeinfo: TStringField;
    FirmaDB: TTable;
    BilDBIdBil: TAutoIncField;
    BilDBBilmerke: TStringField;
    BilDBType: TStringField;
    BilDBKmpris: TCurrencyField;
    BilDBTimepris: TCurrencyField;
    BilDBRegnr: TStringField;
    SjoforDBIdSjofor: TAutoIncField;
    SjoforDBNavn: TStringField;
    SjoforDBAdresse: TStringField;
    SjoforDBPostnr: TStringField;
    SjoforDBPoststed: TStringField;
    SjoforDBTelefon: TStringField;
    SjoforDBMobil: TStringField;
    SjoforDBTimelonn: TCurrencyField;
    SjoforDBEpost: TStringField;
    BilDBModell: TStringField;
    OrdreDBIdOrdre: TAutoIncField;
    OrdreDBTimer: TFloatField;
    OrdreDBKminn: TFloatField;
    OrdreDBKmut: TFloatField;
    OrdreDBKm: TFloatField;
    OrdreDBKjorerute: TStringField;
    OrdreDBBestillingnr: TStringField;
    OrdreDBFakturaId: TIntegerField;
    OrdreDBBilId: TIntegerField;
    OrdreDBSjoforId: TIntegerField;
    OrdreDBKundeId: TIntegerField;
    OrdreDBRegnr: TStringField;
    OrdreDBKunde: TStringField;
    OrdreDBSjofor: TStringField;
    OrdreDBSum: TCurrencyField;
    OrdreDBBilmerke: TStringField;
    FakturaDB: TTable;
    FakturaDS: TDataSource;
    QSjoforRpt: TQuery;
    OrdreDBDato: TDateField;
    OrdreDBTidsrom: TStringField;
    SjoforDBPersonnr: TStringField;
    QBilRpt: TQuery;
    FirmaDS: TDataSource;
    FirmaDBAdresse: TStringField;
    FirmaDBPostnr: TStringField;
    FirmaDBPostSted: TStringField;
    FirmaDBEpost: TStringField;
    FirmaDBWebadresse: TStringField;
    FirmaDBOrganisasjonsnr: TStringField;
    FirmaDBBankkontonr: TStringField;
    FirmaDBMva: TFloatField;
    OrdreDBSumavg: TCurrencyField;
    OrdreDBAvgifter: TStringField;
    OrdreDBFNr: TStringField;
    FOrdreDB: TTable;
    FOrdreDS: TDataSource;
    FOrdreDBIdOrdre: TAutoIncField;
    FOrdreDBDato: TDateField;
    FOrdreDBBilId: TIntegerField;
    FOrdreDBSjoforId: TIntegerField;
    FOrdreDBKundeId: TIntegerField;
    FOrdreDBTimer: TFloatField;
    FOrdreDBKminn: TFloatField;
    FOrdreDBKmut: TFloatField;
    FOrdreDBKm: TFloatField;
    FOrdreDBKjorerute: TStringField;
    FOrdreDBBestillingnr: TStringField;
    FOrdreDBFakturaId: TIntegerField;
    FOrdreDBSum: TCurrencyField;
    FOrdreDBTidsrom: TStringField;
    FOrdreDBSumavg: TCurrencyField;
    FOrdreDBAvgifter: TStringField;
    FOrdreDBFirma: TStringField;
    FOrdreDBKAdr: TStringField;
    FOrdreDBKPostnr: TStringField;
    FOrdreDBKpoststed: TStringField;
    FOrdreDBKnr: TStringField;
    SjoforDBSjofornr: TFloatField;
    BilDBBilnr: TFloatField;
    KundeDBKundenr: TFloatField;
    OrdreDBOrdrenr: TFloatField;
    FOrdreDBOrdrenr: TFloatField;
    FakturaDBIdFaktura: TAutoIncField;
    FakturaDBFakturanr: TFloatField;
    FakturaDBKundeID: TIntegerField;
    FakturaDBFakturaDato: TDateField;
    FakturaDBForfallsDato: TDateField;
    FakturaDBMVASats: TFloatField;
    FakturaDBBetalt: TStringField;
    FakturaDBDRef: TStringField;
    FakturaDBVRef: TStringField;
    FakturaDBStatus: TStringField;
    FakturaDBNotabene: TMemoField;
    FakturaDBEks: TCurrencyField;
    FakturaDBAvg: TCurrencyField;
    FakturaDBMVA: TCurrencyField;
    FakturaDBTotal: TCurrencyField;
    FirmaDBFirmanavn: TStringField;
    FirmaDBTelefon: TStringField;
    FirmaDBTelefax: TStringField;
    FirmaDBMobil: TStringField;
    KundeDBFirma: TStringField;
    KundeDBAdresse: TStringField;
    KundeDBEpost: TStringField;
    KundeDBWebadresse: TStringField;
    OrdreDBTimerinn: TStringField;
    OrdreDBTimerut: TStringField;
    FOrdreDBTimerinn: TStringField;
    FOrdreDBTimerut: TStringField;
    OrdreDBBilType: TStringField;
    FakturaDBKunde: TStringField;
    FOrdreDBBType: TStringField;
    FakturaDBPurreSum: TCurrencyField;
    FakturaDBPurreTotal: TCurrencyField;
    VOrdreDB: TTable;
    VOrdreDS: TDataSource;
    VOrdreDBIdOrdre: TAutoIncField;
    VOrdreDBOrdrenr: TFloatField;
    VOrdreDBDato: TDateField;
    VOrdreDBBilId: TIntegerField;
    VOrdreDBSjoforId: TIntegerField;
    VOrdreDBKundeId: TIntegerField;
    VOrdreDBTimerinn: TStringField;
    VOrdreDBTimerut: TStringField;
    VOrdreDBTimer: TFloatField;
    VOrdreDBKminn: TFloatField;
    VOrdreDBKmut: TFloatField;
    VOrdreDBKm: TFloatField;
    VOrdreDBKjorerute: TStringField;
    VOrdreDBBestillingnr: TStringField;
    VOrdreDBFakturaId: TIntegerField;
    VOrdreDBSum: TCurrencyField;
    VOrdreDBTidsrom: TStringField;
    VOrdreDBSumavg: TCurrencyField;
    VOrdreDBAvgifter: TStringField;
    AvtaleDBIdAvtale: TAutoIncField;
    AvtaleDBDato: TDateField;
    AvtaleDBBeskrivelse: TStringField;
    AvtaleDBAvtalepris: TCurrencyField;
    AvtaleDBKundeID: TIntegerField;
    KundeDBForfallsdager: TIntegerField;
    BilDBLokalpris: TCurrencyField;
    PakkeAvtale: TTable;
    PakkeADs: TDataSource;
    PakkeAvtaleIdAvtalepakke: TAutoIncField;
    PakkeAvtaleFra: TFloatField;
    PakkeAvtaleTil: TFloatField;
    PakkeAvtaleEnhet: TStringField;
    PakkeAvtalePris: TCurrencyField;
    PakkeAvtaleIdKunde: TIntegerField;
    OrdreDBAvtaleID: TBooleanField;
    VOrdreDBAvtaleID: TBooleanField;
    FOrdreDBAvtaleID: TBooleanField;
    FirmaDBFakturanr: TIntegerField;
    FirmaDBOrdrenr: TIntegerField;
    BestillingDB: TTable;
    BestillingDS: TDataSource;
    BestillingDBIdBestilling: TAutoIncField;
    BestillingDBMottatt: TDateField;
    BestillingDBKontaktperson: TStringField;
    BestillingDBOppdrag: TStringField;
    BestillingDBTelefon: TStringField;
    BestillingDBTlfOppdrag: TStringField;
    BestillingDBPris: TCurrencyField;
    BestillingDBAntpers: TIntegerField;
    BestillingDBBiltype: TStringField;
    QOrdreRpt: TQuery;
    BestillingDBUtforelse: TDateField;
    BestillingDBTid: TTimeField;
    BestillingDBKunde: TStringField;
    BestillingDBAdresse: TStringField;
    BestillingDBPostnr: TStringField;
    BestillingDBPoststed: TStringField;
    QBilRptIdBil: TIntegerField;
    QBilRptBilnr: TFloatField;
    QBilRptRegnr: TStringField;
    QBilRptBilmerke: TStringField;
    QBilRptModell: TStringField;
    QBilRptType: TStringField;
    QBilRptIdOrdre: TIntegerField;
    QBilRptOrdrenr: TFloatField;
    QBilRptDato: TDateField;
    QBilRptBilId: TIntegerField;
    QBilRptSjoforId: TIntegerField;
    QBilRptKundeId: TIntegerField;
    QBilRptTimer: TFloatField;
    QBilRptKm: TFloatField;
    QBilRptKjorerute: TStringField;
    QBilRptBestillingnr: TStringField;
    QBilRptSum: TCurrencyField;
    QBilRptKunde: TStringField;
    QBilRptSjofor: TStringField;
    QBilRptTidsrom: TStringField;
    QSjoforRptIdOrdre: TIntegerField;
    QSjoforRptOrdrenr: TFloatField;
    QSjoforRptDato: TDateField;
    QSjoforRptBilId: TIntegerField;
    QSjoforRptSjoforId: TIntegerField;
    QSjoforRptKundeId: TIntegerField;
    QSjoforRptTimer: TFloatField;
    QSjoforRptKm: TFloatField;
    QSjoforRptKjorerute: TStringField;
    QSjoforRptBestillingnr: TStringField;
    QSjoforRptSum: TCurrencyField;
    QSjoforRptIdSjofor: TIntegerField;
    QSjoforRptSjofornr: TFloatField;
    QSjoforRptPersonnr: TStringField;
    QSjoforRptNavn: TStringField;
    QSjoforRptAdresse: TStringField;
    QSjoforRptPostnr: TStringField;
    QSjoforRptPoststed: TStringField;
    QSjoforRptTelefon: TStringField;
    QSjoforRptMobil: TStringField;
    QSjoforRptEpost: TStringField;
    QSjoforRptTimelonn: TCurrencyField;
    QSjoforRptKunde: TStringField;
    QSjoforRptBil: TStringField;
    QSjoforRptBType: TStringField;
    QOrdreRptIdOrdre: TIntegerField;
    QOrdreRptOrdrenr: TFloatField;
    QOrdreRptDato: TDateField;
    QOrdreRptBilId: TIntegerField;
    QOrdreRptSjoforId: TIntegerField;
    QOrdreRptKundeId: TIntegerField;
    QOrdreRptTimer: TFloatField;
    QOrdreRptKm: TFloatField;
    QOrdreRptKjorerute: TStringField;
    QOrdreRptBestillingnr: TStringField;
    QOrdreRptSum: TCurrencyField;
    QOrdreRptIdKunde: TIntegerField;
    QOrdreRptKundenr: TFloatField;
    QOrdreRptPostnr: TStringField;
    QOrdreRptKontaktperson: TStringField;
    QOrdreRptTelefon: TStringField;
    QOrdreRptTelefax: TStringField;
    QOrdreRptMobil: TStringField;
    QOrdreRptEpost: TStringField;
    QOrdreRptWebadresse: TStringField;
    QOrdreRptOrganisasjonsnr: TStringField;
    QOrdreRptBil: TStringField;
    QOrdreRptSjofor: TStringField;
    FirmaDBBilde: TGraphicField;
    QOrdreRptFirma: TStringField;
    QOrdreRptAdresse: TStringField;
    QOrdreRptPoststed: TStringField;
    QOrdreRptType: TStringField;
    FirmaDBStdtekst: TBlobField;
    FakturaDBKid: TStringField;
    FakturaDBKnr: TStringField;
    DbRui: TDatabase;
    tblAvtale: TTable;
    AutoIncField1: TAutoIncField;
    tblAvtaleDATO: TDateField;
    tblAvtaleBESKRIVELSE: TStringField;
    tblAvtaleAVTALEPRIS: TCurrencyField;
    tblAvtaleKUNDEID: TIntegerField;
    dsAvtale: TDataSource;
    tblAvtaleKundenavn: TStringField;
    tblAvtaleAvtaleType: TStringField;
    KundeDBTimePris: TFloatField;
    KundeDBKmPris: TFloatField;
    OrdreDBTimePris: TFloatField;
    OrdreDBKmPris: TFloatField;
    OrdreDBFastPris: TFloatField;
    OrdreDBLokalPris: TBooleanField;
    SjoforDBInAktiv: TBooleanField;
    BilDBInAktiv: TBooleanField;
    KundeDBInAktiv: TBooleanField;
    procedure FakturaDBCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure tblAvtaleCalcFields(DataSet: TDataSet);
    procedure tblAvtaleNewRecord(DataSet: TDataSet);
    procedure OrdreDBNewRecord(DataSet: TDataSet);
    procedure SjoforDBFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure KundeDBFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure BilDBFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
    FilterKunde: Boolean;
    FilterBil: Boolean;
    FilterSjofor: Boolean;
    procedure CloseDataSets;
    procedure OpenDataSets;
  public
    { Public declarations }
    //procedure FakturaTotal;
    procedure VisKunAktive(Filtrer: Boolean);
    procedure RundAvTotalsum;
    procedure RundAvPurreTotal;
  end;

var
  DM: TDM;

implementation

{$R *.DFM}

procedure TDM.RundAvTotalsum;
var Total:String;
    Sum:Integer;
begin
  Total := CurrToStrF(DM.FakturaDBTotal.Value, ffFixed, 2);
  Sum := StrToInt((Total[(Length(Total))-1]) + (Total[Length(Total)]));

  If (Sum >= 0) AND (Sum <= 24) then
  begin
   Total[(Length(Total))-1] := '0';
   Total[Length(Total)]     := '0';
   DM.FakturaDB.Edit;
   DM.FakturaDBTotal.Value := StrToCurr(Total);
   DM.FakturaDB.Post;
  end;

  If (Sum >= 25) AND (Sum <= 74) then
  begin
   Total[(Length(Total))-1] := '5';
   Total[Length(Total)]     := '0';
   DM.FakturaDB.Edit;
   DM.FakturaDBTotal.Value := StrToCurr(Total);
   DM.FakturaDB.Post;
  end;

  If (Sum >= 75) AND (Sum <= 99) then
  begin
   Total[(Length(Total))-1] := '0';
   Total[Length(Total)]     := '0';
   DM.FakturaDB.Edit;
   DM.FakturaDBTotal.Value := (StrToCurr(Total)) + 1;
   DM.FakturaDB.Post;
  end;
end;

procedure TDM.RundAvPurreTotal;
var Total:String;
    Sum:Integer;
begin
  Total := CurrToStrF(DM.FakturaDBPurreTotal.Value, ffFixed, 2);
  Sum := StrToInt((Total[(Length(Total))-1]) + (Total[Length(Total)]));

  If (Sum >= 0) AND (Sum <= 24) then
  begin
   Total[(Length(Total))-1] := '0';
   Total[Length(Total)]     := '0';
   DM.FakturaDB.Edit;
   DM.FakturaDBPurreTotal.Value := StrToCurr(Total);
   DM.FakturaDB.Post;
  end;

  If (Sum >= 25) AND (Sum <= 74) then
  begin
   Total[(Length(Total))-1] := '5';
   Total[Length(Total)]     := '0';
   DM.FakturaDB.Edit;
   DM.FakturaDBPurreTotal.Value := StrToCurr(Total);
   DM.FakturaDB.Post;
  end;

  If (Sum >= 75) AND (Sum <= 99) then
  begin
   Total[(Length(Total))-1] := '0';
   Total[Length(Total)]     := '0';
   DM.FakturaDB.Edit;
   DM.FakturaDBPurreTotal.Value := (StrToCurr(Total)) + 1;
   DM.FakturaDB.Post;
end;
end;

procedure TDM.FakturaDBCalcFields(DataSet: TDataSet);
var S:String;
begin
 S := FakturaDBFakturanr.Text + '000' + FakturaDbKnr.Value;
 FakturaDBKid.Value := S + Std.Modulus10(S);
end;

procedure TDm.OpenDataSets;
begin
  SjoforDb.Open;
  BilDb.Open;
  KundeDB.Open;
  AvtaleDb.Open;
  OrdreDB.Open;
  BestillingDB.Open;
  VOrdreDB.Open;
  PakkeAvtale.Open;
  FOrdreDB.Open;
  FirmaDB.Open;
  FakturaDB.Open;
  PostDB.Open;
  QSjoforRpt.Open;
  QBilRpt.Open;
  QOrdreRpt.Open;
  tblAvtale.Open;
end;

procedure TDm.CloseDataSets;
begin
  SjoforDb.Close;
  BilDb.Close;
  KundeDB.Close;
  AvtaleDb.Close;
  OrdreDB.Close;
  BestillingDB.Close;
  VOrdreDB.Close;
  PakkeAvtale.Close;
  FOrdreDB.Close;
  FirmaDB.Close;
  FakturaDB.Close;
  PostDB.Close;
  QSjoforRpt.Close;
  QBilRpt.Close;
  QOrdreRpt.Close;
  tblAvtale.Close;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
var TmpDir, Path: String;
    Ini: TIniFile;
begin
  FilterKunde := True;
  FilterSjofor := True;
  FilterBil := True;

  Session.NetFileDir := Dir;
  TmpDir := AddBackSlash(PathGetLongName(GetWindowsTempFolder)) + 'RVT\';
  ForceDirectories(TmpDir);
  Session.PrivateDir := TmpDir;

  Ini := TIniFile.Create(Dir + 'RVT.INI');
  try
    Path := Ini.ReadString('Database', 'Data', '');
    if Path = '' then
      Path := Dir
    else
      Path := ExpandFileName(Path);
  finally
    Ini.Free;
  end;

  DbRui.Close;
  DbRui.Params.Values['Path'] := Path;
  DbRui.Open;

  OpenDataSets;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  CloseDataSets;
end;

procedure TDM.tblAvtaleCalcFields(DataSet: TDataSet);
begin
  if tblAvtaleKUNDEID.IsNull then
    tblAvtaleAVTALETYPE.Value := 'Fellesavtale'
  else
    tblAvtaleAVTALETYPE.Value := 'Kundeavtale';

end;

procedure TDM.tblAvtaleNewRecord(DataSet: TDataSet);
begin
  tblAvtaleDATO.Value := Date;
  tblAvtaleAVTALEPRIS.Value := 0;
end;

procedure TDM.OrdreDBNewRecord(DataSet: TDataSet);
begin
  OrdreDBFastPris.Value := 0;
  OrdreDBTimePris.Value := 0;
  OrdreDBKmPris.Value := 0;
end;

procedure TDM.SjoforDBFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  Accept := True;
  if FilterSjofor then
    Accept := not SjoforDBInAktiv.Value;
end;

procedure TDM.KundeDBFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  Accept := True;
  if FilterKunde then
    Accept := not KundeDBInAktiv.Value;
end;

procedure TDM.BilDBFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  Accept := True;
  if FilterBil then
    Accept := not BilDBInAktiv.Value;
end;

procedure TDM.VisKunAktive(Filtrer: Boolean);
begin
  DM.FilterKunde := Filtrer;
  DM.FilterBil := Filtrer;
  DM.FilterSjofor := Filtrer;
  DM.KundeDB.Refresh;
  DM.BilDB.Refresh;
  DM.SjoforDB.Refresh;
end;

end.
