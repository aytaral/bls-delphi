unit faRptVareInnkjop;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TRptVareInnkjop = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    ChildBand1: TQRChildBand;
    QRGroup1: TQRGroup;
    QRDBText4: TQRDBText;
    ChildBand2: TQRChildBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QryRpt: TQuery;
    QryRptVare: TStringField;
    QryRptVarenr: TStringField;
    QryRptInnpris: TCurrencyField;
    QryRptKategori: TStringField;
    QryRptLeverandor: TStringField;
    QryRptIdKategori: TIntegerField;
    QRBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRDBText10: TQRDBText;
    QRSysData1: TQRSysData;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRBand4: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    procedure VareInnkjopRptBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
  private

  public

  end;

var
  RptVareInnkjop: TRptVareInnkjop;

implementation

uses unitReg, DataModul;

{$R *.DFM}

procedure TRptVareInnkjop.VareInnkjopRptBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  LesMarger(Self);
  QryRpt.Open;
end;

procedure TRptVareInnkjop.QuickRepAfterPrint(Sender: TObject);
begin
  QryRpt.Close;
end;

end.
