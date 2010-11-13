(*

- Bruker Sorteringsfunksjonene i JvDBGrid. For å unngå feil ved OnTitleButtonClik
  er det opprettet dummy felter X for tomme kolonner som brukes for tegning av ikoner.

*)

unit rsMeny;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, ActnList, TBXStatusBars, Tbx, StBase, StVInfo,
  TB2Dock, TB2Toolbar, TB2Item, PngImage, StdCtrls, blsAppPosition,
  XPMan, ImgList, Menus, AppEvnts, TBXDkPanels, DBCtrls, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, Splites, blsBorderPanel, DB, DBClient, Buttons;

type
  TfrmCRM = class(TForm)
    sbMain: TTBXStatusBar;
    PnlMeny: TPanel;
    pnlBack: TPanel;
    Ver: TStVersionInfo;
    pnlMain: TPanel;
    Pc: TPageControl;
    tsOrdre: TTabSheet;
    tsFaktura: TTabSheet;
    tsKunde: TTabSheet;
    tsProdukt: TTabSheet;
    tsLeverandor: TTabSheet;
    tsKontoplan: TTabSheet;
    tsPurring: TTabSheet;
    tsBilag: TTabSheet;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXDock2: TTBXDock;
    TBXToolbar2: TTBXToolbar;
    TBXSubmenuItem1: TTBXSubmenuItem;
    TBXSubmenuItem2: TTBXSubmenuItem;
    TBXSubmenuItem3: TTBXSubmenuItem;
    TBXSubmenuItem4: TTBXSubmenuItem;
    TBXSubmenuItem5: TTBXSubmenuItem;
    Label5: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Image1: TImage;
    XPManifest: TXPManifest;
    blsAppPosition: TblsAppPosition;
    ActionList: TActionList;
    ImageList16: TImageList;
    ImageList24: TImageList;
    AppEvent: TApplicationEvents;
    acLogin: TAction;
    acLogout: TAction;
    TBXToolbar3: TTBXToolbar;
    TBXToolbar4: TTBXToolbar;
    blsBorderPanel2: TblsBorderPanel;
    dbgKunder: TJvDBGrid;
    Panel1: TPanel;
    Splites1: TSplites;
    TBXLabel1: TTBXLabel;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXItem4: TTBXItem;
    acSalg: TAction;
    acKontakter: TAction;
    acProdukter: TAction;
    acRegnskap: TAction;
    acCalc: TAction;
    TBXItem5: TTBXItem;
    TBXItem6: TTBXItem;
    TBXItem7: TTBXItem;
    TBXItem8: TTBXItem;
    TBXItem9: TTBXItem;
    acNy: TAction;
    TBXItem10: TTBXItem;
    acPostImport: TAction;
    TBXItem11: TTBXItem;
    TBXItem12: TTBXItem;
    acBackup: TAction;
    TBXItem13: TTBXItem;
    TBXItem14: TTBXItem;
    TBXItem15: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem16: TTBXItem;
    acAdmin: TAction;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXItem17: TTBXItem;
    TBXItem18: TTBXItem;
    TBXSubmenuItem6: TTBXSubmenuItem;
    TBXSubmenuItem7: TTBXSubmenuItem;
    TBXSubmenuItem8: TTBXSubmenuItem;
    acPostnrSok: TAction;
    TBXItem19: TTBXItem;
    acPureHelp: TAction;
    TBXItem20: TTBXItem;
    TBXSubmenuItem9: TTBXSubmenuItem;
    blsBorderPanel1: TblsBorderPanel;
    Panel2: TPanel;
    dbgLev: TJvDBGrid;
    Splites2: TSplites;
    TBXLabel2: TTBXLabel;
    acBrReg: TAction;
    TBXItem21: TTBXItem;
    acRestore: TAction;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXItem22: TTBXItem;
    acEndre: TAction;
    TBXItem23: TTBXItem;
    TBXItem24: TTBXItem;
    acRapport: TAction;
    TBXItem25: TTBXItem;
    acSlett: TAction;
    TBXItem26: TTBXItem;
    TBXItem27: TTBXItem;
    dbtEpost: TDBText;
    dbtUrl: TDBText;
    Label1: TLabel;
    Label6: TLabel;
    blsBorderPanel3: TblsBorderPanel;
    Panel3: TPanel;
    Splites3: TSplites;
    acOppdater: TAction;
    TBXItem28: TTBXItem;
    TBXItem29: TTBXItem;
    acImport: TAction;
    acKontoListe: TAction;
    TBXItem31: TTBXItem;
    blsBorderPanel4: TblsBorderPanel;
    Panel4: TPanel;
    TBXLabel4: TTBXLabel;
    Splites4: TSplites;
    dbgKonto: TJvDBGrid;
    acLeggTilKonto: TAction;
    TBXSeparatorItem4: TTBXSeparatorItem;
    TBXItem32: TTBXItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    TBXSeparatorItem6: TTBXSeparatorItem;
    TBXSeparatorItem7: TTBXSeparatorItem;
    TBXSeparatorItem8: TTBXSeparatorItem;
    TBXSubmenuItem10: TTBXSubmenuItem;
    TBXItem33: TTBXItem;
    TBXSeparatorItem9: TTBXSeparatorItem;
    acKategori: TAction;
    TBXItem30: TTBXItem;
    pnlKat: TblsBorderPanel;
    tvKat: TTreeView;
    Panel6: TPanel;
    TBXLabel5: TTBXLabel;
    Panel7: TPanel;
    TBXLabel3: TTBXLabel;
    Splites5: TSplites;
    acPrint: TAction;
    TBXItem34: TTBXItem;
    TBXSeparatorItem10: TTBXSeparatorItem;
    acSok: TAction;
    TBXItem35: TTBXItem;
    TBXSeparatorItem11: TTBXSeparatorItem;
    acPreview: TAction;
    TBXItem36: TTBXItem;
    acAvslutt: TAction;
    TBXItem37: TTBXItem;
    TBXSeparatorItem12: TTBXSeparatorItem;
    TBXItem38: TTBXItem;
    TBXItem39: TTBXItem;
    acAbout: TAction;
    TBXItem40: TTBXItem;
    TBXItem41: TTBXItem;
    TBXSeparatorItem13: TTBXSeparatorItem;
    Label7: TLabel;
    DBText1: TDBText;
    Label8: TLabel;
    DBText2: TDBText;
    popProdukt: TTBXPopupMenu;
    TBXItem44: TTBXItem;
    TBXItem45: TTBXItem;
    TBXItem46: TTBXItem;
    TBXItem47: TTBXItem;
    TBXSubmenuItem12: TTBXSubmenuItem;
    acProdEmail: TAction;
    TBXItem48: TTBXItem;
    TBXSeparatorItem14: TTBXSeparatorItem;
    TBXSeparatorItem15: TTBXSeparatorItem;
    blsBorderPanel5: TblsBorderPanel;
    Panel8: TPanel;
    TBXLabel6: TTBXLabel;
    dbgFaktura: TJvDBGrid;
    Splites6: TSplites;
    acProdLagre: TAction;
    acProdEmailKunde: TAction;
    TBXItem49: TTBXItem;
    TBXItem50: TTBXItem;
    popFaktura: TTBXPopupMenu;
    TBXItem51: TTBXItem;
    TBXSeparatorItem16: TTBXSeparatorItem;
    TBXItem52: TTBXItem;
    TBXItem54: TTBXItem;
    TBXSeparatorItem17: TTBXSeparatorItem;
    TBXSubmenuItem13: TTBXSubmenuItem;
    acFakturaEmailKunde: TAction;
    acFakturaLagre: TAction;
    TBXItem53: TTBXItem;
    TBXItem55: TTBXItem;
    Label9: TLabel;
    DBText3: TDBText;
    blsBorderPanel6: TblsBorderPanel;
    Panel5: TPanel;
    Splites7: TSplites;
    dbgPurring: TJvDBGrid;
    acBetaling: TAction;
    TBXItem56: TTBXItem;
    acKlient: TAction;
    TBXSeparatorItem18: TTBXSeparatorItem;
    TBXSubmenuItem11: TTBXSubmenuItem;
    TBXItem42: TTBXItem;
    acNyKlient: TAction;
    TBXItem43: TTBXItem;
    TBXSeparatorItem19: TTBXSeparatorItem;
    TBXItem57: TTBXItem;
    popPurring: TTBXPopupMenu;
    TBXItem58: TTBXItem;
    TBXItem59: TTBXItem;
    TBXItem60: TTBXItem;
    TBXSeparatorItem20: TTBXSeparatorItem;
    TBXItem61: TTBXItem;
    TBXItem62: TTBXItem;
    TBXSeparatorItem21: TTBXSeparatorItem;
    tsAbo: TTabSheet;
    tsLager: TTabSheet;
    acFakturaStatus: TAction;
    TBXItem63: TTBXItem;
    acPrisHistorikk: TAction;
    TBXSeparatorItem22: TTBXSeparatorItem;
    TBXItem64: TTBXItem;
    popKunde: TTBXPopupMenu;
    TBXSubmenuItem14: TTBXSubmenuItem;
    TBXItem65: TTBXItem;
    TBXItem66: TTBXItem;
    TBXItem67: TTBXItem;
    TBXSeparatorItem23: TTBXSeparatorItem;
    TBXItem68: TTBXItem;
    TBXSeparatorItem24: TTBXSeparatorItem;
    TBXSeparatorItem25: TTBXSeparatorItem;
    TBXItem69: TTBXItem;
    TBXSubmenuItem15: TTBXSubmenuItem;
    TBXItem70: TTBXItem;
    TBXItem71: TTBXItem;
    popLeverandor: TTBXPopupMenu;
    TBXItem72: TTBXItem;
    TBXItem73: TTBXItem;
    TBXSeparatorItem26: TTBXSeparatorItem;
    TBXSubmenuItem16: TTBXSubmenuItem;
    TBXItem74: TTBXItem;
    TBXItem75: TTBXItem;
    TBXSeparatorItem27: TTBXSeparatorItem;
    TBXSeparatorItem28: TTBXSeparatorItem;
    TBXSubmenuItem17: TTBXSubmenuItem;
    TBXItem76: TTBXItem;
    TBXItem77: TTBXItem;
    TBXItem78: TTBXItem;
    TBXItem79: TTBXItem;
    TBXItem80: TTBXItem;
    TBXSubmenuItem18: TTBXSubmenuItem;
    acExport: TAction;
    TBXItem81: TTBXItem;
    TBXSeparatorItem29: TTBXSeparatorItem;
    acInnstillinger: TAction;
    TBXSeparatorItem30: TTBXSeparatorItem;
    TBXItem82: TTBXItem;
    blsBorderPanel7: TblsBorderPanel;
    Panel9: TPanel;
    Splites8: TSplites;
    dbgBilag: TJvDBGrid;
    TBXSeparatorItem31: TTBXSeparatorItem;
    TBXItem83: TTBXItem;
    TBXSeparatorItem32: TTBXSeparatorItem;
    TBXSubmenuItem19: TTBXSubmenuItem;
    tbxHelp4: TTBXItem;
    tbxHelp3: TTBXItem;
    tbxHelp2: TTBXItem;
    tbxHelp1: TTBXItem;
    TBXSeparatorItem33: TTBXSeparatorItem;
    acSalgstall: TAction;
    TBXItem84: TTBXItem;
    dbgProd: TJvDBGrid;
    blsBorderPanel8: TblsBorderPanel;
    blsBorderPanel9: TblsBorderPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Splites9: TSplites;
    Splites10: TSplites;
    blsBorderPanel10: TblsBorderPanel;
    Splites11: TSplites;
    Panel12: TPanel;
    TBXLabel7: TTBXLabel;
    Label10: TLabel;
    cbBilagAar: TComboBox;
    acMvaPeriode: TAction;
    acKontoOppslag: TAction;
    Label11: TLabel;
    DBText4: TDBText;
    popBilag: TTBXPopupMenu;
    TBXItem89: TTBXItem;
    TBXSeparatorItem36: TTBXSeparatorItem;
    TBXItem90: TTBXItem;
    acGodkjenn: TAction;
    TBXItem91: TTBXItem;
    TBXItem92: TTBXItem;
    TBXItem93: TTBXItem;
    TBXSeparatorItem38: TTBXSeparatorItem;
    TBXItem94: TTBXItem;
    TBXItem95: TTBXItem;
    TBXSeparatorItem39: TTBXSeparatorItem;
    cbVisApne: TCheckBox;
    Panel13: TPanel;
    cbVisProdAktiv: TCheckBox;
    acGenFakturaBilag: TAction;
    TBXSeparatorItem37: TTBXSeparatorItem;
    TBXItem96: TTBXItem;
    tbxSubRegnskap: TTBXSubmenuItem;
    acGenBetalingBilag: TAction;
    TBXItem97: TTBXItem;
    TBXSeparatorItem40: TTBXSeparatorItem;
    dbgAbo: TJvDBGrid;
    dbgOrdre: TJvDBGrid;
    acGenererBilag: TAction;
    TBXItem98: TTBXItem;
    TBXSeparatorItem41: TTBXSeparatorItem;
    acInnbetalinger: TAction;
    TBXItem99: TTBXItem;
    TBXSeparatorItem42: TTBXSeparatorItem;
    TBXItem100: TTBXItem;
    TBXItem87: TTBXItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    tsPerson: TTabSheet;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    TBXLabel8: TTBXLabel;
    DBText5: TDBText;
    dbtLevEpost: TDBText;
    Label12: TLabel;
    Label13: TLabel;
    TBXLabel9: TTBXLabel;
    acProcessAbo: TAction;
    acLisens: TAction;
    TBXItem85: TTBXItem;
    blsBorderPanel11: TblsBorderPanel;
    Splites12: TSplites;
    Panel14: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Label14: TLabel;
    DBText7: TDBText;
    Label15: TLabel;
    DBText8: TDBText;
    Label16: TLabel;
    DBText9: TDBText;
    TBXLabel10: TTBXLabel;
    acPerioder: TAction;
    TBXItem86: TTBXItem;
    tsKjorebok: TTabSheet;
    popOrdre: TTBXPopupMenu;
    TBXItem88: TTBXItem;
    TBXItem101: TTBXItem;
    TBXItem102: TTBXItem;
    TBXSeparatorItem34: TTBXSeparatorItem;
    TBXItem103: TTBXItem;
    TBXItem105: TTBXItem;
    TBXItem106: TTBXItem;
    TBXSeparatorItem35: TTBXSeparatorItem;
    TBXSeparatorItem43: TTBXSeparatorItem;
    TBXSubmenuItem21: TTBXSubmenuItem;
    acOrdreEmailKunde: TAction;
    BitBtn10: TBitBtn;
    TBXItem104: TTBXItem;
    acOrdreLagre: TAction;
    TBXItem107: TTBXItem;
    popAbo: TTBXPopupMenu;
    TBXItem108: TTBXItem;
    TBXItem109: TTBXItem;
    TBXItem110: TTBXItem;
    TBXSeparatorItem44: TTBXSeparatorItem;
    acGenOrdreFaktura: TAction;
    TBXItem111: TTBXItem;
    TBXItem112: TTBXItem;
    TBXItem113: TTBXItem;
    TBXItem114: TTBXItem;
    TBXItem115: TTBXItem;
    acBilagOpenDoc: TAction;
    TBXItem116: TTBXItem;
    TBXSubmenuItem22: TTBXSubmenuItem;
    TBXSeparatorItem45: TTBXSeparatorItem;
    acBilagSlettDoc: TAction;
    acBilagLinkDoc: TAction;
    TBXItem117: TTBXItem;
    TBXItem118: TTBXItem;
    acAboHistorikk: TAction;
    BitBtn11: TBitBtn;
    blsBorderPanel12: TblsBorderPanel;
    Splites13: TSplites;
    Panel15: TPanel;
    TBXLabel11: TTBXLabel;
    JvDBGrid1: TJvDBGrid;
    Label17: TLabel;
    dbtPersonEpost: TDBText;
    BitBtn12: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure acLoginExecute(Sender: TObject);
    procedure AppEventActivate(Sender: TObject);
    procedure acSalgExecute(Sender: TObject);
    procedure acKontakterExecute(Sender: TObject);
    procedure acProdukterExecute(Sender: TObject);
    procedure acRegnskapExecute(Sender: TObject);
    procedure acCalcExecute(Sender: TObject);
    procedure acPostImportExecute(Sender: TObject);
    procedure PcChange(Sender: TObject);
    procedure acLogoutExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acBackupExecute(Sender: TObject);
    procedure acAdminExecute(Sender: TObject);
    procedure acPostnrSokExecute(Sender: TObject);
    procedure acPureHelpExecute(Sender: TObject);
    procedure acBrRegExecute(Sender: TObject);
    procedure acRestoreExecute(Sender: TObject);
    procedure acEndreExecute(Sender: TObject);
    procedure acRapportExecute(Sender: TObject);
    procedure acNyExecute(Sender: TObject);
    procedure acSlettExecute(Sender: TObject);
    procedure dbtEpostClick(Sender: TObject);
    procedure dbtUrlClick(Sender: TObject);
    procedure dbgKunderKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acOppdaterExecute(Sender: TObject);
    procedure acImportExecute(Sender: TObject);
    procedure acKontoListeExecute(Sender: TObject);
    procedure acLeggTilKontoExecute(Sender: TObject);
    procedure dbgProdDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure tvKatEditing(Sender: TObject; Node: TTreeNode;
      var AllowEdit: Boolean);
    procedure tvKatChange(Sender: TObject; Node: TTreeNode);
    procedure acKategoriExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acSokExecute(Sender: TObject);
    procedure acPreviewExecute(Sender: TObject);
    procedure acAvsluttExecute(Sender: TObject);
    procedure acAboutExecute(Sender: TObject);
    procedure acProdEmailExecute(Sender: TObject);
    procedure acProdEmailKundeExecute(Sender: TObject);
    procedure dbgKontoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure acProdLagreExecute(Sender: TObject);
    procedure acFakturaLagreExecute(Sender: TObject);
    procedure acFakturaEmailKundeExecute(Sender: TObject);
    procedure dbgFakturaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure acBetalingExecute(Sender: TObject);
    procedure acKlientExecute(Sender: TObject);
    procedure acNyKlientExecute(Sender: TObject);
    procedure acFakturaStatusExecute(Sender: TObject);
    procedure acPrisHistorikkExecute(Sender: TObject);
    procedure acInnstillingerExecute(Sender: TObject);
    procedure dbgPurringDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure tbxHelp1Click(Sender: TObject);
    procedure tbxHelp2Click(Sender: TObject);
    procedure tbxHelp3Click(Sender: TObject);
    procedure tbxHelp4Click(Sender: TObject);
    procedure acExportExecute(Sender: TObject);
    procedure acSalgstallExecute(Sender: TObject);
    procedure dbgKontoTitleBtnDblClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgKontoTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure acMvaPeriodeExecute(Sender: TObject);
    procedure cbBilagAarChange(Sender: TObject);
    procedure acKontoOppslagExecute(Sender: TObject);
    procedure dbgBilagDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgBilagMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure acGodkjennExecute(Sender: TObject);
    procedure cbVisApneClick(Sender: TObject);
    procedure dbgBilagCheckButton(Sender: TObject; ACol: Integer;
      Field: TField; var Enabled: Boolean);
    procedure dbgLevDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgKunderDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbVisProdAktivClick(Sender: TObject);
    procedure acGenFakturaBilagExecute(Sender: TObject);
    procedure acGenererBilagExecute(Sender: TObject);
    procedure acGenBetalingBilagExecute(Sender: TObject);
    procedure acInnbetalingerExecute(Sender: TObject);
    procedure dbgAboDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure acProcessAboExecute(Sender: TObject);
    procedure acLisensExecute(Sender: TObject);
    procedure acPerioderExecute(Sender: TObject);
    procedure acOrdreEmailKundeExecute(Sender: TObject);
    procedure acOrdreLagreExecute(Sender: TObject);
    procedure acGenOrdreFakturaExecute(Sender: TObject);
    procedure acBilagOpenDocExecute(Sender: TObject);
    procedure popBilagPopup(Sender: TObject);
    procedure acBilagSlettDocExecute(Sender: TObject);
    procedure acBilagLinkDocExecute(Sender: TObject);
    procedure acAboHistorikkExecute(Sender: TObject);
    procedure dbtPersonEpostClick(Sender: TObject);
    procedure dbtLevEpostClick(Sender: TObject);
    procedure dbgBilagMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    InLoading: Boolean;
    procedure LoggInn;
    procedure SetModul(ModulIndex: Integer);
    procedure LagreAktivModulTab;
    function HentAktivTab(Modul: Integer): Integer;
    function HentAktivModul: Integer;
    function HuskAktivModul: Boolean;
    function HuskAktivTab: Integer;
    procedure OppdaterActions(Aktiv: Boolean);
    procedure Logout;
    function HentBackupSetting(Setting: String): Boolean;
    function FinnKategori(Nr: String): Boolean;
    function GenererPurring: Boolean;
    procedure CloseNotNeededDataSets;
    procedure OppdaterBilagListe;
    procedure OppdaterBilagParam;
    function VisLisensReg: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCRM: TfrmCRM;

