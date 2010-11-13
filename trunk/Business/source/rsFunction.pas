unit rsFunction;

interface

uses
  SysUtils, Classes, Dialogs, Forms, Controls, JclMapi, Graphics, DateUtils,
  blsList, DB, ADODB, Variants, Windows, DBClient;

type
  TdmFunction = class(TDataModule)
    SaveDialog: TSaveDialog;
    slMvaPost: TblsList;
    adoFakturaPost: TADODataSet;
    slPostering: TblsList;
    adoFakturaPostKONTONR: TIntegerField;
    adoFakturaPostMVAKODE: TIntegerField;
    adoFakturaPostSUM: TFloatField;
    adoBilagText: TADODataSet;
    adoBilagTextIDTEKST: TIntegerField;
    adoBilagTextTEKST: TStringField;
    adoMvaKonto: TADODataSet;
    adoMvaKontoIDKLIENT: TIntegerField;
    adoMvaKontoMVAKODE: TIntegerField;
    adoMvaKontoKONTONR: TIntegerField;
    adoLisens: TADODataSet;
    adoLisensNAVN: TStringField;
    adoLisensORGNR: TStringField;
    adoLisensLISENSKODE: TStringField;
    adoLisensGYLDIGHET: TIntegerField;
    adoLisensREGDATO: TDateField;
    adoLisensPROGTYPE: TIntegerField;
    adoProd: TADODataSet;
    adoProdIDKLIENT: TIntegerField;
    adoProdPRODUKTNR: TStringField;
    adoProdNAVN: TStringField;
    adoProdSPES: TStringField;
    adoProdENHET: TStringField;
    adoProdMVA: TFloatField;
    adoProdINNPRIS: TFloatField;
    adoProdPRIS: TFloatField;
    adoProdAVGIFT: TFloatField;
    adoProdLev: TADODataSet;
    adoProdLevIDKLIENT: TIntegerField;
    adoProdLevPRODUKTNR: TStringField;
    adoProdLevNAVN: TStringField;
    adoProdLevSPES: TStringField;
    adoProdLevENHET: TStringField;
    adoProdLevMVA: TFloatField;
    adoProdLevINNPRIS: TFloatField;
    adoProdLevPRIS: TFloatField;
    adoProdLevAVGIFT: TFloatField;
    adoKunde: TADODataSet;
    adoKundeKONTAKTNR: TIntegerField;
    adoKundeNAVN: TStringField;
    adoKundePOSTADR1: TStringField;
    adoKundePOSTADR2: TStringField;
    adoKundePOSTNR: TStringField;
    adoKundeBESOKADR1: TStringField;
    adoKundeBESOKADR2: TStringField;
    adoKundeBESOKPOSTNR: TStringField;
    adoKundeLAND: TStringField;
    adoKundeKONTAKT: TStringField;
    adoKundeFORFALLSDAGER: TIntegerField;
    adoKundeRABATT: TFloatField;
    adoKundePOSTSTED: TStringField;
    adoKundeBESOKPSTED: TStringField;
    adoKundeKREDITT: TFloatField;
    adoOrderUpdate: TADOCommand;
    slOrdreLinje: TblsList;
    adoAboLinje: TADODataSet;
    adoAboLinjeIDABO: TIntegerField;
    adoAboLinjeIDLINJE: TIntegerField;
    adoAboLinjeSORTID: TFloatField;
    adoAboLinjePRODNR: TStringField;
    adoAboLinjeTEKST: TStringField;
    adoAboLinjeANTALL: TBCDField;
    adoAboLinjeENHET: TStringField;
    adoAboLinjePRIS: TFloatField;
    adoAboLinjeRABATT: TFloatField;
    adoAboLinjeMVA: TFloatField;
    adoAboLinjeINNPRIS: TFloatField;
    adoAboLinjeAVGIFT: TFloatField;
    adoAboLinjeSUMINK: TFloatField;
    adoAboLinjeSUMEKS: TFloatField;
    adoFakturaUpdate: TADOCommand;
    slFakturaLinje: TblsList;
    adoOrdreLinje: TADODataSet;
    adoOrdreLinjeSUMEKS: TFloatField;
    adoOrdreLinjeSUMINK: TFloatField;
    adoOrdreLinjeIDORDRE: TIntegerField;
    adoOrdreLinjeIDLINJE: TIntegerField;
    adoOrdreLinjeSORTID: TFloatField;
    adoOrdreLinjePRODNR: TStringField;
    adoOrdreLinjeTEKST: TStringField;
    adoOrdreLinjeANTALL: TBCDField;
    adoOrdreLinjeENHET: TStringField;
    adoOrdreLinjeINNPRIS: TFloatField;
    adoOrdreLinjePRIS: TFloatField;
    adoOrdreLinjeAVGIFT: TFloatField;
    adoOrdreLinjeRABATT: TFloatField;
    adoOrdreLinjeMVA: TFloatField;
    adoOrdreLinjeLEVERT: TFloatField;
    adoOrdreLinjeIDLEVERING: TIntegerField;
    OpenDialog: TOpenDialog;
    adoFakturaPostMVA: TFloatField;
    procedure adoMvaKontoBeforeOpen(DataSet: TDataSet);
    procedure adoLisensBeforeOpen(DataSet: TDataSet);
    procedure adoAboLinjeCalcFields(DataSet: TDataSet);
    procedure adoOrdreLinjeCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    function Template_FakturaBody(Fakturanr, Kundenr,
      Navn: String): String;
    function Template_FakturaSubject(Fakturanr, Kundenr,
      Navn: String): String;
    function LastFakturaVariabler(VarTekst, Fakturanr, Kundenr,
      Navn: String): String;
    procedure GenererPostering(IdBilag, IdKlient, Kontonr, MvaKode,
      IdTekst, Tekst, Fakturanr, Forfall, Belop, Kontaktnr: Variant);
    function HentMvaSats(MvaKode: Integer): Double;
    function HentMvaKonto(MvaKode: Integer): Integer;
    procedure OppdaterProduktFelter(Cds: TClientDataSet; Prodnr: String;
      AdoLev: Boolean = False);
    function LastOrdreVariabler(VarTekst, Ordrenr, Kundenr,
      Navn: String): String;
    function Template_OrdreSubject(Ordrenr, Kundenr, Navn: String): String;
    function Template_OrdreBody(Ordrenr, Kundenr, Navn: String): String;
    procedure GenererOrdreLinje(IdOrdre, SortID, Prodnr, Tekst, Antall, Enhet,
      Innpris, Pris, Avgift, Rabatt, Mva: Variant);
    function ExpandVars(Tekst: String): String;
    function HentFakturaTekst: String;
    procedure GenererOrdreFakturaLinjer(IdOrdre, IdFaktura: Integer);
    procedure GenererFakturaLinje(IdFaktura, SortID, Prodnr, Tekst, Antall,
      Enhet, Innpris, Pris, Avgift, Rabatt, Mva: Variant);
  public
    { Public declarations }
    procedure CalcEKSandINK(Ant, Pris, Rab, Mva: Double; out Eks, Ink: Double);
    procedure SummerLinjer(DataSet: TDataSet; out Eks, Mva, Ink, Rab, Avg,
      Inn: Double);

    procedure SaveOrdre(IdOrdre: Integer; Ordrenr: String);
    procedure SaveFaktura(IdFaktura: Integer; Fakturanr: String);
    procedure SaveProduktArk(Produktnr: String);
    procedure SendFakturaMail(IdFaktura: Integer; Fakturanr, Kundenr,
      Navn: String);
    procedure SendProduktMail(Produktnr: String; Adresser: TJclEmailRecips);
    procedure SendOrdreMail(IdOrdre: Integer; Ordrenr, Kundenr, Navn: String);

    function LagNyKunde: Integer;
    function EndreKunde(Kundenr: Integer): Integer;
    function LagNyLeverandor: Integer;
    function EndreLeverandor(Levnr: Integer): Integer;
    function LagNyKonto: Integer;
    function EndreKonto(Kontonr: Integer): Integer;
    function LagNyttProdukt: String;
    function EndreProdukt(Produktnr: String): Integer;
    procedure SlettBilagDok(ClientDataSet: TClientDataSet;
      ApplyUpdates: Boolean);
    procedure LinkBilagDok(ClientDataSet: TClientDataSet;
      ApplyUpdates: Boolean);

    function HentFakturaAdresse: String;
    function HentLeveringsAdresse: String;

    function GenererOrdreFaktura(IdOrdre, Ordrenr, Kundenr: Integer; FakturaDato: TDate;
      IRef, ERef, Refnr: String; ForfallsDato: TDate = 0): Integer;
    function GenererAboOrdre(IdAbo, Kundenr: Integer; OrdreDato: TDate;
      InternRef, Refnr: String): Integer;
    procedure GenererAboOrdreLinjer(IdAbo, IdOrdre: Integer);
    function GenererMvaBilag(Aar, Termin: Integer): Integer;
    procedure GenererMvaPostering(IdBilag, Kontonr: Integer; Belop: Double; Text: String);
    function GenererBilag(BilagType: Integer; Dato: TDateTime; IdSerie: Variant): Integer;
    function GenererFakturaBilag: Integer;
    function GenererInnbetalingBilag: Integer;

    function HentBilagText(IdText: Integer): String;
    function HentBrRegData(Orgnr: String): String;
    function ErLisensGyldig: Boolean;
    procedure MoveRecordUp(Cds: TClientDataSet; SkipFields: String);
    procedure MoveRecordDown(Cds: TClientDataSet; SkipFields: String);
    function LeggTilProdukt(Cds: TClientDataSet; Prodnr: String;
      Append: Boolean): Integer;
    function LeggTilLevProdukt(Cds: TClientDataSet; Prodnr: String;
      Append: Boolean): Integer;
    function SorterProduktLinjer(Cds: TClientDataSet): Double;
  end;

