unit FrmOrdre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, StdCtrls, Buttons, Mask, ExtCtrls, DBCtrls, DB,
  DBTables, blsAlignEdit;

type
  TOrdreFrm = class(TForm)
    OkBtn: TButton;
    LukkBtn: TButton;
    Panel1: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    TBNy: TToolButton;
    TBPrint: TToolButton;
    TBNr: TToolButton;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label8: TLabel;
    edKmUt: TEdit;
    edKmInn: TEdit;
    edTidUt: TMaskEdit;
    edTidInn: TMaskEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    sbVelgBil: TSpeedButton;
    sbVelgDriver: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    sbVelgKunde: TSpeedButton;
    Label17: TLabel;
    Label18: TLabel;
    Status: TLabel;
    OrdrenrEdit: TEdit;
    BilnrEdit: TEdit;
    SjofornrEdit: TEdit;
    BestillingEdit: TEdit;
    KundnrEdit: TEdit;
    DBF: TDBEdit;
    DBR: TDBEdit;
    DBS: TDBEdit;
    Datoedit: TDateTimePicker;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    edRute: TEdit;
    AvtaleCheck: TCheckBox;
    Label25: TLabel;
    btnAvtale: TButton;
    GroupBox4: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    avgedit: TEdit;
    edFastPris: TblsAlignEdit;
    edSumKm: TblsAlignEdit;
    edSumTimer: TblsAlignEdit;
    edAvg: TblsAlignEdit;
    edTimePris: TblsAlignEdit;
    edKmPris: TblsAlignEdit;
    edAntTimer: TblsAlignEdit;
    edAntKm: TblsAlignEdit;
    cbLokalPris: TCheckBox;
    Label21: TLabel;
    lblSum: TLabel;
    lblTotSum: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure sbVelgBilClick(Sender: TObject);
    procedure sbVelgDriverClick(Sender: TObject);
    procedure edTidInnExit(Sender: TObject);
    procedure edKmInnExit(Sender: TObject);
    procedure TBPrintClick(Sender: TObject);
    procedure sbVelgKundeClick(Sender: TObject);
    procedure OkBtnClick(Sender: TObject);
    procedure KundnrEditEnter(Sender: TObject);
    procedure KundnrEditExit(Sender: TObject);
    procedure kundnreditKeyPress(Sender: TObject; var Key: Char);
    procedure bilnreditKeyPress(Sender: TObject; var Key: Char);
    procedure SjofornreditKeyPress(Sender: TObject; var Key: Char);
    procedure BilnrEditExit(Sender: TObject);
    procedure SjofornrEditExit(Sender: TObject);
    procedure TBNyClick(Sender: TObject);
    procedure AvtaleCheckClick(Sender: TObject);
    procedure OrdrenrEditKeyPress(Sender: TObject; var Key: Char);
    procedure kieditKeyPress(Sender: TObject; var Key: Char);
    procedure TBNrClick(Sender: TObject);
    procedure OrdrenrEditExit(Sender: TObject);
    procedure edTidUtKeyPress(Sender: TObject; var Key: Char);
    procedure btnAvtaleClick(Sender: TObject);
    procedure edAntTimerChange(Sender: TObject);
    procedure edKmPrisChange(Sender: TObject);
    procedure cbLokalPrisClick(Sender: TObject);
    procedure edFastPrisChange(Sender: TObject);
  private
    { Private declarations }
    procedure RegnutSum;
    procedure Blank;
    procedure Registrer;
    procedure BeregnKm;
    procedure BeregnTimer;
    function HentOrdreSum: Double;
  public
    { Public declarations }
    procedure EndreOrdre;
  end;

var
  OrdreFrm: TOrdreFrm;

implementation

uses DataModul, FrmVelg, vtFastAvtaleSok;

{$R *.DFM}

procedure TOrdreFrm.FormActivate(Sender: TObject);
begin
  if Status.Caption = 'Ny' then begin
    Blank;
    DatoEdit.Date := Date;
    OrdrenrEDIT.Text := IntToStr(Dm.FirmadbOrdrenr.Value);
    Bestillingedit.SetFocus;
  end;
end;