implementation

uses JclSysInfo, blsFileUtil, IniFiles, TbxOffice2003Theme, rsLogin,
  rsData, rsPostImport, ShellApi, rsPostnr, rsWebFirmaInfo, blsDialogs,
  rsKunde, rsRapport, blsMisc, rsLeverandor, rsProdukt, rsImpProd,
  rsKontoListe, rsKonto, MidasLib, rsKategori, blsRegistry, rsKundeSok,
  rsProduktSok, rsPrint, JclMapi, rsFaktura, rsBetalt, rsKlient, rsPurring,
  rsFakturaStatus, rsPrisHistorikk, rsInnstillinger, rsBilag, rsEksport,
  rsSalgstall, TypInfo, rsFakturaSok, rsFunction, rsKontoSok, rsAbout,
  rsMvaPeriode, DateUtils, rsKontoOppslag, rsBilagAutoGen, rsOrdre,
  rsBilagSok, rsInnbetalinger, JclIniFiles, rsAbonnement, rsAboGenerering,
  rsLisens, rsPeriode, rsAboHistorikk;

{$R *.dfm}

procedure TfrmCRM.FormCreate(Sender: TObject);
var TBXLook: Boolean;
    Ini: TIniFile;
    I: Integer;
begin
  TBXLook := False;
  if GetWindowsVersion = wvWinXP then
    TBXLook := True
  else if GetWindowsVersion = wvWin2000 then
    TBXLook := False;

  Ini := TIniFile.Create(Dir + 'config.ini');
  try
    I := Ini.ReadInteger('Innstillinger', 'TbxLook', -1);

    if I = 0 then
      TBXLook := False
    else if I = 1 then
      TBXLook := True;
  finally
    Ini.Free;
  end;

  if TBXLook then
    TBXSetTheme('Office2003');

  Ver.FileName := Application.ExeName;
  Caption := Caption + ' - ' + Ver.FileVersion;
  sbMain.Panels[2].Caption := DateToStr(Date);
end;

