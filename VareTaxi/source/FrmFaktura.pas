unit FrmFaktura;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids, Mask,
  Buttons, IniFiles;

type
  TFakturaFrm = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Fnredit: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Knredit: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    drefedit: TEdit;
    vrefedit: TEdit;
    sbk: TSpeedButton;
    Panel1: TPanel;
    Button3: TButton;
    Label9: TLabel;
    notabene: TRichEdit;
    DBText7: TDBText;
    Label11: TLabel;
    Bevel1: TBevel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Status: TLabel;
    DBGrid1: TDBGrid;
    dbfirma: TDBEdit;
    dbadr: TDBEdit;
    dbpostnr: TDBEdit;
    dbpoststed: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Button4: TButton;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    TBNy: TToolButton;
    TBPrint: TToolButton;
    TBNr: TToolButton;
    DatoEdit: TDateTimePicker;
    FDatoEdit: TDateTimePicker;
    procedure sbkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FnreditExit(Sender: TObject);
    procedure TBPrintClick(Sender: TObject);
    procedure TBNrClick(Sender: TObject);
    procedure KnreditExit(Sender: TObject);
    procedure KnreditKeyPress(Sender: TObject; var Key: Char);
    procedure TBNyClick(Sender: TObject);
    procedure FnreditKeyPress(Sender: TObject; var Key: Char);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure OpprettDataRad;
    procedure Registrer;
    procedure Blank;
    procedure FakturaSum;
    procedure SetFakturaRef;
  public
    { Public declarations }
    procedure EndreFaktura;
  end;

var
  FakturaFrm: TFakturaFrm;

implementation

uses DataModul, FrmVelg, FrmVOrdre, blsFileUtil;

{$R *.DFM}

procedure TFakturaFrm.OpprettDataRad;
begin
 DM.FakturaDB.Append;
 DM.FakturaDBMVASats.Value := DM.FirmaDBMva.Value;
 DM.FakturaDB.Post;
end;

procedure TFakturaFrm.sbkClick(Sender: TObject);
begin
 DM.VisKunAktive(True);
 Application.CreateForm(TVelgFrm, VelgFrm);
 VelgFrm.Caption := 'Velg kunde';
 VelgFrm.Kunde.Visible := True;
 VelgFrm.SokEditK.Text := '';
 VelgFrm.SokEditK.Taborder :=0;
 If VelgFrm.ShowModal = mrOK then begin
   Knredit.Text          := FloatToStr(DM.KundeDBKundenr.Value);
   FDatoEdit.Date        := DatoEdit.Date + DM.KundeDBForfallsdager.Value;
   VelgFrm.Kunde.Visible := False;
   DBfirma.font.color := clblack;
   DBadr.font.color := clblack;
   DBpostnr.font.color := clblack;
   DBpoststed.font.color := clblack;

   SetFakturaRef;
 end;
 VelgFrm.Free;
end;

procedure TFakturaFrm.SetFakturaRef;
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(Dir + 'RVT.ini');
  try
    drefedit.Text := Ini.ReadString('KundeRef', Knredit.Text, '');
    if drefEdit.Text = '' then
      drefEdit.Text := Ini.ReadString('KundeRef', 'Default', '');

    vrefedit.Text := Ini.ReadString('FirmaRef', Knredit.Text, '');
    if vrefEdit.Text = '' then
      vrefEdit.Text := Ini.ReadString('FirmaRef', 'Default', '');
  finally
    Ini.Free;
  end;
end;


procedure TFakturaFrm.FormActivate(Sender: TObject);
begin
If Status.Caption = 'Ny' then begin
 Blank;
 FDatoEdit.Date := FDatoEdit.Date + 14;
 OpprettDataRad;
 Fnredit.Text   := IntToStr(Dm.firmadbfakturanr.value);
 Notabene.Text  := DM.FirmaDBStdTekst.Value;
 end;
end;

