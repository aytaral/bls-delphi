unit faPakkeSpor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, SHDocVw;

type
  TFrmPakkeSporing = class(TForm)
    Wb: TWebBrowser;
    BtnOK: TButton;
  private
    { Private declarations }
    procedure SettPakkeNr(Value: String);
  public
    { Public declarations }
    property PakkeNr: String write SettPakkeNr;
  end;

var
  FrmPakkeSporing: TFrmPakkeSporing;

implementation

{$R *.dfm}

{ TFrmPakkeSporing }

procedure TFrmPakkeSporing.SettPakkeNr(Value: String);
begin
 Wb.Navigate('http://139.117.8.127/nettgods/internett/nettspor_res.asp?sendingsnummer=' + Value);
end;

end.
