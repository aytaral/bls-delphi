unit faRptFaktura;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Registry;

type
  TRptFaktura = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    VarelinjeBand: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
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
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    SummerBand: TQRBand;
    RabattLbl: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText19: TQRDBText;
    RabattDbLbl: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBLogo: TQRDBImage;
    QrdbFirma: TQRDBText;
    QrdbAdr: TQRDBText;
    QrdbPostnr: TQRDBText;
    QrdbPoststed: TQRDBText;
    QrType: TQRLabel;
    QRLabel3: TQRLabel;
    qrdbVarenr: TQRDBText;
    QRDBText39: TQRDBText;
    QrDBPris: TQRDBText;
    QrDBAntall: TQRDBText;
    QRDBText42: TQRDBText;
    QrDBEks: TQRDBText;
    ChildBand1: TQRChildBand;
    qrPageFooter: TQRBand;
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
    QrKid: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText2: TQRDBText;
    QrAdresse: TQRLabel;
    QrAdresse2: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText5: TQRDBText;
    QrKontroll: TQRDBText;
    QRDBText6: TQRDBText;
    qrPageFooter2: TQRBand;
    QRDBText14: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel31: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText34: TQRDBText;
    procedure FakturaRptBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure VarelinjeBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    procedure ReadVarenrSettings;

  public

  end;

var
  RptFaktura: TRptFaktura;

implementation

uses unitReg, DataModul, IniFiles, blsFileUtil;

{$R *.DFM}

procedure TRptFaktura.ReadVarenrSettings;
var
  Ini: TIniFile;
  FontSize, Left: Integer;
begin
  Ini := TIniFile.Create(Dir + 'Fakuva.ini');
  try
    FontSize := Ini.ReadInteger(Application.Title, 'VarenrFontSize', 0);
    Left := Ini.ReadInteger(Application.Title, 'VarenrLeftPos', -1);

    if FontSize > 0 then
      qrdbVarenr.Font.Size := FontSize;

    if Left > -1 then begin
      qrdbVarenr.Left := Left;
      qrdbVarenr.Width := qrdbVarenr.Width - Left;
    end;

  finally
    Ini.Free;
  end;
end;

procedure TRptFaktura.FakturaRptBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
 var Reg: TRegistry;
begin
  ReadVarenrSettings;
  QrAdresse.Caption := Dm.FakturaAdresse(Dm.FakturaDBIdKunde.Value);
  QrAdresse2.Caption := QrAdresse.Caption;
  Reg := TRegistry.Create;
  try
    Reg.OpenKey('\Software\Bls\Fakuva5\' + DM.FirmaDBFirma.Value, True);
    If (Reg.ValueExists('Logo') = True) and (Reg.ReadBool('Logo') = False) then begin
      QrDBLogo.Enabled     := False;
      QrDBFirma.Enabled    := True;
      QrDBAdr.Enabled      := True;
      QrDBPostnr.Enabled   := True;
      QrDBPoststed.Enabled := True;
    end;
    If (Reg.ValueExists('Kid')) and (Reg.ReadBool('Kid') = False) then begin
      QrKid.Enabled := False;
      QrKontroll.Enabled := False;
    end;
    if Reg.ValueExists('GiroDel') and (Reg.ReadBool('GiroDel') = False) then begin
      qrPageFooter.Free;
      qrPageFooter2.Enabled := True;
    end;

    Reg.CloseKey;
  finally
    Reg.Free;
  end;

  LesMarger(Self);
  ReportTitle := 'Faktura-' + Dm.FakturaDBFakturanr.AsString;

end;

procedure TRptFaktura.VarelinjeBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QrDBPris.Enabled := not Dm.KoblingDBAntall.IsNull;
  QrDBEks.Enabled := not Dm.KoblingDBAntall.IsNull;
end;

end.
