unit faFakuva;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, Menus, ToolWin, Buttons, DBCtrls,
  StdCtrls, ExtDlgs, Registry, DB, ComCtrls, Mask, Printers, StBase,
  StVInfo, XPMan, fcStatusBar, blsDBCheck, ActnList, XPStyleActnCtrls,
  ActnMan, blsAppPosition, blsQrPreview, IniFiles, blsFileUtil, blsMva,
  blsDbGridScroll, MidasLib;

type

  TFrmFakuva = class(TForm)
    Hovedmeny: TMainMenu;
    Fil1: TMenuItem;
    N1: TMenuItem;
    Avslutt1: TMenuItem;
    Ny1: TMenuItem;
    Endre1: TMenuItem;
    Hjelp1: TMenuItem;
    OmFakuva: TMenuItem;
    Rediger1: TMenuItem;
    Postadresser1: TMenuItem;
    Utskriftformat1: TMenuItem;
    N3: TMenuItem;
    Print1: TMenuItem;
    Slett1: TMenuItem;
    N4: TMenuItem;
    Online1: TMenuItem;
    Verkty1: TMenuItem;
    Sikkerhetskopiering1: TMenuItem;
    Importavsikkerhetskopi1: TMenuItem;
    N5: TMenuItem;
    Rapporter1: TMenuItem;
    Kalkulator1: TMenuItem;
    Betalt1: TMenuItem;
    Vis1: TMenuItem;
    Database1: TMenuItem;
    N8: TMenuItem;
    Innstillinger1: TMenuItem;
    Utregninger1: TMenuItem;
    HjelpforFakuva1: TMenuItem;
    N9: TMenuItem;
    Stikkordregister1: TMenuItem;
    Lagerstyring1: TMenuItem;
    Vis2: TMenuItem;
    Verktylinjer1: TMenuItem;
    Standard1: TMenuItem;
    Tools1: TMenuItem;
    ToolbarPopup: TPopupMenu;
    Standard2: TMenuItem;
    Tools2: TMenuItem;
    N10: TMenuItem;
    Logg1: TMenuItem;
    FakturaPopup: TPopupMenu;
    Sorter1: TMenuItem;
    Betalt2: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    Kontant1: TMenuItem;
    Kreditt1: TMenuItem;
    Fakturanr1: TMenuItem;
    Fakturadato1: TMenuItem;
    Kunde1: TMenuItem;
    N11: TMenuItem;
    Innstillinger2: TMenuItem;
    N12: TMenuItem;
    Endre2: TMenuItem;
    Slett2: TMenuItem;
    Skf1: TMenuItem;
    KundePopup: TPopupMenu;
    Endre3: TMenuItem;
    Slett3: TMenuItem;
    Innstillinger3: TMenuItem;
    N13: TMenuItem;
    Skkunder1: TMenuItem;
    N14: TMenuItem;
    Sorter2: TMenuItem;
    Etterkundenr1: TMenuItem;
    Etterkundenavn1: TMenuItem;
    VarePopup: TPopupMenu;
    Endre4: TMenuItem;
    Slett4: TMenuItem;
    Skkunder2: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    Innstillinger4: TMenuItem;
    Sorter3: TMenuItem;
    Ettervarenr1: TMenuItem;
    Ettervarenavn1: TMenuItem;
    Etterkategori1: TMenuItem;
    Etterleverandr1: TMenuItem;
    LeverandorPopup: TPopupMenu;
    Endre5: TMenuItem;
    Slett5: TMenuItem;
    Skkunder3: TMenuItem;
    N17: TMenuItem;
    Sorter4: TMenuItem;
    Ettervarenavn2: TMenuItem;
    Ettervarenr2: TMenuItem;
    N18: TMenuItem;
    Innstillinger5: TMenuItem;
    N19: TMenuItem;
    Import2: TMenuItem;
    Export2: TMenuItem;
    Fratidligereversjoner1: TMenuItem;
    VareImport1: TMenuItem;
    Varedatabase1: TMenuItem;
    Kundedatabase1: TMenuItem;
    Sendeposttilkunde1: TMenuItem;
    N20: TMenuItem;
    Prisjusteringer1: TMenuItem;
    N21: TMenuItem;
    Export1: TMenuItem;
    Sendeposttilkunde2: TMenuItem;
    Beskhjemmeside1: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    Sendeposttilkunde3: TMenuItem;
    Beskhjemmeside2: TMenuItem;
    Informasjon1: TMenuItem;
    N2: TMenuItem;
    Feilretting1: TMenuItem;
    Endrestatus1: TMenuItem;
    Utskrevet1: TMenuItem;
    Purring1: TMenuItem;
    Inkasso1: TMenuItem;
    N24: TMenuItem;
    Oppkrav1: TMenuItem;
    EpostlisteKunder1: TMenuItem;
    EpostlisteLeverandrer1: TMenuItem;
    Leverandrertilsemikolondeltfil1: TMenuItem;
    Kunderfrasemikolondeltfil1: TMenuItem;
    Varerfrasemikolondeltfil1: TMenuItem;
    Leverandrerfrasemikolondeltfil1: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    Sk1: TMenuItem;
    SokFelt1: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    SokFelt2: TMenuItem;
    N30: TMenuItem;
    Postadresserfrasemikolondeltfil1: TMenuItem;
    Reskontro1: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    Forhndsvis1: TMenuItem;
    Skrivut1: TMenuItem;
    Ordrebekreftelse1: TMenuItem;
    Forhndsvisning1: TMenuItem;
    Skrivut2: TMenuItem;
    Ordrebekreftelse2: TMenuItem;
    Forhndsvisning2: TMenuItem;
    Skrivut3: TMenuItem;
    Sendsomepost1: TMenuItem;
    N34: TMenuItem;
    Purrerutiner1: TMenuItem;
    Ver: TStVersionInfo;
    XPManifest: TXPManifest;
    DsFaktura: TDataSource;
    fcStatusBar1: TfcStatusBar;
    PanelMain: TPanel;
    PanelSp: TPanel;
    PanelArk: TPanel;
    Side: TPageControl;
    Fakturaer: TTabSheet;
    PanelFaktura: TPanel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label62: TLabel;
    DBText29: TDBText;
    Label65: TLabel;
    DBText32: TDBText;
    Label64: TLabel;
    DBText31: TDBText;
    Label66: TLabel;
    DBText33: TDBText;
    Label63: TLabel;
    DBText30: TDBText;
    Label25: TLabel;
    Label34: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    Label26: TLabel;
    CBF: TComboBox;
    SokEditF: TEdit;
    Kunder: TTabSheet;
    PanelKunder: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    Label28: TLabel;
    Label57: TLabel;
    DBText27: TDBText;
    Label21: TLabel;
    DBText5: TDBText;
    Label20: TLabel;
    DBText4: TDBText;
    Label19: TLabel;
    DBText3: TDBText;
    Label2: TLabel;
    LblKundeUrl: TDBText;
    LblKundeEpost: TDBText;
    Label1: TLabel;
    Label13: TLabel;
    SokEditK: TEdit;
    CBK: TComboBox;
    Varer: TTabSheet;
    PanelVarer: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label37: TLabel;
    DBText11: TDBText;
    Label38: TLabel;
    DBText12: TDBText;
    Label40: TLabel;
    DBText14: TDBText;
    Label41: TLabel;
    DBText15: TDBText;
    Label27: TLabel;
    CBV: TComboBox;
    SokEditV: TEdit;
    Leverandorer: TTabSheet;
    PanelLeverandor: TPanel;
    Label7: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    LblLeverandorUrl: TDBText;
    LblLeverandorEpost: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText20: TDBText;
    DBText21: TDBText;
    Label18: TLabel;
    CBL: TComboBox;
    SokEditL: TEdit;
    Purringer: TTabSheet;
    PanelPurring: TPanel;
    Label67: TLabel;
    Label86: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    DBText51: TDBText;
    DBText50: TDBText;
    DBText49: TDBText;
    DBText22: TDBText;
    DBText9: TDBText;
    Label84: TLabel;
    Label85: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    DBText1: TDBText;
    Label35: TLabel;
    Label36: TLabel;
    DBText2: TDBText;
    DBText8: TDBText;
    CBP: TComboBox;
    SokEditP: TEdit;
    DBPurretxt: TDBCheckBox;
    Label49: TLabel;
    Label51: TLabel;
    MenuSporing: TMenuItem;
    Verkty2: TMenuItem;
    Listeoverpakker1: TMenuItem;
    N33: TMenuItem;
    Oppdaterpostnummer1: TMenuItem;
    N35: TMenuItem;
    Sendeposttilkunde4: TMenuItem;
    Sporpakke1: TMenuItem;
    Oppdater1: TMenuItem;
    N36: TMenuItem;
    ActionManager: TActionManager;
    AcRefresh: TAction;
    AcSupportMail: TAction;
    SupportviaEmail1: TMenuItem;
    N37: TMenuItem;
    Panel1: TPanel;
    GridFaktura: TDBGrid;
    Panel2: TPanel;
    GridKunde: TDBGrid;
    Panel3: TPanel;
    GridVare: TDBGrid;
    Panel4: TPanel;
    GridLeverandor: TDBGrid;
    Panel5: TPanel;
    GridPurring: TDBGrid;
    CoolBar1: TCoolBar;
    TbStandard: TPageScroller;
    TStandard: TToolBar;
    TbNy: TToolButton;
    TbEndre: TToolButton;
    TbSlett: TToolButton;
    ToolButton17: TToolButton;
    TbBetalt: TToolButton;
    TbSok: TToolButton;
    TbVis: TToolButton;
    ToolButton19: TToolButton;
    TbPrint: TToolButton;
    TbRapporter: TToolButton;
    TbInnstillinger: TToolButton;
    TbTools: TPageScroller;
    TTools: TToolBar;
    TbSkopi: TToolButton;
    ToolButton14: TToolButton;
    TbCalc: TToolButton;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    blsAppPosition: TblsAppPosition;
    ActionList: TActionList;
    AcRapporter: TAction;
    AcRegistrering: TAction;
    Registrering1: TMenuItem;
    AcDBCheck: TAction;
    KontrollOptimalisering1: TMenuItem;
    N38: TMenuItem;
    AcRedigerFirma: TAction;
    RedigerFirmaOpplyninger1: TMenuItem;
    blsQrPreview: TblsQrPreview;
    AcLogout: TAction;
    Loggut1: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    muApo: TMenuItem;
    blsDbGridScroll1: TblsDbGridScroll;
    procedure OmFakuvaClick(Sender: TObject);
    procedure Avslutt1Click(Sender: TObject);
    procedure Postadresser1Click(Sender: TObject);
    procedure TbNyClick(Sender: TObject);
    procedure SokEditKKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LblKundeEpostClick(Sender: TObject);
    procedure LblKundeUrlClick(Sender: TObject);
    procedure TbEndreClick(Sender: TObject);
    procedure Utskriftformat1Click(Sender: TObject);
    procedure TbSlettClick(Sender: TObject);
    procedure Online1Click(Sender: TObject);
    procedure TBRapporterClick(Sender: TObject);
    procedure TbSkopiClick(Sender: TObject);
    procedure Importavsikkerhetskopi1Click(Sender: TObject);
    procedure SokEditFKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SokEditLKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SokEditPKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SideChange(Sender: TObject);
    procedure TbVisClick(Sender: TObject);
    procedure TbPrintClick(Sender: TObject);
    procedure Utregninger1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Stikkordregister1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Lagerstyring1Click(Sender: TObject);
    procedure Feilsking1Click(Sender: TObject);
    procedure TbBetaltClick(Sender: TObject);
    procedure TbInnstillingerClick(Sender: TObject);
    procedure TbHelpClick(Sender: TObject);
    procedure TbCalcClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Standard1Click(Sender: TObject);
    procedure Tools1Click(Sender: TObject);
    procedure LblLeverandorEpostClick(Sender: TObject);
    procedure LblLeverandorUrlClick(Sender: TObject);
    procedure Logg1Click(Sender: TObject);
    procedure SokEditVKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Fakturanr1Click(Sender: TObject);
    procedure Fakturadato1Click(Sender: TObject);
    procedure Kunde1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure Kontant1Click(Sender: TObject);
    procedure Kreditt1Click(Sender: TObject);
    procedure Etterkundenr1Click(Sender: TObject);
    procedure Etterkundenavn1Click(Sender: TObject);
    procedure Ettervarenr1Click(Sender: TObject);
    procedure Ettervarenavn1Click(Sender: TObject);
    procedure Etterkategori1Click(Sender: TObject);
    procedure Etterleverandr1Click(Sender: TObject);
    procedure Ettervarenr2Click(Sender: TObject);
    procedure Ettervarenavn2Click(Sender: TObject);
    procedure VareImport1Click(Sender: TObject);
    procedure Fil1Click(Sender: TObject);
    procedure Sendeposttilkunde1Click(Sender: TObject);
    procedure Prisjusteringer1Click(Sender: TObject);
    procedure Varedatabase1Click(Sender: TObject);
    procedure Kundedatabase1Click(Sender: TObject);
    procedure Export1Click(Sender: TObject);
    procedure Fratidligereversjoner1Click(Sender: TObject);
    procedure Sendeposttilkunde2Click(Sender: TObject);
    procedure Beskhjemmeside1Click(Sender: TObject);
    procedure Sendeposttilkunde3Click(Sender: TObject);
    procedure Beskhjemmeside2Click(Sender: TObject);
    procedure Informasjon1Click(Sender: TObject);
    procedure Feilretting1Click(Sender: TObject);
    procedure Utskrevet1Click(Sender: TObject);
    procedure Purring1Click(Sender: TObject);
    procedure Inkasso1Click(Sender: TObject);
    procedure FakturaPopupPopup(Sender: TObject);
    procedure Skf1Click(Sender: TObject);
    procedure Skp1Click(Sender: TObject);
    procedure Verkty1Click(Sender: TObject);
    procedure Oppkrav1Click(Sender: TObject);
    procedure EpostlisteKunder1Click(Sender: TObject);
    procedure EpostlisteLeverandrer1Click(Sender: TObject);
    procedure Leverandrertilsemikolondeltfil1Click(Sender: TObject);
    procedure Leverandrerfrasemikolondeltfil1Click(Sender: TObject);
    procedure Kunderfrasemikolondeltfil1Click(Sender: TObject);
    procedure Varerfrasemikolondeltfil1Click(Sender: TObject);
    procedure GridFakturaKeyPress(Sender: TObject; var Key: Char);
    procedure Sk1Click(Sender: TObject);
    procedure SokFelt1Click(Sender: TObject);
    procedure Postadresserfrasemikolondeltfil1Click(Sender: TObject);
    procedure Reskontro1Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure Skrivut2Click(Sender: TObject);
    procedure Forhndsvisning1Click(Sender: TObject);
    procedure Purrerutiner1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsFakturaDataChange(Sender: TObject; Field: TField);
    procedure MenuSporingClick(Sender: TObject);
    procedure Listeoverpakker1Click(Sender: TObject);
    procedure AcRefreshExecute(Sender: TObject);
    procedure AcSupportMailExecute(Sender: TObject);
    procedure AcRapporterExecute(Sender: TObject);
    procedure AcRegistreringExecute(Sender: TObject);
    procedure AcDBCheckExecute(Sender: TObject);
    procedure AcRedigerFirmaExecute(Sender: TObject);
    procedure AcLogoutExecute(Sender: TObject);
    procedure N40Click(Sender: TObject);
    procedure muApoClick(Sender: TObject);
  private
    { Private declarations }
    procedure RegnUtPurring;
    procedure PurreInstillinger;
    procedure LukkDataSet;
    procedure LagreToolBar;
    procedure LastToolBar;
    procedure LastInnstillinger;
    procedure SlettFaktura;
    procedure PrintKvittering;
    procedure VisKvittering;
    procedure PrintFaktura;
    procedure VisFaktura;
    procedure PrintPurring;
    procedure VisPurring;
    procedure TilStand(N: Integer; E: Integer; S: Integer;  B: Integer; K:Integer; F: Integer; P: Integer);
    procedure VisSokeFelt(Vis: Boolean);
    function SlettKunde(Kid: Double): Boolean;
    procedure GenererPurring;
    procedure SettFakturaSperre;
    procedure PrintOrdrebekreftelse(Index: Integer; Kopier: Integer = 1);
    procedure LesMvaSatser;
  public
    { Public declarations }
    procedure WndProc(var Message: TMessage); override;
  end;

