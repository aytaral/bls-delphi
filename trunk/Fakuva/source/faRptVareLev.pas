unit faRptVareLev;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, DB, DBTables;

type
  TRptVareLev = class(TQuickRep)
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText4: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    ChildBand1: TQRChildBand;
    QryVare: TQuery;
    QryVareIdLeverandor: TIntegerField;
    QryVareVare: TStringField;
    QryVareVarenr: TStringField;
    QryVareLeverandor: TStringField;
    QryVareKategori: TStringField;
    QryVarePris: TCurrencyField;
    QRBand4: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel4: TQRLabel;
    QRBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRDBText10: TQRDBText;
    QRSysData1: TQRSysData;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRShape1: TQRShape;
    procedure LeverandorVareRptBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
  private

  public

  end;

var
  RptVareLev: TRptVareLev;

implementation

uses unitReg, DataModul;

{$R *.DFM}

procedure TRptVareLev.LeverandorVareRptBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  LesMarger(Self);
  QryVare.Open;
end;

procedure TRptVareLev.QuickRepAfterPrint(Sender: TObject);
begin
  QryVare.Close;
end;

end.
