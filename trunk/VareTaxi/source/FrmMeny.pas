unit FrmMeny;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, Menus, ExtCtrls, StdCtrls, DBCtrls, Grids,
  DBGrids, ShellApi, Buttons, Spin, OleCtrls, vcfi, DB, ExtDlgs, Registry,
  DBTables, Printers, JclIniFiles,
  blsDbGridScroll, blsXMLUtil, vtEHFExport, XMLIntf, XmlDoc, IniFiles;

type
  TMenyFrm = class(TForm)
    Ark: TPageControl;
    Ordre: TTabSheet;
    Kunder: TTabSheet;
    Biler: TTabSheet;
    MainMenu1: TMainMenu;
    Fil: TMenuItem;
    Rediger1: TMenuItem;
    Om1: TMenuItem;
    Om2: TMenuItem;
    Firmainfo: TTabSheet;
    N1: TMenuItem;
    Postadresser1: TMenuItem;
    Avslutt1: TMenuItem;
    N2: TMenuItem;
    Vis1: TMenuItem;
    Endre1: TMenuItem;
    Slett1: TMenuItem;
    SB: TStatusBar;
    Pb: TProgressBar;
    PBTimer: TTimer;
    Firmaedit: TEdit;
    adresseedit: TEdit;
    postnredit: TEdit;
    poststededit: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    telefonedit: TEdit;
    telefaxedit: TEdit;
    mobiledit: TEdit;
    epostedit: TEdit;
    webadresseedit: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    SpeedButton1: TSpeedButton;
    Label13: TLabel;
    Momsedit: TEdit;
    Label16: TLabel;
    bankedit: TEdit;
    Label17: TLabel;
    Orgedit: TEdit;
    KundePanel: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBText2: TDBText;
    DBText1: TDBText;
    Label18: TLabel;
    BilPanel: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label22: TLabel;
    DBText6: TDBText;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    Sjofor: TTabSheet;
    Panel9: TPanel;
    Label27: TLabel;
    SokEditK: TEdit;
    Label28: TLabel;
    CBK: TComboBox;
    Label29: TLabel;
    Label30: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    CBB: TComboBox;
    SokEditB: TEdit;
    Label36: TLabel;
    Label37: TLabel;
    Faktura: TTabSheet;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    CBS: TComboBox;
    SokEditS: TEdit;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    SpeedButton3: TSpeedButton;
    Avtalegrid: TDBGrid;
    Label53: TLabel;
    DBText20: TDBText;
    Label57: TLabel;
    DBText27: TDBText;
    Ny1: TMenuItem;
    Lagre1: TMenuItem;
    Skrivut1: TMenuItem;
    Skriveroppsett1: TMenuItem;
    Purring: TTabSheet;
    Panel13: TPanel;
    Label55: TLabel;
    Verkty1: TMenuItem;
    Kalkulator1: TMenuItem;
    Sikkerhetskopi1: TMenuItem;
    Importavsikkerhetskopi1: TMenuItem;
    N6: TMenuItem;
    vis2: TMenuItem;
    Label67: TLabel;
    DBText9: TDBText;
    SpeedButton2: TSpeedButton;
    Bestilling: TTabSheet;
    BestillingPanel: TPanel;
    Label15: TLabel;
    Label51: TLabel;
    Label61: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label75: TLabel;
    DBText34: TDBText;
    DBText37: TDBText;
    CBBE: TComboBox;
    SokEditBe: TEdit;
    Label70: TLabel;
    DBText17: TDBText;
    Label71: TLabel;
    DBText21: TDBText;
    Label74: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    DBText28: TDBText;
    DBText35: TDBText;
    DBText36: TDBText;
    DBText38: TDBText;
    DBText39: TDBText;
    DBText40: TDBText;
    DBText41: TDBText;
    Label79: TLabel;
    Label80: TLabel;
    DBText42: TDBText;
    Label81: TLabel;
    DBText43: TDBText;
    DBText44: TDBText;
    Label82: TLabel;
    muApo: TMenuItem;
    Tekstbehandler1: TMenuItem;
    DBGrid6: TDBGrid;
    DBGrid5: TDBGrid;
    SjoforGrid: TDBGrid;
    BilGrid: TDBGrid;
    KundeGrid: TDBGrid;
    FakturaGrid: TDBGrid;
    OrdreGrid: TDBGrid;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    TNy: TToolButton;
    TEndre: TToolButton;
    TLagre: TToolButton;
    TSlett: TToolButton;
    TPrint: TToolButton;
    TVis: TToolButton;
    ToolButton3: TToolButton;
    TKalk: TToolButton;
    TKopi: TToolButton;
    Ordrepanel: TPanel;
    Label7: TLabel;
    Label50: TLabel;
    Label49: TLabel;
    DBText15: TDBText;
    DBText19: TDBText;
    DBText16: TDBText;
    Label45: TLabel;
    DBText23: TDBText;
    Label46: TLabel;
    DBText25: TDBText;
    Label47: TLabel;
    DBText24: TDBText;
    Label56: TLabel;
    Label52: TLabel;
    DBText18: TDBText;
    DBText26: TDBText;
    HistorikkC: TCheckBox;
    VOC: TCheckBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    SokEditO: TEdit;
    CBO: TComboBox;
    Label48: TLabel;
    DBText14: TDBText;
    ToolButton1: TToolButton;
    FakturaPanel: TPanel;
    Label54: TLabel;
    DBText29: TDBText;
    Label62: TLabel;
    Label63: TLabel;
    DBText30: TDBText;
    DBText31: TDBText;
    DBText32: TDBText;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    SpeedButton6: TSpeedButton;
    RG: TRadioGroup;
    VFC: TCheckBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Label58: TLabel;
    Label59: TLabel;
    CBF: TComboBox;
    SokEditF: TEdit;
    Label60: TLabel;
    DBText33: TDBText;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    SokPEdit: TEdit;
    CBP: TComboBox;
    Label86: TLabel;
    DBText22: TDBText;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    DBText45: TDBText;
    DBText46: TDBText;
    DBText47: TDBText;
    Label91: TLabel;
    DBText49: TDBText;
    Label92: TLabel;
    DBText50: TDBText;
    Label93: TLabel;
    DBText51: TDBText;
    TRpt: TToolButton;
    ToolButton4: TToolButton;
    DBImage1: TDBImage;
    Label76: TLabel;
    N3: TMenuItem;
    Rapporter1: TMenuItem;
    ToolButton2: TToolButton;
    Label14: TLabel;
    DBMemo1: TDBMemo;
    FTekst: TMemo;
    Label26: TLabel;
    N4: TMenuItem;
    AutoBackup1: TMenuItem;
    Innstillinger1: TMenuItem;
    Kid1: TMenuItem;
    N5: TMenuItem;
    Pass1: TMenuItem;
    Edrepass1: TMenuItem;
    N7: TMenuItem;
    blsDbGridScroll1: TblsDbGridScroll;
    tsAvtale: TTabSheet;
    Panel1: TPanel;
    Label90: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    DBText53: TDBText;
    DBText54: TDBText;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    DBText55: TDBText;
    cbAvtaleSokFelt: TComboBox;
    edSokAvtale: TEdit;
    DBGrid1: TDBGrid;
    cbFellesAvtale: TCheckBox;
    PopupMenu1: TPopupMenu;
    Slettavtale1: TMenuItem;
    popGrid: TPopupMenu;
    popVisInAktive: TMenuItem;
    TEhf: TToolButton;
    procedure Om2Click(Sender: TObject);
    procedure Postadresser1Click(Sender: TObject);
    procedure TLagreClick(Sender: TObject);
    procedure PBTimerTimer(Sender: TObject);
    procedure Avslutt1Click(Sender: TObject);
    procedure TNyClick(Sender: TObject);
    procedure TSlettClick(Sender: TObject);
    procedure DBText1Click(Sender: TObject);
    procedure DBText2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure MomseditKeyPress(Sender: TObject; var Key: Char);
    procedure bankeditKeyPress(Sender: TObject; var Key: Char);
    procedure postnreditExit(Sender: TObject);
    procedure TEndreClick(Sender: TObject);
    procedure SokEditKKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SokEditOKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SokEditBKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBText10Click(Sender: TObject);
    procedure SokEditSKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SokEditFKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton6Click(Sender: TObject);
    procedure RGClick(Sender: TObject);
    procedure VFCClick(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure VOCClick(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure TKalkClick(Sender: TObject);
    procedure Skriveroppsett1Click(Sender: TObject);
    procedure TVisClick(Sender: TObject);
    procedure TKopiClick(Sender: TObject);
    procedure TPrintClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Importavsikkerhetskopi1Click(Sender: TObject);
    procedure HistorikkCClick(Sender: TObject);
    procedure SokEditBeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Tekstbehandler1Click(Sender: TObject);
    procedure ArkChange(Sender: TObject);
    procedure SokPEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TRptClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure AutoBackup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Kid1Click(Sender: TObject);
    procedure Pass1Click(Sender: TObject);
    procedure Edrepass1Click(Sender: TObject);
    procedure muApoClick(Sender: TObject);
    procedure cbFellesAvtaleClick(Sender: TObject);
    procedure edSokAvtaleKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Slettavtale1Click(Sender: TObject);
    procedure popVisInAktiveClick(Sender: TObject);
    procedure KundeGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BilGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SjoforGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure TEhfClick(Sender: TObject);
  private
    { Private declarations }
    procedure SlettKunde;
    procedure LagreFirmainfo;
    procedure SlettBil;
    procedure SlettAvtale;
    procedure SlettOrdre;
    procedure LesinnFirmainfo;
    procedure SlettSjofor;
    procedure SlettFaktura;
    procedure OppdaterPurringer;
    procedure EndreStatus;
    procedure Regnutrenter;
    procedure ResetBtn;
    procedure LagreDataset(var Tabell: TTable);
    procedure SlettFellesAvtale;
    function GetExportDir: String;

  public
    { Public declarations }
  end;

var
  MenyFrm: TMenyFrm;

implementation

uses  DataModul, FrmPost, FrmKunde, FrmFLogo, FrmBil,
  FrmOrdre, FrmSjofor, FrmRpt, FrmFaktura, RptFaktura,
  RptPurre, FrmAvtaleWzd, FrmBestilling, RptBestilling, FrmPassord,
  FrmLogin, vtPrint, blsFileUtil, vtFastAvtale, blsString;
  
{$R *.DFM}

procedure TMenyFrm.Om2Click(Sender: TObject);
begin
  Application.CreateForm(TFLogoFrm, FLogoFrm);
  FLogoFrm.Ok.Visible               := True;
  FLogoFrm.Label1.Visible           := True;
  FLogoFrm.ShowModal;
  FLogoFrm.Free;
end;

procedure TMenyFrm.Postadresser1Click(Sender: TObject);
begin
 VisPostForm;
end;

procedure TMenyFrm.LagreFirmainfo;
begin
 DM.FirmaDB.Edit;
 DM.FirmaDBFirmanavn.Value         := Firmaedit.Text;
 DM.FirmaDBAdresse.Value           := Adresseedit.Text;
 DM.FirmaDBPostnr.Value            := Postnredit.Text;
 DM.FirmaDBPostSted.Value          := Poststededit.Text;
 DM.FirmaDBTelefon.Value           := Telefonedit.Text;
 DM.FirmaDBTelefax.Value           := Telefaxedit.Text;
 DM.FirmaDBMobil.Value             := Mobiledit.Text;
 DM.FirmaDBEpost.Value             := Epostedit.Text;
 DM.FirmaDBWebadresse.Value        := Webadresseedit.Text;
 DM.FirmaDBOrganisasjonsnr.Value   := Orgedit.Text;
 DM.FirmaDBBankkontonr.Value       := Bankedit.Text;
 DM.FirmaDBStdTekst.Value          := FTekst.Text;
 DM.FirmaDBMva.Value               := StrToFloat(MomsEdit.Text);
 DM.FirmaDB.Post;
end;

procedure TMenyFrm.LagreDataset(var Tabell: TTable);
begin
 Tabell.DisableControls;
 try
  If (Tabell.State = dsInsert) or (Tabell.State = dsEdit) then
   Tabell.Post;
  If (Tabell.Active = True) then
   Tabell.Close;

  Tabell.Open;
 finally
 Tabell.EnableControls;
 end;
end;

procedure TMenyFrm.TLagreClick(Sender: TObject);
begin
 SB.Visible        := False;
 PB.Visible        := True;
 PB.Max            := 11;
 MenyFrm.Update;

 If Ark.ActivePage = Firmainfo then
 LagreFirmainfo;

 LagreDataset(DM.SjoforDB);
 Pb.StepIt;
 LagreDataset(DM.BilDB);
 Pb.StepIt;
 LagreDataset(DM.KundeDB);
 Pb.StepIt;
 LagreDataset(DM.AvtaleDB);
 Pb.StepIt;
 LagreDataset(DM.OrdreDB);
 Pb.StepIt;
 LagreDataset(DM.BestillingDB);
 Pb.StepIt;
 LagreDataset(DM.VOrdreDB);
 Pb.StepIt;
 LagreDataset(DM.PakkeAvtale);
 Pb.StepIt;
 LagreDataset(DM.FOrdreDB);
 Pb.StepIt;
 LagreDataset(DM.FirmaDB);
 Pb.StepIt;
 LagreDataset(DM.FakturaDB);
 Pb.StepIt;
 LagreDataset(DM.PostDB);

{ DM.QOrdreRpt.Close;
 DM.QOrdreRpt.Open;
 Pb.StepIt;
 DM.QSjoforRpt.Close;
 DM.QSjoforRpt.Open;
 Pb.StepIt;
 DM.QBilRpt.Close;
 DM.QBilRpt.Open;
 Pb.StepIt;}

 Pb.Position       := 0;
 Pb.Visible        := False;
 Sb.Visible        := True;
end;

procedure TMenyFrm.PBTimerTimer(Sender: TObject);
begin
 PB.StepIt;
 If PB.Position = 100 then begin
  PB.Visible      := False;
  SB.Visible      := True;
  PBTimer.Enabled := False;
  PB.Position     := 0;
 end;
end;

procedure TMenyFrm.Avslutt1Click(Sender: TObject);
begin
 Close;
end;

procedure TMenyFrm.TNyClick(Sender: TObject);
begin
 If Ark.ActivePage = Kunder then begin
 Application.CreateForm(TKundeFrm, KundeFrm);
 KundeFrm.ShowModal;
 KundeFrm.Free;
 end;

 if Ark.ActivePage = tsAvtale then begin
   frmFastAvtale := TfrmFastAvtale.Create(Application);
   frmFastAvtale.New := True;
   Dm.tblAvtale.Append;
   frmFastAvtale.ShowModal;
   frmFastAvtale.Release;
 end;

 If Ark.ActivePage = Biler then begin
 Application.CreateForm(TBilFrm, BilFrm);
 BilFrm.ShowModal;
 BilFrm.Free;
 end;

 If Ark.ActivePage = Sjofor then begin
 Application.CreateForm(TSjoforFrm, SjoforFrm);
 SjoforFrm.ShowModal;
 SjoforFrm.Free;
 end;

 If Ark.ActivePage = Bestilling then begin
 Application.CreateForm(TBestillingFrm, BestillingFrm);
 BestillingFrm.ShowModal;
 BestillingFrm.Free;
 end;

If Ark.ActivePage = Faktura then begin
 Application.CreateForm(TFakturaFrm, FakturaFrm);
 If FakturaFrm.ShowModal <> mrOK then begin
 with DM.FOrdreDb do
 begin
  DisableControls;
  try
    First;
    while not EOF do
    begin
     Edit;
      Dm.FOrdredbFakturaID.Value := 0;
     Next;
    end;
  finally
    EnableControls;
 end;
 end;
 If FakturaFrm.Status.Caption = 'Ny' then DM.FakturaDB.Delete;
 end;
 FakturaFrm.Free;
 DM.OrdreDB.Refresh;
end;

If Ark.ActivePage = Ordre then begin
 Application.CreateForm(TOrdreFrm, OrdreFrm);
 OrdreFrm.Status.Caption := 'Ny';
 OrdreFrm.ShowModal;
 OrdreFrm.Free;
 end;
end;

procedure TMenyFrm.SlettKunde;
begin
 If DM.KundeDB.RecordCount <> 0 then begin
 If MessageDlg('Ønsker du å sette kunden ' + DM.KundeDBFirma.Value + ' inaktiv?', mtConfirmation, [mbYes, mbNO],0) = mrYes then begin
   DM.KundeDB.Edit;
   DM.KundeDBInAktiv.Value := True;
   DM.KundeDB.Post;


{ With DM.AvtaleDB Do begin
 DisableControls;
 try
  First;
 While NOT EOF Do begin
  Delete;
  Next;
 end;
 finally
 EnableControls;
 end;
 end;

 With DM.VOrdreDB Do begin
 Filtered := False;
 DisableControls;
 try
  First;
 While NOT EOF Do begin
  Delete;
  Next;
 end;
 Finally
 Filtered := True;
 DM.OrdreDB.Refresh;
 EnableControls;
 end;
 end;

 With DM.FakturaDB do begin
 DisableControls;
 try
 First;
 while NOT EOF do begin
   If DM.FakturaDBKundeId.Value = DM.KundeDBIdKunde.Value then Delete;
   Next;
 end;
 finally
 Close;
 Open;
 EnableControls;
 end;
 end;

 DM.KundeDB.Delete; }
 end;
 end; 
end;

procedure TMenyFrm.SlettBil;
begin
 If DM.BilDB.RecordCount <> 0 then
  begin
   If MessageDlg('Ønsker du å sette bil med registreringsnr ' + DM.BilDBRegnr.Value + ' inaktiv?', mtConfirmation, [mbYes, mbNO],0) = mrYes then
    begin
      DM.BilDB.Edit;
      DM.BilDBInAktiv.Value := True;
      DM.BilDB.Post;
       //DM.BilDb.Delete;
    End;
   End;
 {With DM.OrdreDb do begin

 DisableControls;
 try
 First;
 While NOT EOF Do begin
   If DM.OrdreDBBilId.Value = DM.BilDBIdBil.Value then Delete;
    Next;
 end;
 finally
 EnableControls;
 Refresh;
 end;
 end;
 end;
end;  }
end;

procedure TMenyFrm.SlettAvtale;
begin
 If MessageDlg('Dette sletter avtalen! Fortsett?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  DM.AvtaleDb.Delete;
end;

procedure TMenyFrm.SlettOrdre;
begin
 If DM.OrdreDB.RecordCount <> 0 then begin
 If MessageDlg('Dette sletter ordre ' + FloatToStr(DM.OrdreDBOrdrenr.Value) + '. Fortsett?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 DM.OrdreDB.Delete;
 end;
end;

procedure TMenyFrm.SlettSjofor;
begin
 If DM.SjoforDB.RecordCount <> 0 then begin
 If MessageDlg('Ønsker du å sette sjåfør ' + DM.SjoforDBNavn.Value + ' inaktiv?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.SjoforDB.Edit;
    DM.SjoforDBInAktiv.Value := True;
    DM.SjoforDB.Post;
   //Dm.SjoforDB.Delete;
  End;
 End; 

 { With DM.OrdreDB do begin
 DisableControls;
 try
 First;
 While NOT EOF do begin
  If DM.OrdreDBSjoforID.Value = DM.SjoforDBIdSjofor.Value then Delete;
  Next;
 end;
  finally
  Close;
  Open;
  EnableControls;
 end;
 Delete;
 end;
 end;
 end;}
end;

procedure TMenyFrm.SlettFaktura;
begin
 If DM.FakturaDB.RecordCount <> 0 then begin
 If MessageDlg('Dette sletter faktura nummer ' + FloatToStr(DM.FakturaDBFakturanr.Value) + '. Fortsett?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
 With DM.FOrdreDb Do begin
 DisableControls;
 try
 first;
  While NOT EOF Do begin
    Edit;
    DM.FOrdreDBFakturaID.Value := 0;
    Post;
  //  Next;
  end;
  finally
  EnableControls;
  DM.OrdreDb.Refresh;
  end;
  DM.FakturaDB.Delete;
  end;
 end;
 end;
end;

procedure TMenyFrm.SlettFellesAvtale;
begin
 if DM.tblAvtale.RecordCount > 0 then
   if MessageDlg('Slett valgt avtale?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     Dm.tblAvtale.Delete;
end;

procedure TMenyFrm.TSlettClick(Sender: TObject);
begin
 If Ark.ActivePage = Biler then SlettBil;
 If MenyFrm.ActiveControl = KundeGrid then SlettKunde;
 If MenyFrm.ActiveControl = AvtaleGrid then SlettAvtale;
 If Ark.ActivePage = Ordre then SlettOrdre;
 If Ark.ActivePage = Sjofor then SlettSjofor;
 If Ark.ActivePage = Faktura then SlettFaktura;
 If Ark.ActivePage = Bestilling then
   If MessageDlg('Dette sletter valgt bestilling! Fortsett?', mtConfirmation, [mbyes, mbno], 0) = mryes then
     DM.BestillingDb.Delete;
 if Ark.ActivePage = tsAvtale then SlettFellesAvtale;
end;


procedure TMenyFrm.DBText1Click(Sender: TObject);
begin
ShellExecute(Handle , 'open', PChar('mailto:'+DM.KundeDBEpost.Value), nil, nil, SW_MAXIMIZE)
end;

procedure TMenyFrm.DBText2Click(Sender: TObject);
begin
ShellExecute(Handle , 'open', PChar(DM.KundeDBWebadresse.Value), nil, nil, SW_MAXIMIZE)
end;

procedure TMenyFrm.SpeedButton1Click(Sender: TObject);
var LogoDlg:TOpenPictureDialog;
begin
 LogoDlg := TOpenPictureDialog.Create(Nil);
 try
 If LogoDlg.Execute then
 DM.FirmaDB.Edit;
 DM.FirmaDBBilde.LoadFromFile(LogoDlg.FileName);
 DM.FirmaDB.Post;
 Finally
 LogoDlg.Free;
 end;
end;

procedure TMenyFrm.LesinnFirmainfo;
begin
 Firmaedit.Text       := DM.FirmaDBFirmanavn.Value;
 Adresseedit.Text     := DM.FirmaDBAdresse.Value;
 Postnredit.Text      := DM.FirmaDBPostnr.Value;
 Poststededit.Text    := DM.FirmaDBPostSted.Value;
 Telefonedit.Text     := DM.FirmaDBTelefon.Value;
 Telefaxedit.Text     := DM.FirmaDBTelefax.Value;
 Mobiledit.Text       := DM.FirmaDBMobil.Value;
 Epostedit.Text       := DM.FirmaDBEpost.Value;
 Webadresseedit.Text  := DM.FirmaDBWebadresse.Value;
 Orgedit.Text         := DM.FirmaDBOrganisasjonsnr.Value;
 Bankedit.Text        := DM.FirmaDBBankkontonr.Value;
 MomsEdit.Text        := FloatToStrF(DM.FirmaDBMva.Value, ffNumber, 2,2);
 FTekst.Text          := DM.FirmaDBStdTekst.Value;
end;

procedure TMenyFrm.MomseditKeyPress(Sender: TObject; var Key: Char);
begin
If not (key in['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', '+', #8, #13])
 then key := #0;
end;

procedure TMenyFrm.bankeditKeyPress(Sender: TObject; var Key: Char);
begin
If not (key in['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '.', '.', ' ', #8, #13])
 then key := #0;
end;

procedure TMenyFrm.postnreditExit(Sender: TObject);
begin
 If DM.PostDB.Locate('Postnr', postnredit.text, []) then begin
 Poststededit.text := DM.PostDB.FieldByName('Poststed').AsString;
 Telefonedit.SetFocus;
 end
  else begin
 If Postnredit.Text <> '' then begin
 DM.PostDB.Append;
 DM.PostDB.FieldByName('Postnr').AsString   := postnredit.Text;
 DM.PostDB.FieldByName('Poststed').AsString := poststededit.Text;
 DM.PostDB.Post;
 end;
 end;
end;

procedure TMenyFrm.TEndreClick(Sender: TObject);
begin
 If Ark.ActivePage = Kunder then begin
 Application.CreateForm(TKundeFrm, KundeFrm);
 KundeFrm.EndreKunde;
 KundeFrm.Status.Caption := 'Endre';
 KundeFrm.ShowModal;
 KundeFrm.Free;
 end;

 if Ark.ActivePage = tsAvtale then begin
   if Dm.tblAvtale.RecordCount = 0 then Exit;
   frmFastAvtale := TfrmFastAvtale.Create(Application);
   frmFastAvtale.New := False;
   frmFastAvtale.ShowModal;
   frmFastAvtale.Release;
 end;

 If Ark.ActivePage = Biler then begin
 Application.CreateForm(TBilFrm, BilFrm);
 BilFrm.EndreBil;
 BilFrm.Status.Caption := 'Endre';
 BilFrm.ShowModal;
 BilFrm.Free;
 end;
 If Ark.ActivePage = Sjofor then begin
 Application.CreateForm(TSjoforFrm, SjoforFrm);
 SjoforFrm.Status.Caption := 'Endre';
 SjoforFrm.EndreSjofor;
 SjoforFrm.ShowModal;
 SjoforFrm.Free;
 end;
 If Ark.ActivePage = Ordre then begin
 Application.CreateForm(TOrdreFrm, OrdreFrm);
 OrdreFrm.Status.Caption := 'Endre';
 OrdreFrm.EndreOrdre;
 OrdreFrm.ShowModal;
 OrdreFrm.Free;
 end;
 If Ark.ActivePage = Faktura then begin
 If Vfc.Checked = True then
  Vfc.Checked := False;
 Application.CreateForm(TFakturaFrm, FakturaFrm);
 FakturaFrm.Status.Caption := 'Endre';
 FakturaFrm.EndreFaktura;
 FakturaFrm.ShowModal;
 FakturaFrm.Free;
 end;
 If Ark.ActivePage = Bestilling then begin
 Application.CreateForm(TBestillingFrm, BestillingFrm);
 BestillingFrm.Status.Caption := 'Endre';
 BestillingFrm.EndreBestilling;
 BestillingFrm.ShowModal;
 BestillingFrm.Free;
 end;
end;

procedure TMenyFrm.SokEditKKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If SokEditK.Text <> '' then begin
 try
 DM.KundeDB.Locate(CBK.Text, SokEditK.Text, [loCaseInsensitive, loPartialKey]);
 except
 MessageDlg('Du har tastet et ugyldig tegn!', mtInformation, [mbok], 0);
 end;
 end;
end;

procedure TMenyFrm.SokEditOKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If SokEditO.Text <> '' then begin
 try
 DM.OrdreDB.Locate(CBO.Text, SokEditO.Text, [loCaseInsensitive, loPartialKey]);
 except
 MessageDlg('Du har tastet inn et ugyldige tegn!', mtInformation, [mbOk], 0);
 end;
end;
end;

procedure TMenyFrm.SokEditBKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If SokEditB.TExt <> '' then begin
 try
 DM.BilDB.Locate(CBB.Text, SokEditB.Text, [loCaseInsensitive, loPartialKey]);
 except
 MessageDlg('Du har tastet et ugyldig tegn!', mtInformation, [mbOK], 0);
 end;
 end;
end;

procedure TMenyFrm.DBText10Click(Sender: TObject);
begin
ShellExecute(Handle , 'open', PChar('Mailto:'+DM.SjoforDBEpost.Value), nil, nil, SW_MAXIMIZE)
end;

procedure TMenyFrm.SokEditSKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If SokEditS.Text <> '' then begin
 try
 DM.SjoforDB.Locate(CBS.Text, SokEditS.Text, [loCaseInsensitive, loPartialKey]);
 except
 MessageDlg('Du har tastet et ugyldig tegn!', mtInformation, [mbok], 0);
 end;
 end;
end;

procedure TMenyFrm.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TAvtaleWzd, AvtaleWzd);
  AvtaleWzd.ShowModal;
end;

procedure TMenyFrm.FormActivate(Sender: TObject);
begin
 SB.Panels[0].Text := DateToStr(Date);
 Lesinnfirmainfo;
end;

procedure TMenyFrm.SokEditFKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If SokEditF.Text <> '' then begin
 try
 DM.FakturaDB.Locate(CBF.Text, SokEditF.Text, [loCaseInsensitive, loPartialKey]);
 except
  MessageDlg('Du har tastet inn et ugyldig tegn!', mtInformation, [mbok], 0);
 end;
 end;
end;

procedure TMenyFrm.SpeedButton6Click(Sender: TObject);
begin
If DM.FakturaDB.RecordCount <> 0 then begin
 If DM.FakturaDBBetalt.Value = '-' then begin
  DM.FakturaDB.Edit;
  DM.FakturaDBBetalt.Value := 'Ja';
  DM.FakturaDBStatus.Value := '';
  DM.FakturaDB.Post;
 end
 else
 begin
  DM.FakturaDB.Edit;
  DM.FakturaDBBetalt.Value := '-';
  DM.FakturaDB.Post;
 end;
 end;
end;

procedure TMenyFrm.RGClick(Sender: TObject);
begin
 IF RG.ItemIndex = 0 then
  DM.FakturaDB.Filtered := False;
 IF RG.ItemIndex = 1 then begin
  DM.FakturaDB.Filter   := 'Betalt = ''-''';
  DM.FakturaDB.Filtered := True;
  end;
 IF RG.ItemIndex = 2 then begin
  DM.FakturaDB.Filter   := 'Betalt = ''Ja''';
  DM.FakturaDB.Filtered := True;
  end;
end;

procedure TMenyFrm.VFCClick(Sender: TObject);
begin
 If VFC.Checked = True then begin
  DM.FakturaDB.MasterSource := DM.KundeDS;
  DM.FakturaDB.MasterFields := 'IdKunde';
  DM.FakturaDB.IndexName    := 'SKundeID';
 end
 else
 begin
  DM.FakturaDB.MasterFields := '';
  DM.FakturaDB.IndexName    := '';
  DM.FakturaDB.MasterSource := nil;
  DM.FakturaDB.IndexFieldNames := 'FakturaDato';
 end;
end;

procedure TMenyFrm.DBLookupComboBox1CloseUp(Sender: TObject);
begin
 VFC.Checked := True;
end;

procedure TMenyFrm.VOCClick(Sender: TObject);
begin
  If VOC.Checked = True then begin
  DM.OrdreDB.MasterSource := DM.KundeDS;
  DM.OrdreDB.MasterFields := 'IdKunde';
  DM.OrdreDB.IndexName    := 'SKunde';
  TNy.Enabled             := False;
  Ny1.Enabled             := False;
  TEndre.Enabled          := False;
  Endre1.Enabled          := False;
 end
 else
  begin
  DM.OrdreDB.MasterFields := '';
  DM.OrdreDB.IndexName    := '';
  DM.OrdreDB.MasterSource := nil;
  DM.OrdreDB.IndexFieldNames := 'Dato';
  TNy.Enabled                := True;
  Ny1.Enabled                := True;
  TEndre.Enabled             := True;
  Endre1.Enabled             := True;
 end;
end;

procedure TMenyFrm.DBLookupComboBox2CloseUp(Sender: TObject);
begin
 VOC.Checked := True;
end;

procedure TMenyFrm.TKalkClick(Sender: TObject);
begin
  Winexec('calc', SW_SHOWDEFAULT);
end;

procedure TMenyFrm.Skriveroppsett1Click(Sender: TObject);
var Setup:TPrinterSetupDialog;
begin
 Setup := TPrinterSetupDialog.Create(Nil);
 try
 Setup.Execute;
 finally
 Setup.Free;
 end;
end;

procedure TMenyFrm.OppdaterPurringer;
var T:TBookmark;
begin
T:= DM.FakturaDB.GetBookmark;
DM.FakturaDB.DisableControls;
 try
 DM.FakturaDB.First;
 While NOT DM.FakturaDB.EOF Do begin
 If DM.FakturaDBStatus.Value <> 'Purring' then begin
 If (DM.FakturaDBForfallsDato.Value < Date) and (DM.FakturaDBBetalt.Value = '-') then begin
  DM.FakturaDB.Edit;
  DM.FakturaDBStatus.Value := 'Purring';
  DM.FakturaDB.Post;
 end;
 end;
 DM.FakturaDB.Next;
 end;
 finally
 Dm.Fakturadb.Close;
 Dm.Fakturadb.Open;
 Dm.FakturaDB.EnableControls;
 DM.FakturaDB.GotoBookmark(T);
 DM.FakturaDB.FreeBookmark(T);
 end;
end;

procedure TMenyFrm.EndreStatus;
begin
 If DM.FakturaDBStatus.Value = 'Purring 1' then begin
 DM.FakturaDB.Edit;
 DM.FakturaDBStatus.Value := 'Purring 2';
 DM.FakturaDB.Post;
 end;

 If DM.FakturaDBStatus.Value = 'Purring' then begin
 DM.FakturaDB.Edit;
 DM.FakturaDBStatus.Value := 'Purring 1';
 DM.FakturaDB.Post;
 end;
end;

procedure TMenyFrm.Regnutrenter;
var d:extended;
begin
 DM.KundeDB.Locate('IdKunde', DM.FakturaDBKundeID.Value, []);
 d := Date - (DM.FakturaDBFakturaDato.Value + DM.KundeDBForfallsdager.Value);
 DM.FakturaDB.Edit;
 DM.FakturaDBPurreSum.Value := (((DM.FakturaDBTotal.Value * (12/360))/100) * d);
 DM.FakturaDBPurreTotal.Value := DM.FakturaDBTotal.Value + DM.FakturaDBPurreSum.Value;
 DM.FakturaDBForfallsDato.Value := Date + DM.KundeDBForfallsDager.Value;
 DM.FakturaDB.Post;
// DM.RundAvPurreTotal;
end;

procedure TMenyFrm.TVisClick(Sender: TObject);
begin
 If Ark.ActivePage = Bestilling then begin
  Application.CreateForm(TBestillingRpt, BestillingRpt);
  BestillingRpt.Preview;
  BestillingRpt.Free;
 end;

 If Ark.ActivePage = Faktura then begin
  Application.CreateForm(TFakturaRpt, FakturaRpt);
  If DM.FakturaDBAvg.Value = 0 then begin
  FakturaRpt.SAvg.Font.Color := clWhite;
  FakturaRpt.dbAvg.Font.Color := clWhite;
  end
  else begin
  FakturaRpt.SAvg.Font.Color := clBlack;
  FakturaRpt.dbAvg.Font.Color := clBlack;
  end;
  FakturaRpt.Preview;
  FakturaRpt.Free;
  end;

 If Ark.ActivePage = Purring then begin
  Application.CreateForm(TPurreRpt, PurreRpt);
  Regnutrenter;
  PurreRpt.Preview;
  EndreStatus;
  PurreRpt.Free;
 end;
end;

procedure TMenyFrm.TKopiClick(Sender: TObject);
begin
 If MessageDlg('Programmet må avsluttes før sikkerhetskopingen kan starte! Fortsett?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
  Winexec('backup.exe', SW_SHOWDEFAULT);
  Close;
 end; 
end;

procedure TMenyFrm.TPrintClick(Sender: TObject);
var Print: TPrintDialog;
begin
  if Ark.ActivePage = Faktura then begin
    frmPrint := TfrmPrint.Create(Application);
    if frmPrint.ShowModal = mrOK then begin

      Application.CreateForm(TFakturaRpt, FakturaRpt);
      if DM.FakturaDBAvg.Value = 0 then begin
        FakturaRpt.SAvg.Font.Color  := clWhite;
        FakturaRpt.dbAvg.Font.Color := clWhite;
      end
      else begin
        FakturaRpt.SAvg.Font.Color  := clBlack;
        FakturaRpt.dbAvg.Font.Color := clBlack;
      end;

      //Printer til Primærskriver
      if frmPrint.PrimPrinter > -1 then
        FakturaRpt.PrinterSettings.PrinterIndex := frmPrint.PrimPrinter;
      FakturaRpt.PrinterSettings.Copies := frmPrint.EditAnt1.Value;
      FakturaRpt.Print;

      //Printer til Sekundærskriver
      if (frmPrint.SekPrinter > -1) and (frmPrint.cbAltPrinter.Checked) then begin
        FakturaRpt.PrinterSettings.PrinterIndex := frmPrint.SekPrinter;
        FakturaRpt.PrinterSettings.Copies := frmPrint.EditAnt2.Value;
        FakturaRpt.Print;
      end;
      FakturaRpt.Free;

      DM.FakturaDB.Edit;
      DM.FakturaDBStatus.Value := 'Utskrevet';
      DM.FakturaDB.Post;
    end;
    frmPrint.Release;
  end;

  if Ark.ActivePage = Purring then begin
    frmPrint := TfrmPrint.Create(Application);
    if frmPrint.ShowModal = mrOK then begin
      Regnutrenter;
      Application.CreateForm(TPurreRpt, PurreRpt);

      //Printer til Primærskriver
      if frmPrint.PrimPrinter > -1 then
        PurreRpt.PrinterSettings.PrinterIndex := frmPrint.PrimPrinter;
      PurreRpt.PrinterSettings.Copies := frmPrint.EditAnt1.Value;
      PurreRpt.Print;

      //Printer til Sekundærskriver
      if (frmPrint.SekPrinter > -1) and (frmPrint.cbAltPrinter.Checked) then begin
        PurreRpt.PrinterSettings.PrinterIndex := frmPrint.SekPrinter;
        PurreRpt.PrinterSettings.Copies := frmPrint.EditAnt2.Value;
        PurreRpt.Print;
      end;

      PurreRpt.Free;
      EndreStatus;
    end;
    frmPrint.Release;
  end;

  if Ark.ActivePage = Bestilling then begin
    Print := TPrintDialog.Create(Nil);
    try
      if Print.Execute then begin
        Application.CreateForm(TBestillingRpt, BestillingRpt);
        BestillingRpt.PrinterSettings.Copies := Print.Copies;
        BestillingRpt.PrinterSettings.PrinterIndex := Printer.PrinterIndex;
        BestillingRpt.Print;
        BestillingRpt.Free;
      end;
    finally
      Print.Free;
    end;
  end;
end;

procedure TMenyFrm.SpeedButton2Click(Sender: TObject);
begin
 If DM.FakturaDBStatus.Value = 'Purring 1' then begin
 DM.FakturaDB.Edit;
 DM.FakturaDBStatus.Value := 'Purring';
 DM.FakturaDB.Post;
 end;
 If DM.FakturaDBStatus.Value = 'Purring 2' then begin
 DM.FakturaDB.Edit;
 DM.FakturaDBStatus.Value := 'Purring 1';
 DM.FakturaDB.Post;
 end;
 If DM.FakturaDBStatus.Value = 'Inkasso' then begin
 DM.FakturaDB.Edit;
 DM.FakturaDBStatus.Value := 'Purring 2';
 DM.FakturaDB.Post;
 end;
end;

procedure TMenyFrm.Importavsikkerhetskopi1Click(Sender: TObject);
begin
 If MessageDlg('Programmet må avsluttes for at du skal kunne importere ett datasett! Fortsett?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
   Winexec('backup.exe import', SW_SHOWDEFAULT);
   Close;
 end;
end;

procedure TMenyFrm.HistorikkCClick(Sender: TObject);
begin
 If HistorikkC.Checked = true then
 DM.OrdreDB.Filtered := False
 else
 DM.OrdreDb.Filtered := True;
end;

procedure TMenyFrm.SokEditBeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If SokEditBe.Text <> '' then begin
 try
 DM.BestillingDB.Locate(CBBE.Text, SokEditBe.Text, [loCaseInsensitive, loPartialKey]);
 except
 MessageDlg('Du har tastet inn et ugyldige tegn!', mtInformation, [mbOk], 0);
 end;
end;

end;

procedure TMenyFrm.Tekstbehandler1Click(Sender: TObject);
begin
  Winexec('write', SW_SHOWDEFAULT);
end;

procedure TMenyFrm.ResetBtn;
begin
 TNy.Enabled      := True;
 Ny1.Enabled      := True;
 TEndre.Enabled   := True;
 Endre1.Enabled   := True;
 TLagre.Enabled   := True;
 Lagre1.Enabled   := True;
 TSlett.Enabled   := True;
 Slett1.Enabled   := True;
 TPrint.Enabled   := True;
 Skrivut1.Enabled := True;
 TVis.Enabled     := True;
 Vis2.Enabled     := True;
end;

procedure TMenyFrm.ArkChange(Sender: TObject);
begin
 ResetBtn;
 DM.VisKunAktive(True);

 Case Ark.ActivePage.PageIndex of
 0: begin
   If VOC.Checked = True then begin
     TNy.Enabled      := False;
     Ny1.Enabled      := False;
     TEndre.Enabled   := False;
     Endre1.Enabled   := False;
   end;
 TLagre.Enabled   := True;
 Lagre1.Enabled   := True;
 TPrint.Enabled   := False;
 Skrivut1.Enabled := False;
 TVis.Enabled     := False;
 Vis2.Enabled     := False;
 TEhf.Enabled     := False;
 end;

 1: begin
 DM.VisKunAktive(False);
 If DM.FakturaDB.Filtered = True then
 DM.FakturaDB.Filtered := False;
 TLagre.Enabled        := True;
 Lagre1.Enabled        := True;
 TEhf.Enabled          := True;
 end;

 2: begin
 TLagre.Enabled   := True;
 Lagre1.Enabled   := True;
 TPrint.Enabled   := False;
 Skrivut1.Enabled := False;
 TVis.Enabled     := False;
 Vis2.Enabled     := False;
 TEhf.Enabled     := False;
 end;

 3: begin
 TLagre.Enabled   := True;
 Lagre1.Enabled   := True;
 TPrint.Enabled   := False;
 Skrivut1.Enabled := False;
 TVis.Enabled     := False;
 Vis2.Enabled     := False;
 TEhf.Enabled     := False;
 end;

 4: begin
 TLagre.Enabled   := True;
 Lagre1.Enabled   := True;
 TPrint.Enabled   := False;
 Skrivut1.Enabled := False;
 TVis.Enabled     := False;
 Vis2.Enabled     := False;
 TEhf.Enabled     := False;
 end;

 5: begin
{ SB.Visible        := False;
 PB.Visible        := True;
 PBTimer.Enabled   := True;}
 VFC.Checked := False;
 OppdaterPurringer;
 DM.FakturaDB.Filter := 'Status = ''P*''';
 DM.FakturaDB.Filtered := True;

 TLagre.Enabled   := True;
 Lagre1.Enabled   := True;
 TNy.Enabled      := False;
 Ny1.Enabled      := False;
 TSlett.Enabled   := False;
 Slett1.Enabled   := False;
 TEndre.Enabled   := False;
 Endre1.Enabled   := False;
 TEhf.Enabled     := False;
 end;

 6: begin
 TLagre.Enabled           := True;
 Lagre1.Enabled           := True;
 TEhf.Enabled     := False;
 end;

 7: begin
 TPrint.Enabled   := False;
 Skrivut1.Enabled := False;
 TVis.Enabled     := False;
 Vis2.Enabled     := False;
 TEhf.Enabled     := False;
 end;

 8: begin
 TNy.Enabled        := False;
 Ny1.Enabled        := False;
 TSlett.Enabled     := False;
 Slett1.Enabled     := False;
 TPrint.Enabled     := False;
 Skrivut1.Enabled   := False;
 TEndre.Enabled     := False;
 Endre1.Enabled     := False;
 TVis.Enabled       := False;
 Vis2.Enabled       := False;
 TEhf.Enabled     := False;
 end;
 end;
end;

procedure TMenyFrm.SokPEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If SokPEdit.Text <> '' then begin
 try
 DM.FakturaDB.Locate(CBP.Text, SokPEdit.Text, [loCaseInsensitive, loPartialKey]);
 except
  MessageDlg('Du har tastet inn et ugyldig tegn!', mtInformation, [mbok], 0);
 end;
 end;
end;

procedure TMenyFrm.TRptClick(Sender: TObject);
begin
 Application.CreateForm(TRptFrm, RptFrm);
 RptFrm.ShowModal;
 RptFrm.Free;
end;

procedure TMenyFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if AutoBackup1.Checked = True then
    Winexec('backup.exe', SW_SHOWDEFAULT);
  DeleteFile('bls~.tmp');
  // LukkDataSet;
end;

procedure TMenyFrm.FormCreate(Sender: TObject);
var S: TStringList;
begin
  Application.CreateForm(TDm, Dm);
  Ark.ActivePageIndex := 0;

  S := TStringList.Create;
  try
    S.Add('VareTaxi 4');
    S.SaveToFile('bls~.tmp');
  finally
    S.Free;
  end;

  muApo.Visible := FileExists(Dir + 'Apo.exe');
end;

procedure TMenyFrm.AutoBackup1Click(Sender: TObject);
var Reg: TRegistry;
begin
   Reg := TRegistry.Create;
    try
      Reg.OpenKey('\Software\Bls\VareTaxi\', True);
      If Reg.ValueExists('Backup') and Reg.ReadBool('Backup') = True then
          begin
          AutoBackup1.Checked := False;
          Reg.WriteBool('Backup', AutoBackup1.Checked);
          end
         else
          AutoBackup1.Checked := True;
          Reg.WriteBool('Backup', AutoBackup1.Checked);
      finally
       Reg.Free;
    end;
end;

procedure TMenyFrm.FormShow(Sender: TObject);
var Reg: TRegistry;
begin
   Reg := TRegistry.Create;
    try
      Reg.OpenKey('\Software\Bls\VareTaxi\', True);
      If Reg.ValueExists('Backup') and  Reg.ReadBool('Backup') = True then
      AutoBackup1.Checked := True
      else
      AutoBackup1.Checked := False;

      If Reg.ValueExists('Kid') and  Reg.ReadBool('Kid') = True then
      Kid1.Checked := True
      else
      Kid1.Checked := False;

      If Reg.ValueExists('Pass') and  Reg.ReadBool('Pass') = True then
      Pass1.Checked := True
      else
      Pass1.Checked := False;

    finally
     Reg.Free;
    end;

    If Pass1.Checked then
     begin
      Application.CreateForm(TLoginFrm, LoginFrm);
      If LoginFrm.ShowModal <> mrOk then
        Close;
     end;
end;

procedure TMenyFrm.Kid1Click(Sender: TObject);
var Reg: TRegistry;
begin
   Reg := TRegistry.Create;
    try
      Reg.OpenKey('\Software\Bls\VareTaxi\', True);
      If Reg.ValueExists('Kid') and Reg.ReadBool('Kid') = True then
          begin
          Kid1.Checked := False;
          Reg.WriteBool('Kid', Kid1.Checked);
          end
         else
          Kid1.Checked := True;
          Reg.WriteBool('Kid', Kid1.Checked);
      finally
       Reg.Free;
    end;
end;

procedure TMenyFrm.Pass1Click(
  Sender: TObject);
var Reg: TRegistry;
begin
   Reg := TRegistry.Create;
    try
      Reg.OpenKey('\Software\Bls\VareTaxi\', True);
      If Reg.ValueExists('Pass') and Reg.ReadBool('Pass') = True then
          begin
           Pass1.Checked := False;
           Reg.WriteBool('Pass', Pass1.Checked);
           end
         else
          Pass1.Checked := True;
          Reg.WriteBool('Pass', Pass1.Checked);
      finally
       Reg.Free;
    end;
end;


procedure TMenyFrm.Edrepass1Click(Sender: TObject);
begin
 Application.CreateForm(TPassordFrm, PassordFrm);
 PassordFrm.ShowModal;
end;

procedure TMenyFrm.muApoClick(Sender: TObject);
begin
  if MessageBox(Handle, 'Ønsker du å avslutte programmet for å sjekke etter nye oppdatering?', 'Automatisk oppdatering',
    MB_YESNO + MB_ICONQUESTION) = idYes then begin
      ShellExecute(Handle, 'Open', PAnsiChar(Dir + 'Apo.exe'), '', '', SW_SHOWNORMAL);
      Close;
  end;
end;

procedure TMenyFrm.cbFellesAvtaleClick(Sender: TObject);
begin
  Dm.tblAvtale.Filter := 'KundeID is null';
  Dm.tblAvtale.Filtered := cbFellesAvtale.Checked;
end;

procedure TMenyFrm.edSokAvtaleKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If edSokAvtale.Text <> '' then begin
   try
     DM.tblAvtale.Locate(cbAvtaleSokFelt.Text, edSokAvtale.Text, [loCaseInsensitive, loPartialKey]);
   except
     MessageDlg('Du har tastet et ugyldig tegn!', mtInformation, [mbok], 0);
   end;
 end;
end;

procedure TMenyFrm.Slettavtale1Click(Sender: TObject);
begin
  if MessageBox(Handle, 'Ønsker du å slette valgt kundeavtale?', 'Slette?',
    MB_YESNO + MB_ICONQUESTION) = idYes then begin
    Dm.AvtaleDB.Delete;
  end;

end;

procedure TMenyFrm.popVisInAktiveClick(Sender: TObject);
begin
  DM.VisKunAktive(False);
end;

procedure TMenyFrm.KundeGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if DM.KundeDBInAktiv.Value then
    KundeGrid.Canvas.Font.Color := clRed;
  KundeGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TMenyFrm.BilGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if DM.BilDBInAktiv.Value then
    BilGrid.Canvas.Font.Color := clRed;
  BilGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TMenyFrm.SjoforGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if DM.SjoforDBInAktiv.Value then
    SjoforGrid.Canvas.Font.Color := clRed;
  SjoforGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

function TMenyFrm.GetExportDir: String;
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(Dir + 'EHF.ini');
  try
    Result := Ini.ReadString('General', 'ExportDir', '');
    if Result = '' then
      Result := Dir + 'EHF\';
  finally
    Ini.Free;
  end;
end;

procedure TMenyFrm.TEhfClick(Sender: TObject);
var
  xDoc: IXMLDocument;
  Mva: IXMLNode;
  I: Integer;
  S, Adr, Postnr, Poststed: String;
begin
  if not Dm.KundeDB.Locate('IdKunde', Dm.FakturaDBKundeID.Value, []) then Exit;

  if (Dm.FirmaDBBankkontonr.Value = '') or (Dm.FirmaDBOrganisasjonsnr.Value = '') then begin
    MessageBox(Handle, 'Org.nr og Bankkontonr må være spesifisert under fanen "Firmainfo"', 'Info', MB_ICONINFORMATION + MB_OK);
    Exit;
  end;

  if Dm.KundeDBOrganisasjonsnr.Value = '' then begin
    MessageBox(Handle, 'Org.nr må være spesifisert på kunden for at fakturaen kan sendes som EHF', 'Info', MB_ICONINFORMATION + MB_OK);
    Exit;
  end;

{  if (Dm.FakturaDBVRef.Value = '') or (Dm.FakturaDBDRef.Value = '') then begin
    MessageBox(Handle, 'Både "Vår ref." og "Deres ref." må være angitt på faktura for å kunne sendes som EHF', 'Info', MB_ICONINFORMATION + MB_OK);
    Exit;
  end;
}

  xDoc := EHFInvoiceExport;

  SetInvoiceHeader(Dm.FakturaDBFakturanr.AsString,
                   'NOK', '', '',
                   Dm.FakturaDBFakturaDato.Value,
                   xDoc.DocumentElement);

  SetCompanyInfo(Dm.FirmaDBFirmanavn.AsString,
                 '', Dm.FirmaDBAdresse.AsString,
                 Dm.FirmaDBPostSted.AsString,
                 Dm.FirmaDBPostnr.AsString,
                 'NO',
                 Dm.FirmaDBOrganisasjonsnr.AsString,
                 Dm.FakturaDBVRef.AsString,
                 xDoc.DocumentElement);

  SetCustomerInfo(Dm.KundeDBKundenr.AsString,
                  Dm.KundeDBFirma.AsString,
                  Dm.KundeDBAdresse.AsString,
                  Dm.KundeDBPoststed.AsString,
                  Dm.KundeDBPostnr.AsString,
                  'NO',
                  Dm.KundeDBOrganisasjonsnr.AsString,
                  Dm.FakturaDBDRef.AsString,
                  xDoc.DocumentElement);

  S := JclIniFiles.IniReadString(Dir + 'Rvt.ini', 'KundeLevAdresse', Dm.KundeDBKundenr.AsString);
  if S <> '' then begin
    Adr := blsString.Splitt(S, 1, ',');
    S := Trim(blsString.Splitt(S, 2, ','));

    Postnr := blsString.Splitt(S, 1, ' ');
    Poststed := blsString.Splitt(S, 2, ' ');
  end
  else begin
    Adr := Dm.KundeDBAdresse.AsString;
    Poststed := Dm.KundeDBPoststed.AsString;
    Postnr := Dm.KundeDBPostnr.AsString;
  end;


  SetDeliveryInfo(Dm.FakturaDBFakturaDato.Value, Adr, Poststed, Postnr, 'NO',
                  xDoc.DocumentElement);

  SetPaymentInfo(Dm.FakturaDBForfallsDato.Value,
                 Dm.FakturaDBKid.AsString,
                 Dm.FirmaDBBankkontonr.AsString,
                 xDoc.DocumentElement);

  Mva := SetTaxTotalInfo('NOK', Dm.FakturaDBMVA.Value, xDoc.DocumentElement);
  SetTaxSubTotal('NOK', Dm.FakturaDBMVASats.Value,
                 Dm.FakturaDBEks.Value,
                 Dm.FakturaDBMVA.Value,
                 Mva);
  if Dm.FakturaDBAvg.Value > 0 then
    SetTaxSubTotal('NOK', -1, Dm.FakturaDBAvg.Value, 0, Mva);

  SetInvoiceTotals('NOK', Dm.FakturaDBEks.Value + Dm.FakturaDBAvg.Value, Dm.FakturaDBTotal.Value,
                   xDoc.DocumentElement);

  I := 1;
  Dm.FOrdreDB.First;
  while not Dm.FOrdreDB.Eof do begin
    //Fastpris avtaler
    if Dm.FOrdreDBFastPris.Value > 0 then
      AddLine(I, 'NOK', Dm.FOrdreDBOrdrenr.AsString, 'EA', '',
        FormatDateTime('yyyy-mm-dd', Dm.FOrdreDBDato.Value) + ': '+ Dm.FOrdreDBKjorerute.AsString,
        1, Dm.FOrdreDBFastPris.Value, Dm.FakturaDBMVASats.Value,
        xDoc.DocumentElement);

    //Kilometer pris
    if Dm.FOrdreDBKm.Value > 0 then
      AddLine(I, 'NOK', Dm.FOrdreDBOrdrenr.AsString, 'KTM', '',
        FormatDateTime('yyyy-mm-dd', Dm.FOrdreDBDato.Value) + ': '+ Dm.FOrdreDBKjorerute.AsString,
        Dm.FOrdreDBKm.Value, Dm.FOrdreDBKmPris.Value, Dm.FakturaDBMVASats.Value,
        xDoc.DocumentElement);

    //Time pris
    if Dm.FOrdreDBTimer.Value > 0 then
      AddLine(I, 'NOK', Dm.FOrdreDBOrdrenr.AsString, 'HUR', '',
        FormatDateTime('yyyy-mm-dd', Dm.FOrdreDBDato.Value) + ': '+ Dm.FOrdreDBKjorerute.AsString,
        Dm.FOrdreDBTimer.Value, Dm.FOrdreDBTimePris.Value, Dm.FakturaDBMVASats.Value,
        xDoc.DocumentElement);

    //Avgifter
    if Dm.FOrdreDBSumavg.Value > 0 then
      AddLine(I, 'NOK', Dm.FOrdreDBOrdrenr.AsString, '', '',
        FormatDateTime('yyyy-mm-dd', Dm.FOrdreDBDato.Value) + ': '+ Dm.FOrdreDBAvgifter.AsString,
        1, Dm.FOrdreDBSumavg.Value, -1,
        xDoc.DocumentElement);

    Inc(I);
    Dm.FOrdreDB.Next;
  end;

  xDoc.SaveToFile(GetExportDir + 'Invoice-' + Dm.FakturaDBFakturanr.AsString + '.xml');

  //Lagrer en kopi av alle exporterte fakturaer
  xDoc.SaveToFile(Dir + 'EHF\' + 'Invoice-' + Dm.FakturaDBFakturanr.AsString + '.xml');

  DM.FakturaDB.Edit;
  DM.FakturaDBStatus.Value := 'Utskrevet';
  DM.FakturaDB.Post;

  MessageBox(Handle, PAnsiChar('Faktura ' + Dm.FakturaDBFakturanr.AsString + ' ble eksportert til EHF'),
    'Export', MB_ICONINFORMATION + MB_OK);
end;

end.
