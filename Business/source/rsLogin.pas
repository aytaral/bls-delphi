unit rsLogin;

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
    Label4: TLabel;
    cbKlient: TComboBox;
    Label5: TLabel;
    sqlKlient: TADODataSet;
    sqlKlientIDKLIENT: TIntegerField;
    sqlKlientNAVN: TStringField;
    cdsUsersBRUKERNAVN: TStringField;
    cdsUsersIDKLIENT: TIntegerField;
    cdsUsersPASSORD: TStringField;
    cdsUsersTILGANG: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    procedure LagreBrukerId;
    function HentBrukerId: String;
    function HentKlientId: Integer;
    procedure LagreKlientId;
    { Private declarations }
  public
    { Public declarations }
    AntLogin: Integer;
  end;

  TKlient = class(TObject)
    IdKlient: Integer;
  end;

var
  frmLogin: TfrmLogin;

implementation

uses rsData, blsDialogs, IniFiles,
  blsFileUtil, JclStrings, blsRegistry, blsMD5;

{$R *.dfm}

procedure TfrmLogin.FormCreate(Sender: TObject);
var Ini: TIniFile;
    K: TKlient;
begin
  AntLogin := 0;

  Dm.Connect;
  sqlKlient.Open;
  while not sqlKlient.Eof do begin
    K := TKlient.Create;
    K.IdKlient := sqlKlientIDKLIENT.Value;

    cbKlient.Items.AddObject(sqlKlientNAVN.Value, K);
    sqlKlient.Next;
  end;
  Dm.Disconnect;

  Ini := TIniFile.Create(Dir + 'config.ini');
  try
    if Ini.ReadBool('Innstillinger', 'HuskSisteBruker', True) then
      editBruker.Text := HentBrukerId;
    if Ini.ReadBool('Innstillinger', 'HuskSisteKlient', True) then
      cbKlient.ItemIndex := HentKlientId;
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
    Reg.OpenKey(blsRegistry.RegPath, True);
    if Reg.ValueExists('SisteBrukerNavn') then
      Result := Reg.ReadString('SisteBrukerNavn');
  finally
    Reg.Free;
  end;
end;

function TfrmLogin.HentKlientId: Integer;
var Reg: TRegistry;
begin
  Result := -1;
  Reg := TRegistry.Create;
  try
    Reg.OpenKey(blsRegistry.RegPath, True);
    if Reg.ValueExists('SisteKlientId') then
      Result := Reg.ReadInteger('SisteKlientId');
  finally
    Reg.Free;
  end;
end;

procedure TfrmLogin.LagreKlientId;
var Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.OpenKey(blsRegistry.RegPath, True);
    Reg.WriteInteger('SisteKlientId', cbKlient.ItemIndex);
  finally
    Reg.Free;
  end;
end;


procedure TfrmLogin.LagreBrukerId;
var Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.OpenKey(blsRegistry.RegPath, True);
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

  Dm.Connect;
  cdsUsers.Open;
  if cdsUsers.Locate('Brukernavn;IdKlient', VarArrayOf([editBruker.Text, TKlient(cbKlient.Items.Objects[cbKlient.ItemIndex]).IdKlient]), [loCaseInsensitive]) then begin
    if MD5(AnsiUpperCase(EditPassord.Text)) = cdsUsersPassord.Value then
      OK := True
    else
      Str := 'Feil passord. Vennligst prøv igjen!';
  end
  else
    Str := 'Du har ikke tilgang til valgt klient. Vennligst kontakt systemansvarlig!';

  if not OK then begin
    Dm.Disconnect;
    AlertDialog('Pålogging', Str);
    EditPassord.Text := '';
    EditPassord.SetFocus;
  end
  else begin
    ModalResult := mrOK;
    Dm.g_Bruker := cdsUsersBRUKERNAVN.Value;
    Dm.g_Tilgang := cdsUsersTILGANG.Value;
    Dm.g_KlientID := cdsUsersIDKLIENT.Value;
    Dm.g_KlientNavn := cbKlient.Text;
    Dm.g_DataImgDir := Dir + 'DataImg\' + StrPadLeft(IntToStr(Dm.g_KlientID), 4, '0') + '\';
    ForceDirectories(Dm.g_DataImgDir);
    Dm.g_DocDir := Dir + 'DataDoc\'  + StrPadLeft(IntToStr(Dm.g_KlientID), 4, '0') + '\';
    ForceDirectories(Dm.g_DocDir);

    LagreBrukerId;
    LagreKlientId;
  end;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  if editBruker.Text <> '' then
    editPassord.SetFocus;
end;

procedure TfrmLogin.FormDestroy(Sender: TObject);
var I: Integer;
begin
  for I := 0 to cbKlient.Items.Count - 1 do
    cbKlient.Items.Objects[I].Free;
end;

end.
