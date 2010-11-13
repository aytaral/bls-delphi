unit rsEndreOrdrenr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, blsAlignEdit, DB, ADODB;

type
  TfrmEndreOrdrenr = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    editNo: TblsAlignEdit;
    btnAvbryt: TButton;
    btnOK: TButton;
    adoOrdrenr: TADODataSet;
    adoOrdrenrIDORDRE: TIntegerField;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEndreOrdrenr: TfrmEndreOrdrenr;

implementation

uses rsData, blsDialogs;

{$R *.dfm}

procedure TfrmEndreOrdrenr.btnOKClick(Sender: TObject);
begin
  adoOrdrenr.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoOrdrenr.Parameters.ParamValues['Ordrenr'] := editNo.AsFloat;
  adoOrdrenr.Open;
  if adoOrdrenrIDORDRE.IsNull then
    ModalResult := mrOK
  else begin
    blsDialogs.AlertDialog('Fakturanr', 'Oppgitt fakturanummer finnes fra før. Vennligst angi et unikt fakturanummer!');
    editNo.SetFocus;
    editNo.SelectAll;
  end;
  adoOrdrenr.Close;
end;

end.
