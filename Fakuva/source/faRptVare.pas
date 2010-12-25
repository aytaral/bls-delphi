unit faRptVare;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, DB, DBTables;

type
  TRptVare = class(TQuickRep)
    QRBand3: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText4: TQRDBText;
    ChildBand1: TQRChildBand;
    TblVare: TTable;
    TblVareVarenr: TStringField;
    TblVareVare: TStringField;
    TblVarePris: TCurrencyField;
    TblVareMerknader: TBlobField;
    TblVareIdKategori: TIntegerField;
    TblVareIdLeverandor: TIntegerField;
    TblVareMvaKlasse: TFloatField;
    TblVarePrisInk: TCurrencyField;
    TblKategori: TTable;
    TblVareKategori: TStringField;
    TblLeverandor: TTable;
    TblVareLeverandor: TStringField;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText10: TQRDBText;
    QRSysData1: TQRSysData;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRBand4: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    procedure VareRptBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
    procedure TblVareCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RptVare: TRptVare;

implementation

uses unitReg, DataModul;

{$R *.DFM}

procedure TRptVare.VareRptBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  LesMarger(Self);
  TblVare.Open;
end;

procedure TRptVare.QuickRepAfterPrint(Sender: TObject);
begin
  TblVare.Close;
end;

procedure TRptVare.TblVareCalcFields(DataSet: TDataSet);
begin
  if TblVareMvaKlasse.Value > 0 then
    TblVarePrisInk.Value := TblVarePris.Value + ((TblVarePris.Value * TblVareMvaKlasse.Value) / 100)
  else
    TblVarePrisInk.Value := TblVarePris.Value;
end;

end.