procedure TOrdreFrm.sbVelgBilClick(Sender: TObject);
begin
  Application.CreateForm(TVelgFrm, VelgFrm);
  VelgFrm.Caption := 'Velg bil';
  VelgFrm.Bil.Visible := True;
  VelgFrm.SokEditB.Text := '';
  VelgFrm.SokEditB.TabOrder := 0;
  if VelgFrm.ShowModal = mrOK then begin
    bilnredit.Text := FloatToStr(DM.BilDBBilnr.Value);
    DBR.Font.Color := clBlack;
    if Dm.BilDBTimepris.Value > 0 then
      if edTimePris.AsFloat = 0 then
        edTimePris.AsFloat := Dm.BilDBTimepris.AsFloat;
    if Dm.BilDBKmpris.Value > 0 then
      if edKmPris.AsFloat = 0 then
        edKmPris.AsFloat := Dm.BilDBKmpris.AsFloat;
  end;
  VelgFrm.Bil.Visible := False;
  VelgFrm.Free;
end;

procedure TOrdreFrm.sbVelgDriverClick(Sender: TObject);
begin
  Application.CreateForm(TVelgFrm, VelgFrm);
  VelgFrm.Caption := 'Velg sjåfør';
  VelgFrm.Sjofor.Visible := True;
  VelgFrm.SokEDits.Text := '';
  VelgFrm.SokEditS.TabOrder := 0;
  if VelgFrm.ShowModal = mrOK then begin
    Sjofornredit.Text := FloatToStr(DM.SjoforDBSjofornr.Value);
    DBS.Font.Color := clBlack;
  end;
  VelgFrm.Sjofor.Visible := False;
  VelgFrm.Free;
end;

function TOrdreFrm.HentOrdreSum: Double;
begin
  Result := edFastPris.AsFloat + edSumTimer.AsFloat + edSumKm.AsFloat;
end;

procedure TOrdreFrm.RegnutSum;
var
  Sum, Tot: Double;
begin
  Sum := HentOrdreSum;
  Tot := Sum + edAvg.AsFloat;

  lblSum.Caption := FormatFloat('#,##0.00', Sum);
  lblTotSum.Caption := FormatFloat('#,##0.00', Tot);
end;

procedure TOrdreFrm.edTidInnExit(Sender: TObject);
var
  T: String;
  //Ut,
  Inn: TTime;
begin
  //Ut := StrToTimeDef(edTidUt.Text, 0);
  Inn := StrToTimeDef(edTidInn.Text, 0);

  if Inn > 0 then begin
    T := FormatDateTime('t', StrToTime(edTidInn.Text) - StrToTime(edTidUt.Text));
    edAntTimer.Text := FloatToStr(StrToFloat(T[1] + T[2]) + ((StrToFloat(T[4] + T[5]))/60));
  end;
end;

procedure TOrdreFrm.edKmInnExit(Sender: TObject);
var
  Ut, Inn: Integer;
begin
  Ut := StrToIntDef(edKmUt.Text, 0);
  Inn := StrToIntDef(edKmInn.Text, 0);
  if Inn > 0 then
    edAntKm.AsInteger := Inn - Ut;
end;

procedure TOrdreFrm.TBPrintClick(Sender: TObject);
begin
  if MessageDlg('Ønsker du å skrive ut dette skjermbildet ?', mtConfirmation, [mbYes, MbNo], 0) = mrYes then
    Print;
end;

procedure TOrdreFrm.sbVelgKundeClick(Sender: TObject);
begin
  Application.CreateForm(TVelgFrm, VelgFrm);
  VelgFrm.Caption := 'Velg kunde';
  VelgFrm.Kunde.Visible := True;
  VelgFrm.SokEditK.Text := '';
  VelgFrm.SokEditK.TabOrder := 0;
  if VelgFrm.ShowModal = mrOK then begin
    Kundnredit.Text := FloatToStr(DM.KundeDBKundenr.Value);
    DBF.Font.Color := clBlack;
    if Dm.KundeDBTimePris.Value > 0 then
      edTimePris.AsFloat := Dm.KundeDBTimePris.AsFloat;
    if Dm.KundeDBKmPris.Value > 0 then
      edKmPris.AsFloat := Dm.KundeDBKmPris.AsFloat;
  end;
  VelgFrm.Kunde.Visible := False;
  VelgFrm.Free;
end;

procedure TOrdreFrm.Blank;
begin
 OrdrenrEdit.Text              := '';
 BestillingEdit.Text           := '';
 KundnrEdit.Text               := '';
 BilnrEdit.Text                := '';
 SjofornrEdit.Text             := '';
 edRute.Text                   := '';
 edTidUt.Text                  := '00:00';
 edTidInn.Text                 := '00:00';
 edKmUt.Text                   := '0';
 edKmInn.Text                  := '0';
 Avgedit.Text                  := '';
 AvtaleCheck.Checked           := False;
 DBF.Font.Color                := clSilver;
 DBR.Font.Color                := clSilver;
 DBS.Font.Color                := clSilver;

 edAntKm.AsFloat := 0;
 edAntTimer.AsFloat := 0;
 edAvg.AsFloat := 0;
