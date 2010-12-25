unit faRptPurring;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Registry;

type
  TRptPurring = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRDBLogo: TQRDBImage;
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
    QRDBText16: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QrDbPurreDato: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText13: TQRDBText;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand5: TQRBand;
    RabattLbl: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText19: TQRDBText;
    RabattDbLbl: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText9: TQRDBText;
    QrRenter: TQRLabel;
    QRDBText1: TQRDBText;
    qrPageFooter: TQRBand;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QrPurreDato: TQRDBText;
    QRLabel20: TQRLabel;
    QrTittel: TQRLabel;
    QrLblOmg: TQRLabel;
    QrPoststed: TQRDBText;
    QrPostnr: TQRDBText;
    QrAdr: TQRDBText;
    QrFirma: TQRDBText;
    QrKid: TQRDBText;
    QRLabel3: TQRLabel;
    ChildBand1: TQRChildBand;
    QrdbFakturatekst: TQRDBText;
    QrdbPurretekst: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QrAdresse: TQRLabel;
    QrAdresse2: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText48: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText7: TQRDBText;
    QrOmg: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText14: TQRDBText;
    qrPageFooter2: TQRBand;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel31: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText34: TQRDBText;
    procedure PurreRptBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RptPurring: TRptPurring;

implementation

uses DataModul, unitReg;

{$R *.DFM}

procedure TRptPurring.PurreRptBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
 var Reg: TRegistry;
begin
 QrAdresse.Caption := Dm.FakturaAdresse(Dm.FakturaDBIdKunde.Value);
 QrAdresse2.Caption := QrAdresse.Caption;
 QrRenter.Caption := 'Renter á ' + Dm.FirmaDBPurrerente.AsString + '% p.a.';

 Reg := TRegistry.Create;
 try
  Reg.OpenKey('\Software\Bls\Fakuva5\' + DM.FirmaDBFirma.Value, True);
  If (Reg.ValueExists('Logo') = True) and (Reg.ReadBool('Logo') = False) then
    begin
    QrDBLogo.Enabled     := False;
    QrFirma.Enabled      := True;
    QrAdr.Enabled        := True;
    QrPostnr.Enabled     := True;
    QrPoststed.Enabled   := True;
    end;
  If (Reg.ValueExists('Kid')) and (Reg.ReadBool('Kid') = False) then
    QrKid.Enabled := False;
  if Reg.ValueExists('GiroDel') and (Reg.ReadBool('GiroDel') = False) then begin
    qrPageFooter.Free;
    qrPageFooter2.Enabled := True;
  end;

  Reg.CloseKey;
  finally
  Reg.Free;
 end;
 
  LesMarger(Self);
  ReportTitle := 'Purring-' + Dm.FakturaDBFakturanr.AsString;
end;

end.
