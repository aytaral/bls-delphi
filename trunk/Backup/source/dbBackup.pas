unit dbBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, FindFile, StBase, StVInfo, jpeg, Registry,
  pngimage, ComCtrls, blsInfiniteBar, XPMan, ActnList, Menus, AbBase,
  AbBrowse, AbCBrows, AbCabMak, AbCabKit, JvComponentBase, uib;

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
    LblBackupFile: TLabel;
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
    Cab: TAbCabKit;
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
    v_Db, v_Server: String;
    v_Ant: Integer;
    v_Param: String;
    FileList, LogList: TStringList;
    Restore: Boolean;
    procedure SetRestore;
    function FindParameter(AllParam, Param: String): Boolean;
    procedure SjekkBackupFiler;
    procedure HentGlobaleVariabler;
    function FindLastBackup: TFileName;
    procedure SetRestoreInfoLabel;
    procedure LagreLoggFil(FileName: TFileName);
  public
    { Public declarations }
  end;

var
  frmDataBackup: TfrmDataBackup;


implementation

uses blsFileUtil, dbSettings, blsDialogs, IniFiles, JclMapi, JclSysInfo,
  blsFirebird;

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

procedure TfrmDataBackup.HentGlobaleVariabler;
var Ini: TIniFile;
begin
  if FileExists(Dir + 'config.ini') then
    Ini := TIniFile.Create(Dir + 'config.ini')
  else
    Ini := TIniFile.Create(Dir + 'database.ini');

  try
    v_Server := Ini.ReadString('Database', 'Server', '');
    v_Db := Ini.ReadString('Database', 'Data', '');
  finally
    Ini.Free;
  end;

  if FileExists(Dir + 'config.ini') then
    Ini := TIniFile.Create(Dir + 'config.ini')
  else
    Ini := TIniFile.Create(Dir + 'databackup.ini');

  try
    v_Ant := Ini.ReadInteger('Backup', 'Antall_Kopier', 7);
  finally
    Ini.Free;
  end;
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

  HentGlobaleVariabler;
  LblBackupFile.Caption := Dir + 'Backup\data_yyyymmdd_hhmm.fdb';

  if FindParameter(v_Param, 'Restore') then begin
    SetRestore;
    Restore := True;
  end
  else
    Restore := False;

  Ver.FileName := Application.ExeName;
  Caption := Caption + ' ' + Ver.FileVersion;
end;

procedure TfrmDataBackup.SetRestoreInfoLabel;
begin
  if not FileExists(LblBackupFile.Caption) then Exit;
  LblInfo.Visible := True;
  LblInfo.Caption := ' Valgt sikkerhetskopi er fra ' +
    DateToStr(GetFileDate(LblBackupFile.Caption)) +
    ' klokken ' + TimeToStr(GetFileDate(LblBackupFile.Caption));
end;

procedure TfrmDataBackup.SetRestore;
begin
  imgBackup.Visible := False;
  imgRestore.Visible := True;
  imgGreen.Visible := False;
  imgRed.Visible := True;
  frmDataBackup.PopupMenu := nil;

  LblHead.Caption := 'Leser inn sikkerhetskopi fra følgende fil:';
  LblTask.Caption := 'Klar til innlesning av sikkerhetskopi';
  lblTitle.Caption := 'Innlesing av sikkerhetskopi';
  lblSubTitle.Caption := 'Dine eksisterende data vil nå bli overskrevet med data fra sikkerhetskopien';
  
  LblBackupFile.Caption := FindLastBackup;
  SetRestoreInfoLabel;
  btnRestoreFile.Visible := True;
  frmDataBackup.PopupMenu := nil;
  //Pb.Max := 204;
end;

procedure TfrmDataBackup.SjekkBackupFiler;
begin
  FileList := TStringList.Create;
  try
    FindFile.Criteria.Files.FileName := 'data_????????_??????.fbk';
    FindFile.Criteria.Files.Location := Dir + 'Backup\';
    FindFile.Execute;
    FileList.Sort;

    if FileList.Count > 0 then begin
      while FileList.Count >= v_Ant do
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

function TfrmDataBackup.FindLastBackup: TFileName;
begin
  Result := '';
  FileList := TStringList.Create;
  try
    FindFile.Criteria.Files.FileName := 'data_????????_??????.fbk';
    FindFile.Criteria.Files.Location := Dir + 'Backup\';
    FindFile.Execute;
    FileList.Sort;

    if FileList.Count > 0 then
      Result := Dir + 'Backup\' + FileList[FileList.Count-1];

  finally
    FreeAndNil(FileList);
  end;
