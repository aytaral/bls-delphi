unit faRptKunde;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, DB, DBTables;

type
  TRptKunde = class(TQuickRep)
    QRBand4: TQRBand;
    QRSysData2: TQRSysData;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand1: TQRBand;
    QRBand3: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    TblKunde: TTable;
    ChildBand1: TQRChildBand;
    TblPostnr: TTable;
    TblKundeKundenr: TFloatField;
    TblKundeKunde: TStringField;
    TblKundeAdresse: TStringField;
    TblKundeKontaktperson: TStringField;
    TblKundeTelefon: TStringField;
    TblKundeTelefax: TStringField;
    TblKundeMobil: TStringField;
    TblKundeEpost: TStringField;
    TblKundeUrl: TStringField;
    TblKundePostnr: TStringField;
    TblKundePoststed: TStringField;
    QRShape1: TQRShape;
    QRSysData1: TQRSysData;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    procedure KundeRptBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
  private

  public

  end;

var
  RptKunde: TRptKunde;

implementation

uses unitReg, DataModul;

{$R *.DFM}

procedure TRptKunde.KundeRptBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  LesMarger(Self);
  TblKunde.Open;
end;

procedure TRptKunde.QuickRepAfterPrint(Sender: TObject);
begin
  TblKunde.Close;
end;

end.
