unit unitIni;

interface

uses SysUtils, IniFiles, blsFileUtil;

var FkvIni: TMemIniFile;

implementation

initialization
  FkvIni := TMemIniFile.Create(AddBackSlash(ExtractFilePath(ParamStr(0))) + 'FAKUVA.INI');

finalization
  //FkvIni.UpdateFile;
  FkvIni.Free;

end.
