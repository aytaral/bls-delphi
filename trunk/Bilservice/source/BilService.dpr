program BilService;

uses
  FastMM4,
  JclAppInst,
  Forms,
  bsMain in 'bsMain.pas' {frmMain},
  bsData in 'bsData.pas' {dmData: TDataModule},
  bsLogin in 'bsLogin.pas' {frmLogin},
  bsBil in 'bsBil.pas' {frmBil},
  bsRapport in 'bsRapport.pas' {frmRapport},
  bsKmReg in 'bsKmReg.pas' {frmKmstand},
  bsService in 'bsService.pas' {frmService},
  rsPreview in 'rsPreview.pas' {frmPreview},
  blsExceptionDlg in 'blsExceptionDlg.pas' {frmExceptionDialog},
  bsSettings in 'bsSettings.pas' {frmSettings};

{$R *.res}

begin
  JclAppInstances.CheckSingleInstance;
  Application.Initialize;
  Application.Title := 'BLS Bilservice 2008';
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmData, dmData);
  Application.Run;
end.