end;

procedure TOrdreFrm.EndreOrdre;
begin
  OrdrenrEdit.Text := FloatToStr(DM.OrdreDBOrdrenr.Value);
  DatoEdit.Date := DM.OrdreDBDato.Value;
  BestillingEdit.Text := DM.OrdreDBBestillingnr.Value;

  //I databasen ligger det motsatt!
  edKmUt.Text := FloatToStr(DM.OrdreDBKminn.Value);
  edKmInn.Text := FloatToStr(DM.OrdreDBKmut.Value);
  edAntKm.AsInteger := Dm.OrdreDBKm.AsInteger;
  edKmPris.AsFloat := Dm.OrdreDBKmPris.AsFloat;

  //I databasen ligger det motsatt!
  edTidUt.Text := DM.OrdreDBTimerinn.AsString;
  edTidInn.Text := DM.OrdreDBTimerut.AsString;
  edAntTimer.AsFloat := Dm.OrdreDBTimer.AsFloat;
  edTimePris.AsFloat := Dm.OrdreDBTimePris.AsFloat;

  cbLokalPris.Checked := Dm.OrdreDBLokalPris.AsBoolean;

  edFastPris.AsFloat := Dm.OrdreDBFastPris.AsFloat;
  edAvg.AsFloat := Dm.OrdreDBSumavg.AsFloat;
  Avgedit.Text := DM.OrdreDBAvgifter.Value;
  edRute.Text := DM.OrdreDBKjorerute.Value;

  if DM.OrdreDBAvtaleId.Value = True then
    AvtaleCheck.Checked := True
  else
    AvtaleCheck.Checked := False;

  if DM.KundeDB.Locate('IdKunde', DM.OrdreDBKundeID.Value, []) then begin
    KundnrEdit.Text := FloatToStr(DM.KundeDBKundenr.Value);
    DBF.Font.Color := clBlack;
  end;

  if DM.BilDB.Locate('IdBil', DM.OrdreDBBilID.Value, []) then begin
    BilnrEdit.Text := FloatToStr(DM.BilDBBilnr.Value);
    DBR.Font.Color := clBlack;
  end;

  if DM.SjoforDB.Locate('IdSjofor', DM.OrdreDBSjoforID.Value, []) then begin
    SjofornrEdit.Text := FloatToStr(DM.SjoforDBSjofornr.Value);
    DBS.Font.Color := clBlack;
  end;
end;

procedure TOrdreFrm.Registrer;
var
  Y: String;
begin
  if (KundnrEdit.Text <> '') and (BilnrEdit.Text <> '') and (SjofornrEdit.Text <> '') then begin
    with DM do begin
      if Status.Caption = 'Ny' then begin
        FirmaDB.Edit;
        FirmaDBOrdrenr.Value := FirmaDBOrdrenr.Value + 1;
        FirmaDB.Post;
        OrdreDB.Append
      end
      else
        OrdreDB.Edit;

      OrdreDBOrdrenr.Value :=  StrToFloat(Ordrenredit.Text);
      OrdreDBKundeid.Value :=  KundeDbIdKunde.Value;
      OrdreDBBilId.Value :=  BildbidBil.Value;
      OrdreDBSjoforID.Value :=  SjoforDBIdSjofor.Value;
      OrdreDBDato.Value := Datoedit.Date;
      OrdreDBBestillingnr.Value :=  Bestillingedit.TExt;

      OrdreDBFastPris.Value := edFastPris.AsFloat;
      OrdreDBTimePris.Value := edTimePris.AsFloat;
      OrdreDBKmPris.Value := edKmPris.AsFloat;
      OrdreDBAvtaleID.Value := AvtaleCheck.Checked;
      OrdreDBFastPris.Value := edFastPris.AsFloat;

      OrdreDBLokalPris.Value := cbLokalPris.Checked;

      OrdreDBKminn.Value :=  StrToIntDef(edKmUt.Text, 0);
      OrdreDBKmut.Value :=  StrToIntDef(edKmInn.Text, 0);
      if edAntKm.AsInteger > 0 then
        OrdreDBKm.Value := edAntKm.AsFloat;

      OrdreDBTimerinn.Value := edTidUt.Text;
      OrdreDBTimerut.Value := edTidInn.Text;
      if edAntTimer.AsFloat > 0 then
        OrdreDBTimer.Value := edAntTimer.AsFloat;

      OrdreDBKjorerute.Value := edRute.Text;
      if edAvg.AsFloat > 0 then
        OrdreDBSumAvg.Value := edAvg.AsFloat;
      OrdreDBAvgifter.Value := Avgedit.Text;
      OrdreDBSum.Value := HentOrdreSum;
      Y := DateToStr(DatoEdit.Date);
      OrdreDBTidsrom.Value := Y[4]+Y[5]+Y[7]+Y[8];
      OrdreDB.Post;
    end;
  end
  else
    MessageDlg('Kunde, bil og sjåfør må være valgt!', mtError, [mbok], 0);
