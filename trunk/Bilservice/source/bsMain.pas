unit bsMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TBXStatusBars, TB2Dock, TB2Toolbar, TBX, ExtCtrls, ImgList,
  TB2Item, blsAppPosition, XPMan, ActnList, AppEvnts, StBase, StVInfo,
  pngimage, StdCtrls, ComCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  Splites, blsBorderPanel, MidasLib, DBCtrls, Menus, DB, Buttons;

type
  TfrmMain = class(TForm)
    sbMain: TTBXStatusBar;
    Panel1: TPanel;
    tbxDocToolbar: TTBXDock;
    tbtToolbar: TTBXToolbar;
    pnlBack: TPanel;
    ActionList: TActionList;
    XPManifest: TXPManifest;
    blsAppPosition: TblsAppPosition;
    TBXItem1: TTBXItem;
    tbxDockMain: TTBXDock;
    AppEvent: TApplicationEvents;
    stVer: TStVersionInfo;
    Label5: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Image1: TImage;
    acAvslutt: TAction;
    acNy: TAction;
    acLogin: TAction;
    pnlMain: TPanel;
    pcFunc: TPageControl;
    tsService: TTabSheet;
    blsBorderPanel8: TblsBorderPanel;
    Splites10: TSplites;
    Panel10: TPanel;
    dgbTilbud: TJvDBGrid;
    tsBil: TTabSheet;
    blsBorderPanel1: TblsBorderPanel;
    Splites1: TSplites;
    Panel2: TPanel;
    dbgBil: TJvDBGrid;
    TBXToolbar1: TTBXToolbar;
    TBXSubmenuItem1: TTBXSubmenuItem;
    TBXItem2: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem3: TTBXItem;
    tbtTools: TTBXToolbar;
    acCalc: TAction;
    TBXItem4: TTBXItem;
    acLogout: TAction;
    TBXItem5: TTBXItem;
    TBXItem6: TTBXItem;
    Label1: TLabel;
    Bevel1: TBevel;
    ImageList16: TImageList;
    ImageList24: TImageList;
    acEndre: TAction;
    TBXItem7: TTBXItem;
    acBackup: TAction;
    acBrukeradmin: TAction;
    TBXItem8: TTBXItem;
    TBXItem9: TTBXItem;
    acSlett: TAction;
    TBXItem10: TTBXItem;
    TBXSubmenuItem2: TTBXSubmenuItem;
    TBXSubmenuItem3: TTBXSubmenuItem;
    TBXSubmenuItem4: TTBXSubmenuItem;
    acOppdater: TAction;
    TBXItem11: TTBXItem;
    DBText1: TDBText;
    TBXItem12: TTBXItem;
    TBXItem13: TTBXItem;
    TBXItem14: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXItem15: TTBXItem;
    TBXItem16: TTBXItem;
    TBXItem17: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    acRegKmStand: TAction;
    TBXSeparatorItem4: TTBXSeparatorItem;
    TBXItem18: TTBXItem;
    Label6: TLabel;
    Label7: TLabel;
    DBText2: TDBText;
    Label8: TLabel;
    DBText3: TDBText;
    Label9: TLabel;
    DBText4: TDBText;
    Label10: TLabel;
    DBText5: TDBText;
    Label11: TLabel;
    DBText6: TDBText;
    popBil: TTBXPopupMenu;
    TBXItem19: TTBXItem;
    TBXItem20: TTBXItem;
    TBXItem21: TTBXItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    TBXSeparatorItem6: TTBXSeparatorItem;
    TBXItem22: TTBXItem;
    popService: TTBXPopupMenu;
    TBXItem23: TTBXItem;
    TBXItem24: TTBXItem;
    TBXItem25: TTBXItem;
    TBXSeparatorItem7: TTBXSeparatorItem;
    Bevel2: TBevel;
    Label12: TLabel;
    lblAar: TLabel;
    cbAar: TComboBox;
    tvKat: TTreeView;
    acRapporter: TAction;
    TBXSubmenuItem5: TTBXSubmenuItem;
    TBXItem26: TTBXItem;
    TBXItem27: TTBXItem;
    TBXSeparatorItem8: TTBXSeparatorItem;
    TBXSeparatorItem9: TTBXSeparatorItem;
    acSupport: TAction;
    avWeb: TAction;
    TBXItem28: TTBXItem;
    TBXItem29: TTBXItem;
    btnAar: TSpeedButton;
    TBXSeparatorItem10: TTBXSeparatorItem;
    acSettings: TAction;
    TBXItem30: TTBXItem;
    TBXSeparatorItem11: TTBXSeparatorItem;
    TBXItem31: TTBXItem;
    procedure FormCreate(Sender: TObject);
    procedure acAvsluttExecute(Sender: TObject);
    procedure AppEventActivate(Sender: TObject);
    procedure acLoginExecute(Sender: TObject);
    procedure acCalcExecute(Sender: TObject);
    procedure acLogoutExecute(Sender: TObject);
    procedure acNyExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acEndreExecute(Sender: TObject);
    procedure acSlettExecute(Sender: TObject);
    procedure acOppdaterExecute(Sender: TObject);
    procedure acBackupExecute(Sender: TObject);
    procedure acBrukeradminExecute(Sender: TObject);
    procedure acRegKmStandExecute(Sender: TObject);
    procedure dbgBilDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure pcFuncChange(Sender: TObject);
    procedure dbgBilTitleBtnDblClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgBilTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure acRapporterExecute(Sender: TObject);
    procedure cbAarChange(Sender: TObject);
    procedure acSupportExecute(Sender: TObject);
    procedure avWebExecute(Sender: TObject);
    procedure tvKatChange(Sender: TObject; Node: TTreeNode);
    procedure tvKatEditing(Sender: TObject; Node: TTreeNode;
      var AllowEdit: Boolean);
    procedure btnAarClick(Sender: TObject);
    procedure acSettingsExecute(Sender: TObject);
  private
    { Private declarations }
    ExeAdmin, ExeBackup: TFileName;
    procedure Login;
    procedure Logout;
    procedure OppdaterActions(Aktiv: Boolean);
    procedure LastVerktoy;
    function IndexFunnet(Grid: TJvDBGrid; Table: TDataSet;
      FieldName: String): Boolean;
    procedure NullStillIndex(Grid: TJvDBGrid; Table: TDataSet);
    procedure LastAar;
    procedure OppdaterServiceListe(DoRefresh: Boolean = True);
    procedure SetServiceDate;
    procedure RefreshServiceRecord;
    procedure OppdaterAarFarge;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses bsLogin, blsDialogs, bsData, IniFiles, JclSysInfo, blsFileUtil,
  TbxOffice2003Theme, bsBil, bsKmReg, bsService, TypInfo, bsRapport,
  DateUtils, blsRegistry, blsMisc, bsSettings;

