unit dbBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, FindFile, StBase, StVInfo, jpeg, Registry,
  pngimage, ComCtrls, blsInfiniteBar, XPMan, ActnList, Menus, JvComponentBase, uib;

type
  TfrmDataBackup = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    lblTitle: TLabel;
    btnAvslutt: TButton;
    btnStart: TButton;
    btnSettings: TButton;
    Ver: TStVersionInfo;
    FindFile: TFindFile;
    lblSubTitle: TLabel;
    Image1: TImage;
    imgRestore: TImage;
    imgBackup: TImage;
    imgRed: TImage;
    imgGreen: TImage;
    gbBackup: TGroupBox;
    LblHead: TLabel;
    lblBackupFile: TLabel;
    Label4: TLabel;
    LblTask: TLabel;
    Pb: TProgressBar;
    ActionList: TActionList;
    acSettings: TAction;
    PopMenu: TPopupMenu;
    Opprettsupportepost1: TMenuItem;
    Lagresikkerhetskopisom1: TMenuItem;
    N1: TMenuItem;
    acLagreSom: TAction;
    acSupport: TAction;
    SaveDialog: TSaveDialog;
    acBackup: TAction;
    acRestore: TAction;
    btnRestoreFile: TButton;
    lblInfo: TLabel;
    OpenDialog: TOpenDialog;
    acFullSupport: TAction;
    Opprettutvidetsupportepost1: TMenuItem;
    N2: TMenuItem;
    uibBackup: TUIBBackup;
    uibRestore: TUIBRestore;
    procedure btnAvsluttClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure uibBackupVerbose(Sender: TObject; Message: String);
    procedure acSettingsExecute(Sender: TObject);
    procedure acLagreSomExecute(Sender: TObject);
    procedure acSupportExecute(Sender: TObject);
    procedure acBackupExecute(Sender: TObject);
    procedure acRestoreExecute(Sender: TObject);
    procedure gbBackupEnter(Sender: TObject);
    procedure btnRestoreFileClick(Sender: TObject);
    procedure uibRestoreVerbose(Sender: TObject; Message: String);
    procedure acFullSupportExecute(Sender: TObject);
    procedure FindFileFileMatch(Sender: TObject; const FileInfo: TFileDetails);
  private
    { Private declarations }
    v_Param: String;
    FileList: TStringList;
    procedure SetRestoreMode;
    function FindParameter(AllParam, Param: String): Boolean;
    procedure CheckAndCleanBackupFiles;
    procedure SetRestoreInfoLabel;
    procedure SaveLog(FileName: TFileName);
    procedure SetBackupLabel(TimeStamp: TDateTime = 0);
  public
    { Public declarations }
  end;

var
  frmDataBackup: TfrmDataBackup;


implementation

uses blsFileUtil, dbSettings, blsDialogs, IniFiles, JclMapi, JclSysInfo,
  blsFirebird, dbVars, JclCompression, Sevenzip, JclFileUtils;

{$R *.dfm}

procedure TfrmDataBackup.btnAvsluttClick(Sender: TObject);
begin
  Close;
end;

function TfrmDataBackup.FindParameter(AllParam, Param: String): Boolean;
begin
  Result := False;
  if Pos(WideUpperCase(Param), WideUpperCase(AllParam)) > 0 then
    Result := True;
end;

procedure TfrmDataBackup.SetBackupLabel(TimeStamp: TDateTime = 0);
begin
  if TimeStamp = 0 then
    lblBackupFile.Caption := Dir + 'Backup\Data_yyyymmdd_hhmmss.7z'
  else
    lblBackupFile.Caption := Dir + 'Backup\Data_' + FormatDateTime('yyyymmdd_hhmmss', Now) + '.7z';
  lblBackupFile.Update;
end;

procedure TfrmDataBackup.FormCreate(Sender: TObject);
var I: Integer;
begin
  v_Param := '';
  I := 1;
  while (ParamStr(I) <> '') do begin
    v_Param := v_Param + ParamStr(I);
    Inc(I);
  end;
  v_Param := StringReplace(v_Param, '-', '/', [rfReplaceAll]);

  blsApp.LastVariabler;
  SetBackupLabel;

  if FindParameter(v_Param, 'RESTORE') then begin
    SetRestoreMode;
    blsApp.IsRestore := True;
  end
  else
    blsApp.IsRestore := False;

  Ver.FileName := Application.ExeName;
  Caption := Caption + ' ' + Ver.FileVersion;