procedure TfrmCRM.LoggInn;
var I: Integer;
begin
  Dm.Connect;

  if dmFunction.ErLisensGyldig = False then
    if VisLisensReg = mrCancel then begin
      acLogout.Execute;
      Exit;
    end;

  Dm.RegistrerInnlogging;
    
  sbMain.Panels[0].Caption := ' ' + Dm.g_KlientNavn;
  OppdaterActions(True);
  Dm.LastProdKategorier(tvKat);
  Dm.cdsPostnr.Open;
  acLogin.Visible := False;
  acLogin.Enabled := False;
  acLogout.Visible := True;

  //Oppdaterer funksjoner avhengig av Programtype
  Dm.adoKlient.Open;
  acRegnskap.Visible := Dm.adoKlientPROGTYPE.Value = 3;
  tbxSubRegnskap.Visible := acRegnskap.Visible;
  tsAbo.Tag := Ord(not acRegnskap.Visible);
  Dm.adoKlient.Close;


  //Leser inn bilagsaar i combobox.. Oppdatere databasen ved onchange på P.C.
  InLoading := True;
  cbBilagAar.Items.Clear;
  for I := 0 to 10 do
    cbBilagAar.Items.Add(IntToStr(YearOf(Date)+ 1 - I));
  cbBilagAar.ItemIndex := cbBilagAar.Items.IndexOf( IntToStr(GetUserInt(RegPath, 'BilagAar' + IntToStr(Dm.g_KlientID), YearOf(Date)) ));
  Dm.g_BilagAar := StrToInt(cbBilagAar.Text);

  cbVisApne.Checked := blsRegistry.GetUserBool(RegPath, 'VisApneBilag' + IntToStr(Dm.g_KlientID));
  cbVisProdAktiv.Checked := blsRegistry.GetUserBool(RegPath, 'VisProdAktiv');
  InLoading := False;

  pnlMain.Visible := True;
  //Laster inn forrige modul og tab eller steller seg på første
  if HuskAktivModul then begin
    case HentAktivModul of
      0: acSalg.Execute;
      1: acKontakter.Execute;
      2: acProdukter.Execute;
      3: acRegnskap.Execute;
    end;
  end
  else
    SetModul(0);
end;

procedure TfrmCRM.acLoginExecute(Sender: TObject);
begin
  frmLogin := TfrmLogin.Create(Application);
  if frmLogin.ShowModal = mrOK then begin
    LoggInn;
  end;
  frmLogin.Release;
end;

procedure TfrmCRM.Logout;
var I: Integer;
begin
  Dm.Disconnect;
  Dm.RegistrertUtlogging;  
  sbMain.Panels[0].Caption := '';
  OppdaterActions(False);
  Dm.FreeProdKategorier(tvKat);
  pnlMain.Visible := False;

  acLogin.Enabled := True;
  acLogin.Visible := True;
  acLogout.Visible := False;

  if not HuskAktivModul then
    acSalg.Checked := True;
  Dm.NullStillGlobaler;

  for I := 0 to Dm.ComponentCount - 1 do begin
    if Dm.Components[I].ClassName = 'TClientDataSet' then
      if TClientDataSet(Dm.Components[I]).Active then
        TClientDataSet(Dm.Components[I]).Close;
  end;
end;

procedure TfrmCRM.acLogoutExecute(Sender: TObject);
begin
  Logout;
  acLogin.Execute;
end;

procedure TfrmCRM.OppdaterActions(Aktiv: Boolean);
begin
  //Fil
  acNy.Enabled := Aktiv;
  acRapport.Enabled := Aktiv;
  acImport.Enabled := Aktiv;
  acPrint.Enabled := Aktiv;
  acPreview.Enabled := Aktiv;
  acExport.Enabled := Aktiv;

  //Rediger
  acEndre.Enabled := Aktiv;
  acSlett.Enabled := Aktiv;
  acOppdater.Enabled := Aktiv;
  acLeggTilKonto.Enabled := Aktiv;
  acKategori.Enabled := Aktiv;
  acBetaling.Enabled := Aktiv;
  acKlient.Enabled := Aktiv;
  acNyKlient.Enabled := Aktiv;
  acFakturaStatus.Enabled := Aktiv;
  acInnstillinger.Enabled := Aktiv;

  //Søk
  acPostnrSok.Enabled := Aktiv;
  acKontoListe.Enabled := Aktiv;
  acSok.Enabled := Aktiv;

  //Vis
  acSalg.Enabled := Aktiv;
  acKontakter.Enabled := Aktiv;
  acProdukter.Enabled := Aktiv;
  acRegnskap.Enabled := Aktiv;

  //Online
  acBrReg.Enabled := Aktiv;
  acPureHelp.Enabled := Aktiv;
  acPostImport.Enabled := Aktiv;

  //Verktøy
  //acAdmin.Enabled := Aktiv;
  //acBackup.Enabled := Aktiv;
  //acCalc.Enabled := Aktiv;
  acPrisHistorikk.Enabled := Aktiv;
  acSalgstall.Enabled := Aktiv;
  acGenererBilag.Enabled := Aktiv;
  acMvaPeriode.Enabled := Aktiv;
  acKontoOppslag.Enabled := Aktiv;
  acProcessAbo.Enabled := Aktiv;
  acAboHistorikk.Enabled := Aktiv;
  acPerioder.Enabled := Aktiv;

  //Popup
  acProdLagre.Visible := Aktiv;
  acProdEmail.Visible := Aktiv;  //Vises default som enste item i submeny...
  acProdEmailKunde.Visible := Aktiv;
  acFakturaEmailKunde.Visible := Aktiv;
  acOrdreEmailKunde.Visible := Aktiv;
  acFakturaLagre.Visible := Aktiv;
  acOrdreLagre.Visible := Aktiv;

  acGenOrdreFaktura.Enabled := Aktiv;
  acOrdreEmailKunde.Enabled := Aktiv;

  //Hjelp
  acLisens.Enabled := Aktiv;
end;

procedure TfrmCRM.AppEventActivate(Sender: TObject);
begin
  if not (AppEvent.Tag = 1) then begin
    AppEvent.Tag := 1;
    acLogin.Execute;
  end;
end;

function TfrmCRM.HentAktivTab(Modul: Integer): Integer;
begin
  Result := 0;
  case Modul of
    0: Result := GetUserInt(RegPath, 'SisteAktivTab0', tsOrdre.PageIndex);
    1: Result := GetUserInt(RegPath, 'SisteAktivTab1', tsKunde.PageIndex);
    2: Result := GetUserInt(RegPath, 'SisteAktivTab2', tsProdukt.PageIndex);
    3: Result := GetUserInt(RegPath, 'SisteAktivTab3', tsBilag.PageIndex);
  end;
end;

function TfrmCRM.HentAktivModul: Integer;
begin
  Result := GetUserInt(RegPath, 'SisteAktivModul', 0);
end;


procedure TfrmCRM.LagreAktivModulTab;
var Modul: Integer;
begin
  Modul := 0;
  if acKontakter.Checked then Modul := 1
  else if acProdukter.Checked then Modul := 2
  else if acRegnskap.Checked then Modul := 3;

  case Modul of
    0: SetUserInt(RegPath, 'SisteAktivTab0', Pc.ActivePageIndex);
    1: SetUserInt(RegPath, 'SisteAktivTab1', Pc.ActivePageIndex);
    2: SetUserInt(RegPath, 'SisteAktivTab2', Pc.ActivePageIndex);
    3: SetUserInt(RegPath, 'SisteAktivTab3', Pc.ActivePageIndex);
  end;
  Dm.g_AktivTab[Modul] := Pc.ActivePageIndex;

  Dm.g_AktivModul := Modul;
  SetUserInt(RegPath, 'SisteAktivModul', Modul);
end;

function TfrmCRM.HuskAktivModul: Boolean;
var Ini: TIniFile;
begin
  Ini := TIniFile.Create(Dir + 'config.ini');
  try
    Result := Ini.ReadBool('Innstillinger', 'HuskAktivModul', True);
  finally
    Ini.Free;
  end;
end;

function TfrmCRM.HuskAktivTab: Integer;
var Ini: TIniFile;
begin
  Ini := TIniFile.Create(Dir + 'config.ini');
  try
    Result := Ini.ReadInteger('Innstillinger', 'HuskAktivTab', 0);
  finally
    Ini.Free;
  end;
end;

procedure TfrmCRM.SetModul(ModulIndex: Integer);
var I: Integer;
    Tab: Integer;
begin
  if Dm.g_AktivModul = ModulIndex then
    Exit;
  Pc.Visible := False;

  //Skjuler og viser riktige tabber
  for I := 0 to Pc.PageCount -1 do begin
    case ModulIndex of
      0: begin //Salg
        if not (I in [tsOrdre.PageIndex, tsFaktura.PageIndex,
            tsAbo.PageIndex, tsPurring.PageIndex]) then
          Pc.Pages[I].TabVisible := False
        else
          Pc.Pages[I].TabVisible := (Pc.Pages[I].Tag = 0);
      end;

      1: begin //Kontakter
        if not (I in [tsKunde.PageIndex, tsLeverandor.PageIndex, tsPerson.PageIndex]) then
          Pc.Pages[I].TabVisible := False
        else
          Pc.Pages[I].TabVisible := True;
      end;

      2: begin //Produkter
        if not (I in [tsProdukt.PageIndex, tsLager.PageIndex]) then
          Pc.Pages[I].TabVisible := False
        else
          Pc.Pages[I].TabVisible := True;
      end;

      3: begin //Regnskap
        if not (I in [tsKontoplan.PageIndex, tsBilag.PageIndex, tsKjorebok.PageIndex]) then
          Pc.Pages[I].TabVisible := False
        else
          Pc.Pages[I].TabVisible := True;
      end;
    end; //slutt case
  end;

  case HuskAktivTab of
    0: begin  //Start på første tab
      case ModulIndex of
        0: Pc.ActivePageIndex := tsAbo.PageIndex;
        1: Pc.ActivePageIndex := tsKunde.PageIndex;
        2: Pc.ActivePageIndex := tsProdukt.PageIndex;
        3: Pc.ActivePageIndex := tsBilag.PageIndex;
      end;
    end;

    1: begin  //For denne sesjon
      if Dm.g_AktivTab[ModulIndex] = -1 then begin
        case ModulIndex of
          0: Pc.ActivePageIndex := tsAbo.PageIndex;
          1: Pc.ActivePageIndex := tsKunde.PageIndex;
          2: Pc.ActivePageIndex := tsProdukt.PageIndex;
          3: Pc.ActivePageIndex := tsBilag.PageIndex;
        end;
      end
      else
        Pc.ActivePage := Pc.Pages[Dm.g_AktivTab[ModulIndex]];
    end;

    2: begin  //Fra gang til gang
      //Henter ut forrige aktiv tab for den nye modulen. (Hvis ny modul er valgt);
      Tab := HentAktivTab(ModulIndex);
      Pc.ActivePage := Pc.Pages[Tab];
    end;
  end;

  PcChange(Self);  //LagreAktivModulTab;
  Pc.Visible := True;
end;

procedure TfrmCRM.acSalgExecute(Sender: TObject);
begin
  SetModul(0);
end;

procedure TfrmCRM.acKontakterExecute(Sender: TObject);
begin
  SetModul(1);
end;

procedure TfrmCRM.acProdukterExecute(Sender: TObject);
begin
  SetModul(2);
end;

procedure TfrmCRM.acRegnskapExecute(Sender: TObject);
begin
  SetModul(3);
end;

procedure TfrmCRM.acCalcExecute(Sender: TObject);
begin
  WinExec('calc.exe', SW_SHOWDEFAULT);
end;

procedure TfrmCRM.acPerioderExecute(Sender: TObject);
begin
  frmPeriode := TfrmPeriode.Create(Application);
  frmPeriode.ShowModal;
  frmPeriode.Release;
end;

procedure TfrmCRM.acPostImportExecute(Sender: TObject);
begin
  frmPostImport := TfrmPostImport.Create(Application);
  frmPostImport.ShowModal;
  frmPostImport.Release;
end;