{$R *.dfm}

procedure TfrmMain.LastAar;
var I: Integer;
begin
  cbAar.Items.Clear;
  for I := 0 to 10 do
    cbAar.Items.Add(IntToStr(YearOf(Date)+ 1 - I));
end;

procedure TfrmMain.FormCreate(Sender: TObject);
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

  stVer.FileName := Application.ExeName;
  Caption := Caption + ' - ' + stVer.FileVersion;
  sbMain.Panels[2].Caption := DateToStr(Date);
  LastVerktoy;
  LastAar;

  cbAar.ItemIndex := cbAar.Items.IndexOf( IntToStr( GetUserInt(RegPath, 'ServiceAar', YearOf(Date))) );
end;

procedure TfrmMain.LastVerktoy;
var Ini: TIniFile;
begin
  Ini := TIniFile.Create(Dir + 'config.ini');
  try
    ExeAdmin := Ini.ReadString('Generelt', 'UserAdmin', '');
    ExeBackup := Ini.ReadString('Generelt', 'DataBackup', '');
  finally
    Ini.Free;
  end;

  acBackup.Enabled := (ExeBackup <> '') and FileExists(ExeBackup);
  acBrukerAdmin.Enabled := (ExeAdmin <> '') and FileExists(ExeAdmin);
end;

procedure TfrmMain.acAvsluttExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.AppEventActivate(Sender: TObject);
begin
  if not (AppEvent.Tag = 1) then begin
    AppEvent.Tag := 1;
    acLogin.Execute;
  end;
end;

procedure TfrmMain.acLoginExecute(Sender: TObject);
begin
  frmLogin := TfrmLogin.Create(Application);
  if frmLogin.ShowModal = mrOK then
    Login;
  frmLogin.Release;
end;

procedure TfrmMain.Login;
var Ix: Integer;
begin
  dmData.Connect;
  pnlMain.Visible := True;

  acLogout.Visible := True;
  acLogin.Visible := False;

  pcFunc.ActivePageIndex := 0;
  OppdaterActions(True);

  dmData.cdsBil.Open;
  dmData.cdsService.Open;

  dmData.LastKategorier(tvKat);
  Ix := GetUserInt(RegPath, 'ValgtBil');
  if Ix = -1 then
    Ix := 0;
  tvKat.Items.Item[Ix].Selected := True;

  sbMain.Panels[0].Caption := '  ' + dmData.g_Bruker;

  cbAarChange(Self);  //Setter riktig farge avhengig av år.
  pcFuncChange(Self);
