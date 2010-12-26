unit RptA4;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, DataModul;

type
  TA4Rpt = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
  private

  public

  end;

var
  A4Rpt: TA4Rpt;

implementation

{$R *.DFM}

end.