var
  dmFunction: TdmFunction;

const
  Def_Faktura_Body = 'Se vedlagt PDF dokument.';

implementation

uses rsData, rsPrint, rsKundeSok, rsKunde, rsLeverandor, blsDialogs,
  rsKonto, rsBilagKreditDialog, JclIniFiles, blsFileUtil, blsWebUtil,
  blsMD5, rsProdukt, rsFakturaSort, blsMisc, blsString, blsLicense;

{$R *.dfm}

function TdmFunction.ErLisensGyldig: Boolean;
var
  OK: Boolean;
begin
  adoLisens.Open;
  OK := SjekkLisens(adoLisensNAVN.Value, adoLisensORGNR.Value, adoLisensPROGTYPE.Value,
          adoLisensGYLDIGHET.Value, adoLisensREGDATO.Value, adoLisensLISENSKODE.Value);

  Result := False;
  if OK then
    if SjekkDato(adoLisensREGDATO.Value, adoLisensGYLDIGHET.Value) = 0 then
      Result := True;
  adoLisens.Close;
end;

procedure TdmFunction.SaveFaktura(IdFaktura: Integer; Fakturanr: String);
begin
  SaveDialog.Filename := 'Faktura_' + Fakturanr + '.pdf';
  if SaveDialog.Execute then begin
    frmPrint := TfrmPrint.Create(Application);
    frmPrint.LagreFaktura(IdFaktura, Fakturanr, SaveDialog.FileName);
    frmPrint.Release;
  end;
end;

procedure TdmFunction.SaveOrdre(IdOrdre: Integer; Ordrenr: String);
begin
  SaveDialog.Filename := 'Ordre_' + Ordrenr + '.pdf';
  if SaveDialog.Execute then begin
    frmPrint := TfrmPrint.Create(Application);
    frmPrint.LagreOrdre(IdOrdre, Ordrenr, SaveDialog.FileName);
    frmPrint.Release;
  end;
end;

procedure TdmFunction.SaveProduktArk(Produktnr: String);
begin
   if SaveDialog.Execute then begin
    frmPrint := TfrmPrint.Create(Application);
    frmPrint.LagreProduktArk(Produktnr, SaveDialog.FileName);
    frmPrint.Release
  end;
end;

procedure TdmFunction.SendProduktMail(Produktnr: String; Adresser: TJclEmailRecips);
var Mail: TJclEmail;
    I: Integer;
begin
  Mail := TJclEmail.Create;
  try
    Mail.Subject := 'Produktinformasjon';
    Mail.Body := 'Se vedlagte dokumenter';
    frmPrint := TfrmPrint.Create(Application);
    Mail.Attachments.Add(frmPrint.LagreProduktArk(Produktnr, ''));
    if Adresser <> nil then
      Mail.Recipients.Assign(Adresser);
    Mail.Send();
  finally
    for I := 0 to Mail.Attachments.Count -1 do
      DeleteFile(PWideChar(Mail.Attachments.Strings[I]));
    Mail.Free;
    frmPrint.Release;
  end;
end;

function TdmFunction.LastFakturaVariabler(VarTekst, Fakturanr, Kundenr, Navn: String): String;
begin
  Result := VarTekst;
  Result := StringReplace(Result, '@Firmanavn', Dm.g_KlientNavn, [rfReplaceAll]);
  Result := StringReplace(Result, '@Fakturanr', Fakturanr, [rfReplaceAll]);
  Result := StringReplace(Result, '@Kundenr', Kundenr, [rfReplaceAll]);
  Result := StringReplace(Result, '@Kundenavn', Navn, [rfReplaceAll]);
end;

function TdmFunction.LastOrdreVariabler(VarTekst, Ordrenr, Kundenr, Navn: String): String;
begin
  Result := VarTekst;
  Result := StringReplace(Result, '@Firmanavn', Dm.g_KlientNavn, [rfReplaceAll]);
  Result := StringReplace(Result, '@Ordrenr', Ordrenr, [rfReplaceAll]);
  Result := StringReplace(Result, '@Kundenr', Kundenr, [rfReplaceAll]);
  Result := StringReplace(Result, '@Kundenavn', Navn, [rfReplaceAll]);
end;

function TdmFunction.Template_FakturaSubject(Fakturanr, Kundenr, Navn: String): String;
var Template: TStringList;
    Filename: String;
begin
  Result := '@Firmanavn - Faktura @Fakturanr';
  FileName := Dm.g_TemplateDir + 'Mail_Faktura_' + IntToStr(Dm.g_KlientID) + '.eml';

  if not FileExists(FileName) then
    FileName := Dm.g_TemplateDir + 'Mail_Faktura.eml';

  if FileExists(FileName) then begin
    Template := TStringList.Create;
    try
      Template.LoadFromFile(FileName);
      if (Template.Count > 0) and (Pos('Subject=', Template[0]) > 0) then
        Result := Template.Values['Subject'];
    finally
      Template.Free;
    end;
  end;

  Result := LastFakturaVariabler(Result, Fakturanr, Kundenr, Navn);
end;

function TdmFunction.Template_FakturaBody(Fakturanr, Kundenr, Navn: String): String;
var Template: TStringList;
    Filename: String;
begin
  Result := '@Firmanavn - Faktura @Fakturanr';
  FileName := Dm.g_TemplateDir + 'Mail_Faktura_' + IntToStr(Dm.g_KlientID) + '.eml';

  if not FileExists(FileName) then
    FileName := Dm.g_TemplateDir + 'Mail_Faktura.eml';

  if FileExists(FileName) then begin
    Template := TStringList.Create;
    try
      Template.LoadFromFile(FileName);
      if (Template.Count > 0) and (Pos('Subject=', Template[0]) > 0) then
        Template.Delete(0);
      Result := Template.Text;
    finally
      Template.Free;
    end;
  end;

  Result := LastFakturaVariabler(Result, Fakturanr, Kundenr, Navn);
end;

function TdmFunction.Template_OrdreSubject(Ordrenr, Kundenr, Navn: String): String;
var Template: TStringList;
    Filename: String;
begin
  Result := '@Firmanavn - Ordrebekreftelse @Ordrenr';
  FileName := Dm.g_TemplateDir + 'Mail_Ordre_' + IntToStr(Dm.g_KlientID) + '.eml';

  if not FileExists(FileName) then
    FileName := Dm.g_TemplateDir + 'Mail_Ordre.eml';

  if FileExists(FileName) then begin
    Template := TStringList.Create;
    try
      Template.LoadFromFile(FileName);
      if (Template.Count > 0) and (Pos('Subject=', Template[0]) > 0) then
        Result := Template.Values['Subject'];
    finally
      Template.Free;
    end;
  end;

  Result := LastOrdreVariabler(Result, Ordrenr, Kundenr, Navn);
end;

function TdmFunction.Template_OrdreBody(Ordrenr, Kundenr, Navn: String): String;
var Template: TStringList;
    Filename: String;
begin
  Result := '@Firmanavn - Ordrebekreftelse @Ordrenr';
  FileName := Dm.g_TemplateDir + 'Mail_Ordre_' + IntToStr(Dm.g_KlientID) + '.eml';

  if not FileExists(FileName) then
    FileName := Dm.g_TemplateDir + 'Mail_Ordre.eml';

  if FileExists(FileName) then begin
    Template := TStringList.Create;
    try
      Template.LoadFromFile(FileName);
      if (Template.Count > 0) and (Pos('Subject=', Template[0]) > 0) then
        Template.Delete(0);
      Result := Template.Text;
    finally
      Template.Free;
    end;
  end;

  Result := LastOrdreVariabler(Result, Ordrenr, Kundenr, Navn);
end;

