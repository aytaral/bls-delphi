unit RptFaktura;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, DataModul, Registry;

type
  TFakturaRpt = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText40: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText41: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText42: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText47: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText48: TQRDBText;
    QRBand5: TQRBand;
    Savg: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBRichText1: TQRDBRichText;
    QRLabel22: TQRLabel;
    QRDBText19: TQRDBText;
    DBAvg: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText9: TQRDBText;
    QRBand4: TQRBand;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText31: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBImage1: TQRDBImage;
    QrdbKid: TQRDBText;
    qrKroner: TQRLabel;
    qrOre: TQRLabel;
    qrKontroll: TQRLabel;
    procedure FakturaRptBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  FakturaRpt: TFakturaRpt;

implementation

uses blsMisc;

{$R *.DFM}

procedure TFakturaRpt.FakturaRptBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var Reg: TRegistry;
begin
   Reg := TRegistry.Create;
    try
      Reg.OpenKey('\Software\Bls\VareTaxi\', True);
    If Reg.ValueExists('Kid') and Reg.ReadBool('Kid') = True then
     QrdbKid.Enabled := True;
    finally
     Reg.Free;
    End;
end;

procedure TFakturaRpt.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  qrKroner.Caption := FloatToStr(Int(DM.FakturaDBTotal.Value));
  qrOre.Caption := Copy(FormatFloat('#.00', Frac(DM.FakturaDBTotal.Value)), 2, 2);
  qrKontroll.Caption := Modulus10(qrKroner.Caption + qrOre.Caption);
end;

end.
