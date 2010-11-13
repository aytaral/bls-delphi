unit rsAboGenerering;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DB, DBClient, Provider, ADODB;

type
  TfrmAboGenerering = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    btnAvslutt: TButton;
    btnStart: TButton;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    dtAbo: TDateTimePicker;
    pnlOrdre: TPanel;
    Label5: TLabel;
    dtOrdreDato: TDateTimePicker;
    Panel4: TPanel;
    cbGenOrdre: TCheckBox;
    Panel5: TPanel;
    cbGenFaktura: TCheckBox;
    pnlFaktura: TPanel;
    Label4: TLabel;
    rbAboForfall: TRadioButton;
    dtFakturaDato: TDateTimePicker;
    rbKundeDager: TRadioButton;
    rbAboDager: TRadioButton;
    rbMultiAbo: TRadioButton;
    rbSigelAbo: TRadioButton;
    adoAboHistorikk: TADODataSet;
    dspAboHistorikk: TDataSetProvider;
    cdsAboHistorikk: TClientDataSet;
    adoAboHistorikkIDABO: TIntegerField;
    adoAboHistorikkFORFALL: TDateField;
    adoAboHistorikkIDORDRE: TIntegerField;
    adoAboHistorikkIDFAKTURA: TIntegerField;
    adoAboHistorikkBRUKER: TStringField;
    cdsAboHistorikkIDABO: TIntegerField;
    cdsAboHistorikkFORFALL: TDateField;
    cdsAboHistorikkIDORDRE: TIntegerField;
    cdsAboHistorikkIDFAKTURA: TIntegerField;
    cdsAboHistorikkBRUKER: TStringField;
    adoAboHistorikkPROSESSDATO: TDateTimeField;
    cdsAboHistorikkPROSESSDATO: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure cbGenFakturaClick(Sender: TObject);
    procedure cbGenOrdreClick(Sender: TObject);
    procedure rbMultiAboClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure cdsAboHistorikkNewRecord(DataSet: TDataSet);
  private
    procedure GenFaktura(Aktiv: Boolean);
    procedure GenOrdre(Aktiv: Boolean);
    procedure OppdaterHistorikk(IdOrdre, IdFaktura: Integer);
    procedure OppdaterNesteForfall;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAboGenerering: TfrmAboGenerering;

implementation

uses DateUtils, rsFunction, rsData, blsDialogs;

{$R *.dfm}

procedure TfrmAboGenerering.btnStartClick(Sender: TObject);
var
  IdOrdre, IdFaktura: Integer;
  Forfall: TDate;
begin
  if Dm.cdsAboAKTIV.Value = 0 then begin
    InfoDialog('Info', 'Abonnementet er ikke aktivt og kan derfor ikke prosesseres!');
    Exit;
  end;

  if ConfirmDialog('Prosesser', 'Dette vil prosessere valgte abonnement. Fortsett?') then begin
    IdOrdre := -1;
    IdFaktura := -1;

    if cbGenOrdre.Checked then begin
      IdOrdre := dmFunction.GenererAboOrdre(Dm.cdsAboIDABO.Value, Dm.cdsAboKUNDENR.Value,
        dtOrdreDato.Date, Dm.cdsAboINTERNREF.Value, '');
    end;

    if cbGenFaktura.Checked then begin
      Forfall := 0;
      if rbAboDager.Checked then
        Forfall := dtFakturaDato.Date + Dm.cdsAboFAKTURADAGER.Value
      else if rbKundeDager.Checked then
        Forfall := 0
      else if rbAboForfall.Checked then
        Forfall := Dm.cdsAboFORFALL.Value;

      IdFaktura := dmFunction.GenererOrdreFaktura(IdOrdre, Dm.cdsOrdreORDRENR.Value, Dm.cdsAboKUNDENR.Value,
        dtFakturaDato.Date, Dm.cdsOrdreINTERNREF.Value, Dm.cdsOrdreEKSTERNREF.Value, Dm.cdsOrdreREFNR.Value, Forfall);
    end;

    OppdaterNesteForfall;
    OppdaterHistorikk(IdOrdre, IdFaktura);
    Close;
  end;
