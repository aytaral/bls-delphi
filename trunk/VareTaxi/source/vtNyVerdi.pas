unit vtNyVerdi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmNyVerdi = class(TForm)
    Label1: TLabel;
    EditVerdi: TEdit;
    BtnLukk: TButton;
    BtnOK: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNyVerdi: TfrmNyVerdi;

implementation

{$R *.dfm}

end.
