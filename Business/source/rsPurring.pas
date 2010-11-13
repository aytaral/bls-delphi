unit rsPurring;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, ComCtrls,
  DB, ADODB, blsAlignEdit, DBClient, Provider;

type
  TfrmPurring = class(TForm)
    Panel1: TPanel;
    btnOK: TButton;
    btnAvbryt: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    DBText1: TDBText;
    Label7: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label8: TLabel;
    DBText4: TDBText;
    Label9: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cbStatus: TComboBox;
    adoStatus: TADODataSet;
    adoStatusIDKLIENT: TIntegerField;
    adoStatusIDSTATUS: TIntegerField;
    adoStatusSTATUS: TStringField;
    adoStatusTEKST: TMemoField;
    adoStatusGEBYR: TFloatField;
    adoStatusAKTIV: TSmallintField;
    Panel2: TPanel;
    rbEksisterende: TRadioButton;
    rbNy: TRadioButton;
    GroupBox3: TGroupBox;
    dbmTekst: TDBMemo;
    memoPurring: TMemo;
    editGebyr: TblsAlignEdit;
    editRenter: TblsAlignEdit;
    Label14: TLabel;
    editTotal: TblsAlignEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    dbtDato: TDBText;
    dbtStatus: TDBText;
    dbtGebyr: TDBText;
    dbtRenter: TDBText;
    dbtTotalt: TDBText;
    Label17: TLabel;
    DBText10: TDBText;
    Label18: TLabel;
    DBText11: TDBText;
    adoStatusRENTESATS: TFloatField;
//    dtPurredato: TadpDBDateTimePicker;
    adoPurreHist: TADODataSet;
    adoPurreHistIDFAKTURA: TIntegerField;
    adoPurreHistPURREDATO: TDateField;
    adoPurreHistBESKRIVELSE: TStringField;
    adoPurreHistTEKST: TMemoField;
    adoPurreHistGEBYR: TFloatField;
    adoStatusOVERSKRIFT: TStringField;
    adoPurreHistRENTESATS: TFloatField;
    adoPurreHistDATO: TDateTimeField;
    adoPurreHistBRUKER: TStringField;
    dspPurreHist: TDataSetProvider;
    cdsPurreHist: TClientDataSet;
    cdsPurreHistIDFAKTURA: TIntegerField;
    cdsPurreHistDATO: TDateTimeField;
    cdsPurreHistPURREDATO: TDateField;
    cdsPurreHistBESKRIVELSE: TStringField;
    cdsPurreHistTEKST: TMemoField;
    cdsPurreHistGEBYR: TFloatField;
    cdsPurreHistRENTESATS: TFloatField;
    cdsPurreHistBRUKER: TStringField;
    dtPurreDato: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbStatusChange(Sender: TObject);
    procedure dtPurredatoChange(Sender: TObject);
    procedure editGebyrChange(Sender: TObject);
    procedure rbNyClick(Sender: TObject);
    procedure rbEksisterendeClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    procedure GenererGebyrer;
    procedure HentNyPurretekst;
    procedure SettNyStatus;
    procedure OppdaterNyTotal;
    procedure SettGenNy(IsReadOnly: Boolean; AColor: TColor);
    procedure SettBrukEksisterende(AColor, TotColor: TColor);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPurring: TfrmPurring;

implementation

uses rsData, DateUtils;

{$R *.dfm}

procedure TfrmPurring.FormCreate(Sender: TObject);
begin
  adoStatus.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoStatus.Open;

  adoPurreHist.Parameters.ParamValues['IdFaktura'] := Dm.cdsPurringIDFAKTURA.Value;
  cdsPurreHist.FetchParams;
  cdsPurreHist.Open;

  while not adoStatus.Eof do begin
    cbStatus.Items.Add(adoStatusSTATUS.Value);
    adoStatus.Next;
  end;
  SettNyStatus;
  dtPurredato.Date := Date;
  cbStatusChange(Self);

  if (Dm.cdsPurringPURREDATO.Value = 0) then begin
    rbEksisterende.Enabled := False;
    dbtGebyr.Visible := False;
    dbtRenter.Visible := False;
  end;
end;

procedure TfrmPurring.SettNyStatus;
var Ix: Integer;
begin
  if adoStatus.Locate('IDSTATUS', Dm.cdsPurringIDSTATUS.Value, []) then begin
    Ix := cbStatus.Items.IndexOf(adoStatusSTATUS.Value);
    Inc(Ix);
    if Ix <= cbStatus.Items.Count -1 then
      cbStatus.ItemIndex := Ix
    else if Ix = cbStatus.Items.Count then begin
      Dec(Ix);  //Hvis det er siste index setter vi den til det samme
      cbStatus.ItemIndex := Ix;
    end;
  end
  else
    cbStatus.ItemIndex := 0;