procedure TFakturaFrm.Button3Click(Sender: TObject);
begin
 If knredit.Text <> '' then begin
 Application.CreateForm(TV_Ordre, V_Ordre);
 If V_ordre.ShowModal = mrOK then begin
 Sbk.Enabled := False;
 knredit.ReadOnly := True;
 V_ordre.Free;
 end;
 FakturaSum;
 end
 else
 MessageDlg('Du må først velge en kunde!', mtInformation, [mbOK], 0);
end;

procedure TFakturaFrm.EndreFaktura;
begin
 With DM do begin
  VisKunAktive(False);
  Fnredit.Text                     := FloatToStr(FakturaDBFakturanr.Value);
  KundeDB.Locate('IdKunde', FakturaDBKundeID.Value,[]);
  Knredit.Text                     := FloatToStr(KundeDBKundenr.Value);
   DBfirma.font.color := clblack;
   DBadr.font.color := clblack;
   DBpostnr.font.color := clblack;
   DBpoststed.font.color := clblack;
  Datoedit.Date                    := FakturaDBFakturaDato.Value;
  FDatoedit.Date                   := FakturaDBForfallsDato.Value;
  Vrefedit.Text                    := FakturaDBVref.Value;
  DRefedit.Text                    := FakturaDBDref.Value;
  Notabene.Text                    := FakturaDBNotabene.Value;
 end;
 knredit.ReadOnly := True;
 sbk.Enabled := False;
end;

procedure TFakturaFrm.Registrer;
begin
If knredit.Text <> '' then begin
 With DM do begin
  FakturaDB.Edit;
  FakturaDBFakturanr.Value       := StrToFloat(Fnredit.Text);
  FakturaDBKundeID.Value         := DM.KundeDBIDKunde.Value;
  FakturaDBFakturaDato.Value     := Datoedit.Date;
  FakturaDBForfallsDato.Value    := FDatoedit.Date;
  FakturaDBVRef.Value            := Vrefedit.Text;
  FakturaDBDRef.Value            := DRefedit.Text;
  FakturaDBNotabene.Value        := Notabene.Text;
  FakturaDBBetalt.Value          := '-';
  FakturaDB.Post;
  If Status.Caption = 'Ny' then begin
  FirmaDB.Edit;
  FirmaDBFakturanr.Value := FirmaDBFakturanr.Value + 1;
  FirmaDB.Post;
  end;
  end;
 end
 else
 MessageDlg('Fakturaen må ha en kunde!', mtError, [mbOK],0);
end;

procedure TFakturaFrm.Button1Click(Sender: TObject);
begin
 If knredit.Text <> '' then begin
  Registrer;
  end
 else
 ModalResult := mrNone;
end;

procedure TFakturaFrm.FnreditExit(Sender: TObject);
begin
IF fnredit.Color = clwhite then begin
 If Fnredit.Text = '' then MessageDlg('Fakturaen må ha et fakturanummer!', mtError, [mbOk], 0) else
 If DM.FakturaDB.Locate('Fakturanr', fnredit.Text, []) then begin
 MessageDlg('Fakturanummret finnes fra før!', mtError, [mboK], 0);
 Fnredit.Setfocus;
 end
 else
 begin
 FnrEdit.ReadOnly := True;
 FnrEdit.Color := clSilver;
 TBNr.Enabled := True;
 DM.Firmadb.Edit;
 Dm.FirmaDBFakturaNr.Value := StrToInt(FnrEdit.Text);
 DM.Firmadb.Post;
 end;
end;
end;

procedure TFakturaFrm.TBPrintClick(Sender: TObject);
begin
 If MessageDlg('Ønsker du å skrive ut dette skjermbildet ?', mtConfirmation, [mbYes, MbNo], 0) = mrYes then
 Print;
end;

procedure TFakturaFrm.TBNrClick(Sender: TObject);
begin
 FnrEdit.SetFocus;
 FnrEdit.ReadOnly := False;
 FnrEdit.Color := clWhite;
 TBNr.Enabled := False;
