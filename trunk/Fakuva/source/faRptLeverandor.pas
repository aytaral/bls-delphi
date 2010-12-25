unit faRptLeverandor;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, DB, DBTables;

type
  TRptLeverandor = class(TQuickRep)
    QRBand6: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText22: TQRDBText;
    TblLeverandor: TTable;
    ChildBand1: TQRChildBand;
    TblPostnr: TTable;
    TblLeverandorLeverandornr: TFloatField;
    TblLeverandorLeverandor: TStringField;
    TblLeverandorAdresse: TStringField;
    TblLeverandorKontaktperson: TStringField;
    TblLeverandorTelefon: TStringField;
    TblLeverandorTelefax: TStringField;
    TblLeverandorMobil: TStringField;
    TblLeverandorEpost: TStringField;
    TblLeverandorUrl: TStringField;
    TblLeverandorPostnr: TStringField;
    TblLeverandorPossted: TStringField;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText10: TQRDBText;
    QRSysData1: TQRSysData;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRBand4: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel11: TQRLabel;
    QRShape1: TQRShape;
    procedure LeverandorRptBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
  private

  public

  end;

var
  RptLeverandor: TRptLeverandor;

implementation

uses unitReg, DataModul;

{$R *.DFM}

procedure TRptLeverandor.LeverandorRptBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  LesMarger(Self);
  TblLeverandor.Open;
end;

procedure TRptLeverandor.QuickRepAfterPrint(Sender: TObject);
begin
  TblLeverandor.Close;
end;

end.
