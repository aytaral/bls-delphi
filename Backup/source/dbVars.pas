unit dbVars;

interface

uses SysUtils, Classes, IniFiles, blsFileUtil;

type
  TblsVars = class(TObject)
    Server: String;
    Database: String;
    UNCDataFolder: String;
    AntBackup: Integer;
    IsRestore: Boolean;
    LoggList: TStringList;

    constructor Create;
    destructor Destroy; override;
    procedure LastVariabler;
  end;

var
  blsApp: TblsVars;

implementation

{ TblsVars }

constructor TblsVars.Create;
begin
  LastVariabler;
  LoggList := TStringList.Create;
end;

destructor TblsVars.Destroy;
begin
  LoggList.Free;
  inherited;
end;

procedure TblsVars.LastVariabler;
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(Dir + 'config.ini');
  try
    AntBackup := Ini.ReadInteger('Backup', 'Antall_Kopier', 7);
    Server := Ini.ReadString('Database', 'Server', '');
    Database := Ini.ReadString('Database', 'Data', '');
    UNCDataFolder := Ini.ReadString('Database', 'UNCDataFolder', '');
  finally
    Ini.Free;
  end;
end;

initialization
  blsApp := TblsVars.Create;

finalization
  blsApp.Free;

end.
