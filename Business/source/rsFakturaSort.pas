unit rsFakturaSort;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmFakturaSort = class(TForm)
    rgSort: TRadioGroup;
    rgAsc: TRadioGroup;
    btnAvbryt: TButton;
    btnOK: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFakturaSort: TfrmFakturaSort;

implementation

{$R *.dfm}

end.
