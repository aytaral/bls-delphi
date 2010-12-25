unit faBetaltDato;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TFrmBetaltDato = class(TForm)
    BtnOK: TButton;
    BtnAvbryt: TButton;
    GroupBox1: TGroupBox;
    McDato: TMonthCalendar;
    GroupBox2: TGroupBox;
    RbAll: TRadioButton;
    RbPart: TRadioButton;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBetaltDato: TFrmBetaltDato;

implementation

{$R *.DFM}

procedure TFrmBetaltDato.FormCreate(Sender: TObject);
begin
  McDato.Date := now;
end;

end.
