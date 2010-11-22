program Backup;

uses
  JclAppInst,
  Forms,
  dbBackup in 'dbBackup.pas' {frmDataBackup},
  dbSettings in 'dbSettings.pas' {frmSettings},
  dbVars in 'dbVars.pas';

{$R *.res}

begin
  JclAppInstances.CheckSingleInstance;
  Application.Initialize;
  Application.Title := 'BLS Backup';
  Application.CreateForm(TfrmDataBackup, frmDataBackup);
  Application.Run;
end.
