unit faRptKundeGruppe;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, DBTables;

type
  TRptKundeGruppe = class(TQuickRep)
    QryKunde: TQuery;
    QRBand2: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel18: TQRLabel;
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRSysData3: TQRSysData;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel4: TQRLabel;
    QRBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand4: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel3: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    QRDBText4: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
  private

  public

  end;

var
  RptKundeGruppe: TRptKundeGruppe;

implementation

uses unitReg, DataModul;

{$R *.DFM}

procedure TRptKundeGruppe.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  LesMarger(Self);
  QryKunde.Open;
end;

procedure TRptKundeGruppe.QuickRepAfterPrint(Sender: TObject);
begin
    QryKunde.Close;
end;

end.