procedure TdmFunction.SendOrdreMail(IdOrdre: Integer; Ordrenr, Kundenr, Navn: String);
var Mail: TJclEmail;
    I: Integer;
begin
  Mail := TJclEmail.Create;
  try
    Mail.Subject := Template_OrdreSubject(Ordrenr, Kundenr, Navn);
    Mail.Body := Template_OrdreBody(Ordrenr, Kundenr, Navn);

    Dm.adoData.Close;
    Dm.adoData.CommandText := 'select EPOST from KONTAKT ' +
      'where IDKLIENT = ' + IntToStr(Dm.g_KlientID) + ' and KONTAKTNR = ' + Kundenr;
    Dm.adoData.Open;

    Mail.Recipients.Add(Dm.adoData.Fields[0].AsString, Navn);
    frmPrint := TfrmPrint.Create(Application);
    Mail.Attachments.Add(frmPrint.LagreOrdre(IdOrdre, Ordrenr, ''));
    Mail.Send();
  finally
    for I := 0 to Mail.Attachments.Count -1 do
      DeleteFile(PWideChar(Mail.Attachments.Strings[I]));
    Mail.Free;
    frmPrint.Release;
    Dm.adoData.Close;
  end;
end;

procedure TdmFunction.SendFakturaMail(IdFaktura: Integer; Fakturanr, Kundenr, Navn: String);
var Mail: TJclEmail;
    I: Integer;
begin
  Mail := TJclEmail.Create;
  try
    Mail.Subject := Template_FakturaSubject(Fakturanr, Kundenr, Navn);
    Mail.Body := Template_FakturaBody(Fakturanr, Kundenr, Navn);

    Dm.adoData.Close;
    Dm.adoData.CommandText := 'select EPOST from KONTAKT ' +
      'where IDKLIENT = ' + IntToStr(Dm.g_KlientID) + ' and KONTAKTNR = ' + Kundenr;
    Dm.adoData.Open;

    Mail.Recipients.Add(Dm.adoData.Fields[0].AsString, Navn);
    frmPrint := TfrmPrint.Create(Application);
    Mail.Attachments.Add(frmPrint.LagreFaktura(IdFaktura, Fakturanr, ''));
    if Mail.Send() then
      Dm.SettFakturaStatus(20);
  finally
    for I := 0 to Mail.Attachments.Count -1 do
      DeleteFile(PWideChar(Mail.Attachments.Strings[I]));
    Mail.Free;
    frmPrint.Release;
    Dm.adoData.Close;
  end;
end;

function TdmFunction.LagNyKunde: Integer;
var IsActive: Boolean;
begin
  Result := -1;
  IsActive := Dm.cdsKunde.Active;
  if not IsActive then
    Dm.cdsKunde.Open;

  Dm.cdsKunde.First;
  Dm.cdsKunde.Insert;
  Dm.cdsKunde.Post;
  Dm.cdsKunde.ApplyUpdates(-1);
  Dm.cdsKunde.RefreshRecord;
  frmKunde := TfrmKunde.Create(Application);
  frmKunde.NyKunde := True;

  if frmKunde.ShowModal = mrOK then begin
    Result := frmKunde.cdsKundeKONTAKTNR.Value;
    Dm.cdsKunde.RefreshRecord;
  end
  else begin
    Dm.cdsKunde.Delete;
    Dm.cdsKunde.ApplyUpdates(-1);
  end;
  frmKunde.Release;

  if not IsActive then
    Dm.cdsKunde.Close;
end;

function TdmFunction.EndreKunde(Kundenr: Integer): Integer;
var IsActive: Boolean;
begin
  Result := mrCancel;
  IsActive := Dm.cdsKunde.Active;
  if not IsActive then
    Dm.cdsKunde.Open;
  Dm.cdsKunde.DisableControls;

  if Dm.cdsKunde.Locate('KONTAKTNR', Kundenr, []) then begin
    frmKunde := TfrmKunde.Create(Application);
    Result := frmKunde.ShowModal;
    if Result = mrOK then
      Dm.cdsKunde.RefreshRecord;
    frmKunde.Release;
  end
  else begin
    ErrorDialog('Feil', 'Fant ikke kunden. Prøv å oppdatere kundelisten!', btOK);
  end;

  Dm.cdsKunde.EnableControls;
  if not IsActive then
    Dm.cdsKunde.Close;
end;

function TdmFunction.LagNyLeverandor: Integer;
var IsActive: Boolean;
begin
  Result := -1;
  IsActive := Dm.cdsLev.Active;
  if not IsActive then
    Dm.cdsLev.Open;

  Dm.cdsLev.First;
  Dm.cdsLev.Insert;
  Dm.cdsLev.Post;
  Dm.cdsLev.ApplyUpdates(-1);
  Dm.cdsLev.RefreshRecord;
  frmLeverandor := TfrmLeverandor.Create(Application);
  frmLeverandor.NyLev := True;

  if frmLeverandor.ShowModal = mrOK then begin
    Result := frmLeverandor.cdsLevKONTAKTNR.Value;
    Dm.cdsLev.RefreshRecord;
  end
  else begin
    Dm.cdsLev.Delete;
    Dm.cdsLev.ApplyUpdates(-1);
  end;
  frmLeverandor.Release;

  if not IsActive then
    Dm.cdsLev.Close;
end;

function TdmFunction.EndreLeverandor(Levnr: Integer): Integer;
var IsActive: Boolean;
begin
  Result := mrCancel;
  IsActive := Dm.cdsKunde.Active;
  if not IsActive then
    Dm.cdsLev.Open;
  Dm.cdsLev.DisableControls;

  if Dm.cdsLev.Locate('KONTAKTNR', Levnr, []) then begin
    frmLeverandor := TfrmLeverandor.Create(Application);
    Result := frmLeverandor.ShowModal;
    if Result = mrOK then
      Dm.cdsLev.RefreshRecord;
    frmLeverandor.Release;
  end
  else begin
    ErrorDialog('Feil', 'Fant ikke leverandøren. Prøv å oppdatere leverandørlisten!', btOK);
  end;

  Dm.cdsLev.EnableControls;
  if not IsActive then
    Dm.cdsLev.Close;
end;

function TdmFunction.LagNyKonto: Integer;
var IsActive: Boolean;
begin
  Result := -1;

  IsActive := Dm.cdsKonto.Active;
  if not IsActive then
    Dm.cdsKonto.Open;

  //Dm.cdsKonto.First;
  Dm.cdsKonto.Insert;
  //Dm.cdsKonto.Post;
  //Dm.cdsKonto.ApplyUpdates(-1);
  //Dm.cdsKonto.RefreshRecord;

  frmKonto := TfrmKonto.Create(Application);
  frmKonto.NyKonto := True;
  if frmKonto.ShowModal = mrOK then begin
    Result := frmKonto.cdsKontoKONTONR.Value;
    Dm.cdsKonto.Refresh;
  end
  else begin
    Dm.cdsKonto.Delete;
    Dm.cdsKonto.ApplyUpdates(-1);
  end;
  frmKonto.Release;

  if not IsActive then
    Dm.cdsKonto.Close;
end;

function TdmFunction.EndreKonto(Kontonr: Integer): Integer;
var IsActive: Boolean;
begin
  Result := mrCancel;
  IsActive := Dm.cdsKonto.Active;
  if not IsActive then
    Dm.cdsKonto.Open;
  Dm.cdsKonto.DisableControls;

  if Dm.cdsKonto.Locate('KONTONR', Kontonr, []) then begin
    frmKonto := TfrmKonto.Create(Application);
    frmKonto.dbeKontonr.ReadOnly := True;
    frmKonto.dbeKontonr.Color := clBtnFace;
    Result := frmKonto.ShowModal;
    if Result = mrOk then
      Dm.cdsKonto.RefreshRecord;
    frmKonto.Release;
  end
  else begin
    ErrorDialog('Feil', 'Fant ikke kontonummeret. Prøv å oppdatere kontoplan!', btOK);
  end;

  Dm.cdsKonto.EnableControls;
  if not IsActive then
    Dm.cdsKonto.Close;
end;

function TdmFunction.LagNyttProdukt: String;
var IsActive: Boolean;
begin
  Result := '';

  IsActive := Dm.cdsProd.Active;
  if not IsActive then
    Dm.cdsProd.Open;

  Dm.cdsProd.First;
  Dm.cdsProd.Insert;
  Dm.cdsProd.Post;
  Dm.cdsProd.ApplyUpdates(-1);
  Dm.cdsProd.RefreshRecord;
  
  frmProdukt := TfrmProdukt.Create(Application);
  frmProdukt.NyttProd := True;
  if frmProdukt.ShowModal = mrOK then begin
    Result := frmProdukt.cdsProdPRODUKTNR.Value;
    Dm.cdsProd.Refresh;
  end
  else begin
    Dm.cdsProd.Delete;
    Dm.cdsProd.ApplyUpdates(-1);
  end;
  frmProdukt.Release;

  if not IsActive then
    Dm.cdsProd.Close;
