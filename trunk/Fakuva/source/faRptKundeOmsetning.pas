unit faRptKundeOmsetning;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TRptKundeOmsetning = class(TQuickRep)
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText11: TQRDBText;
    QRFooterKunde: TQRBand;
    QRLabel2: TQRLabel;
    ChildBand1: TQRChildBand;
    QryOmsetning: TQuery;
    QRExpr1: TQRExpr;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel3: TQRLabel;
    QRExpr3: TQRExpr;
    QRDBText2: TQRDBText;
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRSysData3: TQRSysData;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel4: TQRLabel;
    QRBand2: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel18: TQRLabel;
    ChildBand2: TQRChildBand;
    QrPeriode: TQRLabel;
    procedure KundeOmsetningRptBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
  private

  public
    procedure SetPeriode(Start, Slutt: TDate);

  end;

var
  RptKundeOmsetning: TRptKundeOmsetning;

implementation

uses unitReg, DataModul;

{$R *.DFM}

procedure TRptKundeOmsetning.KundeOmsetningRptBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  LesMarger(Self);
  QryOmsetning.Open;
end;

procedure TRptKundeOmsetning.QuickRepAfterPrint(Sender: TObject);
begin
  QryOmsetning.Close;
end;

procedure TRptKundeOmsetning.SetPeriode(Start, Slutt: TDate);
begin
  QryOmsetning.Params.ParamValues['StartDato'] := Start;
  QryOmsetning.Params.ParamValues['SluttDato'] := Date;

  QrPeriode.Caption := 'Periode ' + DateToStr(Start) + ' - ' +  DateToStr(Slutt);
end;

end.
