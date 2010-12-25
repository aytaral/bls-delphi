unit faRptVareKat;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TRptVareKat = class(TQuickRep)
    ColumnHeaderBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRGroup1: TQRGroup;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QryVare: TQuery;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    ChildBand1: TQRChildBand;
    ChildBand2: TQRChildBand;
    QryVareVare: TStringField;
    QryVareVarenr: TStringField;
    QryVarePris: TCurrencyField;
    QryVareKategori: TStringField;
    QryVareIdKategori: TIntegerField;
    QryVareMvaKlasse: TFloatField;
    QryVarePrisInk: TCurrencyField;
    QRBand4: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRDBText10: TQRDBText;
    QRSysData1: TQRSysData;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRShape1: TQRShape;
    procedure VareKatRptBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
    procedure QryVareCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RptVareKat: TRptVareKat;

implementation

uses unitReg, DataModul;

{$R *.DFM}

procedure TRptVareKat.VareKatRptBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  LesMarger(Self);
  QryVare.Open;
end;

procedure TRptVareKat.QuickRepAfterPrint(Sender: TObject);
begin
  QryVare.Close;
end;

procedure TRptVareKat.QryVareCalcFields(DataSet: TDataSet);
begin
  if QryVareMvaKlasse.Value > 0 then
    QryVarePrisInk.Value := QryVarePris.Value + ((QryVarePris.Value * QryVareMvaKlasse.Value) / 100)
  else
    QryVarePrisInk.Value := QryVarePris.Value;
end;

end.
