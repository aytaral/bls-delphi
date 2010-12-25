unit faSplash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, StdCtrls, Jpeg, blsDBCheck, pngimage;

type
  TFrmSplash = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Pb: TProgressBar;
    LblSplash: TLabel;
    blsDBCheck: TblsDBCheck;
    Timer: TTimer;
    procedure blsDBCheckCheckDatabase(Sender: TObject; Status: String;
      PercentDone: Integer);
    procedure TimerTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSplash: TFrmSplash;

implementation

{$R *.DFM}

procedure TFrmSplash.blsDBCheckCheckDatabase(Sender: TObject;
  Status: String; PercentDone: Integer);
begin
  Pb.Position := PercentDone;
  Pb.Update;
end;

procedure TFrmSplash.TimerTimer(Sender: TObject);
begin
  Timer.Enabled := False;
  Close;
end;

procedure TFrmSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