procedure TfrmCRM.CloseNotNeededDataSets;
begin
  case Dm.g_AktivModul of   //Lukker dataset som ikke er innefor aktiv modul
    0: begin //Salg
      Dm.cdsKunde.Close; Dm.cdsLev.Close; Dm.cdsPerson.Close;
      Dm.cdsProd.Close;
      //Dm.cdsFaktura.Close; Dm.cdsPurring.Close; Dm.cdsOrdre.Close; Dm.cdsAbo.Close;
      Dm.cdsKonto.Close; Dm.cdsBilag.Close; Dm.cdsPost.Close; Dm.cdsBilagSerie.Close;
      Dm.cdsMva.Close;
    end;
    1: begin //Kontakter
      //Dm.cdsKunde.Close; Dm.cdsLev.Close; Dm.cdsPerson.Close;
      Dm.cdsProd.Close;
      Dm.cdsFaktura.Close; Dm.cdsPurring.Close; Dm.cdsOrdre.Close; Dm.cdsAbo.Close;
      Dm.cdsKonto.Close; Dm.cdsBilag.Close; Dm.cdsPost.Close; Dm.cdsBilagSerie.Close;
      Dm.cdsMva.Close;
    end;
    2: begin //Produkt
      Dm.cdsKunde.Close; Dm.cdsLev.Close; Dm.cdsPerson.Close;
      //Dm.cdsProd.Close;
      Dm.cdsFaktura.Close; Dm.cdsPurring.Close; Dm.cdsOrdre.Close; Dm.cdsAbo.Close;
      Dm.cdsKonto.Close; Dm.cdsBilag.Close; Dm.cdsPost.Close; Dm.cdsBilagSerie.Close;
      Dm.cdsMva.Close;
    end;
    3: begin //Regnskap
      Dm.cdsKunde.Close; Dm.cdsLev.Close; Dm.cdsPerson.Close;
      Dm.cdsProd.Close;
      Dm.cdsFaktura.Close; Dm.cdsPurring.Close; Dm.cdsOrdre.Close; Dm.cdsAbo.Close;
      //Dm.cdsKonto.Close; Dm.cdsBilag.Close; Dm.cdsPost.Close; Dm.cdsBilagSerie.Close;
      //Dm.cdsMva.Close;
    end;
  end;
end;

procedure TfrmCRM.PcChange(Sender: TObject);
var Ix: Integer;
begin
  LagreAktivModulTab;
  CloseNotNeededDataSets;

  //Funksjoner som disables og enables
  acPureHelp.Enabled := (Pc.ActivePageIndex = tsKunde.PageIndex) or
                        (Pc.ActivePageIndex = tsLeverandor.PageIndex);
  acBrReg.Enabled := acPureHelp.Enabled;
  acNy.Enabled := Pc.ActivePage <> tsPurring;
  acEndre.Enabled := Pc.ActivePage <> tsPurring;

  //Funksjoner som skjules
  acBetaling.Visible := (Pc.ActivePage = tsPurring) or (Pc.ActivePage = tsFaktura);
  acFakturaStatus.Visible := acBetaling.Visible;
  acMvaPeriode.Visible := Pc.ActivePage = tsBilag;
  acKontoOppslag.Visible := acMvaPeriode.Visible;
  acGenererBilag.Visible := acMvaPeriode.Visible;
  acPerioder.Visible := acMvaPeriode.Visible;

  acLeggTilKonto.Visible := Pc.ActivePage = tsKontoPlan;
  acPrisHistorikk.Visible := Pc.ActivePage = tsProdukt;
  acProdLagre.Visible := Pc.ActivePage = tsProdukt;
  acProdEmail.Visible := acProdLagre.Visible;
  acProdEmailKunde.Visible := acProdLagre.Visible;
  acSlett.Enabled := Pc.ActivePage <> tsPurring;
  acNy.Enabled := acSlett.Enabled;
  acEndre.Enabled := acSlett.Enabled;
  acFakturaLagre.Visible := Pc.ActivePage = tsFaktura;
  acFakturaEmailKunde.Visible := Pc.ActivePage = tsFaktura;
  acOrdreLagre.Visible := Pc.ActivePage = tsOrdre;
  acOrdreEmailKunde.Visible := Pc.ActivePage = tsOrdre;
  acPreview.Enabled := Pc.ActivePage <> tsAbo;
  acPrint.Enabled := acPreview.Enabled;

  if Pc.ActivePage = tsFaktura then begin
    if not Dm.cdsFaktura.Active then
      Dm.cdsFaktura.Open;
  end
  else if Pc.ActivePage = tsPurring then begin
    if not Dm.cdsPurring.Active then
      Dm.cdsPurring.Open;
  end
  else if Pc.ActivePage = tsOrdre then begin
    if not Dm.cdsOrdre.Active then
      Dm.cdsOrdre.Open;
  end
  else if Pc.ActivePage = tsAbo then begin
    if not Dm.cdsAbo.Active then
      Dm.cdsAbo.Open;
  end
  else if Pc.ActivePage = tsKunde then begin
    if not Dm.cdsKunde.Active then
      Dm.cdsKunde.Open;
  end
  else if Pc.ActivePage = tsLeverandor then begin
    if not Dm.cdsLev.Active then
      Dm.cdsLev.Open;
  end
  else if Pc.ActivePage = tsPerson then begin
    if not Dm.cdsPerson.Active then
      Dm.cdsPerson.Open;
  end
  else if Pc.ActivePage = tsProdukt then begin
    Ix := GetUserInt(RegPath, 'AktivProdKategori' + IntToStr(Dm.g_KlientID));
    if Ix > 0 then //Lar være å huske om alle er valgt...
      tvKat.Items.Item[Ix].Selected := True
    else
      tvKat.Items.Item[1].Selected := True; //Velger de 500 nyeste...

    if not Dm.cdsProd.Active then
      Dm.cdsProd.Open;
  end
  else if Pc.ActivePage = tsBilag then begin
    OppdaterBilagParam;
    if not Dm.cdsBilagSerie.Active then
      Dm.cdsBilagSerie.Open;
    if not Dm.cdsPost.Active then
      Dm.cdsPost.Open;
    if not Dm.cdsBilag.Active then
      Dm.cdsBilag.Open;
    if not Dm.cdsMva.Active then
      Dm.cdsMva.Open;
  end
  else if Pc.ActivePage = tsKontoplan then begin
    if not Dm.cdsKonto.Active then
      Dm.cdsKonto.Open;
  end;
end;

procedure TfrmCRM.popBilagPopup(Sender: TObject);
begin
  acBilagOpenDoc.Enabled := Dm.cdsBilagDOKUMENT.IsNull = False;
  acBilagLinkDoc.Enabled := not acBilagOpenDoc.Enabled;
end;

procedure TfrmCRM.OppdaterBilagParam;
begin
  Dm.adoPost.Parameters.ParamValues['Aar'] := cbBilagAar.Text;
  Dm.adoBilag.Parameters.ParamValues['Aar'] := cbBilagAar.Text;

  if cbVisApne.Checked then begin
    Dm.adoPost.Parameters.ParamValues['Godkjent'] := 1;
    Dm.adoBilag.Parameters.ParamValues['Godkjent'] := 1;
  end
  else begin
    Dm.adoPost.Parameters.ParamValues['Godkjent'] := -1;
    Dm.adoBilag.Parameters.ParamValues['Godkjent'] := -1;
  end;
end;

procedure TfrmCRM.OppdaterBilagListe;
begin
  if InLoading then Exit;
  OppdaterBilagParam;
  Dm.cdsPost.Close;
  Dm.cdsPost.Open;

  Dm.cdsBilag.Close;
  Dm.cdsBilag.Open;
end;

procedure TfrmCRM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if acLogout.Visible then
    Logout;
end;

function TfrmCRM.HentBackupSetting(Setting: String): Boolean;
var Ini: TIniFile;
begin
  Ini := TIniFile.Create(Dir + 'config.ini');
  try
    Result := Ini.ReadBool('Backup', Setting, False);
  finally
    Ini.Free;
  end;
end;

procedure TfrmCRM.acBackupExecute(Sender: TObject);
var Str: String;
begin
  Str := '';
  if HentBackupSetting('BackupAutoRun') then
    Str := Str + ' /AutoRun';
  if HentBackupSetting('BackpuAutoQuit') then
    Str := Str + ' /AutoQuit';

  ShellExecute(Handle, 'Open', PWideChar(Dir + 'backup.exe'), PWideChar(Str), '', SW_SHOWDEFAULT);
end;

procedure TfrmCRM.acAdminExecute(Sender: TObject);
begin
  if Dm.g_Tilgang = 0 then
    ShellExecute(Handle, 'Open', PWideChar(Dir + 'admin.exe'), '/ADMINMODE', '', SW_SHOWDEFAULT)
  else
    ShellExecute(Handle, 'Open', PWideChar(Dir + 'admin.exe'), '', '', SW_SHOWDEFAULT);
end;

procedure TfrmCRM.acPostnrSokExecute(Sender: TObject);
begin
  frmPostnr := TfrmPostnr.Create(Application);
  frmPostnr.ShowModal;
  frmPostnr.Release;
end;

procedure TfrmCRM.acPureHelpExecute(Sender: TObject);
var
  Url, Str: String;
begin
  Str := '';

  if Pc.ActivePage = tsKunde then begin
    if Dm.cdsKundeORGNR.Value <> '' then
      Str := Dm.RenskOrgnr(Dm.cdsKundeORGNR.Value)
    else
      Str := Dm.cdsKundeNAVN.Value;
  end
  else if Pc.ActivePage = tsLeverandor then begin
    if Dm.cdsLevORGNR.Value <> '' then
      Str := Dm.RenskOrgnr(Dm.cdsLevORGNR.Value)
    else
      Str := Dm.cdsLevNAVN.Value;
  end;

  Url := JclIniFiles.IniReadString(Dir + 'config.ini', 'Innstillinger', 'UrlPureHelp');
  if Url <> '' then begin
    frmWebFirmaInfo := TfrmWebFirmaInfo.Create(Application);
    frmWebFirmaInfo.Url := Url; //'http://www.purehelp.no/sok/search.asp?sok_t=e&str_sok=$X';
    frmWebFirmaInfo.SokText := Str;
    frmWebFirmaInfo.Navigate;
  end
  else
    blsDialogs.InfoDialog('Online', 'Integrasjon med PureHelp er ikke konfigurert korrekt!');
end;

procedure TfrmCRM.acBrRegExecute(Sender: TObject);
var Str: String;
    HarOrgnr: Boolean;
    Url: String;
begin
  Str := '';
  HarOrgnr := False;

  if Pc.ActivePage = tsKunde then begin
    if Dm.cdsKundeORGNR.Value <> '' then begin
      Str := Dm.RenskOrgnr(Dm.cdsKundeORGNR.Value);
      HarOrgnr := True;
    end
    else
      Str := Dm.cdsKundeNAVN.Value;
  end
  else if Pc.ActivePage = tsLeverandor then begin
    if Dm.cdsLevORGNR.Value <> '' then begin
      Str := Dm.RenskOrgnr(Dm.cdsLevORGNR.Value);
      HarOrgnr := True;
    end
    else
      Str := Dm.cdsLevNAVN.Value;
  end;

  frmWebFirmaInfo := TfrmWebFirmaInfo.Create(Application);
  if HarOrgnr then
    Url := JclIniFiles.IniReadString(Dir + 'config.ini', 'Innstillinger', 'UrlBrReg')
  else
    Url := JclIniFiles.IniReadString(Dir + 'config.ini', 'Innstillinger', 'UrlBrRegList');

  if Url = '' then
    Url := 'http://w2.brreg.no/enhet/sok/treffliste.jsp?navn=$X';

  frmWebFirmaInfo.Url := Url;
  frmWebFirmaInfo.SokText := Str;

  frmWebFirmaInfo.Navigate;
  //frmWebFirmaInfo.Release;
end;

procedure TfrmCRM.acRestoreExecute(Sender: TObject);
begin
  if acLogout.Visible then
    if ConfirmDialog('Logg ut', 'Tilbakeføring av en sikkerhetskopi kan ikke skje mens man er innlogget. Logg ut?') then
      Logout
    else
      Exit;

  ShellExecute(Handle, 'Open', PWideChar(Dir + 'backup.exe'), '/restore', '', SW_SHOWDEFAULT);
end;

