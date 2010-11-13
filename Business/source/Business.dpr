program Business;

uses
  FastMM4,
  JclAppInst,
  Forms,
  rsMeny in 'rsMeny.pas' {frmCRM},
  rsData in 'rsData.pas' {Dm: TDataModule},
  rsLogin in 'rsLogin.pas' {frmLogin},
  rsPostImport in 'rsPostImport.pas' {frmPostImport},
  rsPostnr in 'rsPostnr.pas' {frmPostnr},
  rsWebFirmaInfo in 'rsWebFirmaInfo.pas' {frmWebFirmaInfo},
  rsLeverandor in 'rsLeverandor.pas' {frmLeverandor},
  rsRapport in 'rsRapport.pas' {frmRapport},
  rsKunde in 'rsKunde.pas' {frmKunde},
  rsPostnrInfo in 'rsPostnrInfo.pas' {frmPostnrInfo},
  rsProdukt in 'rsProdukt.pas' {frmProdukt},
  rsPostnrReg in 'rsPostnrReg.pas' {frmPostnrReg},
  rsImpProd in 'rsImpProd.pas' {frmImportProd},
  rsKontoListe in 'rsKontoListe.pas' {frmKontoListe},
  rsKonto in 'rsKonto.pas' {frmKonto},
  rsFaktura in 'rsFaktura.pas' {frmFaktura},
  rsKundeSok in 'rsKundeSok.pas' {frmKundeSok},
  rsProduktSok in 'rsProduktSok.pas' {frmProduktSok},
  rsPrint in 'rsPrint.pas' {frmPrint},
  rsFakturaTekst in 'rsFakturaTekst.pas' {frmFakturaTekst},
  rsVelgKategori in 'rsVelgKategori.pas' {frmVelgKat},
  rsEndreOrdrenr in 'rsEndreOrdrenr.pas' {frmEndreOrdrenr},
  rsKlient in 'rsKlient.pas' {frmKlient},
  rsBetalt in 'rsBetalt.pas' {frmBetalt},
  rsInnbetalinger in 'rsInnbetalinger.pas' {frmInnbetalinger},
  rsPurring in 'rsPurring.pas' {frmPurring},
  rsFakturaStatus in 'rsFakturaStatus.pas' {frmFakturaStatus},
  rsPrisHistorikk in 'rsPrisHistorikk.pas' {frmPrisHistorikk},
  rsInnstillinger in 'rsInnstillinger.pas' {frmInnstillinger},
  rsBilag in 'rsBilag.pas' {frmBilag},
  rsFakturaSort in 'rsFakturaSort.pas' {frmFakturaSort},
  rsEksport in 'rsEksport.pas' {frmEksport},
  rsSalgstall in 'rsSalgstall.pas' {frmSalgstall},
  rsFakturaSok in 'rsFakturaSok.pas' {frmFakturaSok},
  rsBilagTekst in 'rsBilagTekst.pas' {frmBilagTekst},
  rsFunction in 'rsFunction.pas' {dmFunction: TDataModule},
  rsKontoSok in 'rsKontoSok.pas' {frmKontoSok},
  rsBilagKontoSok in 'rsBilagKontoSok.pas' {frmBilagKontoSok},
  rsAbout in 'rsAbout.pas' {frmAbout},
  rsEndreBilagnr in 'rsEndreBilagnr.pas' {frmEndreBilagnr},
  rsBilagNyKonto in 'rsBilagNyKonto.pas' {frmBilagNyKonto},
  rsMvaSok in 'rsMvaSok.pas' {frmMvaSok},
  rsMvaPeriode in 'rsMvaPeriode.pas' {frmMvaPeriode},
  rsBilagAutoGen in 'rsBilagAutoGen.pas' {frmBilagAutoGen},
  rsBilagKreditDialog in 'rsBilagKreditDialog.pas' {frmBilagKreditDialog},
  rsOrdre in 'rsOrdre.pas' {frmOrdre},
  rsBilagSok in 'rsBilagSok.pas' {frmBilagSok},
  rsKundeBrReg in 'rsKundeBrReg.pas' {frmKundeBrReg},
  rsPreview in 'rsPreview.pas' {frmPreview},
  rsKontoOppslag in 'rsKontoOppslag.pas' {frmKontoOppslag},
  rsFakturaRef in 'rsFakturaRef.pas' {frmFakturaRef},
  rsKontaktGruppe in 'rsKontaktGruppe.pas' {frmKontaktGruppe},
  rsAbonnement in 'rsAbonnement.pas' {frmAbonnement},
  rsAboGenerering in 'rsAboGenerering.pas' {frmAboGenerering},
  rsLisens in 'rsLisens.pas' {frmLisens},
  rsPeriode in 'rsPeriode.pas' {frmPeriode},
  rsEndreFakturanr in 'rsEndreFakturanr.pas' {frmEndreFakturanr},
  rsAboHistorikk in 'rsAboHistorikk.pas' {frmAboHistorikk},
  rsBilagSerier in 'rsBilagSerier.pas' {frmBilagSerier},
  rsBilagSerierSymbol in 'rsBilagSerierSymbol.pas' {frmBilagSerieSymbol},
  rsException in 'rsException.pas' {frmExceptionDialog};
{$R *.res}

begin
  JclAppInstances.CheckSingleInstance; // Added instance checking
  Application.Initialize;
  Application.Title := 'BLS Business';
  Application.CreateForm(TfrmCRM, frmCRM);
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TdmFunction, dmFunction);
  Application.Run;
end.