end;

function TdmFunction.EndreProdukt(Produktnr: String): Integer;
begin
  frmProdukt := TfrmProdukt.Create(Application);
  frmProdukt.RedigerExternt(Produktnr);
  frmProdukt.dbeProdnr.ReadOnly := True;
  frmProdukt.dbeProdnr.Color := clBtnFace;

  Result := frmProdukt.ShowModal;
  frmProdukt.Release;
end;

procedure TdmFunction.GenererMvaPostering(IdBilag, Kontonr: Integer; Belop: Double; Text: String);
begin
  if Dm.adoSQL.CommandText <> slMvaPost.Lines.Text then
    Dm.adoSQL.CommandText := slMvaPost.Lines.Text;

  Dm.adoSQL.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  Dm.adoSQL.Parameters.ParamValues['IdBilag'] := IdBilag;
  Dm.adoSQL.Parameters.ParamValues['Kontonr'] := Kontonr;
  Dm.adoSQL.Parameters.ParamValues['Belop'] := AvrundBelop(Belop);
  Dm.adoSQL.Parameters.ParamValues['Tekst'] := Text;

  Dm.adoSQL.Execute;
end;

function TdmFunction.GenererMvaBilag(Aar, Termin: Integer): Integer;
var IsActive: Boolean;
    D: TDate;
    P: Integer;
begin
  IsActive := Dm.cdsBilag.Active;
  if not IsActive then
    Dm.cdsBilag.Open;

  if Termin = 7 then begin
    P := 13;
    D := DateUtils.EndOfAMonth(Aar, 12);
  end
  else begin
    P := Termin * 2;
    D := DateUtils.EndOfAMonth(Aar, P);
  end;

  //Dm.cdsBilag.EnableControls;
  Dm.cdsBilag.First;
  Dm.cdsBilag.Insert;
  Dm.cdsBilagSYSID.Value := 1; //Kode for at dette er automatisk Mva-bilag. Bilaget blir ikke med på mva-oppgave.
  Dm.cdsBilagGODKJENT.Value := 1;
  Dm.cdsBilagAAR.Value := Aar;
  Dm.cdsBilagPERIODENR.Value := P;
  Dm.cdsBilagDATO.Value := D;
  Dm.cdsBilagIDBILAGSERIE.Value := 50;
  Dm.cdsBilag.Post;
  Dm.cdsBilag.ApplyUpdates(-1);
  Result := Dm.cdsBilagIDBILAG.Value;
  //Dm.cdsBilag.DisableControls;
  if not IsActive then
    Dm.cdsBilag.Close;
end;


function TdmFunction.GenererBilag(BilagType: Integer; Dato: TDateTime; IdSerie: Variant): Integer;
var IsActive: Boolean;
begin
  IsActive := Dm.cdsBilag.Active;
  if not IsActive then begin
    Dm.cdsPost.Open;
    Dm.cdsBilag.Open;
  end;

  Dm.cdsBilag.First;
  Dm.cdsBilag.Insert;
  Dm.cdsBilagAAR.Value := YearOf(Dato);
  Dm.cdsBilagPERIODENR.Value := MonthOf(Dato);
  Dm.cdsBilagIDAUTOBILAG.Value := BilagType;
  Dm.cdsBilagDATO.Value := Dato;
  if IdSerie <> null then begin
    Dm.cdsBilagBILAGNR.Value := Dm.NyttBilagSeriennr(Dm.cdsBilagAAR.Value, IdSerie);
    Dm.cdsBilagIDBILAGSERIE.Value := IdSerie;
  end;
  Dm.cdsBilag.Post;
  Dm.cdsBilag.ApplyUpdates(-1);
  Result := Dm.cdsBilagIDBILAG.Value;

  if not IsActive then begin
    Dm.cdsBilag.Close;
    Dm.cdsPost.Close;
  end;
end;

// (IDBILAG, IDPOSTERING, IDKLIENT, KONTONR, MVAKODE, IDTEKST, TEKST, FAKTURANR, FORFALL, BELOP, KONTAKTNR)
procedure TdmFunction.GenererPostering(IdBilag, IdKlient, Kontonr, MvaKode, IdTekst, Tekst, Fakturanr,
  Forfall, Belop, Kontaktnr: Variant);
begin
  if Dm.adoSQL.CommandText <> slPostering.Lines.Text then
    Dm.adoSQL.CommandText := slPostering.Lines.Text;

  Dm.adoSQL.Parameters.ParamValues['IdBilag'] := IdBilag;
  Dm.adoSQL.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  Dm.adoSQL.Parameters.ParamValues['Kontonr'] := Kontonr;
  Dm.adoSQL.Parameters.ParamValues['MvaKode'] := MvaKode;
  Dm.adoSQL.Parameters.ParamValues['IdTekst'] := IdTekst;
  Dm.adoSQL.Parameters.ParamValues['Tekst'] := Tekst;
  Dm.adoSQL.Parameters.ParamValues['Fakturanr'] := Fakturanr;
  Dm.adoSQL.Parameters.ParamValues['Forfall'] := Forfall;
  Dm.adoSQL.Parameters.ParamValues['Belop'] := AvrundBelop(Belop);
  Dm.adoSQL.Parameters.ParamValues['Kontaktnr'] := Kontaktnr;

  Dm.adoSQL.Execute;
end;

function TdmFunction.HentBilagText(IdText: Integer): String;
begin
  Result := '';

  adoBilagText.Open;
  if adoBilagText.Locate('IdTekst', IdText, []) then
    Result := adoBilagTextTEKST.Value;
  adoBilagText.Close;
end;

function TdmFunction.HentMvaSats(MvaKode: Integer): Double;
var IsActive: Boolean;
begin
  IsActive := Dm.cdsMva.Active;
  if not IsActive then
    Dm.cdsMva.Open;

  if Dm.cdsMva.Locate('MvaKode', MvaKode, []) then
    Result := Dm.cdsMvaSATS.Value
  else
    Result := 0;

  if not IsActive then
    Dm.cdsMva.Close;
end;

function TdmFunction.HentMvaKonto(MvaKode: Integer): Integer;
begin
  Result := 0;

  adoMvaKonto.Open;
  if adoMvaKonto.Locate('MvaKode', MvaKode, []) then
    Result := adoMvaKontoKONTONR.Value;
  adoMvaKonto.Close;
end;

function TdmFunction.GenererInnbetalingBilag: Integer;
var IsActive: Boolean;
    Id: Integer;
    IdSerie: Variant;