end;

procedure TOrdreFrm.OkBtnClick(Sender: TObject);
begin
 if (KundnrEdit.Text = '') or (BilnrEdit.Text = '') or (SjofornrEdit.Text = '') then
   ModalResult := mrNone
 else
   Registrer;
end;

procedure TOrdreFrm.KundnrEditEnter(Sender: TObject);
begin
  OkBtn.Default := False;
end;

procedure TOrdreFrm.KundnrEditExit(Sender: TObject);
var
  C: Char;
begin
  OkBtn.Default := True;
  C := #13;
  KundnrEditKeyPress(Sender, C);
end;

procedure TOrdreFrm.kundnreditKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    if KundnrEdit.Text <> '' then
      if DM.KundeDB.Locate('Kundenr', KundnrEdit.Text, []) then
        DBF.Font.Color := clBlack
      else
        MessageDlg('Kundenummeret eksistere ikke!', mtError, [mbOk],0);
  end;
end;

procedure TOrdreFrm.bilnreditKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    if BilnrEdit.Text <> '' then
    if DM.BilDB.Locate('Bilnr', BilnrEdit.Text, []) then
      DBR.Font.Color := clBlack
     else
       MessageDlg('Bilnummeret eksistere ikke!', mtError, [mbOk],0);
  end;
end;

procedure TOrdreFrm.SjofornreditKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    if SjofornrEdit.text <> '' then
      if DM.SjoforDB.Locate('Sjofornr', SjofornrEdit.Text, []) then
         DBS.Font.Color := clBlack
       else
         MessageDlg('Sjofornummeret eksistere ikke!', mtError, [mbOk],0);
  end;
end;

procedure TOrdreFrm.BilnrEditExit(Sender: TObject);
var
  C: Char;
begin
  OkBtn.Default := True;
  C := #13;
  BilnrEditKeyPress(Sender, C);
end;

procedure TOrdreFrm.SjofornrEditExit(Sender: TObject);
var
  C: Char;
begin
  OKBtn.Default := True;
  C := #13;
  SjofornrEditKeyPress(Sender, C);
end;

procedure TOrdreFrm.TBNyClick(Sender: TObject);
begin
  Registrer;
  if (KundnrEdit.Text <> '') and (BilnrEdit.Text <> '') and (SjofornrEdit.Text <> '') then begin
    Blank;
    Status.Caption := 'Ny';
    FormActivate(Sender);
  end;
end;

procedure TOrdreFrm.AvtaleCheckClick(Sender: TObject);
begin
  if AvtaleCheck.Checked then begin
    edFastPris.Color := clWindow;
    edFastPris.ReadOnly := False;
    btnAvtale.Enabled := True;
  end
  else begin
    edFastPris.Color := clBtnFace;
    edFastPris.ReadOnly := True;
    edFastPris.AsFloat := 0;
    btnAvtale.Enabled := False;
  end;
end;

procedure TOrdreFrm.OrdrenrEditKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', #8, #13]) then
    Key := #0;

  if Key = #13 then begin
    if TBNr.enabled = False then begin
      if DM.OrdreDB.Locate('ordrenr', ordrenredit.text, []) then begin
         MessageDlg('Ordrenummeret eksisterer fra før!', mtInformation, [mbOK], 0);
         OrdrenrEdit.SetFocus;
      end
      else begin
        OrdrenrEdit.Color := clBtnFace;
        OrdrenrEdit.ReadOnly := True;
        OrdrenrEdit.SetFocus;
        TBNr.Enabled := True;
      end;
    end;
  end;
end;

procedure TOrdreFrm.kieditKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ' ', ',', #8, #13]) then
    Key := #0;
end;

