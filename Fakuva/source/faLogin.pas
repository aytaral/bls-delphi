unit faLogin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TFrmLogin = class(TForm)
    Image1: TImage;
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
    procedure FormCreate(Sender: TObject);
    procedure BtnLoginClick(Sender: TObject);
  private
    { Private declarations }
    LoginCount: Integer;
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses DataModul;

{$R *.DFM}

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
 EditBruker.Text := DM.FirmaDBFirma.Value;
 LoginCount := 0;
end;

procedure TFrmLogin.BtnLoginClick(Sender: TObject);
begin
 If EditPassord.Text = DM.FirmaDBPassord.Value then
    begin
     DM.SkrivTilLogg('Bruker ' + EditBruker.Text + ' logget inn');
     ModalResult := mrOK;
    end
 else
    begin
     DM.SkrivTilLogg('Bruker ' + EditBruker.Text + ' oppga feil passord ved innlogging');
     MessageBox(Handle, 'Du har oppgitt feil passord! Prøv igjen.', 'Feil passord', MB_ICONINFORMATION + MB_OK);
     Inc(LoginCount);
     EditPassord.Text := '';
     if LoginCount = 3 then
       ModalResult := mrCancel;
    end;
end;

end.