begin
  Id := 0;

  IsActive := Dm.adoKlient.Active;
  if not IsActive then
    Dm.adoKlient.Open;

  if Dm.adoKlientBILAGSERIER.Value = 0 then
    IdSerie := null
  else
    IdSerie := 30; //Dersom bilagserier brukes, settes verdi 30 for utgående bilag

  if (Dm.cdsFakturaIDFAKTURAART.Value = 20) then begin //Kontant-faktura (Innbetaling finnes ikke)
    //Her føres beløpet direkte fra fakturaen mot privatkonto og kunde
    Id := GenererBilag(2, Dm.cdsFakturaFAKTURADATO.Value, IdSerie); //Innbetaling
    GenererPostering(Id, Dm.g_KlientID, Dm.adoKlientKONTOKONTANT.Value,
                     0, 6, HentBilagText(6), Null, Null,
                     Dm.cdsFakturaSUMTOT.Value, Null);
    GenererPostering(Id, Dm.g_KlientID, Dm.adoKlientKONTOKUNDE.Value,
                     0, 6, HentBilagText(6),
                     Dm.cdsFakturaFAKTURANR.AsString, Dm.cdsFakturaFORFALLDATO.Value,
                     Dm.cdsFakturaSUMTOT.Value * -1, Dm.cdsFakturaKUNDENR.Value);
  end
  else if (Dm.cdsFakturaIDFAKTURAART.Value = 100) then begin  //Kreditnota
    //Her må det bekreftes om kreditnotaen er utbetalt eller trukket fra på annen faktura
    frmBilagKreditDialog := TfrmBilagKreditDialog.Create(Application);
    if frmBilagKreditDialog.ShowModal = mrOK then begin
      if frmBilagKreditDialog.rbKontant.Checked then begin
        Id := GenererBilag(2, Dm.cdsFakturaFAKTURADATO.Value, IdSerie); //Innbetaling
        GenererPostering(Id, Dm.g_KlientID, Dm.adoKlientKONTOKONTANT.Value,
                         0, 6, HentBilagText(6) + ', Kreditnota', Null, Null,
                         Dm.cdsFakturaSUMTOT.Value, Null);
        GenererPostering(Id, Dm.g_KlientID, Dm.adoKlientKONTOKUNDE.Value,
                         0, 6, HentBilagText(6) + ', Kreditnota',
                         Dm.cdsFakturaFAKTURANR.AsString, Null,
                         Dm.cdsFakturaSUMTOT.Value * -1, Dm.cdsFakturaKUNDENR.Value);
      end
      else if frmBilagKreditDialog.rbBank.Checked then begin
        Id := GenererBilag(2, Dm.cdsFakturaFAKTURADATO.Value, IdSerie); //Innbetaling
        GenererPostering(Id, Dm.g_KlientID, Dm.adoKlientKONTOBANK.Value,
                         0, 6, HentBilagText(6) + ', Kreditnota', Null, Null,
                         Dm.cdsFakturaSUMTOT.Value, Null);
        GenererPostering(Id, Dm.g_KlientID, Dm.adoKlientKONTOBANK.Value,
                         0, 6, HentBilagText(6) + ', Kreditnota',
                         Dm.cdsFakturaFAKTURANR.AsString, Null,
                         Dm.cdsFakturaSUMTOT.Value * -1, Dm.cdsFakturaKUNDENR.Value);
      end;
      //Dersom trukket fra på faktura trengs det ikke lages bilag.
    end;
  end
  else begin
    //Her føres de ulike innbetalingene på fakturaen. Type innbetaling bestemmer konto

    Dm.cdsInnbetaling.Open;
    Dm.cdsInnbetaling.First;
    while not Dm.cdsInnbetaling.Eof do begin
      if Dm.cdsInnbetalingIDBILAG.IsNull then begin
        Id := GenererBilag(2, Dm.cdsInnbetalingDATO.Value, IdSerie); //Innbetaling
        if Dm.cdsInnbetalingIDBETALINGTYPE.Value = 20 then //Kontantbetaling
          GenererPostering(Id, Dm.g_KlientID, Dm.adoKlientKONTOKONTANT.Value,
                           0, 6, HentBilagText(6), Null, Null,
                           Dm.cdsInnbetalingBELOP.Value, Null)
        else
          GenererPostering(Id, Dm.g_KlientID, Dm.adoKlientKONTOBANK.Value,
                           0, 6, HentBilagText(6), Null, Null,
                           Dm.cdsInnbetalingBELOP.Value, Null);

        GenererPostering(Id, Dm.g_KlientID, Dm.adoKlientKONTOKUNDE.Value,
                         0, 6, HentBilagText(6),
                         Dm.cdsFakturaFAKTURANR.AsString, Dm.cdsFakturaFORFALLDATO.Value,
                         Dm.cdsInnbetalingBELOP.Value * -1, Dm.cdsFakturaKUNDENR.Value);
        Dm.cdsInnbetaling.Edit;
        Dm.cdsInnbetalingIDBILAG.Value := Id;
        Dm.cdsInnbetaling.Post;
      end;
      Dm.cdsInnbetaling.Next;
    end;
    Dm.cdsInnbetaling.ApplyUpdates(-1);
    Dm.cdsInnbetaling.Close;

  end;

  Result := Id;

  if not IsActive then
    Dm.adoKlient.Close;
end;

function TdmFunction.GenererFakturaBilag: Integer;
var Id: Integer;
    IsActive: Boolean;
    Bt: Integer;
    IdSerie: Variant;
begin
  IsActive := Dm.adoKlient.Active;
  if not IsActive then
    Dm.adoKlient.Open;

  if Dm.adoKlientBILAGSERIER.Value = 0 then
    IdSerie := null
  else
    IdSerie := 30; //Dersom bilagserier brukes 30 for utgående bilag

  Id := GenererBilag(1, Dm.cdsFakturaFAKTURADATO.Value, IdSerie); //Faktura
  Bt := 3;
  if Dm.cdsFakturaIDFAKTURAART.Value = 100 then //Kreditnota
    Bt := 4;

  //Generer Reskontro Postering
  GenererPostering(Id, Dm.g_KlientID, Dm.adoKlientKONTOKUNDE.Value,
                   0, Bt, HentBilagText(Bt), Dm.cdsFakturaFAKTURANR.AsString,
                   Dm.cdsFakturaFORFALLDATO.Value, Dm.cdsFakturaSUMTOT.Value,
                   Dm.cdsFakturaKUNDENR.Value);

  adoFakturaPost.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoFakturaPost.Parameters.ParamValues['IdFaktura'] := Dm.cdsFakturaIDFAKTURA.Value;
  adoFakturaPost.Open;
  while not adoFakturaPost.Eof do begin
    if adoFakturaPostKONTONR.IsNull then begin
      if adoFakturaPostSUM.Value <> 0 then begin //Sikkrer at det ikke blir postert linjer på kommenaterer etc.
        GenererPostering(Id, Dm.g_KlientID, Dm.adoKlientKONTOSALG.Value,
                         3, Bt, HentBilagText(Bt),
                         Dm.cdsFakturaFAKTURANR.AsString, Null,
                         adoFakturaPostSUM.Value * -1, Null);

        //Generer moms postering
        //Her kan det bli feil mva konto dersom andre satser brukes på fakturalinja...
        GenererPostering(Id, Dm.g_KlientID, HentMvaKonto(3),
                         Null, Bt, HentBilagText(Bt), Dm.cdsFakturaFAKTURANR.AsString, Null,
                         (adoFakturaPostSUM.Value * (adoFakturaPostMVA.AsFloat / 100) ) * -1, Null);
      end;
    end
    else begin
      //Posteringer for varer med andre kontoer spesifisert...
      GenererPostering(Id, Dm.g_KlientID, adoFakturaPostKONTONR.Value,
                       adoFakturaPostMVAKODE.Value, Bt, HentBilagText(Bt),
                       Dm.cdsFakturaFAKTURANR.AsString, Null,
                       adoFakturaPostSUM.Value * -1, Null);

      //Generer moms postering
      if adoFakturaPostMVAKODE.Value <> 0 then
        GenererPostering(Id, Dm.g_KlientID, HentMvaKonto(adoFakturaPostMVAKODE.Value),
                         Null, Bt, HentBilagText(Bt), Dm.cdsFakturaFAKTURANR.AsString, Null,
                         (adoFakturaPostSUM.Value * (HentMvaSats(adoFakturaPostMVAKODE.Value) / 100) ) * -1, Null);

    end;

    adoFakturaPost.Next;
  end;
  adoFakturaPost.Close;

  if not IsActive then
    Dm.adoKlient.Close;

  Dm.cdsFaktura.Edit;
  Dm.cdsFakturaIDBILAG.Value := Id;
  Dm.cdsFaktura.Post;
  Dm.cdsFaktura.ApplyUpdates(-1);
  Result := Id;
end;


procedure TdmFunction.adoAboLinjeCalcFields(DataSet: TDataSet);
var
  Eks, Ink: Double;
begin
  if (not adoAboLinjeANTALL.IsNull) and (not adoAboLinjePRIS.IsNull) then begin
    dmFunction.CalcEKSandINK(adoAboLinjeANTALL.AsFloat, adoAboLinjePRIS.AsFloat,
      adoAboLinjeRABATT.AsFloat, adoAboLinjeMVA.AsFloat, Eks, Ink);
    adoAboLinjeSUMEKS.Value := Eks;
    adoAboLinjeSUMINK.Value := Ink;
  end;
end;

procedure TdmFunction.adoLisensBeforeOpen(DataSet: TDataSet);
begin
  adoLisens.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
end;

procedure TdmFunction.adoMvaKontoBeforeOpen(DataSet: TDataSet);
begin
  adoMvaKonto.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
end;

procedure TdmFunction.adoOrdreLinjeCalcFields(DataSet: TDataSet);
var
  Eks, Ink: Double;
begin
  if (not adoOrdreLinjeANTALL.IsNull) and (not adoOrdreLinjePRIS.IsNull) then begin
    dmFunction.CalcEKSandINK(adoOrdreLinjeANTALL.AsFloat, adoOrdreLinjePRIS.AsFloat,
      adoOrdreLinjeRABATT.AsFloat, adoOrdreLinjeMVA.AsFloat, Eks, Ink);
    adoOrdreLinjeSUMEKS.Value := Eks;
    adoOrdreLinjeSUMINK.Value := Ink;
  end;
end;

const
  strId = '<!-- Her kommer dokumentet -->';

function TdmFunction.HentBrRegData(Orgnr: String): String;
var
  Url, S: String;
  Sl: TStringList;
  I, Ix: Integer;
begin
  Url := JclIniFiles.IniReadString(Dir + 'config.ini', 'Innstillinger', 'UrlBrReg');
  if Url <> '' then begin
    Orgnr := Dm.RenskOrgNr(Orgnr);
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

procedure TdmFunction.MoveRecordUp(Cds: TClientDataSet; SkipFields: String);
var Tmp, Rec: array of Variant;
    I: Integer;