procedure TfrmCRM.acEndreExecute(Sender: TObject);
begin
  if Pc.ActivePage = tsFaktura then begin
    frmFaktura := TfrmFaktura.Create(Application);
    if frmFaktura.ShowModal = mrOK then
      Dm.cdsFaktura.RefreshRecord;
    frmFaktura.Release;
  end

  else if Pc.ActivePage = tsOrdre then begin
    frmOrdre := TfrmOrdre.Create(Application);
    if frmOrdre.ShowModal = mrOk then
      Dm.cdsOrdre.RefreshRecord;
    frmOrdre.Release;
  end

  else if Pc.ActivePage = tsAbo then begin
    frmAbonnement := TfrmAbonnement.Create(Application);
    if frmAbonnement.ShowModal = mrOk then
      Dm.cdsAbo.RefreshRecord;
    frmAbonnement.Release;
  end

  else if Pc.ActivePage = tsBilag then begin
    frmBilag := TfrmBilag.Create(Application);
    if frmBilag.ShowModal = mrOK then
      Dm.cdsBilag.RefreshRecord;
    frmBilag.Release;
  end

  else if Pc.ActivePage = tsKunde then begin
    frmKunde := TfrmKunde.Create(Application);
    if frmKunde.ShowModal = mrOK then
      Dm.cdsKunde.RefreshRecord;
    frmKunde.Release;
  end

  else if Pc.ActivePage = tsLeverandor then begin
    frmLeverandor := TfrmLeverandor.Create(Application);
    if frmLeverandor.ShowModal = mrOK then
      Dm.cdsLev.RefreshRecord;
    frmLeverandor.Release;
  end

  else if Pc.ActivePage = tsProdukt then begin
    if Dm.cdsProd.RecordCount = 0 then Exit;
    frmProdukt := TfrmProdukt.Create(Application);
    frmProdukt.dbeProdnr.ReadOnly := True;
    frmProdukt.dbeProdnr.Color := clBtnFace;
    if frmProdukt.ShowModal = mrOK then
      if ((tvKat.Selected.Data <> nil) and //Varen flyttet ut av valgt kategorigruppe...
          (frmProdukt.cdsProdKATEGORINR.Value <> TNummer(tvKat.Selected.Data).Nr)) then
        Dm.cdsProd.Refresh
      else begin
        Dm.cdsProd.RefreshRecord;
      end;
    frmProdukt.Release;
  end

  else if Pc.ActivePage = tsKontoplan then begin
    frmKonto := TfrmKonto.Create(Application);
    frmKonto.dbeKontonr.ReadOnly := True;
    frmKonto.dbeKontonr.Color := clBtnFace;
    if frmKonto.ShowModal = mrOk then
      Dm.cdsKonto.RefreshRecord;
    frmKonto.Release;
  end;
end;

procedure TfrmCRM.acRapportExecute(Sender: TObject);
var
  ModulIndex: Integer;
begin
  frmRapport := TfrmRapport.Create(Application);
  //Setter riktig rapportvalg avhengig av hvor brukeren står
  ModulIndex := HentAktivModul;
  case ModulIndex of
    0: frmRapport.acSalg.Execute; //Salg
    1: begin //Kontakter
      if Pc.ActivePage = tsKunde then
        frmRapport.acKunde.Execute
      else if Pc.ActivePage = tsLeverandor then
        frmRapport.acLeverandor.Execute;
    end;
    2: frmRapport.acProdukt.Execute; //Produkter
    3: frmRapport.acRegnskap.Execute;  //Regnskap
  end;

  frmRapport.ShowModal;
  frmRapport.Release;
end;

procedure TfrmCRM.acNyExecute(Sender: TObject);
begin
  if Pc.ActivePage = tsFaktura then begin
    Dm.cdsFaktura.First;
    Dm.cdsFaktura.Insert;
    Dm.cdsFaktura.Post;
    Dm.cdsFaktura.ApplyUpdates(-1);
    frmFaktura := TfrmFaktura.Create(Application);
    frmFaktura.NyFaktura := True;
    if frmFaktura.ShowModal = mrOK then
      Dm.cdsFaktura.RefreshRecord
    else begin
      Dm.cdsFaktura.Delete;
      Dm.cdsFaktura.ApplyUpdates(-1);
    end;
    frmFaktura.Release;
  end

  else if Pc.ActivePage = tsAbo then begin
    Dm.cdsAbo.First;
    Dm.cdsAbo.Insert;
    Dm.cdsAbo.Post;
    Dm.cdsAbo.ApplyUpdates(-1);
    frmAbonnement := TfrmAbonnement.Create(Application);
    frmAbonnement.NyttAbo := True;
    if frmAbonnement.ShowModal = mrOK then
      Dm.cdsAbo.RefreshRecord
    else begin
      Dm.cdsAbo.Delete;
      Dm.cdsAbo.ApplyUpdates(-1);
    end;
    frmAbonnement.Release;
  end

  else if Pc.ActivePage = tsOrdre then begin
    Dm.cdsOrdre.First;
    Dm.cdsOrdre.Insert;
    Dm.cdsOrdre.Post;
    Dm.cdsOrdre.ApplyUpdates(-1);
    frmOrdre := TfrmOrdre.Create(Application);
    frmOrdre.NyOrdre := True;
    if frmOrdre.ShowModal = mrOK then
      Dm.cdsOrdre.RefreshRecord
    else begin
      Dm.cdsOrdre.Delete;
      Dm.cdsOrdre.ApplyUpdates(-1);
    end;
    frmOrdre.Release;
  end

  else if Pc.ActivePage = tsBilag then begin
    Dm.cdsBilag.First;
    Dm.cdsBilag.Insert;
    Dm.cdsBilag.Post;
    Dm.cdsBilag.ApplyUpdates(-1);
    frmBilag := TfrmBilag.Create(Application);
    frmBilag.NyttBilag := True;
    if frmBilag.ShowModal = mrOk then begin
      Dm.cdsPost.Refresh;
      Dm.cdsBilag.Refresh;
    end
    else begin
      Dm.cdsBilag.Delete;
      Dm.cdsBilag.ApplyUpdates(-1);
    end;
    frmBilag.Release;
  end

  else if Pc.ActivePage = tsKunde then begin
    Dm.cdsKunde.First;
    Dm.cdsKunde.Insert;
    Dm.cdsKunde.Post;
    Dm.cdsKunde.ApplyUpdates(-1);
    Dm.cdsKunde.RefreshRecord;
    frmKunde := TfrmKunde.Create(Application);
    frmKunde.NyKunde := True;
    if frmKunde.ShowModal = mrOK then
      Dm.cdsKunde.RefreshRecord
    else begin
      Dm.cdsKunde.Delete;
      Dm.cdsKunde.ApplyUpdates(-1);
    end;
    frmKunde.Release;
  end

  else if Pc.ActivePage = tsLeverandor then begin
    Dm.cdsLev.First;
    Dm.cdsLev.Insert;
    Dm.cdsLev.Post;
    Dm.cdsLev.ApplyUpdates(-1);
    Dm.cdsLev.RefreshRecord;
    frmLeverandor := TfrmLeverandor.Create(Application);
    frmLeverandor.NyLev := True;
    if frmLeverandor.ShowModal = mrOK then
      Dm.cdsLev.RefreshRecord
    else begin
      Dm.cdsLev.Delete;
      Dm.cdsLev.ApplyUpdates(-1);
    end;
    frmLeverandor.Release;
  end

  else if Pc.ActivePage = tsProdukt then begin
    frmProdukt := TfrmProdukt.Create(Application); //Må opprettes da frmProdukt.Katnr brukes..
    Dm.cdsProd.Insert;
    if tvKat.Selected.AbsoluteIndex > 1 then begin
      Dm.cdsProdKATEGORINR.Value := TNummer(tvKat.Selected.Data).Nr;
      frmProdukt.Katnr := TNummer(tvKat.Selected.Data).Nr;  //Angir aktiv kat.. brukes når ny-action brukes.
    end;
    Dm.cdsProd.Post;
    Dm.cdsProd.ApplyUpdates(-1);
    Dm.cdsProd.RefreshRecord;
    frmProdukt.NyttProd := True;
    if frmProdukt.ShowModal = mrOK then begin
      Dm.cdsProd.Refresh;  //Må kalle refresh, tilfelles pnr er endret.
      if frmProdukt.AktivProdnr <> '' then
        Dm.cdsProd.Locate('PRODUKTNR', frmProdukt.AktivProdnr, []);  //Søker opp aktiv produkt..
    end
    else begin
      Dm.AvbryttNyttNr(StrToIntDef(Dm.cdsProdPRODUKTNR.Value, 0));
      Dm.cdsProd.Delete;
      Dm.cdsProd.ApplyUpdates(-1);
    end;
    frmProdukt.Release;
  end

  else if Pc.ActivePage = tsKontoplan then begin
    Dm.cdsKonto.Insert;
    frmKonto := TfrmKonto.Create(Application);
    frmKonto.NyKonto := True;
    if frmKonto.ShowModal = mrOK then begin
      Dm.cdsKonto.Refresh;
      if frmKonto.AktivKonto > -1 then
        Dm.cdsKonto.Locate('KONTONR', frmKonto.AktivKonto, []);
    end
    else begin
      Dm.cdsKonto.Delete;
      Dm.cdsKonto.ApplyUpdates(-1);
    end;
    frmKonto.Release;
  end;

end;

procedure TfrmCRM.acSlettExecute(Sender: TObject);
//var vSql: String;
begin
  if Pc.ActivePage = tsFaktura then begin
    if Dm.cdsFaktura.RecordCount = 0 then Exit;
    if Dm.cdsFakturaIDBILAG.IsNull = False then begin
      AlertDialog('Sperret', 'Sletting ikke mulig da fakturaen er godkjent og overført til regnskap!');
      Exit;
    end;
    if ConfirmDialog('Slette?', 'Er du sikker på at du vil slette faktura nr. ' +
      Dm.cdsFakturaFAKTURANR.AsString + '?') then begin
      Dm.cdsFaktura.Delete;
      Dm.cdsFaktura.ApplyUpdates(-1);
    end;
  end

  else if Pc.ActivePage = tsAbo then begin
    if Dm.cdsAbo.RecordCount = 0 then Exit;
    if ConfirmDialog('Slette?', 'Er du sikker på at du vil slette valgt abonnement?') then begin
      Dm.cdsAbo.Delete;
      Dm.cdsAbo.ApplyUpdates(-1);
    end;
  end

  else if Pc.ActivePage = tsOrdre then begin
    if Dm.cdsOrdre.RecordCount = 0 then Exit;
    if ConfirmDialog('Slette?', 'Er du sikker på at du vil slette ordren ' +
      QuotedStr(Dm.cdsOrdreORDRENR.AsString) + '?') then begin
      Dm.cdsOrdre.Delete;
      Dm.cdsOrdre.ApplyUpdates(-1);
    end;
  end

  else if Pc.ActivePage = tsKunde then begin
    if Dm.cdsKunde.RecordCount = 0 then Exit;
    if ConfirmDialog('Slette?', 'Er du sikker på at du vil slette kunde ' +
      QuotedStr(Dm.cdsKundeNAVN.Value) + '?') then begin
      Dm.cdsKunde.Delete;
      Dm.cdsKunde.ApplyUpdates(-1);
    end;
  end

  else if Pc.ActivePage = tsLeverandor then begin
    if Dm.cdsLev.RecordCount = 0 then Exit;
    if ConfirmDialog('Slette?', 'Er du sikker på at du vil slette ' +
      QuotedStr(Dm.cdsLevNAVN.Value) + '?') then begin
      Dm.cdsLev.Delete;
      Dm.cdsLev.ApplyUpdates(-1);
    end;
  end

  else if Pc.ActivePage = tsProdukt then begin
    if Dm.cdsProd.RecordCount = 0 then Exit;
    if ConfirmDialog('Slette?', 'Er du sikker på at du vil slette ' +
      QuotedStr(Dm.cdsProdNAVN.Value) + '?') then begin
      Dm.cdsProd.Delete;
      Dm.cdsProd.ApplyUpdates(-1);
    end;
  end

  else if Pc.ActivePage = tsBilag then begin
    if Dm.cdsBilag.RecordCount = 0 then Exit;
    if Dm.cdsBilagGODKJENT.Value = 1 then begin
      AlertDialog('Sperret', 'Sletting ikke mulig da bilaget er godkjent!');
      Exit;
    end;
    if ConfirmDialog('Slette?', 'Er du sikker på at du vil slette bilag ' +
      Dm.cdsBilagBILAGNR.AsString + '?') then begin
      Dm.cdsBilag.Delete;
      Dm.cdsBilag.ApplyUpdates(-1);
    end;
  end

  else if Pc.ActivePage = tsKontoplan then begin
    if Dm.cdsKonto.RecordCount = 0 then Exit;
    if ConfirmDialog('Slette?', 'Er du sikker på at du vil slette konto ' +
      QuotedStr(Dm.cdsKontoNAVN.Value) + '?') then begin
      Dm.cdsKonto.Delete;
      Dm.cdsKonto.ApplyUpdates(-1);
    end;
  end;
