unit RptPurre;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, DataModul, Registry;

type
  TPurreRpt = class(TQuickRep)
    QRBand1: TQRBand;
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
    QRDBText12: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRBand3: TQRBand;
    QRDBText47: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText48: TQRDBText;
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
    QRBand5: TQRBand;
    Savg: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBRichText2: TQRDBRichText;
    QRLabel29: TQRLabel;
    QRDBText2: TQRDBText;
    DBAvg: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText50: TQRDBText;
    QRDBImage1: TQRDBImage;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QrdbKid: TQRDBText;
    procedure PurreRptBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  PurreRpt: TPurreRpt;

implementation

{$R *.DFM}

procedure TPurreRpt.PurreRptBeforePrint(Sender: TCustomQuickRep;
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


end.
