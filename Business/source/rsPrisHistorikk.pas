unit rsPrisHistorikk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TeeProcs, TeEngine, Chart, DbChart, DB, ADODB, Series,
  StdCtrls, DBClient, Provider;

type
  TfrmPrisHistorikk = class(TForm)
    adoPrisTrend: TADODataSet;
    adoPrisTrendIDKLIENT: TIntegerField;
    adoPrisTrendPRODUKTNR: TStringField;
    adoPrisTrendENDRET: TDateTimeField;
    adoPrisTrendGAMMELPRIS: TFloatField;
    adoPrisTrendENDRINGPRIS: TFloatField;
    adoPrisTrendGAMMELINNPRIS: TFloatField;
    adoPrisTrendENDRINGINNPRIS: TFloatField;
    Panel1: TPanel;
    DBChart1: TDBChart;
    Panel2: TPanel;
    Button1: TButton;
    Series2: TLineSeries;
    Series1: TLineSeries;
    dspPrisTrend: TDataSetProvider;
    cdsPrisTrend: TClientDataSet;
    cdsPrisTrendIDKLIENT: TIntegerField;
    cdsPrisTrendPRODUKTNR: TStringField;
    cdsPrisTrendENDRET: TDateTimeField;
    cdsPrisTrendGAMMELPRIS: TFloatField;
    cdsPrisTrendENDRINGPRIS: TFloatField;
    cdsPrisTrendGAMMELINNPRIS: TFloatField;
    cdsPrisTrendENDRINGINNPRIS: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrisHistorikk: TfrmPrisHistorikk;

implementation

uses rsData;

{$R *.dfm}

procedure TfrmPrisHistorikk.FormCreate(Sender: TObject);
begin
  adoPrisTrend.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoPrisTrend.Parameters.ParamValues['Pnr'] := Dm.cdsProdPRODUKTNR.Value;
  cdsPrisTrend.Open;

  cdsPrisTrend.Append;
  cdsPrisTrendIDKLIENT.Value := Dm.g_KlientID;
  cdsPrisTrendPRODUKTNR.Value := Dm.cdsProdPRODUKTNR.Value;
  cdsPrisTrendENDRET.Value := Date;
  cdsPrisTrendGAMMELPRIS.Value := Dm.cdsProdPRIS.Value;
  cdsPrisTrendGAMMELINNPRIS.Value := Dm.cdsProdINNPRIS.Value;
  cdsPrisTrend.Post;
end;

procedure TfrmPrisHistorikk.FormDestroy(Sender: TObject);
begin
  cdsPrisTrend.Close;
end;

end.