end;

procedure TFakturaFrm.KnreditExit(Sender: TObject);
begin
If knredit.Text <> '' then begin
 IF DM.KundeDB.Locate('Kundenr', knredit.Text, []) then begin
   Knredit.Text          := FloatToStr(DM.KundeDBKundenr.Value);
   DBfirma.font.color := clblack;
   DBadr.font.color := clblack;
   DBpostnr.font.color := clblack;
   DBpoststed.font.color := clblack;
   SetFakturaRef;
   end
   else begin
   MessageDlg('Kundenummret finnes ikke!', mtError, [mbok], 0);
   knredit.Setfocus;
   end;
 end
 else begin
 DBfirma.font.color := clsilver;
 DBadr.font.color := clsilver;
 DBpostnr.font.color := clsilver;
 DBpoststed.font.color := clsilver;
 end;
end;

procedure TFakturaFrm.KnreditKeyPress(Sender: TObject; var Key: Char);
begin
 IF key = #13 then KnreditExit(Sender);
end;

procedure TFakturaFrm.Blank;
begin
 Fnredit.text         := '';
 Vrefedit.Text        := '';
 drefedit.Text        := '';
 Notabene.text        := '';
 knredit.Text         := '';
 Datoedit.Date        := Date;
 DBfirma.font.color := clsilver;
 DBadr.font.color := clsilver;
 DBpostnr.font.color := clsilver;
 DBpoststed.font.color := clsilver;
 sbk.Enabled      := True;
 knredit.ReadOnly := False;
end;

procedure TFakturaFrm.TBNyClick(Sender: TObject);
begin
 Status.Caption := 'Ny';
 Registrer;
 If knredit.Text <> '' then begin
  Blank;
  FormActivate(Sender);
 end;
end;

procedure TFakturaFrm.FnreditKeyPress(Sender: TObject; var Key: Char);
begin
 If not (key in['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', #8, #13])
 then key := #0;
 IF key = #13 then begin
 If Fnredit.Text = '' then MessageDlg('Fakturaen må ha et fakturanummer!', mtError, [mbOk], 0) else
 If DM.FakturaDB.Locate('Fakturanr', fnredit.Text, []) then begin
 MessageDlg('Fakturanummret finnes fra før!', mtError, [mboK], 0);
 Fnredit.Setfocus;
 end
 else
 begin
 FnrEdit.ReadOnly := True;
 FnrEdit.Color := clSilver;
 TBNr.Enabled := True;
 end;
 end;
end;

procedure TFakturaFrm.Button4Click(Sender: TObject);
begin
 If Panel1.Visible = True then begin
 Panel1.Visible := False;
 Button4.Caption := 'Fakturainfo';
 end
 else
 begin
  Panel1.Visible := True;
  Button4.Caption := 'Fakturatekst';
 end;
end;

procedure TFakturaFrm.FakturaSum;
var Avg, Eks:Double;
begin
avg := 0;
eks := 0;
with DM.FOrdreDb do
begin
  DisableControls;
  try
    First;
    while not EOF do
    begin
     Avg := Avg + DM.FOrdreDBSumAvg.Value;
     Eks := Eks + DM.FOrdreDBSum.Value;
     Next;
    end;
  finally
    EnableControls;
    DM.FakturaDB.Edit;
    DM.FakturaDBEks.Value   := Eks;
    DM.FakturaDBAvg.Value   := Avg;
    DM.FakturaDBMva.Value   := Eks * (DM.FakturaDBMVASats.Value/100) ;
    DM.FakturaDBTotal.Value := Eks + Avg + (Eks * (DM.FakturaDBMVASats.Value/100));
    DM.FakturaDB.Post;
//    DM.RundAvTotalSum;
    end;
end;
end;

procedure TFakturaFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm.VisKunAktive(False);
end;

end.