end;

procedure TfrmPurring.FormDestroy(Sender: TObject);
begin
  adoStatus.Close;
  cdsPurreHist.Close;
end;

procedure TfrmPurring.GenererGebyrer;
var Dager, AarDager: Integer;
    Rente: Double;
begin
  Dager := DaysBetween(dtPurreDato.DateTime, Dm.cdsPurringFORFALLDATO.Value);
  AarDager := DaysInYear(Now);
  editGebyr.AsFloat := adoStatusGEBYR.Value;
  Rente := Dm.cdsPurringSUMTOT.Value * (adoStatusRENTESATS.Value / 100);
  Rente := Rente * (Dager / AarDager);
  editRenter.AsFloat := Rente;

  if (editGebyr.AsFloat = 0) and (editRenter.AsFloat = 0) then
    OppdaterNyTotal;
end;

procedure TfrmPurring.HentNyPurretekst;
begin
  memoPurring.Lines.Text := adoStatusTEKST.Value;
end;

procedure TfrmPurring.cbStatusChange(Sender: TObject);
begin
  if adoStatus.Locate('STATUS', cbStatus.Text, []) then begin
    GenererGebyrer;
    HentNyPurretekst;
  end;
end;

procedure TfrmPurring.dtPurredatoChange(Sender: TObject);
begin
  GenererGebyrer;
end;

procedure TfrmPurring.OppdaterNyTotal;
var Tot: Double;
begin
  if (editGebyr.Text <> '') and (editRenter.Text <> '') then begin
    Tot := Dm.cdsPurringSUMTOT.Value + editGebyr.AsFloat +
           editRenter.AsFloat;
    editTotal.AsFloat := Tot;
  end;
end;

procedure TfrmPurring.editGebyrChange(Sender: TObject);
begin
  OppdaterNyTotal;
end;

procedure TfrmPurring.SettGenNy(IsReadOnly: Boolean; AColor: TColor);
begin
  dtPurredato.Enabled := not IsReadOnly;
  dtPurredato.Color := AColor;
  cbStatus.Enabled := not IsReadOnly;
  cbStatus.Color := AColor;
  editGebyr.ReadOnly := IsReadOnly;
  editGebyr.Color := AColor;
  editRenter.ReadOnly := IsReadOnly;
  editRenter.Color := AColor;
  editTotal.ReadOnly := IsReadOnly;
  editTotal.Color := AColor;
  memoPurring.ReadOnly := IsReadOnly;
  memoPurring.Color := AColor;
end;

procedure TfrmPurring.SettBrukEksisterende(AColor, TotColor: TColor);
begin
  dbtDato.Font.Color := AColor;
  dbtStatus.Font.Color := AColor;
  dbtGebyr.Font.Color := AColor;
  dbtRenter.Font.Color := AColor;
  dbtTotalt.Font.Color := TotColor;
end;

procedure TfrmPurring.rbNyClick(Sender: TObject);
begin
  SettGenNy(False, clWindow);
  SettBrukEksisterende(clGray, clBackground);
end;

procedure TfrmPurring.rbEksisterendeClick(Sender: TObject);
begin
  SettGenNy(True, clBtnFace);
  SettBrukEksisterende(clWindowText, clNavy);  
end;

procedure TfrmPurring.btnOKClick(Sender: TObject);
begin
  if rbNy.Checked then begin
    Dm.cdsPurring.Edit;
    Dm.cdsPurringPURREDATO.Value := dtPurredato.Date;
    Dm.cdsPurringIDSTATUS.Value := adoStatusIDSTATUS.Value;
    Dm.cdsPurringPURREGEBYR.Value := editGebyr.AsFloat;
    Dm.cdsPurringPURRERENTER.Value := editRenter.AsFloat;
    Dm.cdsPurringPURRETEKST.Value := memoPurring.Lines.Text;
    Dm.cdsPurring.Post;
    Dm.cdsPurring.ApplyUpdates(-1);

    cdsPurreHist.Append;
    cdsPurreHistIDFAKTURA.Value := Dm.cdsPurringIDFAKTURA.Value;
    cdsPurreHistDATO.Value := Now;
    cdsPurreHistPURREDATO.Value := dtPurredato.Date + Time;
    cdsPurreHistBESKRIVELSE.Value := adoStatusOVERSKRIFT.Value;
    cdsPurreHistGEBYR.Value := editGebyr.AsFloat;
    cdsPurreHistTEKST.Value := memoPurring.Lines.Text;
    cdsPurreHistRENTESATS.Value := adoStatusRENTESATS.Value;
    cdsPurreHistBRUKER.Value := Dm.g_Bruker;
    cdsPurreHist.Post;
  end;
end;

end.
