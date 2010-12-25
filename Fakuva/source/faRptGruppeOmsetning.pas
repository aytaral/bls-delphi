unit faRptGruppeOmsetning;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, DBTables;

type
  TRptGruppeOmsetning = class(TQuickRep)
    QRBand2: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel18: TQRLabel;
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRSysData3: TQRSysData;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel4: TQRLabel;
    QrPeriode: TQRLabel;
    QryOmsetning: TQuery;
    QRGroup1: TQRGroup;
    QRDBText7: TQRDBText;
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel1: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel3: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    ChildBand2: TQRChildBand;
    QryOmsetningGruppe: TStringField;
    QryOmsetningRabatt: TCurrencyField;
    QryOmsetningMva: TCurrencyField;
    QryOmsetningTotal: TCurrencyField;
    QRBand4: TQRBand;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
  private

  public
    procedure SetPeriode(Start, Slutt: TDate);

  end;

var
  RptGruppeOmsetning: TRptGruppeOmsetning;

implementation

uses DataModul, unitReg;

{$R *.DFM}

procedure TRptGruppeOmsetning.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  LesMarger(Self);
  QryOmsetning.Open;
end;

procedure TRptGruppeOmsetning.SetPeriode(Start, Slutt: TDate);
begin
  QryOmsetning.Params.ParamValues['StartDato'] := Start;
  QryOmsetning.Params.ParamValues['SluttDato'] := Date;

  QrPeriode.Caption := 'Periode ' + DateToStr(Start) + ' - ' +  DateToStr(Slutt);
end;

procedure TRptGruppeOmsetning.QuickRepAfterPrint(Sender: TObject);
begin
  QryOmsetning.Close;
end;

end.
