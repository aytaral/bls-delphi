unit rsInnbetalinger;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DB, DBClient, Provider,
  ADODB, ActnList, JvExDBGrids, JvDBGrid;

type
  TfrmInnbetalinger = class(TForm)
    adoInnbetaling: TADODataSet;
    dspInnbetaling: TDataSetProvider;
    cdsInnbetaling: TClientDataSet;
    dsInnbetaling: TDataSource;
    Panel1: TPanel;
    btnOK: TButton;
    btnAvbryt: TButton;
    Panel2: TPanel;
    dbgInnbetalinger: TJvDBGrid;
    ActionList: TActionList;
    acSlett: TAction;
    cdsInnbetalingIDINNBETALING: TIntegerField;
    cdsInnbetalingDATO: TDateField;
    cdsInnbetalingBELOP: TFloatField;
    adoInnbetalingIDINNBETALING: TIntegerField;
    adoInnbetalingDATO: TDateField;
    adoInnbetalingBELOP: TFloatField;
    adoInnbetalingKOMMENTAR: TStringField;
    adoInnbetalingBILAGNR: TIntegerField;
    cdsInnbetalingKOMMENTAR: TStringField;
    cdsInnbetalingBILAGNR: TIntegerField;
    adoInnbetalingBETALING: TStringField;
    cdsInnbetalingBETALING: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acSlettExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IdFaktura: Integer;
  end;

var
  frmInnbetalinger: TfrmInnbetalinger;

implementation

uses rsData, blsDialogs;

{$R *.dfm}

procedure TfrmInnbetalinger.FormShow(Sender: TObject);
begin
  adoInnbetaling.Parameters.ParamValues['IdFaktura'] := IdFaktura;
  cdsInnbetaling.Open;
  acSlett.Enabled := cdsInnbetaling.RecordCount > 0;
end;

procedure TfrmInnbetalinger.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cdsInnbetaling.Close;
end;

procedure TfrmInnbetalinger.acSlettExecute(Sender: TObject);
begin
  if not cdsInnbetalingBILAGNR.IsNull then begin
    InfoDialog('Slett innbetaling', 'Sletting ikke mulig når innbetalingen er knyttet til et bilag!');
    Exit;
  end;

  if ConfirmDialog('Slett innbetaling', 'Er du sikker på at du vil slette valgt innbetaling?') then begin
    cdsInnbetaling.Delete;
    cdsInnbetaling.ApplyUpdates(-1);
  end;
end;

end.
