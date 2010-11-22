unit dbSettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ComCtrls;

type
  TfrmSettings = class(TForm)
    btnOK: TButton;
    btnAvbryt: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    editAnt: TSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    editServer: TEdit;
    editDB: TEdit;
    Label4: TLabel;
    edUNCPath: TEdit;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure editServerDblClick(Sender: TObject);
  private
    procedure Lagre;
    procedure Hent;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSettings: TfrmSettings;

implementation

uses Registry, IniFiles, blsFileUtil;

{$R *.dfm}

procedure TfrmSettings.Lagre;
var
  Ini: TIniFile;
begin
  //Lagrer antall kopier til INI-fil
  Ini := TIniFile.Create(Dir + 'config.ini');
  try
    Ini.WriteInteger('Backup', 'Antall_Kopier', editAnt.Value);
    Ini.WriteString('Database', 'Data', editDb.Text);
    Ini.WriteString('Database', 'Server', editServer.Text);
    Ini.WriteString('Database', 'UNCDataFolder', edUNCPath.Text);
  finally
    Ini.Free;
  end;
end;

procedure TfrmSettings.btnOKClick(Sender: TObject);
begin
  Lagre;
end;

procedure TfrmSettings.Hent;
var Ini: TIniFile;
begin
  //Lagrer antall kopier til INI-fil
  Ini := TIniFile.Create(Dir + 'config.ini');
  try
    editAnt.Value := Ini.ReadInteger('Backup', 'Antall_Kopier', 7);
    editDb.Text := Ini.ReadString('Database', 'Data', '');
    editServer.Text := Ini.ReadString('Database', 'Server', '');
    edUNCPath.Text := Ini.ReadString('Database', 'UNCDataFolder', '');
  finally
    Ini.Free;
  end;
end;

procedure TfrmSettings.editServerDblClick(Sender: TObject);
begin
  edUNCPath.ReadOnly := False;
  editServer.ReadOnly := False;
  editDB.ReadOnly := False;
  edUNCPath.Color := clWindow;
  editServer.Color := clWindow;
  editDB.Color := clWindow;
end;

procedure TfrmSettings.FormCreate(Sender: TObject);
begin
  Hent;
end;

end.