end;

procedure TfrmAboGenerering.OppdaterNesteForfall;
var
  Next: TDateTime;
begin
  Next := Dm.cdsAboFORFALL.Value;
  case Dm.cdsAboIDINTERVALL.Value of
    10: Next := IncDay(Dm.cdsAboFORFALL.Value, Dm.cdsAboGJENTAGELSE.Value);
    20: Next := IncWeek(Dm.cdsAboFORFALL.Value, Dm.cdsAboGJENTAGELSE.Value);
    30: Next := IncMonth(Dm.cdsAboFORFALL.Value, Dm.cdsAboGJENTAGELSE.Value);
    40: Next := IncYear(Dm.cdsAboFORFALL.Value, Dm.cdsAboGJENTAGELSE.Value);
  end;

  Dm.cdsAbo.Edit;
  Dm.cdsAboFORFALL.Value := Next;
  Dm.cdsAbo.Post;
  Dm.cdsAbo.ApplyUpdates(-1);
end;

procedure TfrmAboGenerering.OppdaterHistorikk(IdOrdre, IdFaktura: Integer);
begin
 if (IdOrdre = -1) and (IdFaktura = -1) then Exit;
 
 cdsAboHistorikk.Open;
 cdsAboHistorikk.Insert;
 if IdOrdre > -1 then
   cdsAboHistorikkIDORDRE.Value := IdOrdre;
 if IdFaktura > -1 then
   cdsAboHistorikkIDFAKTURA.Value := IdFaktura;
 cdsAboHistorikk.Post;
 cdsAboHistorikk.ApplyUpdates(-1);
 cdsAboHistorikk.Close;
end;

procedure TfrmAboGenerering.cbGenFakturaClick(Sender: TObject);
begin
  GenFaktura(cbGenFaktura.Checked);
  if cbGenFaktura.Checked then begin
    cbGenOrdre.Checked := True;
    GenOrdre(cbGenOrdre.Checked);
  end;
end;

procedure TfrmAboGenerering.cbGenOrdreClick(Sender: TObject);
begin
  GenOrdre(cbGenOrdre.Checked);
  if cbGenOrdre.Checked = False then begin
    cbGenFaktura.Checked := False;
    GenFaktura(cbGenFaktura.Checked);
  end;
end;

procedure TfrmAboGenerering.cdsAboHistorikkNewRecord(DataSet: TDataSet);
begin
  cdsAboHistorikkIDABO.Value := Dm.cdsAboIDABO.Value;
  cdsAboHistorikkPROSESSDATO.Value := Now;
  cdsAboHistorikkBRUKER.Value := Dm.g_Bruker;
  cdsAboHistorikkFORFALL.Value := Dm.cdsAboFORFALL.Value;
end;

procedure TfrmAboGenerering.FormCreate(Sender: TObject);
begin
  dtAbo.Date := IncMonth(EndOfTheMonth(Date));
  dtOrdreDato.Date := Date;
  dtFakturaDato.Date := Date;

  GenOrdre(cbGenOrdre.Checked);
  GenFaktura(cbGenFaktura.Checked);
end;

procedure TfrmAboGenerering.GenFaktura(Aktiv: Boolean);
begin
  rbAboDager.Enabled := Aktiv;
  rbKundeDager.Enabled := Aktiv;
  rbAboForfall.Enabled := Aktiv;
  dtFakturaDato.Enabled := Aktiv;
end;

procedure TfrmAboGenerering.GenOrdre(Aktiv: Boolean);
begin
  dtOrdreDato.Enabled := Aktiv;
end;

procedure TfrmAboGenerering.rbMultiAboClick(Sender: TObject);
begin
  dtAbo.Enabled := rbMultiAbo.Checked;
end;

end.