end;

procedure TfrmMain.acLogoutExecute(Sender: TObject);
begin
  acLogin.Visible := True;
  acLogout.Visible := False;
  Logout;
  acLogin.Execute;
end;

procedure TfrmMain.Logout;
begin
  dmData.Disconnect;
  pnlMain.Visible := False;

  OppdaterActions(False);
  dmData.FreeKategorier(tvKat);

  if dmData.cdsBil.State in [dsEdit, dsInsert] then
    dmData.cdsBil.Post;
  dmData.cdsBil.ApplyUpdates(-1);
  dmData.cdsBil.Close;

  if dmData.cdsService.State in [dsEdit, dsInsert] then
    dmData.cdsService.Post;
  dmData.cdsService.ApplyUpdates(-1);
  dmData.cdsService.Close;
  sbMain.Panels[0].Caption := '';
end;

procedure TfrmMain.OppdaterActions(Aktiv: Boolean);
begin
  //Fil
  acNy.Enabled := Aktiv;
  acRegKmStand.Enabled := Aktiv;

  //Rediger
  acEndre.Enabled := Aktiv;
  acSlett.Enabled := Aktiv;
  acOppdater.Enabled := Aktiv;
  acSettings.Enabled := Aktiv;

  //Vis
  acRapporter.Enabled := Aktiv;
end;

procedure TfrmMain.acCalcExecute(Sender: TObject);
begin
  WinExec('calc.exe', SW_SHOWDEFAULT);
end;

procedure TfrmMain.SetServiceDate;
var Aar: Integer;
begin
  Aar := StrToInt(cbAar.Text);
  if Aar = YearOf(Date) then Exit;

  if Aar > YearOf(Date) then
    dmData.cdsServiceDATO.Value := StartOfAYear(Aar)
  else if Aar < YearOf(Date) then
    dmData.cdsServiceDATO.Value := EndOfAYear(Aar);
end;

procedure TfrmMain.acNyExecute(Sender: TObject);
var
  NewId: Integer;
begin
  if pcFunc.ActivePage = tsBil then begin
    dmData.cdsBil.First;
    dmData.cdsBil.Insert;
    dmData.cdsBil.Post;
    NewID := dmData.cdsBilIDBIL.Value;
    dmData.cdsBil.ApplyUpdates(-1);
    //dmData.cdsBil.RefreshRecord;

    frmBil := TfrmBil.Create(Application);
    frmBil.NyBil := True;
    if frmBil.ShowModal <> mrOK then begin
      dmData.cdsBil.Delete;
      dmData.cdsBil.ApplyUpdates(-1);
    end;
    frmBil.Release;
    dmData.cdsBil.Refresh;
    dmData.cdsBil.Locate('IDBIL', NewID, []);
  end

  else if pcfunc.ActivePage = tsService then begin
    dmData.cdsService.First;
    dmData.cdsService.Insert;
    if tvKat.Selected <> nil then
      if tvKat.Selected.AbsoluteIndex > 0 then
        dmData.cdsServiceIDBIL.Value := TIdBil(tvKat.Selected.Data).IdBil;
    SetServiceDate;
    dmData.cdsService.Post;
    dmData.cdsService.ApplyUpdates(-1);
    dmData.cdsService.RefreshRecord;

    frmService := TfrmService.Create(Application);
    frmService.NyService := True;
    if frmService.ShowModal = mrOK then begin
      RefreshServiceRecord;
    end
    else begin
      dmData.cdsService.Delete;
      dmData.cdsService.ApplyUpdates(-1);
    end;
    frmService.Release;
  end;
end;

procedure TfrmMain.RefreshServiceRecord;
begin
  if (frmService.cdsServiceIDBIL.Value = dmData.cdsServiceIDBIL.Value) and
    (YearOf(frmService.cdsServiceDATO.Value) = StrToInt(cbAar.Text)) then
      dmData.cdsService.RefreshRecord
  else begin
    if (frmService.cdsServiceIDBIL.Value <> dmData.cdsServiceIDBIL.Value) then
      tvKat.Items.Item[0].Selected := True;
    if YearOf(frmService.cdsServiceDATO.Value) <> StrToInt(cbAar.Text) then begin
      cbAar.ItemIndex := cbAar.Items.IndexOf( IntToStr(YearOf(frmService.cdsServiceDATO.Value)) );
      OppdaterAarFarge;
    end;

    OppdaterServiceListe(True);
    dmData.cdsService.Locate('IDSERVICE', frmService.cdsServiceIDSERVICE.Value, []);
  end;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if acLogout.Visible then
    Logout;
