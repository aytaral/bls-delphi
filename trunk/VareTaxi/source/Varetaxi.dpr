program Varetaxi;

uses
  Forms,
  FrmMeny in 'FrmMeny.pas' {MenyFrm},
  DataModul in 'DataModul.pas' {DM: TDataModule},
  FrmBil in 'FrmBil.pas' {BilFrm},
  FrmFlogo in 'FrmFlogo.pas' {FLogoFrm},
  FrmKunde in 'FrmKunde.pas' {KundeFrm},
  FrmOrdre in 'FrmOrdre.pas' {OrdreFrm},
  FrmSjofor in 'FrmSjofor.pas' {SjoforFrm},
  FrmVelg in 'FrmVelg.pas' {VelgFrm},
  RptKunde in 'RptKunde.pas' {KundeRpt: TQuickRep},
  FrmRpt in 'FrmRpt.pas' {RptFrm},
  RptSjofor in 'RptSjofor.pas' {SjoforRpt: TQuickRep},
  FrmFaktura in 'FrmFaktura.pas' {FakturaFrm},
  FrmVOrdre in 'FrmVOrdre.pas' {V_Ordre},
  RptFaktura in 'RptFaktura.pas' {FakturaRpt: TQuickRep},
  RptPurre in 'RptPurre.pas' {PurreRpt: TQuickRep},
  FrmAvtaleWzd in 'FrmAvtaleWzd.pas' {AvtaleWzd},
  FrmBestilling in 'FrmBestilling.pas' {BestillingFrm},
  RptOrdre in 'RptOrdre.pas' {OrdreRpt: TQuickRep},
  RptBestilling in 'RptBestilling.pas' {BestillingRpt: TQuickRep},
  RptEtikett in 'RptEtikett.pas' {EtikettRpt: TQuickRep},
  RptA4 in 'RptA4.pas' {A4Rpt: TQuickRep},
  RptBil in 'RptBil.pas' {BilRpt: TQuickRep},
  Sysutils,
  Windows,
  FrmLogin in 'FrmLogin.pas' {LoginFrm},
  FrmPassord in 'FrmPassord.pas' {PassordFrm},
  FrmBilType in 'FrmBilType.pas' {BilTypeFrm},
  vtNyVerdi in 'vtNyVerdi.pas' {frmNyVerdi},
  vtPrint in 'vtPrint.pas' {frmPrint},
  vtFastAvtale in 'vtFastAvtale.pas' {frmFastAvtale},
  vtFastAvtaleSok in 'vtFastAvtaleSok.pas' {frmFastAvtaleSok};

{$R *.RES}

begin
  If FileExists('bls~.tmp') then
   begin
   If  MessageBox(0, PChar('En annen instans kjører fortsatt! Tving programmet til å starte?' + Chr(13) +
                           'Dette kan medføre ødelagte indexfiler!'), 'Programstart?', mb_ICONQUESTION + mb_YESNO) = IdYES then
    begin
      Application.Initialize;
      FLogoFrm := TFLogoFrm.Create(Application);
      FLogoFrm.Show;
      FLogoFrm.Update;
      Application.Title := 'Ruis VareTaxi';
      Application.CreateForm(TMenyFrm, MenyFrm);
  Application.CreateForm(TfrmPrint, frmPrint);
  FLogoFrm.Hide;
      FLogoFrm.Free;
      Application.Run;
    end;
   end
   else
    begin
      Application.Initialize;
      FLogoFrm := TFLogoFrm.Create(Application);
      FLogoFrm.Show;
      FLogoFrm.Update;
      Application.Title := 'Ruis VareTaxi';
      Application.CreateForm(TMenyFrm, MenyFrm);
//      Application.CreateForm(TDM, DM);
      FLogoFrm.Hide;
      FLogoFrm.Free;
      Application.Run;
    end

end.
