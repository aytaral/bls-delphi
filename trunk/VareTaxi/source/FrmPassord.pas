unit FrmPassord;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls;

type
  TPassordFrm = class(TForm)
    BtnOk: TButton;
    BtnAvbryt: TButton;
    EditGammel: TEdit;
    Label1: TLabel;
    EditNytt: TEdit;
    Label2: TLabel;
    EditGjenta: TEdit;
    Label3: TLabel;
    Bevel1: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Pass: String;
  public
    { Public declarations }
  end;

var
  PassordFrm: TPassordFrm;
const
  LoginFil = 'rvtlogin.dat';  

implementation

uses DataModul, blsMisc, blsCrypto;

{$R *.DFM}

procedure TPassordFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TPassordFrm.BtnOkClick(Sender: TObject);
var K: TStringList;
begin
 If (EditGammel.Text = Pass) and
    (EditNytt.Text = EditGjenta.Text) then
    begin
     //Endre passordet i fila
      K := TStringList.Create;
       try
        K.Add(Krypter(EditNytt.Text));
        K.SaveToFile(LoginFil);
       finally
        K.Free;
       End;

     MessageBox(Handle, 'Passordet er endret! Husk å noter passordet.', 'Nytt passord', MB_ICONINFORMATION + MB_OK);
     Close;
    end
 else
     begin
      If (EditGammel.Text <> Pass) then
         MessageBox(Handle, 'Det gamle passordet du oppga er ikke riktig!', 'Feil passord', MB_ICONINFORMATION + MB_OK)
      else
      If (EditNytt.Text <> EditGjenta.Text) then
         MessageBox(Handle, 'Det nye passordet stemmer ikke!', 'Feil passord', MB_ICONINFORMATION + MB_OK)
     end;
end;

procedure TPassordFrm.FormCreate(Sender: TObject);
var K: TStringList;
begin
 K := TStringList.Create;

 try
  If FileExists(LoginFil) then
   begin
    K.LoadFromFile(LoginFil);
    Pass := Dekrypter(K[0]);
   end;
 finally
  K.Free;
 End;
end;

end.
