unit faRptEtikett;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, DB, DBTables;

type
  TRptEtikett = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    TblKunde: TTable;
    TblPostnr: TTable;
    TblKundeKunde: TStringField;
    TblKundeAdresse: TStringField;
    TblKundePostnr: TStringField;
    TblKundePoststed: TStringField;
    procedure EtikettRptBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
  private

  public

  end;

var
  RptEtikett: TRptEtikett;

implementation

uses unitReg;

{$R *.DFM}

procedure TRptEtikett.EtikettRptBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  LesMarger(Self);
  TblKunde.Open;
end;

procedure TRptEtikett.QuickRepAfterPrint(Sender: TObject);
begin
  TblKunde.Close;
end;

end.
