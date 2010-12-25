unit faRptLeverandorTlf;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, DB, DBTables;

type
  TRptLeverandorTlf = class(TQuickRep)
    QRBand3: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand2: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRGroup1: TQRGroup;
    QRExpr1: TQRExpr;
    ChildBand1: TQRChildBand;
    TblLeverandor: TTable;
    QRBand5: TQRBand;
    QRSysData3: TQRSysData;
    QRLabel2: TQRLabel;
    QRBand4: TQRBand;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRSysData1: TQRSysData;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRShape1: TQRShape;
    procedure KundeTlfRptBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
  private

  public

  end;

var
  RptLeverandorTlf: TRptLeverandorTlf;

implementation

uses unitReg, DataModul;

{$R *.DFM}

procedure TRptLeverandorTlf.KundeTlfRptBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  LesMarger(Self);
  TblLeverandor.Open;
end;

procedure TRptLeverandorTlf.QuickRepAfterPrint(Sender: TObject);
begin
  TblLeverandor.Close;
end;

end.
