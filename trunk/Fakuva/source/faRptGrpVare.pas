unit faRptGrpVare;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, DB, DBTables;

type
  TRptVareGrp = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRGroup1: TQRGroup;
    QRExpr1: TQRExpr;
    ColumnHeaderBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QryVare: TQuery;
    QryVareVare: TStringField;
    QryVareKategori: TStringField;
    QryVareVarenr: TStringField;
    QryVarePris: TCurrencyField;
    QryVareMvaKlasse: TFloatField;
    QryVarePrisInk: TCurrencyField;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText10: TQRDBText;
    QRSysData1: TQRSysData;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRBand4: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    ChildBand1: TQRChildBand;
    ChildBand2: TQRChildBand;
    procedure VareGrpRptBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QryVareCalcFields(DataSet: TDataSet);
    procedure QuickRepAfterPrint(Sender: TObject);
  private

  public

  end;

var
  RptVareGrp: TRptVareGrp;

implementation

uses unitReg, DataModul;

{$R *.DFM}

procedure TRptVareGrp.VareGrpRptBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  LesMarger(Self);
  QryVare.Open;
end;

procedure TRptVareGrp.QryVareCalcFields(DataSet: TDataSet);
begin
  if QryVareMvaKlasse.Value > 0 then
    QryVarePrisInk.Value := QryVarePris.Value + ((QryVarePris.Value * QryVareMvaKlasse.Value) / 100)
  else
    QryVarePrisInk.Value := QryVarePris.Value;
end;

procedure TRptVareGrp.QuickRepAfterPrint(Sender: TObject);
begin
  QryVare.Close;
end;

end.
