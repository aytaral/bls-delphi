unit faRptOmsetning;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TRptOmsetning = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    Omsetning: TQRLabel;
    Rabatt: TQRLabel;
    MVA: TQRLabel;
    QRLabel7: TQRLabel;
    start: TQRLabel;
    QRLabel8: TQRLabel;
    slutt: TQRLabel;
    QRLabel9: TQRLabel;
    Total: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    Kreditt: TQRLabel;
    Kontant: TQRLabel;
    Ute: TQRLabel;
    Innbetalt: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    Antall: TQRLabel;
    QRLabel10: TQRLabel;
    MvaFritt: TQRLabel;
    QRLabel19: TQRLabel;
    Renter: TQRLabel;
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
    procedure OmsetRptBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RptOmsetning: TRptOmsetning;

implementation

uses unitReg, DataModul;

{$R *.DFM}

procedure TRptOmsetning.OmsetRptBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  LesMarger(Self);
end;

end.
