unit rsAboHistorikk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  DBCtrls;

type
  TfrmAboHistorikk = class(TForm)
    Panel2: TPanel;
    btnLukk: TButton;
    Panel1: TPanel;
    dbgAboHistorikk: TJvDBGrid;
    adoAboHistorikk: TADODataSet;
    dsAboHistorikk: TDataSource;
    adoAboHistorikkPROSESSDATO: TDateTimeField;
    adoAboHistorikkFORFALL: TDateField;
    adoAboHistorikkBRUKER: TStringField;
    adoAboHistorikkKUNDENR: TIntegerField;
    adoAboHistorikkNAVN: TStringField;
    adoAboHistorikkTITTEL: TStringField;
    adoAboHistorikkSUMEKS: TFloatField;
    adoAboHistorikkSUMMVA: TFloatField;
    adoAboHistorikkSUMRAB: TFloatField;
    adoAboHistorikkSUMTOT: TFloatField;
    adoAboHistorikkORDRENR: TIntegerField;
    adoAboHistorikkFAKTURANR: TIntegerField;
    Label1: TLabel;
    DBText1: TDBText;
    cbSingle: TCheckBox;
    procedure FormDestroy(Sender: TObject);
    procedure cbSingleClick(Sender: TObject);
  private
    { Private declarations }
    FIdAbo: Integer;
    procedure SetIdAbo(const Value: Integer);
  public
    { Public declarations }
    property IdAbo: Integer read FIdAbo write SetIdAbo;
  end;

var
  frmAboHistorikk: TfrmAboHistorikk;

implementation

uses rsData;

{$R *.dfm}

procedure TfrmAboHistorikk.cbSingleClick(Sender: TObject);
begin
  adoAboHistorikk.Parameters.ParamValues['DoFilter'] := Ord(cbSingle.Checked);
  adoAboHistorikk.Requery();
end;

procedure TfrmAboHistorikk.FormDestroy(Sender: TObject);
begin
  adoAboHistorikk.Close;
end;

procedure TfrmAboHistorikk.SetIdAbo(const Value: Integer);
begin
  FIdAbo := Value;

  adoAboHistorikk.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoAboHistorikk.Parameters.ParamValues['IdAbo'] := IdAbo;
  adoAboHistorikk.Parameters.ParamValues['DoFilter'] := Ord(cbSingle.Checked);
  adoAboHistorikk.Open;
end;

end.
