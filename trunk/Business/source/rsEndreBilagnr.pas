unit rsEndreBilagnr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, blsAlignEdit;

type
  TfrmEndreBilagnr = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    editNo: TblsAlignEdit;
    btnOK: TButton;
    btnAvbryt: TButton;
    adoBilagnr: TADODataSet;
    Label2: TLabel;
    lblAar: TLabel;
    adoBilagnrIDBILAG: TIntegerField;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    BilagAar: Integer;
  end;

var
  frmEndreBilagnr: TfrmEndreBilagnr;

implementation

uses rsData, blsDialogs;

{$R *.dfm}

procedure TfrmEndreBilagnr.btnOKClick(Sender: TObject);
begin
  adoBilagnr.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoBilagnr.Parameters.ParamValues['Bilagnr'] := editNo.AsFloat;
  adoBilagnr.Parameters.ParamValues['Aar'] := BilagAar;

  adoBilagnr.Open;
  if adoBilagnrIDBILAG.IsNull then
    ModalResult := mrOK
  else begin
    blsDialogs.AlertDialog('Bilagnr', 'Oppgitt bilagsnummer finnes fra før. Vennligst angi et unikt bilagsnummer for oppgitt år!');
    editNo.SetFocus;
    editNo.SelectAll;
  end;
  adoBilagnr.Close;
end;

procedure TfrmEndreBilagnr.FormShow(Sender: TObject);
begin
  lblAar.Caption := IntToStr(BilagAar);
end;

end.
