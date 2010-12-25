unit faRptPakke;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, blsQrAngled, DB,
  DBTables;

type
  TRptPakke = class(TQuickRep)
    QRBand1: TQRBand;
    QrSone: TblsQrALabel;
    QrVekt: TblsQrALabel;
    QrPris: TblsQrALabel;
    TblPakke: TTable;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    TblPakkePakkeNr: TStringField;
    TblPakkeDato: TDateField;
    TblPakkeKunde: TStringField;
    TblPakkePostboks: TStringField;
    TblPakkeFPoststed: TStringField;
    TblPakkeAdresse: TStringField;
    TblPakkeTelefon: TStringField;
    TblPakkeInnhold: TStringField;
    TblPakkePakketype: TIntegerField;
    TblPakkeSone: TIntegerField;
    TblPakkeHoyde: TFloatField;
    TblPakkeBredde: TFloatField;
    TblPakkeDybde: TFloatField;
    TblPakkeVolum: TFloatField;
    TblPakkeVekt: TFloatField;
    TblPakkeVolumVekt: TFloatField;
    TblPakkePris: TCurrencyField;
    TblPakkeInfo: TStringField;
    TblPakkeFPostnr: TStringField;
    TblPakkePostnr: TStringField;
    QRDBText10: TQRDBText;
    TblPakkePoststed: TStringField;
    procedure QuickRepAfterPrint(Sender: TObject);
  private

  public
    procedure OppdaterPakke(Pakkenr: String);

  end;

var
  RptPakke: TRptPakke;

implementation

{$R *.DFM}

procedure TRptPakke.OppdaterPakke(Pakkenr: String);
begin
  TblPakke.Open;
  if TblPakke.FindKey([Pakkenr]) then begin
    QrSone.Caption := 'Sone: ' + TblPakkeSone.AsString;
    QrVekt.Caption := 'Volumvekt: ' + TblPakkeVolumvekt.AsString;
    QrPris.Caption := 'Pris: ' + TblPakkePris.AsString;
  end;
end;

procedure TRptPakke.QuickRepAfterPrint(Sender: TObject);
begin
  TblPakke.Close;
end;

end.
