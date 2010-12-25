unit faRptKundeLevUt;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, DBTables;

type
  TrptKundeUtLev = class(TQuickRep)
    qryKunde: TQuery;
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
    ChildBand1: TQRChildBand;
    QRGroup1: TQRGroup;
    qryKundeFakturanr: TFloatField;
    qryKundeIdKunde: TIntegerField;
    qryKundeAntall: TFloatField;
    qryKundePris: TCurrencyField;
    qryKundeRabatt: TFloatField;
    qryKundeVarenr: TStringField;
    qryKundeIdKategori: TIntegerField;
    qryKundeKategori: TStringField;
    QRExpr1: TQRExpr;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRBand4: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    qryKundeSum: TFloatField;
    QRDBText5: TQRDBText;
    QRExpr2: TQRExpr;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    qryKundeInfo: TStringField;
    QRDBText8: TQRDBText;
    ChildBand2: TQRChildBand;
    ChildBand3: TQRChildBand;
    qrKunde: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
    procedure qryKundeCalcFields(DataSet: TDataSet);
  private

  public
    procedure SetPeriode(IdKunde: Integer; Navn: String; Start, Slutt: TDate; Detaljer: Boolean = True);

  end;

var
  rptKundeUtLev: TrptKundeUtLev;

implementation

uses DataModul, unitReg;

{$R *.DFM}

procedure TrptKundeUtLev.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  LesMarger(Self);
  qryKunde.Open;
end;

procedure TrptKundeUtLev.SetPeriode(IdKunde: Integer; Navn: String; Start, Slutt: TDate; Detaljer: Boolean = True);
begin
  qryKunde.Params.ParamValues['StartDato'] := Start;
  qryKunde.Params.ParamValues['SluttDato'] := Date;
  qryKunde.Params.ParamValues['IdKunde'] := IdKunde;

  qrKunde.Caption := Navn;
  QrPeriode.Caption := 'Periode ' + DateToStr(Start) + ' - ' +  DateToStr(Slutt);

  if not Detaljer then begin
    ChildBand3.Enabled := False;
    QRBand1.Height := 0;
  end;
end;

procedure TrptKundeUtLev.QuickRepAfterPrint(Sender: TObject);
begin
  qryKunde.Close;
end;

procedure TrptKundeUtLev.qryKundeCalcFields(DataSet: TDataSet);
begin
  qryKundeSum.Value := (qryKundePris.Value - (qryKundePris.Value * (qryKundeRabatt.Value / 100) )) * qryKundeAntall.Value;
end;

end.