end;

procedure TfrmCRM.dbtEpostClick(Sender: TObject);
begin
  blsMisc.SendMail(dbtEpost.Field.Value);
end;

procedure TfrmCRM.dbtLevEpostClick(Sender: TObject);
begin
  blsMisc.SendMail(dbtLevEpost.Field.Value);
end;

procedure TfrmCRM.dbtPersonEpostClick(Sender: TObject);
begin
  blsMisc.SendMail(dbtPersonEpost.Field.Value);
end;

procedure TfrmCRM.dbtUrlClick(Sender: TObject);
begin
  blsMisc.StartWeb(dbtUrl.Field.Value);
end;

procedure TfrmCRM.dbgAboDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if gdSelected in State then begin
     dbgAbo.Canvas.Brush.Color := clHighLight; //need that highlight for 'focus'
     dbgAbo.Canvas.Font.Color := clWhite;
  end
  else if (Dm.cdsAboAKTIV.Value = 0) then begin
    dbgAbo.Canvas.Brush.Color := $00F0F0F0;
    dbgAbo.Canvas.Font.Color := clWindowText;
  end;

  if (DataCol = 0) and (Dm.cdsAboFORFALL.AsDateTime <= (Date + Dm.cdsAboFAKTURADAGER.Value)) then begin
    dbgAbo.Canvas.Font.Color := clRed;
  end;

  dbgAbo.DefaultDrawColumnCell(Rect, DataCol, Column, State);

{  if DataCol = 1 then begin
    if (Dm.cdsFakturaIDBETSTATUS.Value = 30) then
      Dm.ImageListPC.Draw(dbgFaktura.Canvas, Rect.Left + 2 , Rect.Top, 1)
    else if (Dm.cdsFakturaIDBETSTATUS.Value = 20) then
      Dm.ImageListPC.Draw(dbgFaktura.Canvas, Rect.Left + 2 , Rect.Top, 2);
  end; }
end;

procedure TfrmCRM.dbgKunderKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    acEndre.Execute;
end;

procedure TfrmCRM.acBilagLinkDocExecute(Sender: TObject);
begin
  dmFunction.LinkBilagDok(Dm.cdsBilag, True);
end;

