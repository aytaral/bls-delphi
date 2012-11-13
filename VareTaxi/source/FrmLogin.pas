unit FrmLogin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, blsCrypto;

type
  TLoginFrm = class(TForm)
    GroupBox1: TGroupBox;
    BtnLogin: TButton;
    BtnAvbryt: TButton;
    EditBruker: TEdit;
    EditPassord: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Pass: String;
  public
    { Public declarations }
  end;

var
  LoginFrm: TLoginFrm;

const
  LoginFil = 'rvtlogin.dat';

implementation

{$R *.DFM}

procedure TLoginFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TLoginFrm.BtnLoginClick(Sender: TObject);
begin
 If EditPassord.Text = Pass then
    begin
     ModalResult := mrOK;
    end
 else
    begin
     MessageBox(Handle, 'Du har oppgitt feil passord!', 'Feil passord', MB_ICONINFORMATION + MB_OK);
     ModalResult := mrCancel;
    end;
end;

procedure TLoginFrm.FormCreate(Sender: TObject);
var K: TStringList;
begin
 K := TStringList.Create;

 try
  K.LoadFromFile(LoginFil);
  Pass := Dekrypter(K[0]);

 finally
  K.Free;
 End;
end;

end.
