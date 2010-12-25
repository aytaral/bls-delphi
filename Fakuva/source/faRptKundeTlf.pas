unit faRptKundeTlf;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, DB, DBTables;

type
  TRptKundeTlf = class(TQuickRep)
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
    TblKunde: TTable;
    ChildBand1: TQRChildBand;
    ChildBand2: TQRChildBand;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText10: TQRDBText;
    QRSysData3: TQRSysData;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRBand4: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel11: TQRLabel;
    QRShape1: TQRShape;
    procedure KundeTlfRptBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
  private

  public

  end;

var
  RptKundeTlf: TRptKundeTlf;

implementation

uses unitReg, DataModul;

{$R *.DFM}

procedure TRptKundeTlf.KundeTlfRptBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  LesMarger(Self);
  TblKunde.Open;
end;

procedure TRptKundeTlf.QuickRepAfterPrint(Sender: TObject);
begin
  TblKunde.Close;
end;

end.
