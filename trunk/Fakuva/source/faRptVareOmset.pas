unit faRptVareOmset;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, DBTables;

type
  TRptVareOmsetning = class(TQuickRep)
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRSysData3: TQRSysData;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel4: TQRLabel;
    QrPeriode: TQRLabel;
    QRBand2: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel18: TQRLabel;
    QryVare: TQuery;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QryVareVarenr: TStringField;
    QryVareVare: TStringField;
    QryVarePris: TCurrencyField;
    QryVareTotAnt: TFloatField;
    QryVareTotal: TCurrencyField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
    procedure QryVareBeforeOpen(DataSet: TDataSet);
    procedure QryVareAfterOpen(DataSet: TDataSet);
  private

  public
    procedure SetPeriode(Start, Slutt: TDate);

  end;

var
  RptVareOmsetning: TRptVareOmsetning;

implementation

uses DataModul, unitReg;

{$R *.DFM}

procedure TRptVareOmsetning.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  LesMarger(Self);
  QryVare.Open;
end;

procedure TRptVareOmsetning.QuickRepAfterPrint(Sender: TObject);
begin
  QryVare.Close;
end;

procedure TRptVareOmsetning.SetPeriode(Start, Slutt: TDate);
begin
  QryVare.Params.ParamValues['StartDato'] := Start;
  QryVare.Params.ParamValues['SluttDato'] := Date;

  QrPeriode.Caption := 'Periode ' + DateToStr(Start) + ' - ' +  DateToStr(Slutt);
end;

procedure TRptVareOmsetning.QryVareBeforeOpen(DataSet: TDataSet);
begin
  Screen.Cursor := crHourglass;
end;

procedure TRptVareOmsetning.QryVareAfterOpen(DataSet: TDataSet);
begin
  Screen.Cursor := crDefault;
end;

end.