procedure TfrmCRM.acBilagOpenDocExecute(Sender: TObject);
begin
  if Dm.cdsBilagDOKUMENT.IsNull = False then
    ShellExecute(Handle, 'open', PWideChar(Dm.g_DocDir + Dm.cdsBilagDOKUMENT.Value), nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmCRM.acBilagSlettDocExecute(Sender: TObject);
begin
  dmFunction.SlettBilagDok(Dm.cdsBilag, True);
end;

procedure TfrmCRM.acOppdaterExecute(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if Pc.ActivePage = tsFaktura then
    Dm.cdsFaktura.Refresh
  else if Pc.ActivePage = tsPurring then
    Dm.cdsPurring.Refresh
  else if Pc.ActivePage = tsOrdre then
    Dm.cdsOrdre.Refresh
  else if Pc.ActivePage = tsAbo then
    Dm.cdsAbo.Refresh

  else if Pc.ActivePage = tsKunde then
    Dm.cdsKunde.Refresh
  else if Pc.ActivePage = tsLeverandor then
    Dm.cdsLev.Refresh

  else if Pc.ActivePage = tsProdukt then
    Dm.cdsProd.Refresh

  else if Pc.ActivePage = tsBilag then begin
    Dm.cdsPost.Refresh;
    Dm.cdsBilag.Refresh;
    Dm.cdsBilagSerie.Refresh;
  end
  else if Pc.ActivePage = tsKontoplan then
    Dm.cdsKonto.Refresh;
  Screen.Cursor := crDefault;
end;

procedure TfrmCRM.acOrdreEmailKundeExecute(Sender: TObject);
begin
  dmFunction.SendOrdreMail(Dm.cdsOrdreIDORDRE.Value, Dm.cdsOrdreORDRENR.AsString,
    Dm.cdsOrdreKUNDENR.AsString, Dm.cdsOrdreNAVN.Value);
end;

procedure TfrmCRM.acOrdreLagreExecute(Sender: TObject);
begin
  dmFunction.SaveOrdre(Dm.cdsOrdreIDORDRE.Value, Dm.cdsOrdreORDRENR.AsString);
end;

procedure TfrmCRM.acImportExecute(Sender: TObject);
begin
  if Dm.HarAdminTilgang = False then Exit;

  frmImportProd := TfrmImportProd.Create(Application);
  frmImportProd.ShowModal;
  frmImportProd.Release;
end;

procedure TfrmCRM.acKontoListeExecute(Sender: TObject);
begin
  frmKontoListe := TfrmKontoListe.Create(Application);
  frmKontoListe.ShowModal;
  frmKontoListe.Release;
end;

procedure TfrmCRM.acLeggTilKontoExecute(Sender: TObject);
begin
  frmKontoListe := TfrmKontoListe.Create(Application);
  frmKontoListe.LeggTilSok;
  frmKontoListe.ShowModal;
  frmKontoListe.Release;

  if Pc.ActivePage = tsKontoplan then
    Dm.cdsKonto.Refresh;
end;

function TfrmCRM.VisLisensReg: Integer;
begin
  frmLisens := TfrmLisens.Create(Application);
  Result := frmLisens.ShowModal;
  frmLisens.Release;
end;

procedure TfrmCRM.acLisensExecute(Sender: TObject);
begin
  if VisLisensReg = mrCancel then
    acLogout.Execute;
end;

procedure TfrmCRM.dbgProdDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if gdSelected in State then begin
     dbgProd.Canvas.Brush.Color := clHighLight; //need that highlight for 'focus'
     dbgProd.Canvas.Font.Color := clWhite;
  end
  else if (Dm.cdsProdPRODUKTNR.Value <> '') and (Dm.cdsProdAKTIV.Value = 0) then begin
    dbgProd.Canvas.Brush.Color := $00F0F0F0;
    dbgProd.Canvas.Font.Color := clWindowText;
  end;
  dbgProd.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  if DataCol = 0 then begin
    if (Dm.cdsProdPRODUKTNR.Value <> '') and (Dm.cdsProdAKTIV.Value = 0) then
      Dm.ImageListPC.Draw(dbgProd.Canvas, Rect.Left + 2 , Rect.Top, 1);
  end
end;

procedure TfrmCRM.tvKatEditing(Sender: TObject; Node: TTreeNode;
  var AllowEdit: Boolean);
begin
  AllowEdit := False;
end;

procedure TfrmCRM.tvKatChange(Sender: TObject; Node: TTreeNode);
var KatNr, SQL: String;
    I: Integer;
begin
  KatNr := '';
  SQL := Dm.blsProdSQL.Lines.Text;
  SetUserInt(RegPath, 'AktivProdKategori' + IntToStr(Dm.g_KlientID), Node.AbsoluteIndex);

  if Node.Data <> nil then begin
    KatNr := TNummer(Node.Data).AsString;
    if Node.Count > 0 then
      for I := 0 to Node.Count - 1 do begin
        KatNr := KatNr + ',';
        KatNr := KatNr + TNummer(Node.Item[I].Data).AsString;
      end;

    SQL := StringReplace(SQL, '$Ant', '', []);
    SQL := StringReplace(SQL, '$Kat', 'and KATEGORINR in (' + Katnr + ')', []);
    SQL := StringReplace(SQL, '$Order', 'PRODUKTNR DESC', []);
    if cbVisProdAktiv.Checked then
      SQL := StringReplace(SQL, '$Aktiv', '', [])
    else
      SQL := StringReplace(SQL, '$Aktiv', 'and AKTIV = 1', []);

    Dm.adoProd.SQL.Text := SQL;
    if Dm.cdsProd.Active then
      Dm.cdsProd.Refresh;
  end
  else begin
    if Node.AbsoluteIndex = 1 then begin
      SQL := StringReplace(SQL, '$Ant', 'first 500', []);
      SQL := StringReplace(SQL, '$Kat', '', []);
      SQL := StringReplace(SQL, '$Aktiv', 'and AKTIV = 1', []);
      SQL := StringReplace(SQL, '$Order', 'ENDRETDATO DESC NULLS LAST', []);
      Dm.adoProd.SQL.Text := SQL;
      if Dm.cdsProd.Active then
        Dm.cdsProd.Refresh;
    end
    else begin
      SQL := StringReplace(SQL, '$Ant', '', []);
      SQL := StringReplace(SQL, '$Kat', '', []);
      SQL := StringReplace(SQL, '$Aktiv', 'and AKTIV = 1', []);
      SQL := StringReplace(SQL, '$Order', 'PRODUKTNR DESC', []);
      Dm.adoProd.SQL.Text := SQL;
      if Dm.cdsProd.Active then begin
        Dm.cdsProd.Close;
        Dm.cdsProd.Open;
      end;
    end;
  end;
end;

procedure TfrmCRM.acKategoriExecute(Sender: TObject);
begin
  frmKategori := TfrmKategori.Create(Application);
  frmKategori.ShowModal;
  Dm.LastProdKategorier(tvKat);
  frmKategori.Release;
end;

procedure TfrmCRM.acPrintExecute(Sender: TObject);
var
  Printed: Boolean;
begin
  if Pc.ActivePage = tsProdukt then begin
    frmPrint := TfrmPrint.Create(Application);
    frmPrint.PrintProduktArk(Dm.cdsProdPRODUKTNR.Value);
    frmPrint.Release;
  end
  else if Pc.ActivePage = tsFaktura then begin
    frmPrint := TfrmPrint.Create(Application);
    Printed := frmPrint.PrintFaktura(Dm.cdsFakturaIDFAKTURA.Value);
    frmPrint.Release;
    if Printed then
      Dm.SettFakturaStatus(20);  //Setter Status til sendt / utskrevet.
  end
  else if Pc.ActivePage = tsPurring then begin
    if Dm.cdsPurringIDFAKTURA.IsNull then Exit;

    if GenererPurring then begin
      frmPrint := TfrmPrint.Create(Application);
      frmPrint.PrintFaktura(Dm.cdsPurringIDFAKTURA.Value, True);
      frmPrint.Release;
    end;
  end
  else if Pc.ActivePage = tsBilag then begin
    frmPrint := TfrmPrint.Create(Application);
    frmPrint.PrintBilag(Dm.cdsBilagIDBILAG.Value);
    frmPrint.Release;
  end;
end;

function TfrmCRM.FinnKategori(Nr: String): Boolean;
var I: Integer;
begin
  Result := False;
  if Nr = '' then Exit;
  for I := 0 to tvKat.Items.Count do
    if tvKat.Items.Item[I].Data <> nil then
      if TNummer(tvKat.Items.Item[I].Data).AsString = Nr then begin
        tvKat.Items.Item[I].Selected := True;
        Result := True;
        Break;
      end;
end;

procedure TfrmCRM.acSokExecute(Sender: TObject);
begin
  if Pc.ActivePage = tsFaktura then begin
    frmFakturaSok := TfrmFakturaSok.Create(Application);
    if frmFakturaSok.ShowModal = mrOK then begin
      Screen.Cursor := crHourglass;
      Dm.cdsFaktura.Locate('FAKTURANR', frmFakturaSok.cdsSokFAKTURANR.Value, []);
      Screen.Cursor := crDefault;
    end;
    frmFakturaSok.Release;
  end

  else if Pc.ActivePage = tsKunde then begin
    frmKundeSok := TfrmKundeSok.Create(Application);
    frmKundeSok.KontaktSerie := 'KS';
    if frmKundeSok.ShowModal = mrOK then begin
      Screen.Cursor := crHourglass;
      Dm.cdsKunde.Locate('KONTAKTNR', frmKundeSok.cdsSokKONTAKTNR.Value, []);
      Screen.Cursor := crDefault;
    end;
    frmKundeSok.Release;
  end

  else if Pc.ActivePage = tsLeverandor then begin
    frmKundeSok := TfrmKundeSok.Create(Application);
    frmKundeSok.KontaktSerie := 'LS';
    if frmKundeSok.ShowModal = mrOK then begin
      Screen.Cursor := crHourglass;
      Dm.cdsLev.Locate('KONTAKTNR', frmKundeSok.cdsSokKONTAKTNR.Value, []);
      Screen.Cursor := crDefault;
    end;
    frmKundeSok.Release;
  end

  else if Pc.ActivePage = tsProdukt then begin
    frmProduktSok := TfrmProduktSok.Create(Application);
    if frmProduktSok.ShowModal = mrOK then begin
      Screen.Cursor := crHourglass;
      if FinnKategori(frmProduktSok.cdsSokKATEGORINR.AsString) then
        Dm.cdsProd.Locate('PRODUKTNR', frmProduktSok.cdsSokPRODUKTNR.Value, [])
      else begin
        tvKat.Items.Item[0].Selected := True;
        Dm.cdsProd.Locate('PRODUKTNR', frmProduktSok.cdsSokPRODUKTNR.Value, []);
      end;
      Screen.Cursor := crDefault;
    end;
    frmProduktSok.Release;
  end

  else if Pc.ActivePage = tsBilag then begin
    frmBilagSok := TfrmBilagSok.Create(Application);
    if frmBilagsok.ShowModal = mrOk then begin
      Screen.Cursor := crHourglass;
      cbVisApne.Checked := False;
      cbBilagAar.ItemIndex := cbBilagAar.Items.IndexOf(frmBilagSok.edAar.Text);
      cbBilagAarChange(Self);
      Dm.cdsBilag.Locate('BILAGNR', frmBilagsok.cdsSokBILAGNR.Value, []);
      Screen.Cursor := crDefault;
    end;
    frmBilagSok.Release;
  end

  else if Pc.ActivePage = tsKontoplan then begin
    frmKontoSok := TfrmKontoSok.Create(Application);
    if frmKontoSok.ShowModal = mrOK then begin
      Screen.Cursor := crHourglass;
      Dm.cdsKonto.Locate('KONTONR', frmKontoSok.cdsSokKONTONR.Value, []);
      Screen.Cursor := crDefault;
    end;
    frmKontoSok.Release;
  end;

end;

procedure TfrmCRM.acPreviewExecute(Sender: TObject);
begin
  if Pc.ActivePage = tsFaktura then begin
    frmPrint := TfrmPrint.Create(Application);
    frmPrint.VisFaktura(Dm.cdsFakturaIDFAKTURA.Value, False, Dm.cdsFakturaFAKTURANR.AsString);
    frmPrint.Release;
  end

  else if Pc.ActivePage = tsOrdre then begin
    frmPrint := TfrmPrint.Create(Application);
    frmPrint.VisOrdre(Dm.cdsOrdreIDORDRE.Value, Dm.cdsOrdreORDRENR.AsString);
    frmPrint.Release;
  end

  else if Pc.ActivePage = tsProdukt then begin
    frmPrint := TfrmPrint.Create(Application);
    frmPrint.VisProduktArk(Dm.cdsProdPRODUKTNR.Value);
    frmPrint.Release;
  end

  else if Pc.ActivePage = tsPurring then begin
    if Dm.cdsPurringIDFAKTURA.IsNull then Exit;
    
    if GenererPurring then begin
      frmPrint := TfrmPrint.Create(Application);
      frmPrint.VisFaktura(Dm.cdsPurringIDFAKTURA.Value, True, Dm.cdsPurringFAKTURANR.AsString);
      frmPrint.Release;
    end;
  end

  else if Pc.ActivePage = tsBilag then begin
    frmPrint := TfrmPrint.Create(Application);
    frmPrint.VisBilag(Dm.cdsBilagIDBILAG.Value);
    frmPrint.Release;
  end;
end;

procedure TfrmCRM.acAvsluttExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmCRM.acAboHistorikkExecute(Sender: TObject);
begin
  frmAboHistorikk := TfrmAboHistorikk.Create(Application);
  frmAboHistorikk.IdAbo := Dm.cdsAboIDABO.Value;
  frmAboHistorikk.ShowModal;
  frmAboHistorikk.Release;
end;

procedure TfrmCRM.acAboutExecute(Sender: TObject);
begin
  frmAbout := TfrmAbout.Create(Application);
  frmAbout.ShowModal;
  frmAbout.Release;
end;

procedure TfrmCRM.acProdEmailExecute(Sender: TObject);
begin
  dmFunction.SendProduktMail(Dm.cdsProdPRODUKTNR.Value, nil);
end;

procedure TfrmCRM.acProdEmailKundeExecute(Sender: TObject);
var Adr: TJclEmailRecips;
begin
  frmKundeSok := TfrmKundeSok.Create(Application);
  frmKundeSok.KontaktSerie := 'KS';
  if frmKundeSok.ShowModal = mrOK then begin
      if frmKundeSok.cdsSokEPOST.Value <> '' then begin
        Adr := TjclEmailRecips.Create;
        try
          Adr.Add(frmKundeSok.cdsSokEPOST.Value, frmKundeSok.cdsSokNAVN.Value);
          dmFunction.SendProduktMail(Dm.cdsProdPRODUKTNR.Value, Adr);
        finally
          Adr.Free;
        end;
      end
      else
        dmFunction.SendProduktMail(Dm.cdsProdPRODUKTNR.Value, nil);
  end;
  frmKundeSok.Release;
end;

procedure TfrmCRM.dbgKontoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if gdSelected in State then begin
     dbgKonto.Canvas.Brush.Color := clHighLight; //need that highlight for 'focus'
     dbgKonto.Canvas.Font.Color := clWhite;
  end
  else if (Dm.cdsKontoAKTIV.Value = 0) then begin
    dbgKonto.Canvas.Brush.Color := $00F0F0F0;
    dbgKonto.Canvas.Font.Color := clWindowText;
  end;
  dbgKonto.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  if DataCol = 0 then begin
    if (Dm.cdsKontoAKTIV.Value = 0) then
      Dm.ImageListPC.Draw(dbgKonto.Canvas, Rect.Left + 2 , Rect.Top, 1);
  end
end;

procedure TfrmCRM.acProdLagreExecute(Sender: TObject);
begin
  dmFunction.SaveProduktArk(Dm.cdsProdPRODUKTNR.Value);
end;

procedure TfrmCRM.acFakturaLagreExecute(Sender: TObject);
begin
  dmFunction.SaveFaktura(Dm.cdsFakturaIDFAKTURA.Value, Dm.cdsFakturaFAKTURANR.AsString);
end;

procedure TfrmCRM.acFakturaEmailKundeExecute(Sender: TObject);
begin
  dmFunction.SendFakturaMail(Dm.cdsFakturaIDFAKTURA.Value, Dm.cdsFakturaFAKTURANR.AsString,
    Dm.cdsFakturaKUNDENR.AsString, Dm.cdsFakturaNAVN.Value);
end;

procedure TfrmCRM.dbgFakturaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  ImgIx: Integer;
begin
  if gdSelected in State then begin
     dbgFaktura.Canvas.Brush.Color := clHighLight; //need that highlight for 'focus'
     dbgFaktura.Canvas.Font.Color := clWhite;
  end;
//  else begin
//    if (not Dm.cdsFakturaIDBILAG.IsNull) then begin
//      dbgFaktura.Canvas.Brush.Color := clInfoBk; //$00F0F0F0;
//    end;
//  end;

  if (DataCol = 2) and (Dm.cdsFakturaBETALTDATO.Value = 0) and
    (Dm.cdsFakturaFORFALLDATO.Value < Date) then begin
    dbgFaktura.Canvas.Font.Color := clRed;
  end;

  dbgFaktura.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  if DataCol = 3 then begin
    if Dm.cdsFakturaIDBILAG.IsNull = False then
      Dm.ImageListPC.Draw(dbgFaktura.Canvas, Rect.Left + 1, Rect.Top, 8);

    ImgIx := -1;
    if (Dm.cdsFakturaIDBETSTATUS.Value = 30) then
      ImgIx := 1
    else if (Dm.cdsFakturaIDBETSTATUS.Value = 20) then
      ImgIx := 2;

    if ImgIx > -1 then begin
      if Dm.cdsFakturaIDBILAG.IsNull then
        Dm.ImageListPC.Draw(dbgFaktura.Canvas, Rect.Left + 2 , Rect.Top, ImgIx)
      else
        Dm.ImageListPC.Draw(dbgFaktura.Canvas, Rect.Left + 18 , Rect.Top, ImgIx)
    end;

  end;
end;

procedure TfrmCRM.acBetalingExecute(Sender: TObject);
var BetDato: TDateTime;
    IdFakt: Integer;
begin
  BetDato := 0;
  IdFakt := -1;
  
  if Pc.ActivePage = tsFaktura then begin
    IdFakt := Dm.cdsFakturaIDFAKTURA.Value;
    BetDato := Dm.cdsFakturaBETALTDATO.Value;
  end
  else if Pc.ActivePage = tsPurring then begin
    IdFakt := Dm.cdsPurringIDFAKTURA.Value;
    BetDato := Dm.cdsPurringBETALTDATO.Value;
  end;

  if BetDato > 0 then begin
    if ConfirmDialog('Betalt', 'Fakturaen er registrert betalt den ' +
      DateToStr(BetDato) + '. Ønsker du å fjerne dette?') then begin

      Dm.cdsFaktura.Edit;
      Dm.cdsFakturaBETALTDATO.Clear;
      Dm.cdsFakturaIDBETSTATUS.Value := 30;
      Dm.cdsFaktura.Post;
      Dm.cdsFaktura.ApplyUpdates(-1);
    end;

    Exit;
  end;

  frmBetalt := TfrmBetalt.Create(Application);
  frmBetalt.IdFaktura := IdFakt;
  frmBetalt.ShowModal;
  frmBetalt.Release;
end;

procedure TfrmCRM.acKlientExecute(Sender: TObject);
begin
  frmKlient := TfrmKlient.Create(Application);
  frmKlient.ShowModal;
  frmKlient.Release;
end;

procedure TfrmCRM.acNyKlientExecute(Sender: TObject);
var AktivKlient: Integer;
begin
  if Dm.HarAdminTilgang = False then Exit;

  if ConfirmDialog('Nytt firma', 'Du vil nå bli logget ut for å få full tilgang ' +
    'til administrasjon av firmaer. Ønsker du å fortsette?') then begin

    AktivKlient := Dm.g_KlientID;
    Logout;
    frmKlient := TfrmKlient.Create(Application);
    frmKlient.AllEdit := True;
    frmKlient.AktivKlient := AktivKlient;
    frmKlient.ShowModal;
    frmKlient.Release;
    acLogin.Execute;
  end;
end;

function TfrmCRM.GenererPurring: Boolean;
begin
  frmPurring := TfrmPurring.Create(Application);
  Result := frmPurring.ShowModal = mrOK;
  frmPurring.Release;
end;

procedure TfrmCRM.acFakturaStatusExecute(Sender: TObject);
begin
  if Pc.ActivePage = tsFaktura then begin
    frmFakturaStatus := TfrmFakturaStatus.Create(Application);
    if frmFakturaStatus.ShowModal = mrOK then begin
      if Dm.cdsFaktura.State in [dsEdit, dsInsert] then
        Dm.cdsFaktura.Post;
      Dm.cdsFaktura.ApplyUpdates(-1);
      Dm.cdsFaktura.RefreshRecord;
    end
    else begin
      Dm.cdsFaktura.Cancel;
      Dm.cdsFaktura.CancelUpdates;
    end;
    frmFakturaStatus.Release;
  end
  else if Pc.ActivePage = tsPurring then begin  
    frmFakturaStatus := TfrmFakturaStatus.Create(Application);
    frmFakturaStatus.dblStatus.DataSource := Dm.dsPurring;
    if frmFakturaStatus.ShowModal = mrOK then begin
      if Dm.cdsPurring.State in [dsEdit, dsInsert] then
        Dm.cdsPurring.Post;
      Dm.cdsPurring.ApplyUpdates(-1);
      Dm.cdsPurring.RefreshRecord;
    end
    else begin
      Dm.cdsPurring.Cancel;
      Dm.cdsPurring.CancelUpdates;
    end;
    frmFakturaStatus.Release;
  end;
end;

procedure TfrmCRM.acPrisHistorikkExecute(Sender: TObject);
begin
  frmPrisHistorikk := TfrmPrisHistorikk.Create(Application);
  frmPrisHistorikk.ShowModal;
  frmPrisHistorikk.Release;
end;

procedure TfrmCRM.acInnstillingerExecute(Sender: TObject);
begin
  frmInnstillinger := TfrmInnstillinger.Create(Application);
  frmInnstillinger.ShowModal;
  frmInnstillinger.Release;
end;

procedure TfrmCRM.dbgPurringDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if gdSelected in State then begin
     dbgPurring.Canvas.Brush.Color := clHighLight; //need that highlight for 'focus'
     dbgPurring.Canvas.Font.Color := clWhite;
  end;
  if (DataCol = 2) then begin
    dbgPurring.Canvas.Font.Color := clRed;
  end;
  dbgPurring.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmCRM.tbxHelp1Click(Sender: TObject);
begin
  Dm.OpenWebHelp('1001');  
end;

procedure TfrmCRM.tbxHelp2Click(Sender: TObject);
begin
  Dm.OpenWebHelp('1002');
end;

procedure TfrmCRM.tbxHelp3Click(Sender: TObject);
begin
  Dm.OpenWebHelp('1003');
end;

procedure TfrmCRM.tbxHelp4Click(Sender: TObject);
begin
  Dm.OpenWebHelp('1004');
end;

procedure TfrmCRM.acExportExecute(Sender: TObject);
begin
  frmEksport := TfrmEksport.Create(Application);
  frmEksport.ShowModal;
  frmEksport.Release;
end;

procedure TfrmCRM.acSalgstallExecute(Sender: TObject);
begin
  frmSalgstall := TfrmSalgstall.Create(Application);
  frmSalgstall.ShowModal;
  frmSalgstall.Release;
end;

procedure TfrmCRM.dbgKontoTitleBtnDblClick(Sender: TObject; ACol: Integer;
  Field: TField);
begin
  with Sender as TJvDbGrid do
    NullStillIndex(TJvDbGrid(Sender), Field.DataSet);
end;

procedure TfrmCRM.dbgKontoTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
begin
  with Sender as TJvDbGrid do
    if not IndexFunnet(TJvDbGrid(Sender), Field.DataSet, Field.FieldName) then
      NullStillIndex(TJvDbGrid(Sender), Field.DataSet);
end;

procedure TfrmCRM.acMvaPeriodeExecute(Sender: TObject);
begin
  frmMvaPeriode := TfrmMvaPeriode.Create(Application);
  frmMvaPeriode.ShowModal;
  frmMvaPeriode.Release;
  Dm.cdsPost.Refresh;
  Dm.cdsBilag.Refresh;
end;

procedure TfrmCRM.cbBilagAarChange(Sender: TObject);
var
  Aar: Integer;
begin
  Aar := StrToInt(cbBilagAar.Text);
  Dm.g_BilagAar := Aar;
  OppdaterBilagListe;
  SetUserInt(RegPath, 'BilagAar' + IntToStr(Dm.g_KlientID), Aar);
end;

procedure TfrmCRM.acKontoOppslagExecute(Sender: TObject);
begin
  frmKontoOppslag := TfrmKontoOppslag.Create(Application);
  frmKontoOppslag.ShowModal;
  frmKontoOppslag.Release;
end;

procedure TfrmCRM.dbgBilagDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  FileInfo : TSHFileInfo;
  SIcon : TIcon;
begin
  if DataCol = 0 then begin
    if Dm.cdsBilagFARGE.Value > 0 then
      dbgBilag.Canvas.Font.Color := Dm.cdsBilagFARGE.Value;
    dbgBilag.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    if not Dm.cdsBilagBILDEINDEX.IsNull then
      Dm.ilBilagSerie.Draw(dbgBilag.Canvas, Rect.Left + 2, Rect.Top, Dm.cdsBilagBILDEINDEX.Value);
  end
  else if DataCol = 1 then begin // 1 = X column (Godkjent symbol)
    if (Dm.cdsBilagGODKJENT.Value = 1) then
      Dm.ImageListPC.Draw(dbgBilag.Canvas, Rect.Left + 3 , Rect.Top, 6);
  end
  else if DataCol = 7 then begin  // 7 = Beløp

    if not (gdSelected in State) then begin
      if Dm.cdsBilagBELOP.Value < 0 then
        dbgBilag.Canvas.Font.Color := clMaroon
      else
        dbgBilag.Canvas.Font.Color := clGreen;
      dbgBilag.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;

  end
  else if DataCol = 10 then begin  //10 = X column (Dokument icon)

    if Dm.cdsBilagDOKUMENT.IsNull = False then begin
      SIcon := TIcon.Create;
      try
        SHGetFileInfo(PWideChar(ExtractFileExt(Dm.cdsBilagDOKUMENT.Value)), 0, FileInfo,
          SizeOf(FileInfo), SHGFI_ICON + SHGFI_SMALLICON + SHGFI_USEFILEATTRIBUTES);
        SIcon.Handle := FileInfo.hIcon;
        dbgBilag.Canvas.Draw(Rect.Left + 1, Rect.Top, SIcon);
      finally
        SIcon.Free;
      end;
    end;

  end;
end;

procedure TfrmCRM.dbgBilagMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  ACol, ARow: Integer;
begin
  if not (ssCtrl in Shift) then Exit;

  dbgBilag.MouseToCell(X, Y, ACol, ARow);
  if (ACol = 10) or (ACol = 11) then begin
    if not Dm.cdsBilagDOKUMENT.IsNull then
      acBilagOpenDoc.Execute
    else
      acBilagLinkDoc.Execute;
  end;
end;

procedure TfrmCRM.dbgBilagMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  dbgBilag.UnselectAll;
end;

procedure TfrmCRM.acGodkjennExecute(Sender: TObject);
var I: Integer;
begin
  if Dm.cdsBilagGODKJENT.Value = 1 then begin
    if GetKeyState(VK_CONTROL) then begin
      if ConfirmDialog('Bilag', 'Fjern godkjennelsen fra bilaget?') then begin
        Dm.cdsBilag.Edit;
        Dm.cdsBilagGODKJENT.Value := 0;
        Dm.cdsBilag.Post;
        Dm.cdsBilag.ApplyUpdates(-1);
      end;
    end
    else begin
      InfoDialog('Bilag', 'Bilaget er allerede godkjent!');
    end;
    Exit;
  end;

  if ConfirmDialog('Bekreft', 'Er du sikker på at du vil godkjenne merkede bilag?') then begin
    if dbgBilag.SelCount > 1 then begin
      for I := 0 to dbgBilag.SelCount - 1 do begin
        dbgBilag.GotoSelection(I);
        Dm.cdsBilag.Edit;
        Dm.cdsBilagGODKJENT.Value := 1;
        Dm.cdsBilag.Post;
      end;
    end
    else begin
      Dm.cdsBilag.Edit;
      Dm.cdsBilagGODKJENT.Value := 1;
      Dm.cdsBilag.Post;
    end;
    Dm.cdsBilag.ApplyUpdates(-1);
  end;
end;

procedure TfrmCRM.cbVisApneClick(Sender: TObject);
begin
  OppdaterBilagListe;
  dbgBilag.UnselectAll;
  SetUserBool(RegPath, 'VisApneBilag' + IntToStr(Dm.g_KlientID), cbVisApne.Checked);
end;

procedure TfrmCRM.dbgBilagCheckButton(Sender: TObject; ACol: Integer;
  Field: TField; var Enabled: Boolean);
begin
  if Field = nil then
    Enabled := False;
end;

procedure TfrmCRM.dbgLevDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if gdSelected in State then begin
     dbgLev.Canvas.Brush.Color := clHighLight; //need that highlight for 'focus'
     dbgLev.Canvas.Font.Color := clWhite;
  end
  else if (Dm.cdsLevAKTIV.Value = 0) then begin
    dbgLev.Canvas.Brush.Color := $00F0F0F0;
    dbgLev.Canvas.Font.Color := clWindowText;
  end;
  dbgLev.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmCRM.dbgKunderDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if gdSelected in State then begin
     dbgKunder.Canvas.Brush.Color := clHighLight; //need that highlight for 'focus'
     dbgKunder.Canvas.Font.Color := clWhite;
  end
  else if (Dm.cdsKundeAKTIV.Value = 0) then begin
    dbgKunder.Canvas.Brush.Color := $00F0F0F0;
    dbgKunder.Canvas.Font.Color := clWindowText;
  end;
  dbgKunder.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmCRM.cbVisProdAktivClick(Sender: TObject);
begin
  SetUserBool(RegPath, 'VisProdAktiv', cbVisProdAktiv.Checked);
  if not InLoading then
    tvKatChange(Self, tvKat.Selected);
end;

procedure TfrmCRM.acGenFakturaBilagExecute(Sender: TObject);
begin
  Dm.adoKlient.Open;
  if Dm.adoKlientKONTOSALG.IsNull then begin
    AlertDialog('Systemkonto', 'Det er ikke spesifisert noen systemkonto for salg.' +
        #13#10 + 'Dette kan settes under firmainfo for aktivt firma.');
    Dm.adoKlient.Close;
    Exit;
  end;

  if Dm.cdsFakturaIDBILAG.Value > 0 then begin
    AlertDialog('Generering av Bilag', 'Bilag for denne fakturaen er allerede generert!');
  end
  else begin
   dmFunction.GenererFakturaBilag;
    InfoDialog('Fakturabilag', 'Bilag for denne fakturaen er opprettet!');
  end;
  Dm.adoKlient.Close;
end;

procedure TfrmCRM.acGenOrdreFakturaExecute(Sender: TObject);
begin
  if dmFunction.GenererOrdreFaktura(Dm.cdsOrdreIDORDRE.Value, Dm.cdsOrdreORDRENR.Value,
    Dm.cdsOrdreKUNDENR.Value, 0, Dm.cdsOrdreINTERNREF.Value, Dm.cdsOrdreEKSTERNREF.Value,
    Dm.cdsOrdreREFNR.Value) > 0 then begin
    Dm.cdsOrdre.Edit;
    Dm.cdsOrdreIDORDRESTATUS.Value := 40; //Levert
    Dm.cdsOrdre.Post;
    Dm.cdsOrdre.ApplyUpdates(-1);
    Dm.cdsOrdre.RefreshRecord;
    InfoDialog('Faktura', 'Faktura for denne ordren er generert!');
  end;
end;

procedure TfrmCRM.acGenBetalingBilagExecute(Sender: TObject);
begin
  Dm.adoKlient.Open;
  if (Dm.adoKlientKONTOKONTANT.IsNull) or (Dm.adoKlientKONTOBANK.IsNull) then begin
    AlertDialog('Systemkonto', 'Det er ikke spesifisert noen systemkonto for bankinnskudd / kontanter.' +
        #13#10 + 'Dette kan settes under firmainfo for aktivt firma.');
    Dm.adoKlient.Close;
    Exit;
  end;
  if dmFunction.GenererInnbetalingBilag > 0 then
    InfoDialog('Betalingsbilag', 'Bilag for betalingen av denne fakturaen er opprettet!')
  else
    AlertDialog('Betalingsbilag', 'Det ble ikke funnet noen innbetaling eller bilaget er allerede generert!');

  Dm.adoKlient.Close;
end;

procedure TfrmCRM.acProcessAboExecute(Sender: TObject);
begin
  frmAboGenerering := TfrmAboGenerering.Create(Application);
  frmAboGenerering.ShowModal;
  frmAboGenerering.Release;
end;

procedure TfrmCRM.acGenererBilagExecute(Sender: TObject);
begin
  frmBilagAutoGen := TfrmBilagAutoGen.Create(Application);
  frmBilagAutoGen.ShowModal;
  frmBilagAutoGen.Release;
  acOppdater.Execute;
end;

procedure TfrmCRM.acInnbetalingerExecute(Sender: TObject);
begin
  frmInnbetalinger := TfrmInnbetalinger.Create(Application);
  frmInnbetalinger.IdFaktura := Dm.cdsFakturaIDFAKTURA.Value;
  frmInnbetalinger.ShowModal;
  frmInnbetalinger.Release;
end;

end.
