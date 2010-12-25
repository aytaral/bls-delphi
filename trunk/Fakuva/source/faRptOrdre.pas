unit faRptOrdre;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Registry;

type
  TRptOrdre = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBLogo: TQRDBImage;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand5: TQRBand;
    QRLabel20: TQRLabel;
    RabattLbl: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText19: TQRDBText;
    RabattDbLbl: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText9: TQRDBText;
    ChildBand1: TQRChildBand;
    QRLabel14: TQRLabel;
    QRDBText30: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText43: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel12: TQRLabel;
    QrAdresse: TQRLabel;
    QRBand4: TQRBand;
    QRDBText14: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText48: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText13: TQRDBText;
    procedure KvitRptBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RptOrdre: TRptOrdre;

implementation

uses unitReg, DataModul;

{$R *.DFM}

procedure TRptOrdre.KvitRptBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var Reg:TRegistry;
begin
 QrAdresse.Caption := Dm.FakturaAdresse(Dm.FakturaDBIdKunde.Value);
 Reg := TRegistry.Create;
 try
  Reg.OpenKey('\Software\Bls\Fakuva5\' + DM.FirmaDBFirma.Value, True);
  If (Reg.ValueExists('Logo') = True) and (Reg.ReadBool('Logo') = False) then
    begin
    QrDBLogo.Enabled     := False;
    QrDBText1.Enabled    := True;
    QrDBText2.Enabled    := True;
    QrDBText3.Enabled    := True;
    QrDBText4.Enabled    := True;
    end;
  Reg.CloseKey;
  finally
 Reg.Free;
 end;

  LesMarger(Self);
end;

end.
