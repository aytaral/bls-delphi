unit faHentVarer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFrmHentVarer = class(TForm)
    EditFnr: TLabeledEdit;
    BtnOk: TButton;
    BtnAvbryt: TButton;
    procedure EditFnrKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHentVarer: TFrmHentVarer;

implementation

uses blsMisc;

{$R *.dfm}

procedure TFrmHentVarer.EditFnrKeyPress(Sender: TObject; var Key: Char);
begin
 IntKontroll(Key);
end;

end.