end;

procedure TfrmDataBackup.SetRestoreInfoLabel;
begin
  if not FileExists(LblBackupFile.Caption) then Exit;
  LblInfo.Visible := True;
  LblInfo.Caption := ' Valgt sikkerhetskopi er fra ' +
    DateToStr(GetFileDate(lblBackupFile.Caption)) +
    ' klokken ' + TimeToStr(GetFileDate(lblBackupFile.Caption));
end;

procedure TfrmDataBackup.SetRestoreMode;
begin
  imgBackup.Visible := False;
  imgRestore.Visible := True;
  imgGreen.Visible := False;
  imgRed.Visible := True;
  frmDataBackup.PopupMenu := nil;
  btnStart.Enabled := False;

  LblHead.Caption := 'Leser inn sikkerhetskopi fra følgende fil:';
  LblTask.Caption := 'Klar til innlesning av sikkerhetskopi';
  lblTitle.Caption := 'Innlesing av sikkerhetskopi';
  lblSubTitle.Caption := 'Dine eksisterende data vil nå bli overskrevet med data fra sikkerhetskopien';
  
  LblBackupFile.Caption := 'Vennligst velg backup fil!';
  SetRestoreInfoLabel;
  btnRestoreFile.Visible := True;
  frmDataBackup.PopupMenu := nil;
end;