begin
  if Cds.Bof then Exit;

  Cds.DisableControls;
  SetLength(Rec, Cds.Fields.Count);
  SetLength(Tmp, Cds.Fields.Count);

  for I := 0 to Cds.Fields.Count -1 do
    Rec[I] := Cds.Fields[I].Value;
  Cds.Prior;

  for I := 0 to Cds.Fields.Count -1 do
    Tmp[I] := Cds.Fields[I].Value;

  if Tmp[1] = Rec[1] then begin
    Cds.EnableControls;
    Exit;
  end;

  Cds.Edit;
  for I := 0 to Cds.Fields.Count -1 do
    if Pos(Cds.Fields[I].FieldName, SkipFields) = 0 then
      Cds.Fields[I].Value := Rec[I];
  Cds.Post;

  Cds.Next;
  Cds.Edit;
  for I := 0 to Cds.Fields.Count -1 do
    if Pos(Cds.Fields[I].FieldName, SkipFields) = 0 then
      Cds.Fields[I].Value := Tmp[I];
  Cds.Post;
  Cds.Prior;

  Cds.EnableControls;
end;

procedure TdmFunction.MoveRecordDown(Cds: TClientDataSet; SkipFields: String);
var Tmp, Rec: array of Variant;
    I: Integer;
begin
  if Cds.Eof then Exit;

  Cds.DisableControls;
  SetLength(Rec, Cds.Fields.Count);
  SetLength(Tmp, Cds.Fields.Count);

  for I := 0 to Cds.Fields.Count -1 do
    Rec[I] := Cds.Fields[I].Value;
  Cds.Next;

  for I := 0 to Cds.Fields.Count -1 do
    Tmp[I] := Cds.Fields[I].Value;

  if Tmp[1] = Rec[1] then begin
    Cds.EnableControls;
    Exit;
  end;

  Cds.Edit;
  for I := 0 to Cds.Fields.Count -1 do
    if Pos(Cds.Fields[I].FieldName, SkipFields) = 0 then
      Cds.Fields[I].Value := Rec[I];
  Cds.Post;

  Cds.Prior;
  Cds.Edit;
  for I := 0 to Cds.Fields.Count -1 do
    if Pos(Cds.Fields[I].FieldName, SkipFields) = 0 then
      Cds.Fields[I].Value := Tmp[I];
  Cds.Post;
  Cds.Next;

  Cds.EnableControls;
end;

function TdmFunction.LeggTilProdukt(Cds: TClientDataSet; Prodnr: String;
  Append: Boolean): Integer;
begin
  adoProd.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoProd.Parameters.ParamValues['Pnr'] := Prodnr;
  adoProd.Open;
  Result := adoProd.RecordCount;

  if Result = 1 then begin
    if Append then
      Cds.Append
    else
      Cds.Edit;
    OppdaterProduktFelter(Cds, Prodnr);
    Cds.Post;
  end;

  adoProd.Close;
end;

function TdmFunction.LeggTilLevProdukt(Cds: TClientDataSet; Prodnr: String;
  Append: Boolean): Integer;
begin
  adoProdLev.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoProdLev.Parameters.ParamValues['LPnr'] := Prodnr;
  adoProdLev.Open;
  Result := adoProdLev.RecordCount;

  if Result = 1 then begin
    if Append then
      Cds.Append
    else
      Cds.Edit;
    OppdaterProduktFelter(Cds, Prodnr, True);
    Cds.Post;
  end;

  adoProdLev.Close;
end;

procedure TdmFunction.OppdaterProduktFelter(Cds: TClientDataSet; Prodnr: String;
  AdoLev: Boolean = False);
begin
  if AdoLev then begin
    Cds.FieldByName('PRODNR').AsString := adoProdLevPRODUKTNR.Value; //Prodnr;
    Cds.FieldByName('TEKST').AsString := adoProdLevNAVN.Value;
    if adoProdLevSPES.Value <> '' then begin
      if adoProdLevNAVN.Value[Length(adoProdLevNAVN.Value)] = ',' then
        Cds.FieldByName('TEKST').AsString := Cds.FieldByName('TEKST').AsString
           + ' ' + adoProdLevSPES.Value
      else
        Cds.FieldByName('TEKST').AsString := Cds.FieldByName('TEKST').AsString
           + ', ' + adoProdLevSPES.Value
    end;
    Cds.FieldByName('ENHET').Value := adoProdLevENHET.Value;
    Cds.FieldByName('INNPRIS').Value := adoProdLevINNPRIS.Value;
    Cds.FieldByName('PRIS').Value := adoProdLevPRIS.Value;
    Cds.FieldByName('MVA').Value := adoProdLevMVA.Value;
    Cds.FieldByName('AVGIFT').Value := adoProdLevAVGIFT.Value;
  end
  else begin
    Cds.FieldByName('PRODNR').AsString := adoProdPRODUKTNR.Value; //Prodnr;
    Cds.FieldByName('TEKST').AsString := adoProdNAVN.Value;
    if adoProdSPES.Value <> '' then begin
      if adoProdNAVN.Value[Length(adoProdNAVN.Value)] = ',' then
        Cds.FieldByName('TEKST').AsString := Cds.FieldByName('TEKST').AsString
           + ' ' + adoProdSPES.Value
      else
        Cds.FieldByName('TEKST').AsString := Cds.FieldByName('TEKST').AsString
           + ', ' + adoProdSPES.Value
    end;
    Cds.FieldByName('ENHET').Value := adoProdENHET.Value;
    Cds.FieldByName('INNPRIS').Value := adoProdINNPRIS.Value;
    Cds.FieldByName('PRIS').Value := adoProdPRIS.Value;
    Cds.FieldByName('MVA').Value := adoProdMVA.Value;
    Cds.FieldByName('AVGIFT').Value := adoProdAVGIFT.Value;
  end;
end;

function TdmFunction.SorterProduktLinjer(Cds: TClientDataSet): Double;
var
  IxName: String;
  SortID: Double;
begin
  Result := 0;
  frmFakturaSort := TfrmFakturaSort.Create(Application);
  if frmFakturaSort.ShowModal = mrOK then begin
    case frmFakturaSort.rgAsc.ItemIndex of
      0: begin
        case frmFakturaSort.rgSort.ItemIndex of
          0: IxName := 'ixProdnr';
          1: IxName := 'ixTekst';
          2: IxName := 'ixLinjeID';
        end;
      end;
      1: begin
        case frmFakturaSort.rgSort.ItemIndex of
          0: IxName := 'ixProdnrDesc';
          1: IxName := 'ixTekstDesc';
          2: IxName := 'ixLinjeIDDesc';
        end;
      end;
    end;

    Cds.DisableControls;
    Cds.IndexName := IxName;
    SortID := 0;

    Cds.First;
    while not Cds.Eof do begin
      SortID := SortID + 10;
      Cds.Edit;
      Cds.FieldByName('SORTID').Value := SortID;
      Cds.Post;
      Cds.Next;
    end;
    Cds.First;

    Result := SortID;
    Cds.IndexName := 'ixDefault';
    Cds.EnableControls;

  end;
  frmFakturaSort.Release;
end;

function TdmFunction.HentFakturaAdresse: String;
var
  Str: String;
begin
  Str := '';

  AddStrToTxt(adoKundeNAVN.Value, Str);
  if (adoKundePOSTADR1.Value <> '') or (adoKundePOSTADR2.Value <> '') then begin
    AddStrToTxt(adoKundePOSTADR1.Value, Str);
    AddStrToTxt(adoKundePOSTADR2.Value, Str);
  end
  else if (adoKundeBESOKADR1.Value <> '') or (adoKundeBESOKADR2.Value <> '') then begin
    AddStrToTxt(adoKundeBESOKADR1.Value, Str);
    AddStrToTxt(adoKundeBESOKADR2.Value, Str);
  end;

  if adoKundePOSTNR.Value <> '' then
    AddStrToTxt(adoKundePOSTNR.Value + ' ' + adoKundePOSTSTED.Value, Str)
  else if adoKundeBESOKPOSTNR.Value <> '' then
    AddStrToTxt(adoKundeBESOKPOSTNR.Value + ' ' + adoKundeBESOKPSTED.Value, Str);

  if AnsiUpperCase(adoKundeLAND.Value) <> 'NORGE' then
    AddStrToTxt(AnsiUpperCase(adoKundeLAND.Value), Str);

  Result := Str;
end;

function TdmFunction.HentLeveringsAdresse: String;
var
  Str: String;