procedure TOrdreFrm.TBNrClick(Sender: TObject);
begin
  OrdrenrEdit.SetFocus;
  OrdrenrEdit.ReadOnly := False;
  OrdrenrEdit.Color := clWhite;
  TBNr.Enabled := False;
end;

procedure TOrdreFrm.OrdrenrEditExit(Sender: TObject);
begin
  if OrdrenrEdit.Color = clwhite then begin

    if TBNr.enabled = False then begin
      if DM.OrdreDB.Locate('ordrenr', ordrenredit.text, []) then begin
        MessageDlg('Ordrenummeret eksisterer fra før!', mtInformation, [mbOK], 0);
        OrdrenrEdit.SetFocus;
      end
      else begin
        OrdrenrEdit.Color := clSilver;
        OrdrenrEdit.ReadOnly := True;
        TBNr.Enabled := True;
        DM.Firmadb.Edit;
        Dm.FirmaDBOrdreNr.Value := StrToInt(OrdrenrEdit.Text);
        DM.Firmadb.Post;
      end;
    end;

  end;
end;

procedure TOrdreFrm.edTidUtKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', #8, #13]) then
    Key := #0;
end;

procedure TOrdreFrm.btnAvtaleClick(Sender: TObject);
begin
  frmFastAvtaleSok := TfrmFastAvtaleSok.Create(Application);
  if KundnrEdit.Text <> '' then
    frmFastAvtaleSok.KundeID := Dm.KundeDBIdKunde.Value
  else
    frmFastAvtaleSok.KundeID := -1;

  if frmFastAvtaleSok.ShowModal = mrOK then begin
    edRute.Text := Dm.tblAvtaleBESKRIVELSE.Value;
    edFastPris.AsFloat := Dm.tblAvtaleAVTALEPRIS.Value;
  end;
  frmFastAvtaleSok.Release;
end;

procedure TOrdreFrm.BeregnTimer;
begin
  edSumTimer.AsFloat := edAntTimer.AsFloat * edTimePris.AsFloat;
end;

procedure TOrdreFrm.BeregnKm;
begin
  edSumKm.AsFloat := edAntKm.AsFloat * edKmPris.AsFloat;
end;

procedure TOrdreFrm.edAntTimerChange(Sender: TObject);
begin
  BeregnTimer;
end;

procedure TOrdreFrm.edKmPrisChange(Sender: TObject);
begin
  BeregnKm;
end;

procedure TOrdreFrm.cbLokalPrisClick(Sender: TObject);
begin
  if cbLokalPris.Checked then begin
    if Trim(BilnrEdit.Text) <> '' then begin
      edTimePris.AsFloat := Dm.BilDBLokalpris.Value;
    end
    else begin
      MessageDlg('NB: Lokalpris kunne ikke hentes da bil ikke er valgt!', mtInformation, [mbOK], 0);
    end;

    edKmUt.ReadOnly := True;
    edKmUt.Color := clBtnFace;
    edKmUt.Text := '0';

    edKmInn.ReadOnly := True;
    edKmInn.Color := clBtnFace;
    edKmInn.Text := '0';

    edAntKm.ReadOnly := True;
    edAntKm.Color := clBtnFace;
    edAntKm.Text := '0';

    edKmPris.ReadOnly := True;
    edKmPris.Color := clBtnFace;
    edKmPris.AsFloat := 0;
  end
  else begin
    if (Trim(BilnrEdit.Text) <> '') and (Trim(KundnrEdit.Text) <> '') then begin
      if Dm.KundeDBTimePris.AsFloat > 0 then
        edTimePris.AsFloat := Dm.KundeDBTimePris.AsFloat
      else
        edTimePris.AsFloat := Dm.BilDBTimepris.AsFloat;

      if Dm.KundeDBKmPris.AsFloat > 0 then
        edKmPris.AsFloat := Dm.KundeDBKmPris.AsFloat
      else
        edKmPris.AsFloat := Dm.BilDBKmpris.AsFloat;
    end
    else begin
      MessageDlg('NB: Timepris og Km. pris kunne ikke hentes da ente bil eller kunde ikke er valgt!', mtInformation, [mbOK], 0);
    end;


    edKmUt.ReadOnly := False;
    edKmUt.Color := clWindow;

    edKmInn.ReadOnly := False;
    edKmInn.Color := clWindow;

    edAntKm.ReadOnly := False;
    edAntKm.Color := clWindow;

    edKmPris.ReadOnly := False;
    edKmPris.Color := clWindow;
  end;
end;

procedure TOrdreFrm.edFastPrisChange(Sender: TObject);
begin
  RegnutSum;
end;

end.