end;

procedure TfrmMain.acEndreExecute(Sender: TObject);
begin
  if pcFunc.ActivePage = tsBil then begin
    frmBil := TfrmBil.Create(Application);
    if frmBil.ShowModal = mrOK then
      dmData.cdsBil.Refresh
    else begin
      if frmBil.NyBil = True then begin
        //Her er det trykket "Ny" etter endring av en bil og avbrutt reg.
        dmData.cdsBil.Delete;
        dmData.cdsBil.ApplyUpdates(-1);
      end;
    end;
    frmBil.Release;
  end
  else if pcFunc.ActivePage = tsService then begin
    frmService := TfrmService.Create(Application);
    if frmService.ShowModal = mrOK then
      dmData.cdsService.RefreshRecord;
    frmService.Release;
  end;
end;

procedure TfrmMain.acSettingsExecute(Sender: TObject);
begin
  frmSettings := TfrmSettings.Create(Application);
  frmSettings.ShowModal;
  frmSettings.Release;
end;

procedure TfrmMain.acSlettExecute(Sender: TObject);
begin
  if pcFunc.ActivePage = tsBil then begin
    if dmData.cdsBil.RecordCount = 0 then Exit;
    if ConfirmDialog('Slette?', 'Er du sikker på at du vil slette kjøretøyet ' +
      QuotedStr(dmData.cdsBilREGNR.Value) + '?') then begin
      dmData.cdsBil.Delete;
      dmData.cdsBil.ApplyUpdates(-1);
    end;
  end
  else if pcFunc.ActivePage = tsService then begin
    if dmData.cdsService.RecordCount = 0 then Exit;
    if ConfirmDialog('Slette?', 'Er du sikker på at du vil slette registreringen ' +
      QuotedStr(dmData.cdsServiceBESKRIVELSE.Value) + '?') then begin
      dmData.cdsService.Delete;
      dmData.cdsService.ApplyUpdates(-1);
    end;
  end;
end;

procedure TfrmMain.acOppdaterExecute(Sender: TObject);
begin
  if pcFunc.ActivePage = tsBil then
    dmData.cdsBil.Refresh
  else if pcFunc.ActivePage = tsService then begin
    dmData.LastKategorier(tvKat);  
    dmData.cdsService.Refresh;
  end;
end;

procedure TfrmMain.acBackupExecute(Sender: TObject);
begin
  WinExec(PAnsiChar(ExeBackup), SW_SHOWDEFAULT);
end;

procedure TfrmMain.acBrukeradminExecute(Sender: TObject);
begin
  WinExec(PAnsiChar(ExeAdmin), SW_SHOWDEFAULT);
end;

procedure TfrmMain.acRegKmStandExecute(Sender: TObject);
begin
  frmKmstand := TfrmKmstand.Create(Application);
  frmKmstand.IdBil := dmData.cdsBilIDBIL.Value;
  frmKmStand.Bilinfo := dmData.cdsBilREGNR.Value + ' ' + dmData.cdsBilMERKE.Value;
  frmKmstand.ShowModal;
  frmKmstand.Release;
end;

procedure TfrmMain.dbgBilDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if gdSelected in State then begin
     dbgBil.Canvas.Brush.Color := clNavy; //need that highlight for 'focus'
     dbgBil.Canvas.Font.Color := clWhite;
  end
  else if (dmData.cdsBilAKTIV.Value = 0) then begin
    dbgBil.Canvas.Brush.Color := $00F0F0F0;
    dbgBil.Canvas.Font.Color := clWindowText;
  end;
  dbgBil.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmMain.pcFuncChange(Sender: TObject);
begin
  acRegKmStand.Enabled := pcFunc.ActivePage = tsBil;
end;

procedure TfrmMain.NullStillIndex(Grid: TJvDBGrid; Table: TDataSet);
begin
  Grid.SortMarker := smNone;
  Grid.SortedField := '';
  if IsPublishedProp(Table, 'IndexName') then
    SetStrProp(Table, 'IndexName', '');
end;

function TfrmMain.IndexFunnet(Grid: TJvDBGrid; Table: TDataSet; FieldName: String): Boolean;
var
  IxName: String;
  IndexDefs: TIndexDefs;
  I: Integer;
