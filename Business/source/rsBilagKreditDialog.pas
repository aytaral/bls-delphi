unit rsBilagKreditDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmBilagKreditDialog = class(TForm)
    GroupBox1: TGroupBox;
    rbFaktura: TRadioButton;
    rbBank: TRadioButton;
    rbKontant: TRadioButton;
    btnAvbryt: TButton;
    btnOK: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBilagKreditDialog: TfrmBilagKreditDialog;

implementation

{$R *.dfm}

end.
