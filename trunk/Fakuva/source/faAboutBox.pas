unit faAboutBox;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, WinTypes, Registry, ShellApi, jpeg, StBase, StVInfo;

type
  TFrmAboutBox = class(TForm)
    OKButton: TButton;
    Bevel1: TBevel;
    Label2: TLabel;
    OS: TLabel;
    Label6: TLabel;
    PhysMem: TLabel;
    Label7: TLabel;
    LblSerial: TLabel;
    BildePanel: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LblFirma: TLabel;
    Label8: TLabel;
    LblVersjon: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Ver: TStVersionInfo;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label11Click(Sender: TObject);
  private
    { Private declarations }
    procedure InitializeCaptions;
    procedure GetOSInfo;

  public
    { Public declarations }
  end;

var
  FrmAboutBox: TFrmAboutBox;

implementation

{$R *.DFM}

procedure TFrmAboutBox.GetOSInfo;
var
  Platform: string;
  BuildNumber: Integer;
begin
  case Win32Platform of
    VER_PLATFORM_WIN32_WINDOWS:
      begin
        Platform := 'Windows 95';
        BuildNumber := Win32BuildNumber and $0000FFFF;
      end;
    VER_PLATFORM_WIN32_NT:
      begin
        Platform := 'Windows NT';
        BuildNumber := Win32BuildNumber;
      end;
      else
      begin
        Platform := 'Windows';
        BuildNumber := 0;
      end;
  end;
  if (Win32Platform = VER_PLATFORM_WIN32_WINDOWS) or
    (Win32Platform = VER_PLATFORM_WIN32_NT) then
  begin
    if Win32CSDVersion = '' then
      OS.Caption := Format(' %s %d.%d (Build %d)', [Platform, Win32MajorVersion,
        Win32MinorVersion, BuildNumber])
    else
      OS.Caption := Format(' %s %d.%d (Build %d: %s)', [Platform, Win32MajorVersion,
        Win32MinorVersion, BuildNumber, Win32CSDVersion]);
  end
  else
    OS.Caption := Format(' %s %d.%d', [Platform, Win32MajorVersion,
      Win32MinorVersion])
end;

procedure TFrmAboutBox.InitializeCaptions;
var
  MS: TMemoryStatus;
begin
  GetOSInfo;
  MS.dwLength := SizeOf(TMemoryStatus);
  GlobalMemoryStatus(MS);
  PhysMem.Caption := FormatFloat('#,###" KB"', MS.dwTotalPhys div 1024);
end;

procedure TFrmAboutBox.FormCreate(Sender: TObject);
var Reg: TRegistry;
begin
InitializeCaptions;

Reg:= TRegistry.Create;
try
 Reg.RootKey := HKEY_LOCAL_MACHINE;
 Reg.OpenKey('SOFTWARE\BLS\Fakuva 5\5', false);
 If (Reg.ValueExists('Serial')) and (Reg.ValueExists('Company')) then
    begin
     LblFirma.Caption   := Reg.ReadString('Company');
     LblSerial.Caption  := Reg.ReadString('Serial');
    end;
 finally
  Reg.Free;
 end;

 Ver.FileName := Application.ExeName;
 LblVersjon.Caption := IntToStr(Ver.FileVerMajor) + '.' + IntToStr(Ver.FileVerMinor) +
  IntToStr(Ver.FileVerBuild) + ' (Build ' + IntToStr(Ver.FileVerRelease) + ')';


end;


procedure TFrmAboutBox.Label4Click(Sender: TObject);
begin
  ShellExecute(Handle , 'open', PChar('http://www.fakuva.no'), nil, nil, SW_MAXIMIZE)
end;

procedure TFrmAboutBox.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TFrmAboutBox.Label11Click(Sender: TObject);
begin
  ShellExecute(Handle , 'open', PChar('mailto:support@fakuva.no'), nil, nil, SW_MAXIMIZE)
end;

end.

