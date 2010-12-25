unit faRptSalg;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, DBTables;

type
  TRptSalg = class(TQuickRep)
    QRBand2: TQRBand;
    QRDBText10: TQRDBText;
    QRSysData1: TQRSysData;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel1: TQRLabel;
    QRBand4: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel18: TQRLabel;
    QrPeriode: TQRLabel;
    QrySalg: TQuery;
    ColumnHeaderBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    ChildBand1: TQRChildBand;
    QRGroup1: TQRGroup;
    QRExpr1: TQRExpr;
    QRShape1: TQRShape;
    ChildBand2: TQRChildBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRBand1: TQRBand;
    QRLabel6: TQRLabel;
    QrySalgFakturanr: TFloatField;
    QrySalgFakturadato: TDateField;
    QrySalgKunde: TStringField;
    QrySalgRabatt: TCurrencyField;
    QrySalgEks: TCurrencyField;
    QrySalgVRef: TStringField;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRShape2: TQRShape;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
  private

  public
    procedure SetPeriode(Start, Slutt: TDate);

  end;

var
  RptSalg: TRptSalg;

implementation

uses unitReg, DataModul;

{$R *.DFM}

procedure TRptSalg.SetPeriode(Start, Slutt: TDate);
begin
  QrySalg.Params.ParamValues['StartDato'] := Start;
  QrySalg.Params.ParamValues['SluttDato'] := Slutt;

  QrPeriode.Caption := 'Periode ' + DateToStr(Start) + ' - ' +  DateToStr(Slutt);
end;



procedure TRptSalg.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  LesMarger(Self);
  QrySalg.Open;
end;



procedure TRptSalg.QuickRepAfterPrint(Sender: TObject);
begin
  QrySalg.Close;
end;

end.
