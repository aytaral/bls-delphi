unit bsLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, pngimage, ExtCtrls, DBClient, Provider, DB,
  ADODB, Registry;

type
  TfrmLogin = class(TForm)
    EditPassord: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BtnOK: TButton;
    BtnCancel: TButton;
    PanelTop: TPanel;
    Bevel1: TBevel;
    Label3: TLabel;
    Image1: TImage;
    adoUsers: TADOQuery;
    dspUsers: TDataSetProvider;
    cdsUsers: TClientDataSet;
    editBruker: TEdit;
    Label5: TLabel;
    cdsUsersBRUKERNAVN: TStringField;
    cdsUsersPASSORD: TStringField;
    cdsUsersTILGANG: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure LagreBrukerId;
    function HentBrukerId: String;
    { Private declarations }
  public
    { Public declarations }
    AntLogin: Integer;
  end;

var
  frmLogin: TfrmLogin;

implementation

uses blsMD5, bsData, blsDialogs, IniFiles, blsFileUtil, JclStrings, blsRegistry;

{$R *.dfm}

procedure TfrmLogin.FormCreate(Sender: TObject);
var Ini: TIniFile;
begin
  AntLogin := 0;

  Ini := TIniFile.Create(Dir + 'config.ini');
  try
    if Ini.ReadBool('Innstillinger', 'HuskSisteBruker', True) then
      editBruker.Text := HentBrukerId;
  finally
    Ini.Free;
  end;
end;

function TfrmLogin.HentBrukerId: String;
var Reg: TRegistry;
begin
  Result := '';
  Reg := TRegistry.Create;
  try
    Reg.OpenKey(RegPath, True);
    if Reg.ValueExists('SisteBrukerNavn') then
      Result := Reg.ReadString('SisteBrukerNavn');
  finally
    Reg.Free;
  end;
end;

procedure TfrmLogin.LagreBrukerId;
var Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.OpenKey(RegPath, True);
    Reg.WriteString('SisteBrukerNavn', editBruker.Text);
  finally
    Reg.Free;
  end;
end;

//Standard pwd for admin = syskey
procedure TfrmLogin.BtnOKClick(Sender: TObject);
var OK: Boolean;
    Str: String;
begin
  OK := False;
  Inc(AntLogin);

  if AntLogin > 2 then begin
    AlertDialog('Pålogging', 'Du har skrevet feil passord 3 ganger! Ta kontakt med ' + #13#10 +
      'systemansvarlige for brukernavn og passord.');
    Close;
    Exit;
  end;

  dmData.Connect;
  cdsUsers.Open;
  if cdsUsers.Locate('Brukernavn', editBruker.Text, [loCaseInsensitive]) then begin
    if MD5(AnsiUpperCase(EditPassord.Text)) = cdsUsersPassord.Value then
      OK := True
    else
      Str := 'Feil passord. Vennligst prøv igjen!';
  end
  else
    Str := 'Du har ikke tilgang til systemet. Vennligst kontakt systemansvarlig!';

  if not OK then begin
    dmData.Disconnect;
    AlertDialog('Pålogging', Str);
    EditPassord.Text := '';
    EditPassord.SetFocus;
  end
  else begin
    ModalResult := mrOK;
    dmData.g_Bruker := cdsUsersBRUKERNAVN.Value;
    dmData.g_Tilgang := cdsUsersTILGANG.Value;
    LagreBrukerId;
  end;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  if editBruker.Text <> '' then
    editPassord.SetFocus;
end;

end.
