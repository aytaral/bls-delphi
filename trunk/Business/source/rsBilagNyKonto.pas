unit rsBilagNyKonto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmBilagNyKonto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    rbKonto: TRadioButton;
    rbKunde: TRadioButton;
    rbLev: TRadioButton;
    Bevel1: TBevel;
    Panel3: TPanel;
    btnOK: TButton;
    btnLukk: TButton;
    Bevel2: TBevel;
    Label1: TLabel;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    KType: Integer;
  end;

var
  frmBilagNyKonto: TfrmBilagNyKonto;

implementation

{$R *.dfm}

procedure TfrmBilagNyKonto.btnOKClick(Sender: TObject);
begin
  if rbKonto.Checked then
    KType := 1
  else if rbKunde.Checked then
    KType := 2
  else if rbLev.Checked then
    KType := 3
  else
    KType := 0;
end;

procedure TfrmBilagNyKonto.FormCreate(Sender: TObject);
begin
  KType := 0;
end;

end.
