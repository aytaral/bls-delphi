unit RptEtikett;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, DataModul;

type
  TEtikettRpt = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
  private

  public

  end;

var
  EtikettRpt: TEtikettRpt;

implementation

{$R *.DFM}

end.