begin
  Result := False;

  IxName := '';
  if IsPublishedProp(Table, 'IndexName') then
    IxName := GetStrProp(Table, 'IndexName');
  if IsPublishedProp(Table, 'IndexDefs') then
    IndexDefs := TIndexDefs(GetOrdProp(Table, 'IndexDefs'))
  else
    IndexDefs := nil;

  if Assigned(IndexDefs) then begin
    I := IndexDefs.IndexOf(IxName);
    if I > -1 then
      Result := Pos(FieldName, IndexDefs.Items[I].Fields) >= 1;
  end;
end;

procedure TfrmMain.dbgBilTitleBtnDblClick(Sender: TObject; ACol: Integer;
  Field: TField);
begin
  with Sender as TJvDbGrid do
    NullStillIndex(TJvDbGrid(Sender), Field.DataSet);
end;

procedure TfrmMain.dbgBilTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
begin
  with Sender as TJvDbGrid do
    if not IndexFunnet(TJvDbGrid(Sender), Field.DataSet, Field.FieldName) then
      NullStillIndex(TJvDbGrid(Sender), Field.DataSet);
end;

procedure TfrmMain.acRapporterExecute(Sender: TObject);
begin
  frmRapport := TfrmRapport.Create(Application);
  frmRapport.ShowModal;
  frmRapport.Release;
end;

procedure TfrmMain.OppdaterAarFarge;
begin
  if StrToInt(cbAar.Text) <> YearOf(Date) then
    lblAar.Font.Color := clRed
  else
    lblAar.Font.Color := clWindowText;
end;

procedure TfrmMain.cbAarChange(Sender: TObject);
begin
  OppdaterAarFarge;

  SetUserInt(RegPath, 'ServiceAar', StrToInt(cbAar.Text));
  OppdaterServiceListe;
end;

procedure TfrmMain.OppdaterServiceListe(DoRefresh: Boolean = True);
var VisAlle: Boolean;
    Id, Aar: Integer;
begin
  Aar := StrToIntDef(cbAar.Text, YearOf(Date));

  Id := 0;
  if tvKat.Selected = nil then
    VisAlle := True
  else begin
    if tvKat.Selected.AbsoluteIndex = 0 then
      VisAlle := True
    else begin
      VisAlle := False;
      Id := TIdBil(tvKat.Selected.Data).IdBil
    end;
  end;

{  if VisAlle then begin
    dmData.adoService.Parameters.ParamValues['ShowAll'] := 1;
    dmData.adoService.Parameters.ParamValues['IdBil'] := 0;
  end
  else begin
    dmData.adoService.Parameters.ParamValues['ShowAll'] := 0;
    dmData.adoService.Parameters.ParamValues['IdBil'] := Id;
  end;

  dmData.adoService.Parameters.ParamValues['StartDate'] := StartOfAYear(Aar);
  dmData.adoService.Parameters.ParamValues['EndDate'] := EndOfAYear(Aar);}

  if VisAlle then begin
    dmData.cdsService.Params.ParamValues['ShowAll'] := 1;
    dmData.cdsService.Params.ParamValues['IdBil'] := 0;
  end
  else begin
    dmData.cdsService.Params.ParamValues['ShowAll'] := 0;
    dmData.cdsService.Params.ParamValues['IdBil'] := Id;
  end;

  dmData.cdsService.Params.ParamValues['StartDate'] := StartOfAYear(Aar);
  dmData.cdsService.Params.ParamValues['EndDate'] := EndOfAYear(Aar);

  if DoRefresh then begin
    dmData.cdsService.Refresh;
    //dmData.cdsService.Close;
    //dmData.cdsService.Open;
  end;
end;

procedure TfrmMain.acSupportExecute(Sender: TObject);
begin
  blsMisc.SendMail('support@fakuva.no', 'BLS Bilservice Support', 'Autogenerert Support E-post: Ver. ' + stVer.FileVersion);
end;

procedure TfrmMain.avWebExecute(Sender: TObject);
begin
  blsMisc.StartWeb('http://www.fakuva.no');
end;

procedure TfrmMain.tvKatChange(Sender: TObject; Node: TTreeNode);
begin
  SetUserInt(RegPath, 'ValgtBil', tvKat.Selected.Index);
  OppdaterServiceListe;
end;

procedure TfrmMain.tvKatEditing(Sender: TObject; Node: TTreeNode;
  var AllowEdit: Boolean);
begin
  AllowEdit := False;
end;

procedure TfrmMain.btnAarClick(Sender: TObject);
begin
  cbAar.ItemIndex := cbAar.Items.IndexOf( IntToStr(YearOf(Date)) );
  cbAarChange(Self);
end;

end.