end;

procedure TfrmDataBackup.LagreLoggFil(FileName: TFileName);
begin
  FileList := TStringList.Create;
  try
    FindFile.Criteria.Files.FileName := 'data_????????_??????.log';
    FindFile.Criteria.Files.Location := Dir + 'Logs\';
    FindFile.Execute;
    FileList.Sort;

    while FileList.Count >= v_Ant do
      if FileExists(Dir + 'Logs\' + FileList[0]) then begin
        DeleteFile(Dir + 'Logs\' + FileList[0]);
        FileList.Delete(0);
      end;

    LogList.SaveToFile(Dir + 'Logs\' + FileName);
  finally
    FreeAndNil(FileList);
  end;
end;


procedure TfrmDataBackup.btnStartClick(Sender: TObject);
begin
  if Restore then
    acRestore.Execute
  else
    acBackup.Execute;
end;

procedure TfrmDataBackup.uibBackupVerbose(Sender: TObject;
  Message: String);
begin
  LogList.Add(Message);
  LblTask.Caption := Trim(StringReplace(Message, 'gbak:', '', []));
  LblTask.Update;
  Pb.StepIt;
end;

procedure TfrmDataBackup.acSettingsExecute(Sender: TObject);
begin
  frmSettings := TfrmSettings.Create(Application);
  frmSettings.ShowModal;
  frmSettings.Release;
  HentGlobaleVariabler;
end;

procedure TfrmDataBackup.acLagreSomExecute(Sender: TObject);
begin
  if SaveDialog.Execute then begin
    if FileExists(LblBackupFile.Caption) then begin
      if not CopyFile(PWideChar(LblBackupFile.Caption), PWideChar(SaveDialog.FileName), False) then
        ErrorDialog('Feil', 'En feil oppstod. Filen kunne ikke lagres!', btOK);
    end;
  end;
end;

procedure TfrmDataBackup.acSupportExecute(Sender: TObject);
var EMail: TJclEMail;
    LoggFile: String;
    FName: String;
begin
  if FileExists(LblBackupFile.Caption) then begin
    EMail := TJclEMail.Create;
    try
      EMail.Clear;
      EMail.Subject := 'Support E-post - DataBackup';
      EMail.Body := 'Autogenerert support e-post:' + #13#10#13#10 +
                    ExtractFileName(Ver.FileName) + ' ' + Ver.FileVersion + ' (' +
                    JclSysInfo.GetWindowsVersionString + ' - ' +
                    JclSysInfo.GetWindowsServicePackVersionString + ')';
      EMail.Recipients.Add('support@fakuva.no', 'BLS Support');
      FName := AddBackSlash(JclSysInfo.GetWindowsTempFolder) + ChangeFileExt(ExtractFileName(LblBackupFile.Caption), '.cab');
      Cab.FileName := FName;
      Cab.BaseDirectory := Dir + 'Backup\';
      Cab.AddFiles(ExtractFileName(LblBackupFile.Caption), 0);
      Cab.CloseArchive;

      if FileExists(FName) then begin
        EMail.Attachments.Add(FName);
      end;

      LoggFile := Dir + 'Logs\' + ChangeFileExt(ExtractFileName(LblBackupFile.Caption), '.log');
      if FileExists(LoggFile) then begin
        EMail.Attachments.Add(LoggFile);
      end;

      EMail.Send(True);
    finally
      FreeAndNil(EMail);
    end;
    DeleteFile(FName);
  end;
end;

procedure TfrmDataBackup.acBackupExecute(Sender: TObject);
var FileName: String;
begin
  if (v_Ant = 0) or (v_DB = '') or (v_Server = '') then begin
    InfoDialog('Innstillinger', 'Sikkerhetskopiering er ikke konfigurert ' +
      'for denne datamaskinen.' + #13#10 + 'Vennligst oppgi nødvendige innstillinger.');
    acSettings.Execute;
    Exit;
  end;

  ForceDirectories(Dir + 'Backup');
  ForceDirectories(Dir + 'Logs');
  SjekkBackupFiler;

  btnStart.Enabled := False;
  Pb.Position := 0;
  FileName := 'data_' + FormatDateTime('yyyymmdd_hhmmss', Now) + '.fbk';
  LblBackupFile.Caption := Dir + 'Backup\' + FileName;
  LblBackupFile.Update;
  uibBackup.LibraryName := GetClientLib;
  uibBackup.BackupFiles.Clear;
  uibBackup.BackupFiles.Add(Dir + 'Backup\' + FileName);
  uibBackup.Database := v_Db;
  if JclSysInfo.GetLocalComputerName = v_Server then
    uibBackup.Protocol := proLocalHost
  else begin
    uibBackup.Protocol := proTCPIP;
    uibBackup.Host := v_Server;
  end;

  try
    try
      LogList := TStringList.Create;
      uibBackup.Run;
      LagreLoggFil(ChangeFileExt(FileName, '.log'));
    finally
      LogList.Free;
    end;
    Pb.Position := Pb.Max;
    LblTask.Caption := 'Sikkerhetskopiering fullført';
    acLagreSom.Enabled := True;
    acSupport.Enabled := True;
    if FindParameter(v_Param, 'AutoQuit') then
      Close;
  except
    ErrorDialog('Feil', 'Sikkerhetskopiering kan ikke utføres. Mulig grunn kan være ' +
      'manglende rettigheter.' + #13#10 + 'NB: Sikkerhetskopiering må kjøres fra database-serveren!', btOK);
    Pb.Position := 0;
    LblTask.Caption := 'Feil ved sikkerhetskopiering';
  end;
  btnStart.Enabled := True;
end;

procedure TfrmDataBackup.acRestoreExecute(Sender: TObject);
var LoggFile: TFileName;
begin
  if (v_Db = '') or (v_Server = '') then begin
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
    uibRestore.Database := v_Db;
    if JclSysInfo.GetLocalComputerName = v_Server then
      uibRestore.Protocol := proLocalHost
    else begin
      uibRestore.Protocol := proTCPIP;
      uibRestore.Host := v_Server;
    end;

    try
      try
        LogList := TStringList.Create;
        uibRestore.Run;
        LoggFile := Dir + 'Logs\' + 'restore_' + FormatDateTime('yyyymmdd_hhmmss', Now) + '.log';
        LogList.SaveToFile(LoggFile);
      finally
        LogList.Free;
      end;
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
  if not Restore then
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
  end;
end;

procedure TfrmDataBackup.uibRestoreVerbose(Sender: TObject;
  Message: String);
begin
  LogList.Add(Message);
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
    EMail.Subject := 'Utvidet Support E-post - DataBackup';
    EMail.Body := 'Autogenerert support e-post:' + #13#10#13#10 +
                  ExtractFileName(Ver.FileName) + ' ' + Ver.FileVersion + ' (' +
                  JclSysInfo.GetWindowsVersionString + ' - ' +
                  JclSysInfo.GetWindowsServicePackVersionString + ')';
    EMail.Recipients.Add('support@fakuva.no', 'BLS Support');

    FName := AddBackSlash(JclSysInfo.GetWindowsTempFolder) + 'support_data.cab';
    Cab.FileName := FName;

    //Her må alle filene i katalogen backup og logg legges til...
    FileList := TStringList.Create;
    try
      Cab.BaseDirectory := Dir + 'Backup\';
      FindFile.Criteria.Files.FileName := 'data_????????_??????.fbk';
      FindFile.Criteria.Files.Location := Dir + 'Backup\';
      FindFile.Execute;
      while FileList.Count > 0 do begin
        if FileExists(Dir + 'Backup\' + FileList[0]) then begin
          Cab.AddFiles(FileList[0], 0);
          FileList.Delete(0);
        end;
      end;

      Cab.BaseDirectory := Dir + 'Logs\';
      FindFile.Criteria.Files.FileName := 'data_????????_??????.log';
      FindFile.Criteria.Files.Location := Dir + 'Logs\';
      FindFile.Execute;
      while FileList.Count > 0 do begin
        if FileExists(Dir + 'Logs\' + FileList[0]) then begin
          Cab.AddFiles(FileList[0], 0);
          FileList.Delete(0);
        end;
      end;

      FindFile.Criteria.Files.FileName := 'restore_????????_??????.log';
      FindFile.Criteria.Files.Location := Dir + 'Logs\';
      FindFile.Execute;
      while FileList.Count > 0 do begin
        if FileExists(Dir + 'Logs\' + FileList[0]) then begin
          Cab.AddFiles(FileList[0], 0);
          FileList.Delete(0);
        end;
      end;

    finally
      FreeAndNil(FileList);
    end;

    Cab.CloseArchive;

    if FileExists(FName) then
      EMail.Attachments.Add(FName);
    EMail.Send(True);
  finally
    FreeAndNil(EMail);
  end;
  DeleteFile(FName);
end;

end.
