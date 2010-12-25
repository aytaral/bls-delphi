program Fakuva5;

uses
  FastMM4,
  Forms,
  SysUtils,
  Windows,
  Dialogs,
  blsFileUtil,
  JclAppInst,
  unitReg in 'unitReg.pas',
  faFakuva in 'faFakuva.pas' {FrmFakuva},
  DataModul in 'DataModul.pas' {Dm: TDataModule},
  faRptKunde in 'faRptKunde.pas' {RptKunde: TQuickRep},
  faRptEtikett in 'faRptEtikett.pas' {RptEtikett: TQuickRep},
  faRptLeverandorTlf in 'faRptLeverandorTlf.pas' {RptLeverandorTlf: TQuickRep},
  faRptVare in 'faRptVare.pas' {RptVare: TQuickRep},
  faRptGrpVare in 'faRptGrpVare.pas' {RptVareGrp: TQuickRep},
  faKategori in 'faKategori.pas' {FrmKategori},
  faFaktura in 'faFaktura.pas' {FrmFaktura},
  faHentKunde in 'faHentKunde.pas' {FrmHentKunde},
  faRptVareKat in 'faRptVareKat.pas' {RptVareKat: TQuickRep},
  faReferanse in 'faReferanse.pas' {FrmReferanse},
  faRptLeverandor in 'faRptLeverandor.pas' {RptLeverandor: TQuickRep},
  faRptVareLev in 'faRptVareLev.pas' {RptVareLev: TQuickRep},
  faRptPurring in 'faRptPurring.pas' {RptPurring: TQuickRep},
  faProgress in 'faProgress.pas' {FrmProgress},
  faRptOmsetning in 'faRptOmsetning.pas' {RptOmsetning: TQuickRep},
  faRptOrdre in 'faRptOrdre.pas' {RptOrdre: TQuickRep},
  faVareSok in 'faVareSok.pas' {FrmVareSok},
  faAboutBox in 'faAboutBox.pas' {FrmAboutBox},
  faSplash in 'faSplash.pas' {FrmSplash},
  faKunde in 'faKunde.pas' {FrmKunde},
  faInnstillinger in 'faInnstillinger.pas' {FrmInnstillinger},
  faLeverandor in 'faLeverandor.pas' {FrmLeverandor},
  faVare in 'faVare.pas' {FrmVare},
  faPrisJustering in 'faPrisJustering.pas' {FrmPrisJustering},
  faImport in 'faImport.pas' {FrmImport},
  faInformasjon in 'faInformasjon.pas' {FrmInformasjon},
  faPassord in 'faPassord.pas' {FrmPassord},
  faLogin in 'faLogin.pas' {FrmLogin},
  faRptKundeOmsetning in 'faRptKundeOmsetning.pas' {RptKundeOmsetning: TQuickRep},
  faRptVareInnkjop in 'faRptVareInnkjop.pas' {RptVareInnkjop: TQuickRep},
  faRptKundeTlf in 'faRptKundeTlf.pas' {RptKundeTlf: TQuickRep},
  faAvansertSok in 'faAvansertSok.pas' {FrmAvansertSok},
  faReskontro in 'faReskontro.pas' {FrmReskontro},
  faHentVarer in 'faHentVarer.pas' {FrmHentVarer},
  faRptKvittering in 'faRptKvittering.pas' {RptKvittering: TQuickRep},
  faRtpFakturaListe in 'faRtpFakturaListe.pas' {RptFakturaListe: TQuickRep},
  faPurreListe in 'faPurreListe.pas' {FrmPurreListe},
  faBetaltDato in 'faBetaltDato.pas' {FrmBetaltDato},
  faGruppe in 'faGruppe.pas' {FrmGruppe},
  faPostnummer in 'faPostnummer.pas' {FrmPostnummer},
  faPakkeSpor in 'faPakkeSpor.pas' {FrmPakkeSporing},
  faPostBeregning in 'faPostBeregning.pas' {FrmPostBeregning},
  faPakkenr in 'faPakkenr.pas' {FrmPakkeNr},
  faPakkeListe in 'faPakkeListe.pas' {FrmPakkeListe},
  faRptPakke in 'faRptPakke.pas' {RptPakke: TQuickRep},
  unitVar in 'unitVar.pas',
  faSalgstall in 'faSalgstall.pas' {FrmSalgstall},
  unitIni in 'unitIni.pas',
  faFakturaTools in 'faFakturaTools.pas' {FrmTools},
  faRegistrering in 'faRegistrering.pas' {FrmRegistrering},
  faRapporter in 'faRapporter.pas' {FrmRapporter},
  faDBCheck in 'faDBCheck.pas' {FrmDBCheck},
  faFirma in 'faFirma.pas' {FrmFirma},
  faRptGruppeOmsetning in 'faRptGruppeOmsetning.pas' {RptGruppeOmsetning: TQuickRep},
  faRptKundeGruppe in 'faRptKundeGruppe.pas' {RptKundeGruppe: TQuickRep},
  faFakturaInfo in 'faFakturaInfo.pas' {FrmFakturaInfo},
  faRptVareOmset in 'faRptVareOmset.pas' {RptVareOmsetning: TQuickRep},
  faRptSalg in 'faRptSalg.pas' {RptSalg: TQuickRep},
  blsMva in '..\..\Delphi Library\BlsLib\blsMva.pas',
  faRptKundeLevUt in 'faRptKundeLevUt.pas' {rptKundeUtLev: TQuickRep},
  rsKundeBrReg in 'rsKundeBrReg.pas' {frmKundeBrReg},
  faRptFaktura in 'faRptFaktura.pas' {RptFaktura: TQuickRep};

{$R *.RES}

begin
  JclAppInstances.CheckSingleInstance; // Added instance checking

  Application.Initialize;
  FrmSplash := TFrmSplash.Create(Application);
  FrmSplash.Show;
  FrmSplash.Update;
  Application.Title := 'Fakuva 5';

  Application.CreateForm(TFrmFakuva, FrmFakuva);
  FrmSplash.LblSplash.Caption := 'Konverterer databasen ...';
  FrmSplash.LblSplash.Update;

  // Konverterer dataene....
  FrmSplash.blsDBCheck.DefFile := Dir + 'datadef.bls';
  FrmSplash.blsDBCheck.CheckDataBase(Dm.DBFakuva.Params.Values['Path']);

  // Åpner databasen...
  FrmSplash.Pb.Position := 0;
  FrmSplash.LblSplash.Caption := 'Laster datamodul ...';
  FrmSplash.LblSplash.Update;

  Dm.OpenAllDataSet(FrmSplash.Pb);
//  FrmSplash.Hide;
//  FrmSplash.Free;

  Application.Run;
end.
