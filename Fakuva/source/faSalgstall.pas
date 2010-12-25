unit faSalgstall;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, DBTables;

type
  TFrmSalgstall = class(TForm)
    Bevel5: TBevel;
    Label1: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Bevel2: TBevel;
    Label3: TLabel;
    Bevel3: TBevel;
    Label6: TLabel;
    Label15: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    InnbetLbl: TLabel;
    UteLbl: TLabel;
    KontantLbl: TLabel;
    KredittLbl: TLabel;
    TotalLbl: TLabel;
    MomsLbl: TLabel;
    RabattLbl: TLabel;
    EksLbl: TLabel;
    Bevel4: TBevel;
    Label8: TLabel;
    AntFakturaLbl: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    RenteLbl: TLabel;
    Label10: TLabel;
    MvaFriLbl: TLabel;
    PStart: TDateTimePicker;
    PSlutt: TDateTimePicker;
    OkBtn: TButton;
    PrintBtn: TButton;
    OppdaterBtn: TButton;
    CbListe: TCheckBox;
    BtnEksport: TButton;
    TblFaktura: TTable;
    TblFakturaIdFaktura: TAutoIncField;
    TblFakturaFakturanr: TFloatField;
    TblFakturaIdKunde: TIntegerField;
    TblFakturaFakturaDato: TDateField;
    TblFakturaForfallsDato: TDateField;
    TblFakturaBetalt: TStringField;
    TblFakturaStatus: TStringField;
    TblFakturaDRef: TStringField;
    TblFakturaVRef: TStringField;
    TblFakturaFakturatekst: TBlobField;
    TblFakturaOrdrenr: TStringField;
    TblFakturaPakkenr: TStringField;
    TblFakturaEks: TCurrencyField;
    TblFakturaRabatt: TCurrencyField;
    TblFakturaMVA: TCurrencyField;
    TblFakturaTotal: TCurrencyField;
    TblFakturaPurretekst: TBooleanField;
    TblFakturaPurredato: TDateField;
    TblFakturaPurregebyr: TCurrencyField;
    TblFakturaPurretotal: TCurrencyField;
    TblFakturaBetaltdato: TDateField;
    TblFakturaPurrerenter: TCurrencyField;
    TblFakturaGodkjent: TBooleanField;
    TblFakturaKunde: TStringField;
    TblFakturaKundenr: TFloatField;
    TblFakturaKundeadr: TStringField;
    TblFakturaKPostnr: TStringField;
    TblFakturaKPoststed: TStringField;
    procedure OppdaterBtnClick(Sender: TObject);
    procedure BtnEksportClick(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure FiltrerFaktura(Start, Slutt: TDate);
    procedure SkrivUtFakturaListe(Copies: Integer);
  public
    { Public declarations }
    procedure RegnUt(Start, Slutt: TDate);
    procedure SettRapportTall;
  end;

var
  FrmSalgstall: TFrmSalgstall;

implementation

uses DataModul, faRptOmsetning, faRtpFakturaListe, faProgress, ShellApi, blsFileUtil;

{$R *.dfm}

procedure TFrmSalgstall.OppdaterBtnClick(Sender: TObject);
begin
  RegnUt(PStart.Date, PSlutt.Date);
end;

procedure TFrmSalgstall.BtnEksportClick(Sender: TObject);
var Sl: TStringList;
begin
 Sl := TStringList.Create;
 try
  with TblFaktura do begin
   First;
      Sl.Add('"Fakturanr","Fakturadato","Forfallsdato","Kundenr","Kunde","Adresse",' +
             '"Postnr","Poststed","Eks","Mva","Rabatt","Total","Purregebyr"');
     while not eof do begin
      Sl.Add('"' + TblFakturaFakturanr.AsString +
             '","' + TblFakturaFakturadato.AsString +
             '","' + TblFakturaForfallsdato.AsString +
             '","' + TblFakturaKundenr.AsString +
             '","' + TblFakturaKunde.AsString +
             '","' + TblFakturaKundeAdr.AsString +
             '","' + TblFakturaKPostnr.AsString +
             '","' + TblFakturaKPostSted.AsString +
             '","' + TblFakturaEks.AsString +
             '","' + TblFakturaMva.AsString +
             '","' + TblFakturaRabatt.AsString +
             '","' + TblFakturaTotal.AsString +
             '","' + TblFakturaPurregebyr.AsString + '"');
      Next;
     end;
  end;
  ForceDirectories(Dir + 'Eksport');
  Sl.SaveToFile(Dir + 'Eksport\FakturaListe.csv');
  ShellExecute(0, 'Open', '.\Eksport\Fakturaliste.csv', Nil, Nil, SW_MAXIMIZE);
 finally
  Sl.Free;
 end;
end;

procedure TFrmSalgstall.PrintBtnClick(Sender: TObject);
var P: TPrintDialog;
    I: Integer;
begin
 P := TPrintDialog.Create(Nil);
 try
  If P.Execute then
   begin
    Application.CreateForm(TRptOmsetning, RptOmsetning);
    With RptOmsetning Do
      begin
         if not Dm.UtskriftKopi then
         PrinterSettings.Copies := P.Copies;

         SettRapportTall;

         If DM.UtskriftKopi then
            begin
             I := P.Copies;
             While NOT I <= 0 do
               begin
                Print;
                I := I - 1;
               end;
            end
          else
           Print;
      end;
      If CbListe.Checked then SkrivUtFakturaListe(P.Copies);
   end;
  finally
   P.Free;
   RptOmsetning.Free;
  end;
end;

procedure TFrmSalgstall.FormCreate(Sender: TObject);
begin
  PStart.Date := StrToDate('01.01.' + FormatDateTime('YY', Date));
  PSlutt.Date := StrToDate('31.12.' + FormatDateTime('YY', Date));  //Date;

  TblFaktura.Open;
end;

procedure TFrmSalgstall.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 TblFaktura.Close;
 Action := caFree;
end;

procedure TFrmSalgstall.SkrivUtFakturaListe(Copies: Integer);
var I: Integer;
begin
 Dm.FakturaDB.DisableControls;
 Application.CreateForm(TRptFakturaListe, RptFakturaListe);
 try
   with RptFakturaListe do begin
     if not Dm.UtskriftKopi then
     PrinterSettings.Copies := Copies;

     If DM.UtskriftKopi then
        begin
         I := Copies;
         While NOT I <= 0 do
           begin
            Print;
            I := I - 1;
           end;
        end
      else
       Print;
   end;
 finally
   RptFakturaListe.Free;
   Dm.FakturaDB.EnableControls;
 end;
end;

procedure TFrmSalgstall.SettRapportTall;
begin
 With RptOmsetning Do
   begin
   If PStart.Checked then Start.Caption :=  DatetoStr(PStart.Date);
   If PSlutt.Checked then Slutt.Caption :=  DatetoStr(PSlutt.Date);
   Omsetning.Caption        :=  EksLbl.Caption;
   Rabatt.Caption           :=  RabattLbl.Caption;
   MVA.Caption              :=  MomsLbl.Caption;
   Total.Caption            :=  TotalLbl.Caption;
   Kreditt.Caption          :=  KredittLbl.Caption;
   Kontant.Caption          :=  KontantLbl.Caption;
   Ute.Caption              :=  UteLbl.Caption;
   Innbetalt.Caption        :=  InnbetLbl.Caption;
   Antall.Caption           :=  AntFakturaLbl.Caption;
   Renter.Caption           :=  RenteLbl.Caption;
   MvaFritt.Caption         :=  MvaFrilbl.Caption;    
   end;
end;

procedure TFrmSalgstall.FiltrerFaktura(Start, Slutt: TDate);
begin
{ If (PStart.Checked = True) and (PSlutt.Checked = True) then
  DM.FakturaDB.Filter := 'FakturaDato >= ''' + DateToStr(PStart.Date) + ''' and FakturaDato <= ''' + DateToStr(PSlutt.Date) + ''''
 else
 If (PStart.Checked = False) and (PSlutt.Checked = True) then
  DM.FakturaDB.Filter := 'FakturaDato <= ''' + DateToStr(PSlutt.Date) + ''''
 else
 If (PStart.Checked = True) and (PSlutt.Checked = False) then
  DM.FakturaDB.Filter := 'FakturaDato >= ''' + DateToStr(PStart.Date) + ''''
 else
  DM.FakturaDB.Filter := '';}

  TblFaktura.SetRange([Start], [Slutt]);
end;

procedure TFrmSalgstall.RegnUt(Start, Slutt: TDate);
var Eks, Mva, Rabatt, Rente, Kreditt, Ute, Kontant, Innbet, Total, Fri: Double;
begin
  FiltrerFaktura(Start, Slutt);

  AntFakturaLbl.Caption := IntToStr(TblFaktura.RecordCount);
  Application.CreateForm(TFrmProgress, FrmProgress);
  FrmProgress.VisForm('', TblFaktura.RecordCount);
  with TblFaktura do begin
    Mva      := 0;
    Eks      := 0;
    Kreditt  := 0;
    Rente    := 0;
    Ute      := 0;
    Kontant  := 0;
    Rabatt   := 0;
    Innbet   := 0;
    Total    := 0;
    Fri      := 0;

    try
    First;

    while not EOF do begin
      Mva    := Mva + TblFakturaMVA.Value;
      Eks    := Eks + TblFakturaEks.Value;
      Rabatt := Rabatt + TblFakturaRabatt.Value;
      Total  := Total + TblFakturaTotal.Value;
      Rente  := Rente + TblFakturaPurregebyr.Value;
      Fri    := Round(Eks - (Mva / (Dm.MvaListe.DefaultMva / 100)));

      if TblFakturaBetalt.Value = 'Kredit' then
        Kreditt := Kreditt + TblFakturaTotal.Value
      else if TblFakturaBetalt.Value = '-' then
        Ute := Ute + TblFakturaTotal.Value
      else if TblFakturaBetalt.Value = 'Kontant' then
        Kontant := Kontant + TblFakturaTotal.Value
      else if TblFakturaBetalt.Value = 'Ja' then
        Innbet := Innbet + TblFakturaTotal.Value;

      FrmProgress.OppdaterStatus;
      Next;
    end;

    finally
      EksLbl.Caption     := FloatToStrF(Eks, ffCurrency, 10, 2);
      RabattLbl.Caption  := FloatToStrF(Rabatt, ffCurrency, 10, 2);
      RenteLbl.Caption   := FloatToStrF(Rente, ffCurrency, 10, 2);
      MomsLbl.Caption    := FloatToStrF(Mva, ffCurrency, 10, 2);
      TotalLbl.Caption   := FloatToStrF(Total, ffCurrency, 10, 2);
      KontantLbl.Caption := FloatToStrF(Kontant, ffCurrency, 10, 2);
      KredittLbl.Caption := FloatToStrF(Kreditt * -1, ffCurrency, 10, 2);
      UteLbl.Caption     := FloatToStrF(Ute, ffCurrency, 10, 2);
      InnbetLbl.Caption  := FloatToStrF(Innbet, ffCurrency, 10, 2);
      MvaFriLbl.Caption  := FloatToStrF(Fri, ffCurrency, 10, 2);

      FrmProgress.Free;
    end;
  end;
end;

procedure TFrmSalgstall.FormShow(Sender: TObject);
begin
   RegnUt(PStart.Date, PSlutt.Date);
end;

end.
