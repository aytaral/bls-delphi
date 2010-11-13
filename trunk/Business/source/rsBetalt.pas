unit rsBetalt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, blsAlignEdit, DB,
  ADODB, DBClient, Provider;

type
  TfrmBetalt = class(TForm)
    btnAvbryt: TButton;
    btnOK: TButton;
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    calDato: TMonthCalendar;
    cbOppgjort: TCheckBox;
    cbNullstill: TCheckBox;
    Label8: TLabel;
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblRenter: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    adoPurre: TADODataSet;
    dsPurre: TDataSource;
    adoPurrePURREBELOP: TFloatField;
    adoTInnbetaling: TADODataSet;
    dsTInnbetaling: TDataSource;
    adoTInnbetalingSUM: TFloatField;
    btnInnbet: TButton;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    adoInnbetaling: TADODataSet;
    dspInnbetaling: TDataSetProvider;
    adoInnbetalingIDINNBETALING: TIntegerField;
    adoInnbetalingIDFAKTURA: TIntegerField;
    adoInnbetalingDATO: TDateField;
    adoInnbetalingBELOP: TFloatField;
    adoInnbetalingKOMMENTAR: TStringField;
    adoInnbetalingIDBILAG: TIntegerField;
    cdsInnbetaling: TClientDataSet;
    cdsInnbetalingIDINNBETALING: TIntegerField;
    cdsInnbetalingIDFAKTURA: TIntegerField;
    cdsInnbetalingDATO: TDateField;
    cdsInnbetalingBELOP: TFloatField;
    cdsInnbetalingKOMMENTAR: TStringField;
    cdsInnbetalingIDBILAG: TIntegerField;
    dsInnbetaling: TDataSource;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    editBelop: TblsAlignEdit;
    adoInnbetalingIDBETALINGTYPE: TIntegerField;
    cdsInnbetalingIDBETALINGTYPE: TIntegerField;
    procedure FormDestroy(Sender: TObject);
    procedure editBelopChange(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnInnbetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsInnbetalingNewRecord(DataSet: TDataSet);
    procedure btnAvbrytClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IdFaktura: Integer;
  end;

var
  frmBetalt: TfrmBetalt;

implementation

uses rsData, rsInnbetalinger;

{$R *.dfm}

procedure TfrmBetalt.FormCreate(Sender: TObject);
begin
  Dm.cdsBetalingType.Open;
  cdsInnbetaling.Open;
  cdsInnbetaling.Insert;
end;

procedure TfrmBetalt.FormDestroy(Sender: TObject);
begin
  adoPurre.Close;
  adoTInnbetaling.Close;
  cdsInnbetaling.Close;
  Dm.cdsBetalingType.Close;
end;

procedure TfrmBetalt.editBelopChange(Sender: TObject);
begin
  if editBelop.Text <> '' then
    cbOppgjort.Checked := Round(editBelop.AsFloat) >= Round(Dm.cdsFakturaSUMTOT.Value -
      adoTInnbetalingSUM.Value);
end;

procedure TfrmBetalt.btnOKClick(Sender: TObject);
var Sql: String;
begin
  if cbNullstill.Enabled and cbNullstill.Checked then begin
    Sql := 'update FAKTURA set PURREGEBYR = 0, PURRERENTER = 0 ' +
           'where IDFAKTURA = ' + IntToStr(IdFaktura);
    Dm.adoSQL.CommandText := Sql;
    Dm.adoSQL.Execute;
  end;

  if cbOppgjort.Checked then begin
    Dm.cdsFaktura.Edit;
    Dm.cdsFakturaBETALTDATO.Value := calDato.Date;
    Dm.cdsFakturaIDBETSTATUS.Value := 10;  //Betalt
    Dm.cdsFaktura.Post;
    Dm.cdsFaktura.ApplyUpdates(-1);
  end;

  if editBelop.AsFloat > 0 then begin
    cdsInnbetalingDATO.Value := calDato.Date;
    cdsInnbetalingBELOP.Value := editBelop.AsFloat;
    cdsInnbetalingIDFAKTURA.Value := IdFaktura;
    cdsInnbetaling.Post;
    cdsInnbetaling.ApplyUpdates(-1);

    if not cbOppgjort.Checked then begin
      Dm.cdsFaktura.Edit;
      Dm.cdsFakturaIDBETSTATUS.Value := 20;  //Delvis Betalt
      Dm.cdsFaktura.Post;
      Dm.cdsFaktura.ApplyUpdates(-1);
    end;
  end;
end;

procedure TfrmBetalt.cdsInnbetalingNewRecord(DataSet: TDataSet);
begin
  cdsInnbetalingIDINNBETALING.Value := 0;
  cdsInnbetalingIDBETALINGTYPE.Value := 10;
end;

procedure TfrmBetalt.FormShow(Sender: TObject);
begin
  calDato.Date := Date;

  adoPurre.Parameters.ParamValues['IdFaktura'] := IdFaktura;
  adoPurre.Open;
  cbNullStill.Enabled := adoPurrePURREBELOP.Value > 0;
  if cbNullstill.Enabled = False then
    lblRenter.Font.Color := clMedGray;

  adoTInnbetaling.Parameters.ParamValues['IdFaktura'] := IdFaktura;
  adoTInnbetaling.Open;

  editBelop.AsFloat := Dm.cdsFakturaSUMTOT.Value - adoTInnbetalingSUM.Value;
end;

procedure TfrmBetalt.btnAvbrytClick(Sender: TObject);
begin
  cdsInnbetaling.Cancel;
  cdsInnbetaling.CancelUpdates;
end;

procedure TfrmBetalt.btnInnbetClick(Sender: TObject);
begin
  frmInnbetalinger := TfrmInnbetalinger.Create(Application);
  frmInnbetalinger.IdFaktura := IdFaktura;
  frmInnbetalinger.ShowModal;
  frmInnbetalinger.Release;
end;

end.
