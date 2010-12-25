unit faProgress;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, ExtCtrls;

type
  TFrmProgress = class(TForm)
    LblTekst: TLabel;
    Pb: TProgressBar;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
   procedure VisForm(LedeTekst: String = ''; Antall: Integer = 100; Steg: Integer = 1);
   procedure OppdaterStatus;
 end;

var
  FrmProgress: TFrmProgress;

implementation

uses DataModul;

{$R *.DFM}

procedure TFrmProgress.VisForm(LedeTekst: String = ''; Antall: Integer = 100; Steg: Integer = 1);
begin
 If Dm.FakturaDB.RecordCount > 0 then
  begin
   Pb.Max     := Antall;
   Pb.Step    := Steg;
   If (LedeTekst <> '') then LblTekst.Caption := LedeTekst;
   Show;
  end;
end;

procedure TFrmProgress.OppdaterStatus;
begin
  Pb.StepIt;
  Update;
  If Pb.Position = Pb.Max then Close;
end;

end.
