unit rsFakturaTekst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls;

type
  TfrmFakturaTekst = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dbmTekst: TDBMemo;
    btnOK: TButton;
    btnAvbryt: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFakturaTekst: TfrmFakturaTekst;

implementation

uses rsFaktura;

{$R *.dfm}

end.