var
  FrmFakuva: TFrmFakuva;

implementation

uses DataModul, faAboutBox, faKunde, faVare, faInnstillinger,
     faLeverandor, faFaktura, faRptFaktura, faRptPurring, faProgress,
     faRptKvittering, faPrisJustering, faImport, faSalgstall, faInformasjon,
     faLogin, faAvansertsok, faReskontro, faRptOrdre, faPurreListe,
     unitReg, blsMisc, blsString, faPakkeSpor, faPostnummer, faPakkeListe,
     blsDB, JclMapi, faRegistrering, faRapporter, faBetaltDato, faDBCheck,
     faFirma, faFakturaInfo, ShellApi;

{$R *.DFM}

//******** FIX for StatusBAR
procedure TFrmFakuva.WndProc(var Message: TMessage);
begin
  with Message do
    Case Msg of
      WM_DRAWITEM:
      if Message.WParam <> 0 then begin
        with PDrawItemStruct(Message.LParam)^ do
        if CtlType = ODT_MENU then
          CtlType := ODT_STATIC;
        end;
    end;
  inherited WndProc(Message);
end;

procedure TFrmFakuva.LagreToolBar;
var Reg: TRegistry;
    Firma: String;
begin
 Reg := TRegistry.Create;
 try
  Firma := DM.FirmaDBFirma.Value;
  if Firma = '' then
    Firma := 'Demo';

  Reg.OpenKey('\Software\Bls\Fakuva5\' + Firma + '\ToolBar\Standard', True);
  Reg.WriteBool('Vis', TbStandard.Visible);
  Reg.WriteInteger('Top', TbStandard.Top);
  Reg.WriteInteger('Left', TbStandard.Left);
  Reg.CloseKey;

  Reg.OpenKey('\Software\Bls\Fakuva5\' + Firma + '\ToolBar\Tools', True);
  Reg.WriteBool('Vis', TbTools.Visible);
  Reg.WriteInteger('Top', TbTools.Top);
  Reg.WriteInteger('Left', TbTools.Left);
  Reg.CloseKey;

 finally
 Reg.Free;
 end;
end;

procedure TFrmFakuva.LastToolBar;
var Reg: TRegistry;
    Firma: String;
begin
 Reg := TRegistry.Create;
 try
   Firma := DM.FirmaDBFirma.Value;

  Reg.OpenKey('\Software\Bls\Fakuva5\' + Firma + '\ToolBar\Standard', True);
  If (Reg.ValueExists('Vis') = True) then
    begin
     If Reg.ReadBool('Vis') = False then
      begin
       TbStandard.Visible := False;
       Standard1.Checked  := False;
       Standard2.Checked  := False;
      end;
     TbStandard.Top     := Reg.ReadInteger('Top');
     TbStandard.Left    := Reg.ReadInteger('Left');
    end;
  Reg.CloseKey;

  Reg.OpenKey('\Software\Bls\Fakuva5\' + Firma + '\ToolBar\Tools', True);
  If (Reg.ValueExists('Vis') = True) then
    begin
      If Reg.ReadBool('Vis') = False then
        begin
         TbTools.Visible   := False;
         Tools1.Checked    := False;
         Tools2.Checked    := False;
        end;
      TbTools.Top       := Reg.ReadInteger('Top');
      TbTools.Left      := Reg.ReadInteger('Left');
    end;
  Reg.CloseKey;
 finally
 Reg.Free;
 end;
end;

procedure TFrmFakuva.OmFakuvaClick(Sender: TObject);
begin
 Application.CreateForm(TFrmAboutBox, FrmAboutBox);
 FrmAboutBox.ShowModal;
end;

procedure TFrmFakuva.Avslutt1Click(Sender: TObject);
begin
 Close;
end;

procedure TFrmFakuva.Postadresser1Click(Sender: TObject);
begin
// Winexec('PostNo.exe Fkv5', SW_SHOWDEFAULT);
  FrmPostnummer := TFrmPostnummer.Create(Application);
  FrmPostnummer.ShowModal;
  FrmPostnummer.Release;

end;

procedure TFrmFakuva.SlettFaktura;
begin
  With DM.KoblingDB do
  begin
     DisableControls;
     try
     First;

       While NOT EOF do
       begin
        Delete;
       end;

     finally
     EnableControls;
   end;
   DM.FakturaDB.Delete;
  end;
end;

procedure TFrmFakuva.TbNyClick(Sender: TObject);
begin
 Case Side.ActivePage.PageIndex of
 0: begin
     Application.CreateForm(TFrmFaktura, FrmFaktura);
     FrmFaktura.LagNyFaktura;
     If (FrmFaktura.ShowModal <> mrOk) and (FrmFaktura.IsNew) then
        SlettFaktura;
 end;

 1: begin
   Application.CreateForm(TFrmKunde, FrmKunde);
   FrmKunde.LagNyKunde;
   FrmKunde.ShowModal;
 end;

 2: begin
   Application.CreateForm(TFrmVare, FrmVare);
   FrmVare.LagNyVare;
   FrmVare.ShowModal;
 end;

 3: begin
   Application.CreateForm(TFrmLeverandor, FrmLeverandor);
   FrmLeverandor.LagNyLeverandor;
   FrmLeverandor.ShowModal;
 end;

 end;
end;

procedure TFrmFakuva.SokEditKKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (SokEditK.Text <> '') then
 try
   DM.KundeDB.Locate(Cbk.Text, SokEditK.Text, [loCaseInsensitive, loPartialKey]);
 except
  //Ikke gjør noe som helst;
 end;
end;

procedure TFrmFakuva.LblKundeEpostClick(Sender: TObject);
begin
 SendMail(DM.KundeDBEpost.Value);
end;

procedure TFrmFakuva.LblKundeUrlClick(Sender: TObject);
begin
 StartWeb(DM.KundeDBUrl.Value);
end;

procedure TFrmFakuva.TbEndreClick(Sender: TObject);
begin
 Case Side.ActivePage.PageIndex of
 0: begin
   If TbEndre.Enabled then begin
    Application.CreateForm(TFrmFaktura, FrmFaktura);
    FrmFaktura.EndreFaktura;
   end;
 end;

 1: begin
   Application.CreateForm(TFrmKunde, FrmKunde);
   FrmKunde.ShowModal;
 end;

 2: begin
   Application.CreateForm(TFrmVare, FrmVare);
   FrmVare.ShowModal;
 end;

 3: begin
   Application.CreateForm(TFrmLeverandor, FrmLeverandor);
   FrmLeverandor.ShowModal;
 end;
 end;
end;

procedure TFrmFakuva.Utskriftformat1Click(Sender: TObject);
var Setup:TPrinterSetupDialog;
begin
 Setup := TPrinterSetupDialog.Create(Nil);
 try
 Setup.Execute;
 finally
 Setup.Free;
 end;
end;

function TFrmFakuva.SlettKunde(Kid: Double): Boolean;
begin
 If DM.FakturaDB.Locate('IdKunde', Kid, []) then
  begin
   MessageBox(Handle ,'Kan ikke slette kunden, da det forekommer fakturaer i hans navn!', 'Sletting av kunde', MB_OK + MB_ICONHAND);
   Result := False;
  end
 else
  begin
   Dm.KundeDB.Delete;
   Result := True;
  end;
end;

procedure TFrmFakuva.TbSlettClick(Sender: TObject);
begin
 Case Side.ActivePage.PageIndex of
 0: begin
  If MessageBox(Handle ,'Slett valgt faktura?', 'Slett faktura', MB_YESNO + MB_ICONQUESTION) = IdYES then
     SlettFaktura;
 end;

 1: begin
  If MessageBox(Handle, 'Slett valgt kunde?', 'Slett kunde', MB_YESNO + MB_ICONQUESTION) = IdYES then
   SlettKunde(Dm.KundeDBIdKunde.Value);
 end;

 2: begin
  If MessageBox(Handle, 'Slett valgt vare?', 'Slett vare', MB_YESNO + MB_ICONQUESTION) = IdYES then
   DM.VareDB.Delete;
 end;

 3: begin
  If MessageBox(Handle,'Slett valgt leverandør?', 'Slett leverandør', MB_YESNO + MB_ICONQUESTION) = IdYES then
   DM.LeverandorDB.Delete;
 end;

 end;
end;

procedure TFrmFakuva.Online1Click(Sender: TObject);
begin
 StartWeb('http://www.fakuva.no');
end;

procedure TFrmFakuva.TbRapporterClick(Sender: TObject);
begin
{ Application.CreateForm(TFrmReports, FrmReports);
 FrmReports.ShowModal;
 LastInnstillinger;}

  AcRapporter.Execute;
end;

procedure TFrmFakuva.TbSkopiClick(Sender: TObject);
begin
 If MessageBox(Handle,'Programmet vil avslutte før sikkerhetskopieringen begynner - Fortsett?', 'Sikkerhetskopiering', MB_YESNO + MB_ICONQUESTION) = IdYES then
   begin
     If FileExists('Backup.exe') then
      Winexec('Backup.exe Kopi', SW_SHOWDEFAULT)
     else
      Winexec('Skopi kopi', SW_SHOWDEFAULT);
     DM.SkrivTilLogg('Programmet for sikkerhetskopi startet!');
     Close;
   end;
end;

procedure TFrmFakuva.Importavsikkerhetskopi1Click(Sender: TObject);
begin
 If MessageBox(Handle, 'Fakuva må avsluttes før et nytt datasett kan importeres - Fortsett?',
  'Import av sikkerhetskopi', MB_YESNO + MB_DEFBUTTON1) = IDYES then
     begin
      If FileExists('Backup.exe') then
        Winexec('Backup.exe Import', SW_SHOWDEFAULT)
       else
        Winexec('Skopi import', SW_SHOWDEFAULT);
     DM.SkrivTilLogg('Programmet for importering av sikkerhetskopi ble startet!');
     Close;
     end;
end;

procedure TFrmFakuva.SokEditFKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If SokEditF.Text <> '' then
 try
 DM.FakturaDB.Locate(CBF.Text, SokEditF.Text, [loCaseInsensitive, loPartialKey]);
 except
  //Ikke gjør noe som helst;
 end;
end;

procedure TFrmFakuva.SokEditLKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (SokEditL.Text <> '') then
 try
   If Cbl.Text = 'Leverandør' then
      DM.LeverandorDB.Locate('Leverandor', SokEditL.Text, [loCaseInsensitive, loPartialKey])
   else
   If Cbl.Text = 'Leverandørnr' then
      DM.LeverandorDB.Locate('Leverandornr', SokEditL.Text, [loCaseInsensitive, loPartialKey])
   else
      DM.LeverandorDB.Locate(CBL.Text, SokEditL.Text, [loCaseInsensitive, loPartialKey]);
 except
  //Ikke gjør noen ting.....
 end;
end;

procedure TFrmFakuva.SokEditPKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If SokEditP.Text <> '' then begin
 try
 DM.FakturaDB.Locate(CBP.Text, SokEditP.Text, [loCaseInsensitive, loPartialKey]);
 except
  MessageDlg('Du har tastet inn et ugyldig tegn!', mtInformation, [mbok], 0);
 end;
 end;
end;

procedure TFrmFakuva.TilStand(N: Integer; E: Integer; S: Integer;  B: Integer; K:Integer; F: Integer; P: Integer);
begin
  TbNy.Enabled          := Boolean(N);
  Ny1.Enabled           := Boolean(N);
  TbEndre.Enabled       := Boolean(E);
  Endre1.Enabled        := Boolean(E);
  TbSlett.Enabled       := Boolean(S);
  Slett1.Enabled        := Boolean(S);
  TbBetalt.Enabled      := Boolean(B);
  Betalt1.Enabled       := Boolean(B);
  TbSok.Enabled         := Boolean(K);
  Sk1.Enabled           := Boolean(K);
  TbVis.Enabled         := Boolean(F);
  Vis1.Enabled          := Boolean(F);
  TbPrint.Enabled       := Boolean(P);
  Print1.Enabled        := Boolean(P);
end;

procedure TFrmFakuva.SideChange(Sender: TObject);
var Reg: TRegistry;
begin
 Case Side.ActivePage.PageIndex of
 0: begin
    If DM.FakturaDB.Filter <> '' then
      begin
       Reg := TRegistry.Create;
       try
       Reg.OpenKey('\Software\Bls\Fakuva5\' + DM.FirmaDBFirma.Value, True);
       If (Reg.ValueExists('Visning') = True) then
       Case Reg.ReadInteger('Visning') of
         0: DM.FakturaDB.Filter := '';
         1: DM.FakturaDB.Filter := 'Betalt = ''-''';
         2: DM.FakturaDB.Filter := 'Betalt = ''Ja''';
         3: DM.FakturaDB.Filter := 'Betalt = ''Kontant''';
         4: DM.FakturaDB.Filter := 'Betalt = ''Kredit''';
       end
       else
       DM.FakturaDB.Filter := '';
       finally
        Reg.Free;
       end;
      end;
   TilStand(1, 1, 1, 1, 1, 1, 1);
   SettFakturaSperre;
 end;

 1..3: begin
   TilStand(1, 1, 1, 0, 1, 0, 0);
   If PanelFaktura.Visible = False then
    begin
     GridKunde.Realign;
     GridVare.Realign;
     GridLeverandor.Realign;
    end;
   GridVare.Columns.Items[3].Visible :=  HentVip;
   GridVare.Columns.Items[6].Visible := HentVip;
 end;

 4: begin
  DM.FakturaDB.Filter   := 'Forfallsdato < '' ' + DateToStr(Date) + ' ''  and Betalt = ''-'' ';
  TilStand(0, 0, 0, 1, 0, 1, 1);
 end;

end;
end;

procedure TFrmFakuva.RegnUtPurring;
var Dager: Double;
    Reg: TRegistry;
    Total, Gebyr: Double;
begin
   Dager := Date - DM.FakturaDBForfallsdato.Value;

   Reg := TRegistry.Create;
   try
     Reg.OpenKey('\Software\Bls\Fakuva5\' + DM.FirmaDBFirma.Value, True);

     Gebyr := DM.FirmaDBPurregebyr.Value;
     If Reg.ValueExists('Purregebyr') then
       Case Reg.ReadInteger('Purregebyr') of
       0: Gebyr := (((DM.FakturaDBTotal.Value * (Dm.FirmaDBPurrerente.Value /360))/100) * Dager);
       1: Gebyr := DM.FirmaDBPurregebyr.Value;
       end;

     Total := DM.FakturaDBTotal.Value + Gebyr;
     If Reg.ValueExists('Avrunding') then
       Case Reg.ReadInteger('Avrunding') of
       0: Total := RundAvHele(Total);
       1: Total := RundAv50(Total);
       2:
       end;

   finally
     Reg.Free;
   end;

   DM.FakturaDB.Edit;
   DM.KundeDB.Locate('IdKunde', DM.FakturaDBIdKunde.Value, []);
   DM.FakturaDBPurreDato.Value      := Date + DM.KundeDBForfallsDager.Value;

   If Dm.FakturaDBStatus.Value <> 'Inkasso' then
    DM.FakturaDBStatus.Value         := 'Purring';    
   DM.FakturaDBPurregebyr.Value     := Gebyr;
   DM.FakturaDBPurreTotal.Value     := Total;

   DM.FakturaDB.Post;
   DM.SkrivTilLogg('Purring generert for faktura ' + FloatToStr(DM.FakturaDBFakturanr.Value));
end;

procedure TFrmFakuva.PurreInstillinger;
var Reg: TRegistry;
begin
 Reg := TRegistry.Create;
  try
  Reg.OpenKey('Software\Bls\Fakuva5\' + DM.FirmaDBFirma.Value, False);

  If Reg.ValueExists('Purregebyr') then
     If Reg.ReadInteger('Purregebyr') = 1 then
        RptPurring.QrRenter.Caption := 'Purregebyr';

  If Reg.ValueExists('Forfallsdato') then
     If Reg.ReadInteger('Forfallsdato') = 1 then
        begin
         RptPurring.QrLblOmg.Enabled       := False;
         RptPurring.QrDbPurreDato.Enabled  := True;
         RptPurring.QrOmg.Enabled          := False;
         RptPurring.QrPurreDato.Enabled    := True;
        end;

  finally
   Reg.Free;
  end;

  If DBPurretxt.Checked = False then
    begin
     RptPurring.QrdbPurretekst.Enabled      := False;
     RptPurring.QrdbFakturatekst.Enabled    := True;
    end;

  If DM.FakturaDBStatus.Value = 'Inkasso' then
     RptPurring.QrTittel.Caption := ' Inkassovarsel';

end;

procedure TFrmFakuva.GenererPurring;
var Mld: String;
begin
 Mld := 'Beregn nye renter og gebyrer for purringen?' + Chr(13) + Chr(10) +
        'Dette medfører at tidligere renter og gebyrer vil bli overskrevet!';

 Purreinstillinger;

 If MessageBox(Handle, PChar(Mld) , 'Generer purring', MB_YESNO + MB_ICONQUESTION) = IdYes then
  begin
   RegnUtPurring;
  end
 else
  begin
   If Dm.FakturaDBPurregebyr.Value = 0 then
    begin
     Dm.FakturaDB.Edit;
     Dm.FakturaDBPurreTotal.Value := Dm.FakturaDBTotal.Value;
     Dm.FakturaDB.Post;
    end;
  end;
end;

procedure TFrmFakuva.VisKvittering;
begin
  Application.CreateForm(TRptKvittering, RptKvittering);

    If DM.FakturaDBRabatt.Value = 0 then
      begin
       RptKvittering.RabattLbl.Font.Color   := clWhite;
       RptKvittering.RabattDBLbl.Font.Color := clWhite;
      end
    else
      begin
       RptKvittering.RabattLbl.Font.Color   := clBlack;
       RptKvittering.RabattDBLbl.Font.Color := clBlack;
      end;

  RptKvittering.PreviewModal;
  RptKvittering.Free;
end;

procedure TFrmFakuva.VisFaktura;
begin
  Application.CreateForm(TRptFaktura, RptFaktura);

    If DM.FakturaDBBetalt.Value = 'Kredit' then
       RptFaktura.QrType.Caption := '  Kreditnota';

    If DM.FakturaDBRabatt.Value = 0 then
      begin
       RptFaktura.RabattLbl.Font.Color   := clWhite;
       RptFaktura.RabattDBLbl.Font.Color := clWhite;
      end
    else
      begin
       RptFaktura.RabattLbl.Font.Color   := clBlack;
       RptFaktura.RabattDBLbl.Font.Color := clBlack;
      end;

  RptFaktura.PreviewModal;
  RptFaktura.Free;
end;

procedure TFrmFakuva.VisPurring;
begin
 If (DM.FakturaDB.RecordCount > 0) then
 begin
  Application.CreateForm(TRptPurring, RptPurring);
  GenererPurring;
  
    If DM.FakturaDBRabatt.Value = 0 then
      begin
       RptPurring.RabattLbl.Font.Color   := clWhite;
       RptPurring.RabattDBLbl.Font.Color := clWhite;
      end
    else
      begin
       RptPurring.RabattLbl.Font.Color   := clBlack;
       RptPurring.RabattDBLbl.Font.Color := clBlack;
      end;

   RptPurring.PreviewModal;
   RptPurring.Free;
  end;
end;

procedure TFrmFakuva.TbVisClick(Sender: TObject);
begin
 Case Side.ActivePage.PageIndex of
   0: begin
        If DM.FakturaDBBetalt.Value = 'Kontant' then
           VisKvittering
        else
           VisFaktura;
      end;

   4: VisPurring;
 End;
end;

procedure TFrmFakuva.PrintKvittering;
var P: TPrintDialog;
    I: Integer;
begin
  P := TPrintDialog.Create(Nil);
  try
    If P.Execute then
    begin
        Application.CreateForm(TRptKvittering, RptKvittering);
        if not Dm.UtskriftKopi then
          RptKvittering.PrinterSettings.Copies := P.Copies;
        RptKvittering.PrinterSettings.PrinterIndex := Printer.PrinterIndex;

          If DM.FakturaDBRabatt.Value = 0 then
           begin
            RptKvittering.RabattLbl.Font.Color   := clWhite;
            RptKvittering.RabattDBLbl.Font.Color := clWhite;
           end
          else
           begin
            RptKvittering.RabattLbl.Font.Color   := clBlack;
            RptKvittering.RabattDBLbl.Font.Color := clBlack;
           end;

           If DM.UtskriftKopi then
             begin
              I := P.Copies;
              While I > 0 do
                begin
                 RptKvittering.Print;
                 I := I - 1;
                end;
             end
           else
           RptKvittering.Print;

          RptKvittering.Free;
          DM.SettStatus('Utskrevet');
     end;
  finally
   P.Free;
  end;
end;

procedure TFrmFakuva.PrintFaktura;
var P: TPrintDialog;
    I: Integer;
begin
  P := TPrintDialog.Create(Nil);
  try
    If P.Execute then
    begin
      Application.CreateForm(TRptFaktura, RptFaktura);
      if not Dm.UtskriftKopi then
        RptFaktura.PrinterSettings.Copies := P.Copies;
      RptFaktura.PrinterSettings.PrinterIndex := Printer.PrinterIndex;

      If DM.FakturaDBBetalt.Value = 'Kredit' then
       RptFaktura.QrType.Caption := '  Kreditnota';

      If DM.FakturaDBRabatt.Value = 0 then
        begin
         RptFaktura.RabattLbl.Font.Color   := clWhite;
         RptFaktura.RabattDBLbl.Font.Color := clWhite;
        end
      else
        begin
         RptFaktura.RabattLbl.Font.Color   := clBlack;
         RptFaktura.RabattDBLbl.Font.Color := clBlack;
        end;

       If DM.UtskriftKopi then
         begin
          I := P.Copies;
          While I > 0 do
            begin
             RptFaktura.Print;
             I := I - 1;
            end;
         end
       else
       RptFaktura.Print;
       RptFaktura.Free;
       DM.SettStatus('Utskrevet');

     If HentOrdrebekreftelse then
       PrintOrdrebekreftelse(Printer.PrinterIndex);

      end;
  finally
   P.Free;
  end;
end;

procedure TFrmFakuva.PrintOrdrebekreftelse(Index: Integer; Kopier: Integer = 1);
begin
    Application.CreateForm(TRptOrdre, RptOrdre);
    RptOrdre.PrinterSettings.Copies := Kopier;
    RptOrdre.PrinterSettings.PrinterIndex := Printer.PrinterIndex;
    RptOrdre.Print;
    RptOrdre.Free;
end;

procedure TFrmFakuva.PrintPurring;
var P: TPrintDialog;
    I: Integer;
begin
  P := TPrintDialog.Create(Nil);
  try
    If P.Execute then
    begin

      Application.CreateForm(TRptPurring, RptPurring);
      If NOT Dm.UtskriftKopi then
        RptPurring.PrinterSettings.Copies := P.Copies;
      RptPurring.PrinterSettings.PrinterIndex := Printer.PrinterIndex;
      GenererPurring;

      If DM.FakturaDBRabatt.Value = 0 then
        begin
         RptPurring.RabattLbl.Font.Color   := clWhite;
         RptPurring.RabattDBLbl.Font.Color := clWhite;
        end
      else
        begin
         RptPurring.RabattLbl.Font.Color   := clBlack;
         RptPurring.RabattDBLbl.Font.Color := clBlack;
        end;

      If DM.UtskriftKopi then
         begin
          I := P.Copies;
          While I > 0 do
            begin
             RptPurring.Print;
             I := I - 1;
            end;
         end
       else
       RptPurring.Print;

     RptPurring.Free;
     DM.SettStatus('Purring');
    end;
  finally
   P.Free;
  end;
end;

procedure TFrmFakuva.TbPrintClick(Sender: TObject);
begin
 Case Side.ActivePage.PageIndex of
 0: begin
      If DM.FakturaDBBetalt.Value = 'Kontant' then
         PrintKvittering
      else
         PrintFaktura;
    end;
 4: PrintPurring;
 End;
end;

procedure TFrmFakuva.Utregninger1Click(Sender: TObject);
begin
 Application.CreateForm(TFrmSalgstall, FrmSalgstall);
 FrmSalgstall.ShowModal;
end;

procedure TFrmFakuva.FormDestroy(Sender: TObject);
begin
  //DeleteFile('.\fakuva~.tmp');
  Application.HelpCommand(HELP_QUIT, 0);
end;

procedure TFrmFakuva.Stikkordregister1Click(Sender: TObject);
begin
  Application.HelpCommand(HELP_FINDER,0);
end;

procedure TFrmFakuva.LukkDataSet;
begin
 With DM do begin
  If (KundeDB.State = dsEdit) or (KundeDB.State = dsInsert) then
     KundeDB.Post;
  KundeDB.Close;

  If (VareDB.State = dsEdit) or (VareDB.State = dsInsert) then
     VareDB.Post;
  VareDB.Close;

  If (FakturaDB.State = dsEdit) or (FakturaDB.State = dsInsert) then
     FakturaDB.Post;
  FakturaDB.Close;

  If (LeverandorDB.State = dsEdit) or (LeverandorDB.State = dsInsert) then
     LeverandorDB.Post;
  LeverandorDB.Close;

  If (KoblingDB.State = dsEdit) or (KoblingDB.State = dsInsert) then
     KoblingDB.Post;
  KoblingDB.Close;

  If (FirmaDB.State = dsEdit) or (FirmaDB.State = dsInsert) then
     FirmaDB.Post;
  FirmaDB.Close;

  If (ReferanseDB.State = dsEdit) or (ReferanseDB.State = dsInsert) then
     ReferanseDB.Post;
  ReferanseDB.Close;

  If (KategoriDB.State = dsEdit) or (KategoriDB.State = dsInsert) then
     KategoriDB.Post;
  KategoriDB.Close;

  PostDB.Close;
 end;
end;

procedure TFrmFakuva.FormClose(Sender: TObject; var Action: TCloseAction);
 var Reg: TRegistry;
begin
  LagreToolBar;

  Reg := TRegistry.Create;
   try
    Reg.OpenKey('Software\Bls\Fakuva5\' + DM.FirmaDBFirma.Value, True);
    If (Reg.ValueExists('Sikkerhetskopi') = True) and
    (Reg.ReadBool('Sikkerhetskopi') = False) then
    // Ikke gjør noe som helst!
    else
     begin
      If FileExists('Backup.exe') then
       Winexec('Backup Kopi', SW_SHOWDEFAULT)
      else
       Winexec('Skopi kopi', SW_SHOWDEFAULT);
     end;
   finally
    Reg.Free;
   end;

  LukkDataSet;
end;

procedure TFrmFakuva.Lagerstyring1Click(Sender: TObject);
begin

// If MessageBox(Handle,'Fakvua 5 bør avsluttes før lagerstyringen startes! Fortsett?', 'Lagerstyring', MB_YESNO + MB_ICONQUESTION) = IdYES then
//   begin
     If FileExists('Lagerstyring.exe') then
     Winexec('Lagerstyring.exe', SW_SHOWDEFAULT)
     else
       begin
       If FileExists('Lager.exe') then
       Winexec('Lager', SW_SHOWDEFAULT);
     end;
     DM.SkrivTilLogg('Programmet for lagerstyring startet!');
//     Close;
//   end;
end;

procedure TFrmFakuva.Feilsking1Click(Sender: TObject);
begin
 If MessageBox(Handle, 'Alle programmer som jobber mot databasefilene for Fakuva må avsluttes før feilsøkingen kan begynne! Fortsett? ',
  'Feilsøking ...', MB_YESNO + MB_DEFBUTTON1) = IDYES then
 begin
 Winexec('BugFixer.exe', SW_SHOWDEFAULT);
 Close;
 end;
end;

procedure TFrmFakuva.TbBetaltClick(Sender: TObject);
begin
  with Dm do begin
    if not FakturaDBFakturanr.IsNull then begin
         if FakturaDBBetalt.Value = '-' then begin
            FrmBetaltDato := TFrmBetaltDato.Create(Application);
            if (FakturaDBStatus.Value = 'Purring') or (FakturaDBStatus.Value = 'Inkasso') then
              FrmBetaltDato.RbPart.Enabled := True;

            if FrmBetaltDato.ShowModal = mrOK then begin
              FakturaDB.Edit;
              if FrmBetaltDato.RbPart.Checked then begin
                FakturaDBPurregebyr.Value := 0;
                FakturaDBPurreTotal.Value := 0;
              end;
              FakturaDBBetaltDato.Value := FrmBetaltDato.McDato.Date;
              FakturaDB.Post;
              SettFakturaBetalt('Ja');
            end;
         end
         else
           if MessageBox(Handle, 'Fakturaen er markert som betalt!' + Chr(13) +
             'Ønsker du å sette fakturaen til ubetalt?', 'Bekrefting', MB_YESNO + MB_ICONQUESTION) = IDYES then
             SettFakturaBetalt('-');
    end;
  end;
end;

procedure TFrmFakuva.TbInnstillingerClick(Sender: TObject);
var F: String;
begin
 F := DM.FakturaDB.Filter;

 Application.CreateForm(TFrmInnstillinger, FrmInnstillinger);
 FrmInnstillinger.Oppstart;

 //GridVare.Columns.Items[3].Visible := HentVip(Dm.FirmaDBFirma.Value);

 If Side.ActivePage = Purringer then
  DM.FakturaDB.Filter := F;
end;

procedure TFrmFakuva.TbHelpClick(Sender: TObject);
begin
//  Application.HelpCommand(HELP_CONTENTS,0);
end;

procedure TFrmFakuva.TbCalcClick(Sender: TObject);
begin
 Winexec('Calc', SW_SHOWDEFAULT);
end;

procedure TFrmFakuva.LastInnstillinger;
var Reg: TRegistry;
     Firma: String;
begin
 Reg := TRegistry.Create;
 try
  Firma := DM.FirmaDBFirma.Value;
  if Firma = '' then
    Firma := 'Demo';

  Reg.OpenKey('\Software\Bls\Fakuva5\' + Firma, True);

  If NOT Reg.ValueExists('Visning') then
   LagreStandard;

   VisSokeFelt(Reg.ReadBool('VisSokeFelt'));

   Case Reg.ReadInteger('Visning') of
     0: DM.FakturaDB.Filter := '';
     1: DM.FakturaDB.Filter := 'Betalt = ''-''';
     2: DM.FakturaDB.Filter := 'Betalt = ''Ja''';
     3: DM.FakturaDB.Filter := 'Betalt = ''Kontant''';
     4: DM.FakturaDB.Filter := 'Betalt = ''Kredit''';
   end;
  Reg.CloseKey;

  Reg.OpenKey('\Software\Bls\Fakuva5\' + Firma + '\Sortering', True);

    Case Reg.ReadInteger('Leverandor') of
     0: DM.SorterLeverandorer('Leverandornr');
     1: DM.SorterLeverandorer('Leverandor');
    end;

    Case Reg.ReadInteger('Kunde') of
     0: DM.SorterKunder('Kundenr');
     1: DM.SorterKunder('Kunde');
    end;

    Case Reg.ReadInteger('Faktura') of
     0: DM.SorterFakturaer('Fakturanr');
     1: DM.SorterFakturaer('Fakturadato');
     2: DM.SorterFakturaer('IdKunde');
    end;

    Case Reg.ReadInteger('Vare') of
     0: DM.SorterVarer('Varenr');
     1: DM.SorterVarer('Vare');
     2: DM.SorterVarer('IdKategori');
     3: DM.SorterVarer('IdLeverandor');
    end;

   Reg.CloseKey;

 finally
  Reg.Free;
 end;
end;

procedure TFrmFakuva.FormShow(Sender: TObject);
begin
 If DM.FirmaDBPass.Value = True then
    begin
     Application.CreateForm(TFrmLogin, FrmLogin);
     If FrmLogin.ShowModal = mrCancel then
       begin
        Close;
       end;
    end;

 CbF.ItemIndex     := 0;
 CbK.ItemIndex     := 1;
 CbV.ItemIndex     := 1;
 CbL.ItemIndex     := 1;
 CbP.ItemIndex     := 0;
 LastToolBar;
 LastInnstillinger;

  FrmFakuva.Caption := 'Fakuva ' + IntToStr(Ver.FileVerMajor) + '.' +
    IntToStr(Ver.FileVerMinor) + IntToStr(Ver.FileVerBuild) + ' - ' +
    DM.FirmaDBFirma.Value;
end;

procedure TFrmFakuva.Standard1Click(Sender: TObject);
begin
 If Standard1.Checked = True then
 begin
  TbStandard.Visible := False;
  Standard1.Checked  := False;
  Standard2.Checked  := False;
 end
 else
 begin
  TbStandard.Visible := True;
  Standard1.Checked  := True;
  Standard2.Checked  := True;
 end;
end;

procedure TFrmFakuva.Tools1Click(Sender: TObject);
begin
 If Tools1.Checked = True then
 begin
  TbTools.Visible := False;
  Tools1.Checked  := False;
  Tools2.Checked  := False;
 end
 else
 begin
  TbTools.Visible := True;
  Tools1.Checked  := True;
  Tools2.Checked  := True;
 end;
end;

procedure TFrmFakuva.LblLeverandorEpostClick(Sender: TObject);
begin
  SendMail(DM.LeverandorDBEpost.Value);
end;

procedure TFrmFakuva.LblLeverandorUrlClick(Sender: TObject);
begin
  StartWeb(DM.LeverandorDBUrl.Value);
end;

procedure TFrmFakuva.Logg1Click(Sender: TObject);
var Reg: TRegistry;
    S: String;
begin
 Reg := TRegistry.Create;
 try
  Reg.OpenKey('\Software\Bls\Fakuva5\' + DM.FirmaDBFirma.Value, True);
  If (Reg.ValueExists('Loggfil') = True)
      then S := 'Notepad.exe ' + Reg.ReadString('Loggfil');
  finally
   Reg.Free;
  end;

 WinExec(PChar(S), SW_SHOWDEFAULT);
end;

procedure TFrmFakuva.SokEditVKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (SokEditV.Text <> '') then
 try
   DM.VareDB.Locate(CbV.Text, SokEditV.Text, [loCaseInsensitive, loPartialKey]);
 except
  //Ikke gjør noe som helst;
 end;
end;

procedure TFrmFakuva.Fakturanr1Click(Sender: TObject);
begin
 DM.SorterFakturaer('Fakturanr');
end;

procedure TFrmFakuva.Fakturadato1Click(Sender: TObject);
begin
 DM.SorterFakturaer('Fakturadato');
end;

procedure TFrmFakuva.Kunde1Click(Sender: TObject);
begin
 DM.SorterFakturaer('IdKunde');
end;

procedure TFrmFakuva.N6Click(Sender: TObject);
begin
 DM.SettFakturaBetalt('Ja');
end;

procedure TFrmFakuva.N7Click(Sender: TObject);
begin
 DM.SettFakturaBetalt('-');
end;

procedure TFrmFakuva.Kontant1Click(Sender: TObject);
begin
 DM.SettFakturaBetalt('Kontant');
end;

procedure TFrmFakuva.Kreditt1Click(Sender: TObject);
begin
  DM.SettFakturaBetalt('Kredit');
end;

procedure TFrmFakuva.Etterkundenr1Click(Sender: TObject);
begin
 DM.SorterKunder('Kundenr');
end;

procedure TFrmFakuva.Etterkundenavn1Click(Sender: TObject);
begin
 DM.SorterKunder('Kunde');
end;

procedure TFrmFakuva.Ettervarenr1Click(Sender: TObject);
begin
 DM.SorterVarer('Varenr');
end;

procedure TFrmFakuva.Ettervarenavn1Click(Sender: TObject);
begin
 DM.SorterVarer('Vare');
end;

procedure TFrmFakuva.Etterkategori1Click(Sender: TObject);
begin
 DM.SorterVarer('IdKategori');
end;

procedure TFrmFakuva.Etterleverandr1Click(Sender: TObject);
begin
 DM.SorterVarer('IdLeverandor');
end;

procedure TFrmFakuva.Ettervarenr2Click(Sender: TObject);
begin
 DM.SorterLeverandorer('Leverandornr');
end;

procedure TFrmFakuva.Ettervarenavn2Click(Sender: TObject);
begin
 DM.SorterLeverandorer('Leverandor');
end;

procedure TFrmFakuva.VareImport1Click(Sender: TObject);
begin
 If MessageBox(Handle,'Programmet må avsluttes for å kunne importere til varedatabasen - Fortsett?', 'Sikkerhetskopiering', MB_YESNO + MB_ICONQUESTION) = IdYES then
  begin
  Winexec('VareImport.exe Fkv5', SW_SHOWDEFAULT);
  DM.SkrivTilLogg('Program for Vareimportering startet');
  Close;
  end;
end;

procedure TFrmFakuva.Fil1Click(Sender: TObject);
begin
 If NOT FileExists('VareImport.exe') then VareImport1.Visible     := False;
 If NOT FileExists('Export.exe') then Export1.Visible             := False;
end;

procedure TFrmFakuva.Sendeposttilkunde1Click(Sender: TObject);
begin
  DM.KundeDB.Locate('IdKunde', DM.FakturaDBIdKunde.Value, []);
  SendMail(DM.KundeDBEpost.Value);
end;

procedure TFrmFakuva.Prisjusteringer1Click(Sender: TObject);
begin
   Application.CreateForm(TFrmPrisJustering, FrmPrisJustering);
   FrmPrisJustering.ShowModal;
   DM.VareDB.Refresh;
end;

procedure TFrmFakuva.Varedatabase1Click(Sender: TObject);
var Save: TSaveDialog;
    F: TStringList;
    B: TBookmark;
begin
 Save := TSaveDialog.Create(Nil);
 try
  Save.DefaultExt := '*.sdv';
  Save.Filter     := 'Semikolondelt (*.sdv)|*.sdv';
  Save.Options    := [ofHideReadOnly,ofNoChangeDir,ofPathMustExist,ofFileMustExist,ofEnableSizing];

  If Save.Execute then
  begin

   F := TStringList.Create;
   try
    With DM do
      begin
      B := VareDB.GetBookmark;

      VareDB.DisableControls;
      VareDB.First;

      Application.CreateForm(TFrmProgress, FrmProgress);
      FrmFakuva.Update;
      FrmProgress.VisForm('Exporterer varedatabasen ...');
      FrmProgress.Pb.Max := VareDB.RecordCount;

      F.Add('Varenr;Vare;Kategori;Innpris;Pris;Leverandør');

      While NOT VareDB.EOF do
      begin
      F.Add(VareDBVarenr.Value + ';' + VareDBVare.Value + ';' + VareDBKategori.Value + ';' + FloatToStr(VareDBInnPris.Value) + ';' + FloatToStr(VareDBPris.Value) + ';' + VareDBLeverandor.Value + ';');
      FrmProgress.OppdaterStatus;
      VareDB.Next;
      end;

      VareDB.EnableControls;
      VareDB.GotoBookmark(B);
      VareDB.FreeBookmark(B);
      end;

    F.SaveToFile(Save.FileName);
    DM.SkrivTilLogg('Varedatabasen eksportert til semikolon-delt fil');

   finally
    F.Free;
   end;
  end;
 finally
  Save.Free;
 end;

end;

procedure TFrmFakuva.Kundedatabase1Click(Sender: TObject);
var Save: TSaveDialog;
    F: TStringList;
    B: TBookmark;
begin
 Save := TSaveDialog.Create(Nil);
 try
  Save.DefaultExt := '*.sdv';
  Save.Filter     := 'Semikolondelt (*.sdv)|*.sdv';
  Save.Options    := [ofHideReadOnly,ofNoChangeDir,ofPathMustExist,ofFileMustExist,ofEnableSizing];

  If Save.Execute then
  begin

   DM.KundeDB.DisableControls;
   B := DM.KundeDB.GetBookmark;

   F := TStringList.Create;
   Try
    With DM do
      begin
      KundeDB.First;

      Application.CreateForm(TFrmProgress, FrmProgress);
      FrmFakuva.Update;
      FrmProgress.VisForm('Exporterer kundedatabasen ...');
      FrmProgress.Pb.Max := KundeDB.RecordCount;

      F.Add('Kundenr;Kunde;Adresse;Postnr;Poststed;Kontaktperson;Telefon;Telefax;Mobil;Epost;Url;Orgnr');

      While NOT KundeDB.EOF do
      begin
       F.Add(FloatToStr(KundeDBKundenr.Value) + ';' + KundeDBKunde.Value + ';' + KundeDBAdresse.Value + ';' + KundeDBPostnr.Value + ';' + KundeDBPoststed.Value + ';' + KundeDBKontaktperson.Value + ';' + KundeDBTelefon.Value + ';' + KundeDBTelefax.Value + ';' + KundeDBMobil.Value + ';' + KundeDBEpost.Value + ';' + KundeDBUrl.Value + ';' + KundeDBOrgnr.Value + ';');
       FrmProgress.OppdaterStatus;
       KundeDB.Next;
      end;


      KundeDB.GotoBookmark(B);

      end;

    F.SaveToFile(Save.FileName);
    DM.SkrivTilLogg('Kundedatabasen eksportert til semikolon-delt fil');

   finally
    F.Free;
    DM.KundeDB.EnableControls;
    DM.KundeDB.FreeBookmark(B);
   end;
  end;
 finally
  Save.Free;
 end;
end;

procedure TFrmFakuva.Export1Click(Sender: TObject);
begin
  Winexec('Export fkv4', SW_SHOWDEFAULT);
end;

procedure TFrmFakuva.Fratidligereversjoner1Click(Sender: TObject);
begin
 Application.CreateForm(TFrmImport, FrmImport);
 FrmImport.ShowModal;
end;

procedure TFrmFakuva.Sendeposttilkunde2Click(Sender: TObject);
begin
  SendMail(DM.KundeDBEpost.Value);
end;

procedure TFrmFakuva.Beskhjemmeside1Click(Sender: TObject);
begin
  StartWeb(DM.KundeDBUrl.Value);
end;

procedure TFrmFakuva.Sendeposttilkunde3Click(Sender: TObject);
begin
  SendMail(DM.LeverandorDBEpost.Value);
end;

procedure TFrmFakuva.Beskhjemmeside2Click(Sender: TObject);
begin
  StartWeb(DM.LeverandorDBUrl.Value);
end;

procedure TFrmFakuva.Informasjon1Click(Sender: TObject);
begin
 Application.CreateForm(TFrmInformasjon, FrmInformasjon);
 FrmInformasjon.ShowModal;
 LastInnstillinger;
end;

procedure TFrmFakuva.Feilretting1Click(Sender: TObject);
begin
 If MessageBox(Handle,'Fakuva 5 må avsluttes før feilrettingen kan starte! Fortsett?', 'Feilretting', MB_YESNO + MB_ICONQUESTION) = IdYES then
   begin
     Winexec('FeilRetting', SW_SHOWDEFAULT);
     DM.SkrivTilLogg('Programmet for feilretting startet!');
     Close;
   end;

end;

procedure TFrmFakuva.Utskrevet1Click(Sender: TObject);
begin
  Dm.SlettRenter;
  DM.SettStatus('Utskrevet');
end;

procedure TFrmFakuva.Purring1Click(Sender: TObject);
begin
 DM.SettStatus('Purring');
end;

procedure TFrmFakuva.Inkasso1Click(Sender: TObject);
begin
 DM.SettStatus('Inkasso');
end;

procedure TFrmFakuva.FakturaPopupPopup(Sender: TObject);
begin
 MenuSporing.Enabled := (Dm.FakturaDBPakkenr.Value <> '');

 If Side.ActivePage = Purringer then
  begin
   Endre2.Visible := False;
   Slett2.Visible := False;
  end
 else
  begin
   Endre2.Visible := True;
   Slett2.Visible := True;
  end

end;

procedure TFrmFakuva.Skf1Click(Sender: TObject);
begin
 If NOT PanelFaktura.Visible then
  SokFelt1Click(Sender);
 SokEditF.SetFocus;
end;

procedure TFrmFakuva.Skp1Click(Sender: TObject);
begin
 If NOT PanelPurring.Visible then
  SokFelt1Click(Sender);
 SokEditP.SetFocus;
end;

procedure TFrmFakuva.Verkty1Click(Sender: TObject);
begin
 If NOT FileExists('FeilRetting.exe') then Feilretting1.Visible := False;
 If NOT Dm.Lagerstyring then Lagerstyring1.Visible := False;
 If NOT FileExists('Oppkrav.exe') then Oppkrav1.Visible := False;
end;

procedure TFrmFakuva.Oppkrav1Click(Sender: TObject);
begin
     Winexec('Oppkrav.exe Fkv5', SW_SHOWDEFAULT);
     DM.SkrivTilLogg('Programmet for Oppkravslapper startet!');
end;

procedure TFrmFakuva.EpostlisteKunder1Click(Sender: TObject);
var S: TStringList;
    St: String;
    B: TBookmark;
begin
 DM.KundeDB.DisableControls;
 B := DM.KundeDB.GetBookmark;
 S := TStringList.Create;
 Try

  DM.KundeDB.First;

  While NOT DM.KundeDB.Eof Do
   begin
    St := '';
    If NOT DM.KundeDBEpost.IsNull then
     St := DM.KundeDBEpost.Value;

    DM.KundeDB.Next;

    If (NOT DM.KundeDB.Eof) and (St <> '') then
     St := St + ',';

    If St <> '' then
    S.Add(St);
   end;

  DM.KundeDB.GotoBookmark(B);
  S.SaveToFile('EpostKunder.txt');
  Winexec('Notepad EpostKunder.txt', SW_SHOWNORMAL);
  DM.SkrivTilLogg('Generert E-post liste for kunder');

 Finally
  S.Free;
  DM.KundeDB.EnableControls;
  DM.KundeDB.FreeBookmark(B);
 End;
end;

procedure TFrmFakuva.EpostlisteLeverandrer1Click(Sender: TObject);
var S: TStringList;
    St: String;
    B: TBookmark;
begin
 DM.LeverandorDB.DisableControls;
 B := DM.LeverandorDB.GetBookmark;
 S := TStringList.Create;

 Try
  DM.LeverandorDB.First;

  While NOT DM.LeverandorDB.Eof Do
   begin
    St := '';
    If NOT DM.LeverandorDBEpost.IsNull then
     St := DM.LeverandorDBEpost.Value;

    DM.LeverandorDB.Next;

    If (NOT DM.LeverandorDB.Eof) and (St <> '') then
     St := St + ',';

    If St <> '' then
    S.Add(St);
   end;

  DM.LeverandorDB.GotoBookmark(B);

  S.SaveToFile('EpostLeverandor.txt');
  Winexec('Notepad EpostLeverandor.txt', SW_SHOWNORMAL);
  DM.SkrivTilLogg('Generert E-post liste for leverandører');

 Finally
  S.Free;
  DM.LeverandorDB.EnableControls;
  DM.LeverandorDB.FreeBookmark(B);
 End;
end;

procedure TFrmFakuva.Leverandrertilsemikolondeltfil1Click(Sender: TObject);
var Save: TSaveDialog;
    F: TStringList;
    B: TBookmark;
begin
 Save := TSaveDialog.Create(Nil);
 try
  Save.DefaultExt := '*.sdv';
  Save.Filter     := 'Semikolondelt (*.sdv)|*.sdv';
  Save.Options    := [ofHideReadOnly,ofNoChangeDir,ofPathMustExist,ofFileMustExist,ofEnableSizing];

  If Save.Execute then
  begin

   DM.LeverandorDB.DisableControls;
   B := DM.LeverandorDB.GetBookmark;
   F := TStringList.Create;
   Try
    With DM do
      begin
      LeverandorDB.First;

      Application.CreateForm(TFrmProgress, FrmProgress);
      FrmFakuva.Update;
      FrmProgress.VisForm('Exporterer Leverandørdatabasen ...');
      FrmProgress.Pb.Max := LeverandorDB.RecordCount;

      F.Add('Leverandørnr;Leverandør;Adresse;Postnr;Poststed;Kontaktperson;Telefon;Telefax;Mobil;Epost;Url;Orgnr');

      While NOT LeverandorDB.EOF do
      begin
       F.Add(FloatToStr(LeverandorDBLeverandornr.Value) + ';' + LeverandorDBLeverandor.Value + ';' + LeverandorDBAdresse.Value + ';' + LeverandorDBPostnr.Value + ';' + LeverandorDBPoststed.Value + ';' + LeverandorDBKontaktperson.Value + ';' + LeverandorDBTelefon.Value + ';' + LeverandorDBTelefax.Value + ';' + LeverandorDBMobil.Value + ';' + LeverandorDBEpost.Value + ';' + LeverandorDBUrl.Value + ';' + LeverandorDBOrgnr.Value + ';');
       FrmProgress.OppdaterStatus;
       LeverandorDB.Next;
      end;

      LeverandorDB.GotoBookmark(B);
      end;

    F.SaveToFile(Save.FileName);
    DM.SkrivTilLogg('Leverandørdatabasen eksportert til semikolon-delt fil');

   finally
    F.Free;
    DM.LeverandorDB.FreeBookmark(B);
    DM.LeverandorDB.EnableControls;
   end;
  end;
 finally
  Save.Free;
 end;

end;

procedure TFrmFakuva.Leverandrerfrasemikolondeltfil1Click(Sender: TObject);
var Open: TOpenDialog;
    List, S: TStringList;
    I : Integer;
begin
 Open := TOpenDialog.Create(Nil);

  Open.Title      := 'Åpne Leverandørfil';
  Open.DefaultExt := '*.sdv';
  Open.Filter     := 'Semikolondelt (*.sdv)|*.sdv';
  Open.Options    := [ofHideReadOnly,ofNoChangeDir,ofPathMustExist,ofFileMustExist,ofEnableSizing];

 If Open.Execute then

 Try
   List := TStringList.Create;
   S    := TStringList.Create;

   Try
     List.LoadFromFile(Open.FileName);

     Application.CreateForm(TFrmProgress, FrmProgress);
     FrmFakuva.Update;
     FrmProgress.VisForm('Importere leverandører ...');
     FrmProgress.Pb.Max := List.Count - 1;

     For I := 1 To List.Count - 1 Do
      begin
        S.Clear;
        S := Splitt(List[I]);

        If NOT DM.LeverandorDB.Locate('Leverandornr', S[0], []) then
         begin
          DM.LeverandorDB.Append;
          DM.LeverandorDBLeverandornr.Value     := StrToFloat(S[0]);
          DM.LeverandorDBLeverandor.Value       := S[1];
          DM.LeverandorDBAdresse.Value          := S[2];
          DM.LeverandorDBPostnr.Value           := S[3];
          DM.LeverandorDBPoststed.Value         := S[4];
          DM.LeverandorDBKontaktperson.Value    := S[5];
          DM.LeverandorDBTelefon.Value          := S[6];
          DM.LeverandorDBTelefax.Value          := S[7];
          DM.LeverandorDBMobil.Value            := S[8];
          DM.LeverandorDBEpost.Value            := S[9];
          DM.LeverandorDBUrl.Value              := S[10];
          DM.LeverandorDBOrgnr.Value            := S[11];
          DM.LeverandorDB.Post;
         end;

        FrmProgress.OppdaterStatus;
      end;

   Finally
     List.Free;
     S.Free;
   End;

 Finally
  Open.Free;
 End;
end;


procedure TFrmFakuva.Kunderfrasemikolondeltfil1Click(Sender: TObject);
var Open: TOpenDialog;
    List, S: TStringList;
    I : Integer;
begin
 Open := TOpenDialog.Create(Nil);

  Open.Title      := 'Åpne Kundefil';
  Open.DefaultExt := '*.sdv';
  Open.Filter     := 'Semikolondelt (*.sdv)|*.sdv';
  Open.Options    := [ofHideReadOnly,ofNoChangeDir,ofPathMustExist,ofFileMustExist,ofEnableSizing];

 If Open.Execute then

 Try
   List := TStringList.Create;
   S    := TStringList.Create;
   Try
     List.LoadFromFile(Open.FileName);

     Application.CreateForm(TFrmProgress, FrmProgress);
     FrmFakuva.Update;
     FrmProgress.VisForm('Importere kunder ...');
     FrmProgress.Pb.Max := List.Count - 1;

     For I := 1 To List.Count - 1 Do
      begin
        S.Clear;
        S := Splitt(List[I]);

        //Sjekker om kundenr eksistere og om kundenavnet er det samme.
        If (DM.KundeDB.Locate('Kundenr', S[0], [])) and
           (DM.KundeDBKunde.Value <> S[1]) then
            S[0] := '99999';

        If (NOT DM.KundeDB.Locate('Kundenr', S[0], [])) Or
           (S[0] = '99999') then
        begin
          DM.KundeDB.Append;
          DM.KundeDBKundenr.Value          := StrToFloat(S[0]);
          DM.KundeDBKunde.Value            := S[1];
          DM.KundeDBAdresse.Value          := S[2];
          DM.KundeDBPostnr.Value           := S[3];
          DM.KundeDBPoststed.Value         := S[4];
          DM.KundeDBKontaktperson.Value    := S[5];
          DM.KundeDBTelefon.Value          := S[6];
          DM.KundeDBTelefax.Value          := S[7];
          DM.KundeDBMobil.Value            := S[8];
          DM.KundeDBEpost.Value            := S[9];
          DM.KundeDBUrl.Value              := S[10];
          DM.KundeDBOrgnr.Value            := S[11];
          DM.KundeDB.Post;
         end;
        FrmProgress.OppdaterStatus;
      end;

   Finally
     List.Free;
     S.Free;
   End;

 Finally
  Open.Free;
 End;

end;


procedure TFrmFakuva.Varerfrasemikolondeltfil1Click(Sender: TObject);
var Open: TOpenDialog;
    List, S: TStringList;
    I : Integer;
begin
 Open := TOpenDialog.Create(Nil);

  Open.Title      := 'Åpne Varefil';
  Open.DefaultExt := '*.sdv';
  Open.Filter     := 'Semikolondelt (*.sdv)|*.sdv';
  Open.Options    := [ofHideReadOnly,ofNoChangeDir,ofPathMustExist,ofFileMustExist,ofEnableSizing];

 If Open.Execute then

 Try
   List := TStringList.Create;
   S    := TStringList.Create;
   Try
     List.LoadFromFile(Open.FileName);
     
     Application.CreateForm(TFrmProgress, FrmProgress);
     Update;
     FrmProgress.VisForm('Importere varer ...');
     FrmProgress.Pb.Max := List.Count - 1;

     For I := 1 To List.Count - 1 Do
      begin
        S.Clear;
        S := Splitt(List[I]);

        If NOT DM.VareDB.Locate('Varenr', S[0], [loCaseInsensitive]) then
         begin
          DM.VareDB.Append;
          DM.VareDBVarenr.Value          := S[0];
          DM.VareDBVare.Value            := S[1];
          If NOT DM.KategoriDB.Locate('Kategori', S[2], [loCaseInsensitive]) then
           begin
            DM.KategoriDB.Append;
            DM.KategoriDBKategori.Value := S[2];
            DM.KategoriDB.Post;
           end;
          DM.VareDBIdKategori.Value      := DM.KategoriDBIdKategori.Value;
          DM.VareDBInnpris.Value         := StrToFloat(S[3]);
          DM.VareDBPris.Value            := StrToFloat(S[4]);
          If DM.LeverandorDB.Locate('Leverandor', S[5], [loCaseInsensitive]) then
          DM.VareDBIdLeverandor.Value    := DM.LeverandorDBIdLeverandor.Value;
          DM.VareDB.Post;
         end;
        FrmProgress.OppdaterStatus;
      end;

   Finally
     List.Free;
     S.Free;
   End;

 Finally
  Open.Free;
 End;

end;


procedure TFrmFakuva.GridFakturaKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 then TbEndreClick(Sender);
end;

procedure TFrmFakuva.Sk1Click(Sender: TObject);
begin
 Application.CreateForm(TFrmAvansertsok, FrmAvansertsok);
 FrmAvansertsok.StartVindu(Side.ActivePage.PageIndex);
end;

procedure TFrmFakuva.VisSokeFelt(Vis: Boolean);
begin
   PanelFaktura.Visible     := Vis;
   PanelKunder.Visible      := Vis;
   PanelVarer.Visible       := Vis;
   PanelLeverandor.Visible  := Vis;
   PanelPurring.Visible     := Vis;
   SokFelt1.Checked         := Vis;
   SokFelt2.Checked         := Vis;
end;

procedure TFrmFakuva.SokFelt1Click(Sender: TObject);
begin
  if SokFelt1.Checked = True then
   VisSokeFelt(False)
  else
   VisSokeFelt(True);

  SettSokeFelt(PanelFaktura.Visible);
end;

procedure TFrmFakuva.Postadresserfrasemikolondeltfil1Click(Sender: TObject);
var Open: TOpenDialog;
    List, S: TStringList;
    I : Integer;
begin
 Open := TOpenDialog.Create(Nil);

  Open.Title      := 'Åpne Postadressefil';
  Open.DefaultExt := '*.txt';
  Open.Filter     := 'Tekstfil (*.txt)|*.txt|Semikolondelt (*.sdv)|*.sdv';
  Open.Options    := [ofHideReadOnly,ofNoChangeDir,ofPathMustExist,ofFileMustExist,ofEnableSizing];

 If Open.Execute then

 Try
   List := TStringList.Create;
   S    := TStringList.Create;

   Try
     List.LoadFromFile(Open.FileName);

     Application.CreateForm(TFrmProgress, FrmProgress);
     Update;
     FrmProgress.VisForm('Importere postadresser ...');
     FrmProgress.Pb.Max := List.Count - 1;

     For I := 1 To List.Count - 1 Do
      begin
        S.Clear;
        S := Splitt(List[I]);

        If Dm.PostDB.FindKey([S[0]]) then
         Dm.PostDB.Edit
        else
         Dm.PostDB.Append;

        If NOT (Dm.PostDBPoststed.Value = S[1]) then
         begin
          Dm.PostDBPostnr.Value := S[0];
          Dm.PostDBPoststed.Value := S[1];
          Dm.PostDB.Post;
         end;

        FrmProgress.OppdaterStatus;
      end;

   Finally
     List.Free;
     S.Free;
   End;

 Finally
  Open.Free;
 End;
end;


procedure TFrmFakuva.Reskontro1Click(Sender: TObject);
begin
 Application.CreateForm(TFrmReskontro, FrmReskontro);
 FrmReskontro.Show;
end;

procedure TFrmFakuva.N31Click(Sender: TObject);
begin
  Dm.SlettRenter;
  Dm.SettStatus('');
end;

procedure TFrmFakuva.SettFakturaSperre;
var Vis: Boolean;
begin
 Vis := (Dm.FakturaDBStatus.Value = '');
 If HentFakturaSperre then
  begin
   TbEndre.Enabled := Vis;
   TbSlett.Enabled := Vis;
   Endre1.Enabled := Vis;
   Slett1.Enabled := Vis;
   Endre2.Enabled := Vis;
   Slett2.Enabled := Vis;
  end;
end;

procedure TFrmFakuva.Skrivut2Click(Sender: TObject);
var P: TPrintDialog;
    I: Integer;
begin
 P := TPrintDialog.Create(Nil);
  try
    If P.Execute then
    begin

        If DM.UtskriftKopi then
         begin
          I := P.Copies;
          While I > 0 do
            begin
             PrintOrdrebekreftelse(Printer.PrinterIndex);
             I := I - 1;
            end;
         end
       else
        PrintOrdrebekreftelse(Printer.PrinterIndex, P.Copies);
   end;
 finally
  P.Free;
 end;
end;

procedure TFrmFakuva.Forhndsvisning1Click(Sender: TObject);
begin
  Application.CreateForm(TRptOrdre, RptOrdre);
  RptOrdre.PreviewModal;
  RptOrdre.Free;
end;

procedure TFrmFakuva.Purrerutiner1Click(Sender: TObject);
begin
 Application.CreateForm(TFrmPurreListe, FrmPurreListe);
 FrmPurreListe.ShowModal;
end;

procedure TFrmFakuva.LesMvaSatser;
var Ini: TIniFile;
    Mva: Double;
    I: Integer;
begin
  I := 0;
  Mva := 0;

  Ini := TIniFile.Create(Dir + 'Fakuva.ini');
  try
    while Mva <> -1 do begin
      Mva := Ini.ReadFloat('Mva', 'Sats' + IntToStr(I), -1);
      if Mva <> -1 then 
        Dm.MvaListe.Add(Mva, I = 0);
      Inc(I);
    end;
  finally
    Ini.Free;
  end;
end;

procedure TFrmFakuva.FormCreate(Sender: TObject);
begin
  Application.CreateForm(TDM, DM);

  LesMvaSatser; //Leser inn Mva Satsene i liste til Datamodulen.
  Side.ActivePageIndex := 0;
  Ver.FileName := Application.ExeName;

  muApo.Visible := FileExists(Dir + 'Apo.exe');
end;

procedure TFrmFakuva.DsFakturaDataChange(Sender: TObject; Field: TField);
begin
  SettFakturaSperre;
end;

procedure TFrmFakuva.MenuSporingClick(Sender: TObject);
begin
  FrmPakkeSporing := TFrmPakkeSporing.Create(Application);
  FrmPakkeSporing.Pakkenr := Dm.FakturaDBPakkeNr.Value;
  FrmPakkeSporing.ShowModal;
  FrmPakkeSporing.Release;
end;

procedure TFrmFakuva.Listeoverpakker1Click(Sender: TObject);
begin
  FrmPakkeListe := TFrmPakkeListe.Create(Application);
  FrmPakkeListe.ShowModal;
  FrmPakkeListe.Release;
end;

procedure TFrmFakuva.AcRefreshExecute(Sender: TObject);
begin
  Dm.RefreshDataSet;
end;

procedure TFrmFakuva.AcSupportMailExecute(Sender: TObject);
var S: TStringList;
    Body: String;
begin
  S := TStringList.Create;
  try
    S.Add('Sys Version');
    blsDB.GetSysVersion(S);
    S.Add('');
    S.Add('');

    S.Add('Client Info');
    blsDB.GetClientInfo(S);
    S.Add('');
    S.Add('');

    S.Add('Sys Config');
    blsDB.GetSysConfig(S);
    S.Add('');
    S.Add('');

    S.Add('Sys Info');
    blsDB.GetSysInfo(S);
    S.Add('');
    S.Add('');
    Body := 'Autogenerert Supportmail' + #13#10 + Application.ExeName + ' ' + Ver.FileVersion;
    S.Add(Body);

    S.SaveToFile('.\Syslog.txt');
    JclMapi.JclSimpleSendMail('support@fakuva.no', 'BLS Support', 'Fakuva5 Supportmail', Body, '.\Syslog.txt');

  finally
    S.Free;
  end;

  DeleteFile('.\Syslog.txt');
end;

procedure TFrmFakuva.AcRapporterExecute(Sender: TObject);
begin
  FrmRapporter := TFrmRapporter.Create(Application);
  FrmRapporter.ShowModal;
  FrmRapporter.Release;
end;

procedure TFrmFakuva.AcRegistreringExecute(Sender: TObject);
begin
  FrmRegistrering := TFrmRegistrering.Create(Application);
  FrmRegistrering.ShowModal;
  FrmRegistrering.Release;
end;

procedure TFrmFakuva.AcDBCheckExecute(Sender: TObject);
begin
  FrmDBCheck := TFrmDBCheck.Create(Application);
  FrmDBCheck.ShowModal;
  FrmDBCheck.Release;
end;

procedure TFrmFakuva.AcRedigerFirmaExecute(Sender: TObject);
begin
  if not Dm.SjekkSerienummer then begin
    MessageBox(Handle, 'Fakuva 5 må registreres før firmaopplysninger kan redigeres!', 'Lisens', MB_ICONINFORMATION + MB_OK);
    Exit;
  end;
  
  FrmFirma := TFrmFirma.Create(Application);
  FrmFirma.ShowModal;
  FrmFirma.Release;
end;

procedure TFrmFakuva.AcLogoutExecute(Sender: TObject);
begin
  PanelArk.Visible := False;
  Dm.CloseAllDataSet;
end;

procedure TFrmFakuva.N40Click(Sender: TObject);
begin
  FrmFakturaInfo := TFrmFakturaInfo.Create(Application);
  FrmFakturaInfo.ShowModal;
  FrmFakturaInfo.Release;
end;

procedure TFrmFakuva.muApoClick(Sender: TObject);
begin
  if MessageBox(Handle, 'Ønsker du å avslutte for å sjekke etter nye oppdateringer?', 'Automatisk Oppdatering',
    MB_YESNO + MB_ICONQUESTION) = idYes then begin
    ShellExecute(Handle, 'Open', PAnsiChar(Dir + 'Apo.exe'), '', '', SW_SHOWNORMAL);
    Close;
  end;
end;

end.