procedure TfrmDataBackup.CheckAndCleanBackupFiles;
begin
  FileList := TStringList.Create;
  try
    FindFile.Criteria.Files.FileName := 'Data_????????_??????.7z';
    FindFile.Criteria.Files.Location := Dir + 'Backup\';
    FindFile.Execute;
    FileList.Sort;

    if FileList.Count > 0 then begin
      while FileList.Count >= blsApp.AntBackup do
        if FileExists(Dir + 'Backup\' + FileList[0]) then begin
          DeleteFile(Dir + 'Backup\' + FileList[0]);
          FileList.Delete(0);
        end;
    end;

  finally
    FreeAndNil(FileList);
  end;
end;

procedure TfrmDataBackup.FindFileFileMatch(Sender: TObject;
  const FileInfo: TFileDetails);
begin
  FileList.Add(FileInfo.Name);
end;

procedure TfrmDataBackup.SaveLog(FileName: TFileName);
begin
  FileList := TStringList.Create;
  try
    //Fjerner gamle loggfiler
    FindFile.Criteria.Files.FileName := 'Data_????????_??????.log';
    FindFile.Criteria.Files.Location := Dir + 'Logs\';
    FindFile.Execute;
    FileList.Sort;

    while FileList.Count >= blsApp.AntBackup do
      if FileExists(Dir + 'Logs\' + FileList[0]) then begin
        DeleteFile(Dir + 'Logs\' + FileList[0]);
        FileList.Delete(0);
      end;

    //Lagrer ny logg fil
    blsApp.LoggList.SaveToFile(Dir + 'Logs\' + FileName);
  finally
    FreeAndNil(FileList);
  end;
end;

procedure TfrmDataBackup.btnStartClick(Sender: TObject);
begin
  if blsApp.IsRestore then
    acRestore.Execute
  else
    acBackup.Execute;
end;

procedure TfrmDataBackup.uibBackupVerbose(Sender: TObject;
  Message: String);
begin
  blsApp.LoggList.Add(Message);
  LblTask.Caption := Trim(StringReplace(Message, 'gbak:', '', []));
  LblTask.Update;
  Pb.StepIt;
end;

procedure TfrmDataBackup.acSettingsExecute(Sender: TObject);
begin
  frmSettings := TfrmSettings.Create(Application);
  frmSettings.ShowModal;
  frmSettings.Release;
  blsApp.LastVariabler;
end;

procedure TfrmDataBackup.acLagreSomExecute(Sender: TObject);
begin
  if SaveDialog.Execute then begin
    if FileExists(lblBackupFile.Caption) then begin
      if not CopyFile(PWideChar(lblBackupFile.Caption), PWideChar(SaveDialog.FileName), False) then
        ErrorDialog('Feil', 'En feil oppstod. Filen kunne ikke lagres!', btOK);
    end;
  end;
end;

procedure TfrmDataBackup.acSupportExecute(Sender: TObject);
var EMail: TJclEMail;
    LoggFile: String;
    FName: String;
begin
  if FileExists(lblBackupFile.Caption) then begin
    EMail := TJclEMail.Create;
    try
      EMail.Clear;
      EMail.Subject := 'Support e-post - Backup';
      EMail.Body := 'Autogenerert support e-post:' + #13#10#13#10 +
                    ExtractFileName(Ver.FileName) + ' ' + Ver.FileVersion + ' (' +
                    JclSysInfo.GetWindowsVersionString + ' - ' +
                    JclSysInfo.GetWindowsServicePackVersionString + ')';
      EMail.Recipients.Add('support@fakuva.no', 'BLS Support');
      EMail.Attachments.Add(lblBackupFile.Caption);
      LoggFile := Dir + 'Logs\' + ChangeFileExt(ExtractFileName(lblBackupFile.Caption), '.log');
      if FileExists(LoggFile) then
        EMail.Attachments.Add(LoggFile);

      EMail.Send(True);
    finally
      FreeAndNil(EMail);
    end;
    DeleteFile(FName);
  end;
end;

procedure TfrmDataBackup.acBackupExecute(Sender: TObject);
var
  DbBackupFile: String;
  SevenZip: TJcl7zCompressArchive;
begin
  if (blsApp.AntBackup = 0) or (blsApp.Database = '') or (blsApp.Server = '')
    or (blsApp.UNCDataFolder = '') then begin
    InfoDialog('Innstillinger', 'Sikkerhetskopieringen må konfigureres!');
    acSettings.Execute;
    Exit;
  end;

  if not Load7Zip then begin
    ErrorDialog('Feil', 'Feil ved lasting av bibliotek for komprimering! (7z.dll)');
    Exit;
  end;

  ForceDirectories(Dir + 'Backup');
  ForceDirectories(Dir + 'Logs');
  CheckAndCleanBackupFiles; //Slette gamle filer

  btnStart.Enabled := False;
  Pb.Position := 0;
  DbBackupFile := 'data_' + FormatDateTime('yyyymmdd_hhmmss', Now) + '.fbk';
  SetBackupLabel(Now);

  uibBackup.LibraryName := GetClientLib;
  uibBackup.Host := blsApp.Server;
  uibBackup.Database := blsApp.Database;
  uibBackup.BackupFiles.Clear;
  uibBackup.BackupFiles.Add(ExtractFilePath(blsApp.Database) + '\' + DbBackupFile);

  try
    uibBackup.Run;
    SaveLog(ChangeFileExt(DbBackupFile, '.log'));
    blsApp.LoggList.Clear;

    SevenZip := TJcl7zCompressArchive.Create(lblBackupFile.Caption);
    if FileExists(blsApp.UNCDataFolder + DbBackupFile) then
      SevenZip.AddFile(DbBackupFile, blsApp.UNCDataFolder + DbBackupFile);
    //SevenZip.AddDirectory('Data', ADir, False, True);
    SevenZip.Compress;
    SevenZip.Free;
    FileDelete(blsApp.UNCDataFolder + DbBackupFile);

    Pb.Position := Pb.Max;
    LblTask.Caption := 'Sikkerhetskopiering fullført';
    acLagreSom.Enabled := True;
    acSupport.Enabled := True;
    if FindParameter(v_Param, 'AutoQuit') then
      Close;

  except
    ErrorDialog('Feil', 'Sikkerhetskopiering kan ikke utføres! ' +
      'Mulig grunn kan være manglende rettigheter.', btOK);
    Pb.Position := 0;
    lblTask.Caption := 'Feil ved sikkerhetskopiering';
  end;

  btnStart.Enabled := True;
end;

procedure TfrmDataBackup.acRestoreExecute(Sender: TObject);
var LoggFile: TFileName;
begin
  if (blsApp.Database = '') or (blsApp.Server = '') then begin
    InfoDialog('Innstillinger', 'Innlesning av en sikkerhetskopi kan ikke utføres.' +
       #13#10 + 'Vennligst angi nødvendige innstillinger.');
    acSettings.Execute;
    Exit;
  end;

  if ConfirmDialog('Bekreft innlesning', 'Vennligst bekreft innlesningen av valgt sikkerhetskopi!' +
    #13#10 + 'NB: Alle data vil bli overskrevet!') then begin
    ForceDirectories(Dir + 'Logs');

    btnStart.Enabled := False;
    Pb.Position := 0;

    uibRestore.LibraryName := GetClientLib;
    uibRestore.BackupFiles.Clear;
    uibRestore.BackupFiles.Add(lblBackupFile.Caption);
    uibRestore.Database := blsApp.Database;
    uibRestore.Host := blsApp.Server;

    try
      uibRestore.Run;
      LoggFile := Dir + 'Logs\' + 'Restore_' + FormatDateTime('yyyymmdd_hhmmss', Now) + '.log';
      blsApp.LoggList.SaveToFile(LoggFile);
      blsApp.LoggList.Clear;

      Pb.Position := Pb.Max;
      LblTask.Caption := 'Innlesning fullført';
    except
      ErrorDialog('Feil', 'Innlesningen av sikkerhetskopien kan ikke utføres. Mulig grunn kan være ' +
        'manglende rettigheter.' + #13#10 + 'NB: Sikkerhetskopien må ligge på database-serveren!', btOK);
      Pb.Position := 0;
      LblTask.Caption := 'Feil ved innlesning av sikkerhetskopi';
    end;
    btnStart.Enabled := True;
  end;
end;

procedure TfrmDataBackup.gbBackupEnter(Sender: TObject);
begin
  Update;
  if not blsApp.IsRestore then
    if FindParameter(v_Param, 'AutoRun') then begin
      acBackup.Execute;
      btnAvslutt.SetFocus;
    end;
end;

procedure TfrmDataBackup.btnRestoreFileClick(Sender: TObject);
begin
  if OpenDialog.Execute then begin
    lblBackupFile.Caption := OpenDialog.FileName;
    SetRestoreInfoLabel;
    btnStart.Enabled := True;
  end;
end;

procedure TfrmDataBackup.uibRestoreVerbose(Sender: TObject;
  Message: String);
begin
  blsApp.LoggList.Add(Message);
  LblTask.Caption := Trim(StringReplace(Message, 'gbak:', '', []));
  LblTask.Update;
  Pb.StepIt;
end;

procedure TfrmDataBackup.acFullSupportExecute(Sender: TObject);
var EMail: TJclEMail;
    FName: String;
begin
  EMail := TJclEMail.Create;
  try
    EMail.Clear;
    EMail.Subject := 'Utvidet support e-post - DataBackup';
    EMail.Body := 'Autogenerert support e-post:' + #13#10#13#10 +
                  ExtractFileName(Ver.FileName) + ' ' + Ver.FileVersion + ' (' +
                  JclSysInfo.GetWindowsVersionString + ' - ' +
                  JclSysInfo.GetWindowsServicePackVersionString + ')';
    EMail.Recipients.Add('support@fakuva.no', 'BLS Support');

    //Her må alle filene i katalogen backup og logg legges til...
    FileList := TStringList.Create;
    try
      FindFile.Criteria.Files.FileName := 'Data_????????_??????.7z';
      FindFile.Criteria.Files.Location := Dir + 'Backup\';
      FindFile.Execute;
      while FileList.Count > 0 do begin
        if FileExists(Dir + 'Backup\' + FileList[0]) then begin
          EMail.Attachments.Add(Dir + 'Backup\' + FileList[0]);
          FileList.Delete(0);
        end;
      end;

      FindFile.Criteria.Files.FileName := 'Data_????????_??????.log';
      FindFile.Criteria.Files.Location := Dir + 'Logs\';
      FindFile.Execute;
      while FileList.Count > 0 do begin
        if FileExists(Dir + 'Logs\' + FileList[0]) then begin
          EMail.Attachments.Add(AnsiString(Dir + 'Logs\' + FileList[0]));
          FileList.Delete(0);
        end;
      end;

      FindFile.Criteria.Files.FileName := 'Restore_????????_??????.log';
      FindFile.Criteria.Files.Location := Dir + 'Logs\';
      FindFile.Execute;
      while FileList.Count > 0 do begin
        if FileExists(Dir + 'Logs\' + FileList[0]) then begin
          EMail.Attachments.Add(AnsiString(Dir + 'Logs\' + FileList[0]));
          FileList.Delete(0);
        end;
      end;

    finally
      FreeAndNil(FileList);
    end;

    EMail.Send(True);
  finally
    FreeAndNil(EMail);
  end;
  DeleteFile(FName);
end;

end.