begin
  Str := '';

  AddStrToTxt(adoKundeNAVN.Value, Str);

  if (adoKundeBESOKADR1.Value <> '') or (adoKundeBESOKADR2.Value <> '') then begin
    AddStrToTxt(adoKundeBESOKADR1.Value, Str);
    AddStrToTxt(adoKundeBESOKADR2.Value, Str);
  end
  else if (adoKundePOSTADR1.Value <> '') or (adoKundePOSTADR2.Value <> '') then begin
    AddStrToTxt(adoKundePOSTADR1.Value, Str);
    AddStrToTxt(adoKundePOSTADR2.Value, Str);
  end;

  if adoKundeBESOKPOSTNR.Value <> '' then
    AddStrToTxt(adoKundeBESOKPOSTNR.Value + ' ' + adoKundeBESOKPSTED.Value, Str)
  else if adoKundePOSTNR.Value <> '' then
    AddStrToTxt(adoKundePOSTNR.Value + ' ' + adoKundePOSTSTED.Value, Str);

  if AnsiUpperCase(adoKundeLAND.Value) <> 'NORGE' then
    AddStrToTxt(AnsiUpperCase(adoKundeLAND.Value), Str);

  Result := Str;
end;

function TdmFunction.GenererAboOrdre(IdAbo, Kundenr: Integer; OrdreDato: TDate;
  InternRef, Refnr: String): Integer;
var
  KlientActive, IsActive: Boolean;
  Eks, Mva, Ink, Rab, Avg, Inn: Double;
begin
  IsActive := Dm.cdsOrdre.Active;
  if not IsActive then
    Dm.cdsOrdre.Open;

  adoKunde.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoKunde.Parameters.ParamValues['Knr'] := Kundenr;
  adoKunde.Open;
  if adoKunde.RecordCount = 1 then begin

    //Oppretter en ny ordre
    Dm.cdsOrdre.First;
    Dm.cdsOrdre.Insert;
    Dm.cdsOrdreORDREDATO.Value := OrdreDato;
    Dm.cdsOrdreKUNDENR.Value := Kundenr;
    Dm.cdsOrdreREFNR.Value := Refnr;
    Dm.cdsOrdreINTERNREF.Value := InternRef;
    Dm.cdsOrdreEKSTERNREF.Value := adoKundeKONTAKT.Value;
    Dm.cdsOrdre.Post;
    Dm.cdsOrdre.ApplyUpdates(-1);

    //Oppdaterer andre felter i ordren som ikke er tilgjengelige i CDS.
    adoOrderUpdate.Parameters.ParamValues['FaktAdr'] := HentFakturaAdresse;
    adoOrderUpdate.Parameters.ParamValues['LevAdr'] := HentLeveringsAdresse;
    adoOrderUpdate.Parameters.ParamValues['LevDato'] := Dm.cdsAboFORFALL.Value + Dm.cdsAboFAKTURADAGER.Value;
    adoOrderUpdate.Parameters.ParamValues['IdOrdre'] := Dm.cdsOrdreIDORDRE.Value;

    KlientActive := Dm.adoKlient.Active;
    if not KlientActive then
      Dm.adoKlient.Open;
    adoOrderUpdate.Parameters.ParamValues['Tekst'] := Dm.adoKlientORDRETEKST.Value;
    adoOrderUpdate.Parameters.ParamValues['Logo'] := Dm.adoKlientLOGO.Value;
    if not KlientActive then
      Dm.adoKlient.Close;

    adoOrderUpdate.Execute;
  end;
  adoKunde.Close;

  //Setter inn linjene på ordren.
  GenererAboOrdreLinjer(IdAbo, Dm.cdsOrdreIDORDRE.Value);

  //Summerer ordren.
  adoAboLinje.Parameters.ParamValues['IdAbo'] := IdAbo;
  adoAboLinje.Open;
  SummerLinjer(adoAboLinje, Eks, Mva, Ink, Rab, Avg, Inn);
  Dm.cdsOrdre.Edit;
  Dm.cdsOrdreSUMEKS.Value := Eks;
  Dm.cdsOrdreSUMMVA.Value := Mva;
  Dm.cdsOrdreSUMTOT.Value := Ink;
  Dm.cdsOrdreSUMRAB.Value := Rab;
  Dm.cdsOrdre.Post;
  Dm.cdsOrdre.ApplyUpdates(-1);
  adoAboLinje.Close;

  Dm.cdsOrdre.RefreshRecord;
  Result := Dm.cdsOrdreIDORDRE.Value;

  if not IsActive then
    Dm.cdsOrdre.Close;
end;

function TdmFunction.ExpandVars(Tekst: String): String;
begin
  Result := StringReplace(Tekst, '@NNY', IntToStr(YearOf(IncYear(Date, 2))), [rfReplaceAll]);
  Result := StringReplace(Result, '@NY', IntToStr(YearOf(IncYear(Date, 1))), [rfReplaceAll]);
  Result := StringReplace(Result, '@Y', IntToStr(YearOf(Date)), [rfReplaceAll]);

  Result := StringReplace(Result, '@NNM', IntToStr(MonthOf(IncMonth(Date, 2))), [rfReplaceAll]);
  Result := StringReplace(Result, '@NM', IntToStr(MonthOf(IncMonth(Date, 1))), [rfReplaceAll]);
  Result := StringReplace(Result, '@M', IntToStr(MonthOf(Date)), [rfReplaceAll]);
end;


procedure TdmFunction.GenererAboOrdreLinjer(IdAbo, IdOrdre: Integer);
begin
  adoAboLinje.Parameters.ParamValues['IdAbo'] := IdAbo;
  adoAboLinje.Open;
  while not adoAboLinje.Eof do begin
    GenererOrdreLinje(IdOrdre, adoAboLinjeSORTID.Value, adoAboLinjePRODNR.Value,
      ExpandVars(adoAboLinjeTEKST.Value), adoAboLinjeANTALL.AsVariant,
      adoAboLinjeENHET.AsVariant, adoAboLinjeINNPRIS.AsVariant,
      adoAboLinjePRIS.AsVariant, adoAboLinjeAVGIFT.AsVariant,
      adoAboLinjeRABATT.AsVariant, adoAboLinjeMVA.AsVariant);
    adoAboLinje.Next;
  end;
  adoAboLinje.Close;
end;

procedure TdmFunction.GenererOrdreLinje(IdOrdre, SortID, Prodnr, Tekst, Antall,
  Enhet, Innpris, Pris, Avgift, Rabatt, Mva: Variant);
begin
  if Dm.adoSQL.CommandText <> slOrdreLinje.Lines.Text then
    Dm.adoSQL.CommandText := slOrdreLinje.Lines.Text;

  Dm.adoSQL.Parameters.ParamValues['IdOrdre'] := IdOrdre;
  Dm.adoSQL.Parameters.ParamValues['SortID'] := SortID;
  Dm.adoSQL.Parameters.ParamValues['Prodnr'] := Prodnr;
  Dm.adoSQL.Parameters.ParamValues['Tekst'] := Tekst;
  Dm.adoSQL.Parameters.ParamValues['Antall'] := Antall;
  Dm.adoSQL.Parameters.ParamValues['Enhet'] := Enhet;
  if not VarIsNull(InnPris) then
    Dm.adoSQL.Parameters.ParamValues['Innpris'] := AvrundBelop(Innpris)
  else
    Dm.adoSQL.Parameters.ParamValues['Innpris'] := Innpris;
  if not VarIsNull(Pris) then
    Dm.adoSQL.Parameters.ParamValues['Pris'] := AvrundBelop(Pris)
  else
    Dm.adoSQL.Parameters.ParamValues['Pris'] := Pris;
  Dm.adoSQL.Parameters.ParamValues['Avgift'] := Avgift;
  Dm.adoSQL.Parameters.ParamValues['Rabatt'] := Rabatt;
  Dm.adoSQL.Parameters.ParamValues['Mva'] := Mva;

  Dm.adoSQL.Execute;
end;

procedure TdmFunction.SummerLinjer(DataSet: TDataSet; out Eks, Mva, Ink, Rab,
  Avg, Inn: Double);
begin
  Eks := 0;
  Mva := 0;
  Ink := 0;
  Rab := 0;
  Avg := 0;
  Inn := 0;

  DataSet.First;
  while not DataSet.Eof do begin
    Eks := Eks + DataSet.FieldByName('SUMEKS').AsFloat;
    Mva := Mva + (DataSet.FieldByName('SUMEKS').AsFloat * (DataSet.FieldByName('MVA').AsFloat / 100));
    Ink := Ink + DataSet.FieldByName('SUMINK').AsFloat;
    Rab := Rab + (DataSet.FieldByName('ANTALL').AsFloat *
      DataSet.FieldByName('PRIS').AsFloat * (DataSet.FieldByName('RABATT').AsFloat / 100));
    Avg := Avg + (DataSet.FieldByName('ANTALL').AsFloat * DataSet.FieldByName('AVGIFT').AsFloat);
    Inn := Inn + (DataSet.FieldByName('ANTALL').AsFloat * DataSet.FieldByName('INNPRIS').AsFloat);
    DataSet.Next;
  end;
