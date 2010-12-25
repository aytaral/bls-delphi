unit faRegistrering;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Registry;

type
  TFrmRegistrering = class(TForm)
    Label1: TLabel;
    EditFirma: TEdit;
    Label2: TLabel;
    EditSerial: TEdit;
    BtnAvbryt: TButton;
    BtnOK: TButton;
    LblHeading: TLabel;
    procedure BtnOKClick(Sender: TObject);
    procedure EditFirmaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRegistrering: TFrmRegistrering;

implementation

uses Datamodul, blsMisc;

{$R *.dfm}

procedure TFrmRegistrering.BtnOKClick(Sender: TObject);
var Reg: TRegistry;
    A, B, S:String;
begin
  S := EditSerial.Text;
  A := S[1] + S[2] + S[3] + S[4] + S[5];
  B := S[11] + S[12] + S[13];

  if (Length(S) = 16) and (S[7] + S[8] + S[9] = 'BLS') and
    (Modulus10(A) = S[15]) and (Modulus10(B) = S[16]) then begin
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_LOCAL_MACHINE;
      Reg.OpenKey('SOFTWARE\BLS\Fakuva 5\5', True);
      Reg.WriteString('Serial', EditSerial.Text);
      Reg.WriteString('Company', EditFirma.Text);
    finally
      Reg.Free;
    end;
  end;
 Close;
end;

procedure TFrmRegistrering.EditFirmaChange(Sender: TObject);
begin
  BtnOK.Enabled := (EditFirma.Text <> '') and (EditSerial.Text <> '') and
    Dm.TestSerieNummer(EditSerial.Text);
   //Dm.SjekkSerienummer;
end;

procedure TFrmRegistrering.FormCreate(Sender: TObject);
var Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    Reg.OpenKey('SOFTWARE\BLS\Fakuva 5\5', true);
    EditFirma.Text := Reg.ReadString('Company');
    EditSerial.Text  := Reg.ReadString('Serial');
  finally
    Reg.Free;
  end;
end;

procedure TFrmRegistrering.FormShow(Sender: TObject);
begin
  if Dm.SjekkSerienummer then begin
    LblHeading.Caption := 'Fakuva 5 er registrert!';
    EditFirma.Color := clBtnFace;
    EditFirma.ReadOnly := True;
    EditSerial.Color := clBtnFace;
    EditSerial.ReadOnly := True;
    BtnOK.Enabled := False;
    BtnAvbryt.SetFocus;
  end;
end;

end.
