unit rsEndreFakturanr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, blsAlignEdit, DB, ADODB;

type
  TfrmEndreFakturanr = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    editNo: TblsAlignEdit;
    btnAvbryt: TButton;
    btnOK: TButton;
    adoFakturanr: TADODataSet;
    adoFakturanrIDFAKTURA: TIntegerField;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEndreFakturanr: TfrmEndreFakturanr;

implementation

uses rsData, blsDialogs;

{$R *.dfm}

procedure TfrmEndreFakturanr.btnOKClick(Sender: TObject);
begin
  adoFakturanr.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoFakturanr.Parameters.ParamValues['Fakturanr'] := editNo.AsFloat;
  adoFakturanr.Open;
  if adoFakturanrIDFAKTURA.IsNull then
    ModalResult := mrOK
  else begin
    blsDialogs.AlertDialog('Fakturanr', 'Oppgitt fakturanummer finnes fra før. Vennligst angi et unikt fakturanummer!');
    editNo.SetFocus;
    editNo.SelectAll;
  end;
  adoFakturanr.Close;
end;

end.