end;

procedure TdmFunction.CalcEKSandINK(Ant, Pris, Rab, Mva: Double; out Eks, Ink: Double);
var
  Tmp: Double;
begin
  Tmp := Ant * Pris;
  if Rab = 0 then
    Eks :=  Tmp
  else
    Eks :=  Tmp - ((Rab * Tmp) / 100);

  if Mva = 0 then
    Ink := Eks
  else
    Ink := Eks * (1 + (Mva / 100));
end;

function TdmFunction.GenererOrdreFaktura(IdOrdre, Ordrenr, Kundenr: Integer; FakturaDato: TDate;
  IRef, ERef, Refnr: String; ForfallsDato: TDate = 0): Integer;
var
  KlientActive, IsActive: Boolean;
  Eks, Mva, Ink, Rab, Avg, Inn: Double;
begin
  IsActive := Dm.cdsFaktura.Active;
  if not IsActive then
    Dm.cdsFaktura.Open;

  adoKunde.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoKunde.Parameters.ParamValues['Knr'] := Kundenr;
  adoKunde.Open;
  if adoKunde.RecordCount = 1 then begin

    //Oppretter en ny faktura
    Dm.cdsFaktura.First;
    Dm.cdsFaktura.Insert;
    if FakturaDato > 0 then
      Dm.cdsFakturaFAKTURADATO.Value := FakturaDato;
    Dm.cdsFakturaKUNDENR.Value := Kundenr;
    Dm.cdsFakturaREFNR.Value := Refnr;
    if ForfallsDato = 0 then
      Dm.cdsFakturaFORFALLDATO.Value := Dm.cdsFakturaFAKTURADATO.Value + adoKundeFORFALLSDAGER.Value
    else
      Dm.cdsFakturaFORFALLDATO.Value := ForfallsDato;
    Dm.cdsFakturaORDRENR.Value := Ordrenr;
    Dm.cdsFaktura.Post;
    Dm.cdsFaktura.ApplyUpdates(-1);

    //Oppdaterer andre felter i ordren som ikke er tilgjengelige i CDS.
    KlientActive := Dm.adoKlient.Active;
    if not KlientActive then
      Dm.adoKlient.Open;

    adoFakturaUpdate.Parameters.ParamValues['KundeAdr'] := HentFakturaAdresse;
    adoFakturaUpdate.Parameters.ParamValues['KlientAdr'] := Dm.HentKlientAdresse;
    adoFakturaUpdate.Parameters.ParamValues['Tekst'] := HentFakturaTekst;
    adoFakturaUpdate.Parameters.ParamValues['Logo'] := Dm.adoKlientLOGO.Value;
    adoFakturaUpdate.Parameters.ParamValues['EksternRef'] := ERef;
    adoFakturaUpdate.Parameters.ParamValues['InternRef'] := IRef;
    adoFakturaUpdate.Parameters.ParamValues['IdFaktura'] := Dm.cdsFakturaIDFAKTURA.Value;

    if not KlientActive then
      Dm.adoKlient.Close;

    adoFakturaUpdate.Execute;
  end;
  adoKunde.Close;

  //Setter inn linjene på ordren.
  GenererOrdreFakturaLinjer(IdOrdre, Dm.cdsFakturaIDFAKTURA.Value);

  //Summerer ordren.
  adoOrdreLinje.Parameters.ParamValues['IdOrdre'] := IdOrdre;
  adoOrdreLinje.Open;
  SummerLinjer(adoOrdreLinje, Eks, Mva, Ink, Rab, Avg, Inn);
  Dm.cdsFaktura.Edit;
  Dm.cdsFakturaSUMEKS.Value := Eks;
  Dm.cdsFakturaSUMMVA.Value := Mva;
  Dm.cdsFakturaSUMTOT.Value := Ink;
  Dm.cdsFakturaSUMRAB.Value := Rab;
  Dm.cdsFaktura.Post;
  Dm.cdsFaktura.ApplyUpdates(-1);
  adoOrdreLinje.Close;

  Dm.cdsFaktura.RefreshRecord;
  Result := Dm.cdsFakturaIDFaktura.Value;

  if not IsActive then
    Dm.cdsFaktura.Close;
end;

function TdmFunction.HentFakturaTekst: String;
begin
  Dm.adoTekst.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  Dm.adoTekst.Parameters.ParamValues['IdStatus'] := 20;
  Dm.adoTekst.Open;
  Result := Dm.adoTekst.FieldByName('Tekst').AsString;
  Dm.adoTekst.Close;
end;

procedure TdmFunction.GenererOrdreFakturaLinjer(IdOrdre, IdFaktura: Integer);
begin
  adoOrdreLinje.Parameters.ParamValues['IdOrdre'] := IdOrdre;
  adoOrdreLinje.Open;
  while not adoOrdreLinje.Eof do begin
    GenererFakturaLinje(IdFaktura, adoOrdreLinjeSORTID.Value, adoOrdreLinjePRODNR.Value,
      adoOrdreLinjeTEKST.Value, adoOrdreLinjeANTALL.AsVariant,
      adoOrdreLinjeENHET.AsVariant, adoOrdreLinjeINNPRIS.AsVariant,
      adoOrdreLinjePRIS.AsVariant, adoOrdreLinjeAVGIFT.AsVariant,
      adoOrdreLinjeRABATT.AsVariant, adoOrdreLinjeMVA.AsVariant);
    adoOrdreLinje.Next;
  end;
  adoOrdreLinje.Close;
end;

procedure TdmFunction.GenererFakturaLinje(IdFaktura, SortID, Prodnr, Tekst, Antall,
  Enhet, Innpris, Pris, Avgift, Rabatt, Mva: Variant);
begin
  if Dm.adoSQL.CommandText <> slFakturaLinje.Lines.Text then
    Dm.adoSQL.CommandText := slFakturaLinje.Lines.Text;

  Dm.adoSQL.Parameters.ParamValues['IdFaktura'] := IdFaktura;
  Dm.adoSQL.Parameters.ParamValues['SortID'] := SortID;
  Dm.adoSQL.Parameters.ParamValues['Prodnr'] := Prodnr;
  Dm.adoSQL.Parameters.ParamValues['Tekst'] := Tekst;
  Dm.adoSQL.Parameters.ParamValues['Antall'] := Antall;
  Dm.adoSQL.Parameters.ParamValues['Enhet'] := Enhet;
  if not VarIsNull(InnPris) then
    Dm.adoSQL.Parameters.ParamValues['Innpris'] := AvrundBelop(Innpris)
  else
    Dm.adoSQL.Parameters.ParamValues['Innpris'] := Innpris;
  if not VarIsNull(Pris) then
    Dm.adoSQL.Parameters.ParamValues['Pris'] := AvrundBelop(Pris)
  else
    Dm.adoSQL.Parameters.ParamValues['Pris'] := Pris;
  Dm.adoSQL.Parameters.ParamValues['Avgift'] := Avgift;
  Dm.adoSQL.Parameters.ParamValues['Rabatt'] := Rabatt;
  Dm.adoSQL.Parameters.ParamValues['Mva'] := Mva;

  Dm.adoSQL.Execute;
end;

procedure TdmFunction.SlettBilagDok(ClientDataSet: TClientDataSet; ApplyUpdates: Boolean);
begin
  if ConfirmDialog('Bekfret', 'Dette vil fjerne dokumentet fra bilaget og harddisken. Fortsett?') then begin
    DeleteFile(PWideChar(Dm.g_DocDir + ClientDataSet.FieldByName('DOKUMENT').AsString));
    ClientDataSet.Edit;
    ClientDataSet.FieldByName('DOKUMENT').Clear;
    ClientDataSet.Post;
    if ApplyUpdates then
      ClientDataSet.ApplyUpdates(-1);
  end;
end;

procedure TdmFunction.LinkBilagDok(ClientDataSet: TClientDataSet; ApplyUpdates: Boolean);
var
  Fn: String;
begin
  if OpenDialog.Execute then begin
    Fn := ClientDataSet.FieldByName('IDBILAG').AsString + '_' + ExtractFileName(OpenDialog.FileName);
    CopyFile(PWideChar(OpenDialog.FileName), PWideChar(Dm.g_DocDir + Fn), False);
    ClientDataSet.Edit;
    ClientDataSet.FieldByName('DOKUMENT').AsString := Fn;
    ClientDataSet.Post;
    if ApplyUpdates then
      ClientDataSet.ApplyUpdates(-1);

    if blsDialogs.ConfirmDialog('Slett fil?', 'Slett filen som ble linket inn fra sin opprinnelige plassering?') then
      DeleteFile(PWideChar(OpenDialog.FileName));
  end;
end;




end.
