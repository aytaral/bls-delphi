unit faFaktura;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, DBGrids, Buttons, DBCtrls, DB, Mask,
  ComCtrls, ToolWin, Menus, Registry, ExtCtrls, Grids, IniFiles, DBTables,
  DBClient;

type
  TFrmFaktura = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditKundenr: TEdit;
    VareGrid: TDBGrid;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ForfallsDato: TDateTimePicker;
    Label10: TLabel;
    BtnOk: TButton;
    BtnAvbryt: TButton;
    Label11: TLabel;
    Label15: TLabel;
    FakturaDato: TDateTimePicker;
    InfoPanel: TPanel;
    LblEks: TLabel;
    LblMoms: TLabel;
    LblTotal: TLabel;
    Label9: TLabel;
    MainMenu1: TMainMenu;
    faktura1: TMenuItem;
    Lukk1: TMenuItem;
    N1: TMenuItem;
    Leggtilvare1: TMenuItem;
    Slettvare1: TMenuItem;
    Rediger1: TMenuItem;
    Endrevarenummer1: TMenuItem;
    Velgkunde1: TMenuItem;
    Nyreferanse1: TMenuItem;
    Label5: TLabel;
    Label12: TLabel;
    ImageLogo: TImage;
    DBEks: TDBText;
    DBRabatt: TDBText;
    DBMva: TDBText;
    DBTotal: TDBText;
    Label2: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    BevelSum: TBevel;
    PanelDB: TPanel;
    Label13: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DbReferanseV: TDBComboBox;
    DbReferanseD: TDBEdit;
    DbOrdrenr: TDBEdit;
    DbPakkenr: TDBEdit;
    DbcBetalt: TDBComboBox;
    DbFakturanr: TDBEdit;
    DbKunde: TDBEdit;
    DbKundeadr: TDBEdit;
    DbKundePostnr: TDBEdit;
    DbKundePoststed: TDBEdit;
    DbFakturaTekst: TDBMemo;
    LblFortjeneste: TLabel;
    LblFortjenesteP: TLabel;
    BtnVelgKunde: TButton;
    BtnFaktura: TButton;
    MFakturatekst: TMenuItem;
    Skettervare1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Label18: TLabel;
    LblInn: TLabel;
    Label21: TLabel;
    N4: TMenuItem;
    MVip: TMenuItem;
    MVisInk: TMenuItem;
    BtnPost: TButton;
    CoolBar1: TCoolBar;
    ToolBar: TToolBar;
    TbNy: TToolButton;
    TbSlett: TToolButton;
    ToolButton5: TToolButton;
    TbNr: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    TbCalc: TToolButton;
    TbHent: TToolButton;
    ToolButton4: TToolButton;
    TbVip: TToolButton;
    TbMva: TToolButton;
    Verkty1: TMenuItem;
    Forsikring1: TMenuItem;
    N5: TMenuItem;
    Innstillinger1: TMenuItem;
    TblFakturaLinje: TTable;
    ToolButton3: TToolButton;
    ToolButton6: TToolButton;
    CdsSortering: TClientDataSet;
    CdsSorteringVarenr: TStringField;
    CdsSorteringInfo: TStringField;
    CdsSorteringAntall: TFloatField;
    CdsSorteringRabatt: TFloatField;
    CdsSorteringPris: TFloatField;
    CdsSorteringInnpris: TFloatField;
    CdsSorteringEnhet: TStringField;
    CdsSorteringMva: TFloatField;
    procedure OkFakturaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TbNyClick(Sender: TObject);
    procedure TBSlettClick(Sender: TObject);
    procedure EditKundenrExit(Sender: TObject);
    procedure TbNrClick(Sender: TObject);
    procedure VareGridEditButtonClick(Sender: TObject);
    procedure TbCalcClick(Sender: TObject);
    procedure EditKundenrKeyPress(Sender: TObject; var Key: Char);
    procedure VareGridColExit(Sender: TObject);
    procedure Lukk1Click(Sender: TObject);
    procedure DbReferanseVDropDown(Sender: TObject);
    procedure DbFakturanrExit(Sender: TObject);
    procedure FakturaDatoExit(Sender: TObject);
    procedure BtnVelgKundeClick(Sender: TObject);
    procedure BtnFakturaClick(Sender: TObject);
    procedure DbcBetaltChange(Sender: TObject);
    procedure Skettervare1Click(Sender: TObject);
    procedure Nyreferanse1Click(Sender: TObject);
    procedure DbcBetaltKeyPress(Sender: TObject; var Key: Char);
    procedure VareGridEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DbcBetaltExit(Sender: TObject);
    procedure DbFakturanrKeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton1Click(Sender: TObject);
    procedure TbHentClick(Sender: TObject);
    procedure TbVipClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TbMvaClick(Sender: TObject);
    procedure EditKundenrEnter(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure Innstillinger1Click(Sender: TObject);
    procedure Forsikring1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);

  private
    { Private declarations }
    Rab: Double;
    procedure Registrer;
    procedure RegistrerVare;
    procedure BeregnFortjeneste;
    function KontantSerie:Boolean;
    procedure HentInnKunde;
    procedure VisInkMva(Vis: Boolean);
    function HentStandardReferanse: String;

  public
    { Public declarations }
    IsNew: Boolean;
    procedure EndreFaktura;
    procedure LagNyFaktura;
    procedure VisVip(Vis :Boolean);
    procedure SettGridBredde;
  end;

var
  FrmFaktura: TFrmFaktura;


implementation

uses DataModul, faReferanse, faHentKunde, faVareSok, faHentvarer, unitReg,
  faPostBeregning, blsDB, faFakturaTools, blsFileUtil;

{$R *.DFM}

procedure TFrmFaktura.LagNyFaktura;
begin
  IsNew := True;
  FakturaDato.Date := Date;
  ForfallsDato.Date := Date + 14;
  with DM do begin
    FirmaDB.Refresh;
    FakturaDB.Append;
    FakturaDBFakturanr.Value := FirmaDBFakturanr.Value;

    //***** Øker neste fakturanummer med 1....
    FirmaDB.Edit;
    FirmaDBFakturanr.Value := FirmaDBFakturanr.Value + 1;
    FirmaDB.Post;

    FakturaDBFakturaDato.Value := FakturaDato.Date;
    FakturaDBForfallsDato.Value := ForfallsDato.Date;
    FakturaDBFakturatekst.Value := FirmaDBFakturaTekst.Value;
    FakturaDBVRef.Value := HentStandardReferanse;
    FakturaDB.Post;
  end;
end;

procedure TFrmFaktura.Registrer;
begin
  if IsNew and (DbcBetalt.ItemIndex = 3) and KontantSerie then begin
    Dm.FirmaDB.Edit;
    Dm.FirmaDBKontantnr.Value := Dm.FirmaDBKontantnr.Value + 1;
    Dm.FirmaDB.Post;
  end;
  Dm.SkrivTilLogg('Faktura nummer ' + FloatToStr(DM.FakturaDBFakturanr.Value) + ' fakturert kunde ' + DM.FakturaDBKunde.Value);
end;

function TFrmFaktura.KontantSerie:Boolean;
var Reg: TRegistry;
begin
 Reg := TRegistry.Create;
  try
    Reg.OpenKey('Software\Bls\Fakuva5\' + DM.FirmaDBFirma.Value, True);
    KontantSerie := ((Reg.ValueExists('KontantSerie')) and (Reg.ReadBool('KontantSerie') = True));
  finally
   Reg.Free;
  end;
end;

procedure TFrmFaktura.OkFakturaClick(Sender: TObject);
begin
 If EditKundenr.Text <> '' then
  Registrer
 else
 begin
  MessageDlg('Det er ikke valgt noen kunde!', mtInformation, [mbOk], 0);
  ModalResult := mrNone;
 end;
end;

procedure TFrmFaktura.FormClose(Sender: TObject; var Action: TCloseAction);
var Reg: TRegistry;
begin
  Dm.FirmaDB.Refresh;
  if IsNew and (ModalResult = mrCancel) and
  (Dm.FakturaDBFakturanr.Value = (Dm.FirmaDBFakturanr.Value - 1)) then begin
    Dm.FirmaDB.Edit;
    Dm.FirmaDBFakturanr.Value := Dm.FirmaDBFakturanr.Value - 1;
    Dm.FirmaDB.Post;
  end
  else if IsNew and (ModalResult = mrCancel) and
    (Dm.FakturaDBFakturanr.Value <> (Dm.FirmaDBFakturanr.Value - 1)) then begin
    MessageBox(Handle, 'En eller flere fakturaer med høyere fakturanummer er opprettet.' + #10#13 +
      'Fakturanummeret kan derfor ikke tilbakestilles. ' + #10#13 + 'Nummerserien må korrigeres manuelt!',
      'Nummerseriefeil!', MB_OK + MB_ICONINFORMATION);
  end;


  if Dm.FakturaDB.State IN [dsInsert, dsEdit] then
   Dm.FakturaDB.Post;
  Dm.FakturaDB.Refresh;

  Reg := TRegistry.Create;
  try
    Reg.OpenKey('\Software\Bls\Fakuva5\' + DM.FirmaDBFirma.Value + '\Sortering', True);
    if (Reg.ValueExists('Vare') = True) then
    case Reg.ReadInteger('Vare') of
     0: DM.SorterVarer('Varenr');
     1: DM.SorterVarer('Vare');
     2: DM.SorterVarer('IdKategori');
     3: DM.SorterVarer('IdLeverandor');
    end;
  finally
    Reg.Free;
  end;

  DM.VareDB.Filter := '';
  Action := caFree;
end;

procedure TFrmFaktura.EndreFaktura;
begin
  IsNew := False;
  with DM do begin
    FakturaDato.Date := FakturaDBFakturaDato.Value;
    ForfallsDato.Date := FakturaDBForfallsDato.Value;
    if KundeDB.Locate('IdKunde', FakturaDBIdKunde.Value, []) then begin
      EditKundenr.Text := FloatToStrF(DM.KundeDBKundenr.Value, ffFixed, 10, 0);
      Rab := Dm.KundeDBRabatt.Value;
      FrmFaktura.Caption := 'Faktura - ' + DM.FakturaDBKunde.Value;
    end;
    BeregnFortjeneste;
    ShowModal;
  end;
end;

procedure TFrmFaktura.TbNyClick(Sender: TObject);
begin
  Application.CreateForm(TFrmVareSok, FrmVareSok);
  DM.KoblingDB.Append;
  RegistrerVare;
end;

procedure TFrmFaktura.TBSlettClick(Sender: TObject);
begin
  if (MessageBox(Handle,PAnsiChar( 'Ønsker du å slette "' + DM.KoblingDBInfo.Value + '" fra fakturaen?'),
    'Slett vare?', MB_ICONQUESTION + MB_YESNO) = idYes) and
    (DM.KoblingDB.RecordCount > 0) then
      DM.KoblingDB.Delete;
end;

procedure TFrmFaktura.EditKundenrExit(Sender: TObject);
begin
 If (EditKundenr.Text <> '') and (IsNew = True) then begin
 With DM Do
  begin
   If KundeDB.Locate('Kundenr', EditKundenr.text, []) then
     begin
      HentInnKunde;
     end
   else
     begin
      EditKundenr.text := '';
      MessageDlg('Kundenummeret du har oppgitt finnes ikke!', mtInformation, [mboK], 0);
      EditKundenr.SetFocus;
     end;
  end;
 end;
 BtnOk.Default := True;
end;

procedure TFrmFaktura.TbNrClick(Sender: TObject);
begin
 DBFakturanr.SetFocus;
 DbFakturanr.ReadOnly := False;
 DbFakturanr.Color := clWhite;
 BtnOk.Default := False;
end;

procedure TFrmFaktura.RegistrerVare;
begin
 If FrmVareSok.ShowModal = mrOk then
 begin
    DM.KoblingDB.Edit;
    DM.KoblingDBVarenr.Value           := DM.VareDBVarenr.Value;
    DM.KoblingDBInfo.Value             := DM.VareDBVare.Value;
    DM.KoblingDBInnpris.Value          := DM.VareDBInnpris.Value;
    DM.KoblingDBPris.Value             := DM.VareDBPris.Value;
    Dm.KoblingDBMva.Value              := Dm.VareDBMvaKlasse.Value;
    If Rab > 0 then
     Dm.KoblingDBRabatt.Value          := Rab;
    If Dm.VareDBEnhet.Value <> '' then
     Dm.KoblingDBEnhet.Value           := Dm.VareDBEnhet.Value;

    DM.KoblingDB.Post;
    DM.VareDB.Filter := '';
    BeregnFortjeneste;
 end;
end;

procedure TFrmFaktura.VareGridEditButtonClick(Sender: TObject);
begin
 Application.CreateForm(TFrmVareSok, FrmVareSok);
 RegistrerVare;
end;

procedure TFrmFaktura.TbCalcClick(Sender: TObject);
begin
 WinExec('Calc', SW_SHOWDEFAULT);
end;

procedure TFrmFaktura.EditKundenrKeyPress(Sender: TObject; var Key: Char);
begin
 If not (key in['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', #8, #13])
        then key := #0;
 If key = #13 then EditKundenrExit(Sender);
end;

procedure TFrmFaktura.BeregnFortjeneste;
var Eks, Inn: Double;
begin
  Inn := DM.SummerFaktura;
  Eks := DM.FakturaDBEks.Value;

  if Inn > 0 then begin
    LblInn.Caption          := FloatToStrF(Inn, ffFixed, 10, 2);
    if Eks > 0 then begin
      LblFortjeneste.Caption := FloatToStrF(Eks - Inn, ffFixed, 10, 2);
      LblFortjenesteP.Caption := FloatToStrF(((Eks - Inn) / Inn) * 100, ffFixed, 10, 2);
    end;
  end;
end;

procedure TFrmFaktura.VareGridColExit(Sender: TObject);
begin
  Case VareGrid.SelectedIndex of
    0: begin
        If (NOT DM.KoblingDBVarenr.IsNull) and (DM.KoblingDBInfo.IsNull) then
          begin
          DM.VareDB.Filtered := False;
          If DM.VareDB.FindKey([DM.KoblingDBVarenr.Value]) then
             begin
             DM.KoblingDB.Edit;
             DM.KoblingDBInfo.Value             := DM.VareDBVare.Value;
             DM.KoblingDBInnpris.Value          := DM.VareDBInnpris.Value;
             DM.KoblingDBPris.Value             := DM.VareDBPris.Value;
             Dm.KoblingDBMva.Value              := Dm.VareDBMvaKlasse.Value;
             If Dm.VareDBEnhet.Value <> '' then
              Dm.KoblingDBEnhet.Value            := Dm.VareDBEnhet.Value;
             If Rab > 0 then
              Dm.KoblingDBRabatt.Value           := Rab;
             DM.KoblingDB.Post;
             end;
          BeregnFortjeneste;
          DM.VareDB.Filtered := True;
          end;
        end;
    2..5: BeregnFortjeneste;
  end;
end;

procedure TFrmFaktura.Lukk1Click(Sender: TObject);
begin
 Close;
end;

procedure TFrmFaktura.DbReferanseVDropDown(Sender: TObject);
begin
With DM.ReferanseDB Do
begin
    DbReferanseV.Items.Clear;
    First;
    While NOT EOF do
    begin
      DbReferanseV.Items.Add(DM.ReferanseDBReferanse.Value);
      Next;
    end;
  end;
end;

procedure TFrmFaktura.DbFakturanrExit(Sender: TObject);
begin
 If (DM.FakturaDBFakturanr.IsNull) then
   begin
   MessageDlg('Fakturanummeret er ugyldig!', mtInformation, [mbOK], 0);
   DbFakturanr.SetFocus;
   end
 else
   begin
    try
     DM.FakturaDB.Post;
    except
     DM.FakturaDB.Cancel;
    end;
     DbFakturanr.ReadOnly                   := True;
     DbFakturanr.Color                      := clBtnFace;
     BtnOk.Default                          := True;
     DbOrdrenr.SetFocus;
   end;
end;

procedure TFrmFaktura.FakturaDatoExit(Sender: TObject);
begin
 DM.FakturaDB.Edit;
 DM.FakturaDBFakturaDato.Value   := FakturaDato.Date;
 DM.FakturaDBForfallsDato.Value  := ForfallsDato.Date;
end;

procedure TFrmFaktura.HentInnKunde;
begin
   DM.FakturaDB.Edit;
   DM.FakturaDBIdKunde.Value := DM.KundeDBIdKunde.Value;
   EditKundenr.Text := FloatToStrF(DM.KundeDBKundenr.Value, ffFixed, 10, 0);
   If (Dm.FakturaDBDRef.Value = '') and (Dm.KundeDBKontaktperson.Value <> '') then
    DM.FakturaDBDRef.Value := Dm.KundeDBKontaktperson.Value;
   Rab := Dm.KundeDBRabatt.Value;

   FrmFaktura.Caption := 'Faktura - ' + DM.FakturaDBKunde.Value;
   Forfallsdato.Date  := Fakturadato.Date + DM.KundeDBForfallsdager.Value;

   FakturaDatoExit(Self);
end;

procedure TFrmFaktura.BtnVelgKundeClick(Sender: TObject);
begin
 Application.CreateForm(TFrmHentKunde, FrmHentKunde);
 If FrmHentKunde.ShowModal = mrOk then
 begin
  HentInnKunde;
 end;
end;

procedure TFrmFaktura.BtnFakturaClick(Sender: TObject);
begin
 If NOT InfoPanel.Visible then
   begin
   Infopanel.Visible        := True;
   BtnFaktura.Caption       := 'Fakturatekst';
   MFakturatekst.Checked    := False;
   end
 else
   begin
   Infopanel.Visible        := False;
   BtnFaktura.Caption       := 'Utregninger';
   MFakturatekst.Checked    := True;
   end;
end;

procedure TFrmFaktura.DbcBetaltChange(Sender: TObject);
var Reg: TRegistry;
begin
 If IsNew then
  begin

   Reg := TRegistry.Create;
   try

     Reg.OpenKey('\Software\Bls\Fakuva5\' + DM.FirmaDBFirma.Value, True);
     If Reg.ValueExists('KontantSerie') and (Reg.ReadBool('KontantSerie') = True) then
       begin
          Case DbcBetalt.ItemIndex of
            0,1,2: DM.FakturaDBFakturanr.Value    := DM.FirmaDBFakturanr.Value;
            3: DM.FakturaDBFakturanr.Value        := DM.FirmaDBKontantnr.Value;
          end;
       end;

   finally
     Reg.Free;
   end;
  end;
end;

procedure TFrmFaktura.Skettervare1Click(Sender: TObject);
begin
 Application.CreateForm(TFrmVareSok, FrmVareSok);
 FrmVareSok.ActiveControl := FrmVareSok.VareGrid;

 If (DM.KoblingDB.State = dsEdit) or (DM.KoblingDB.State = dsInsert)
 then DM.KoblingDB.Post;

 FrmVareSok.VareEdit.Text     := DM.KoblingDBInfo.Value;
 FrmVareSok.VarenrEdit.Text   := DM.KoblingDBVarenr.Value;
 FrmVareSok.LesInnLeverandorer;
 FrmVareSok.LesInnKategori;
 FrmVareSok.Sok;

 RegistrerVare;
end;

function TFrmFaktura.HentStandardReferanse: String;
var Ini: TIniFile;
begin
  Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'FAKUVA.INI');
  try
    Result := Ini.ReadString(Application.Title, 'StandardReferanse', '');
  finally
    Ini.Free;
  end;
end;

procedure TFrmFaktura.Nyreferanse1Click(Sender: TObject);
begin
 Application.CreateForm(TFrmReferanse, FrmReferanse);
 if FrmReferanse.ShowModal = mrOK then begin
   Dm.FakturaDB.Edit;
   Dm.FakturaDBVRef.Value := HentStandardReferanse;
 end;
end;

procedure TFrmFaktura.DbcBetaltKeyPress(Sender: TObject; var Key: Char);
begin
 If key = ' ' then DbcBetalt.DroppedDown := True;
end;

procedure TFrmFaktura.VareGridEnter(Sender: TObject);
begin
DM.SorterVarer('Varenr');
end;

procedure TFrmFaktura.FormCreate(Sender: TObject);
begin
  IsNew := False;
  TbVip.Down := HentVip;
  TbMva.Down := HentVisInk;
  DM.SorterVarer('Varenr');

  if Dm.MvaListe.Mva.Count > 0 then
   VareGrid.Columns[6].PickList.Assign(Dm.MvaListe.Mva);
end;

procedure TFrmFaktura.DbcBetaltExit(Sender: TObject);
begin
 Case DbcBetalt.ItemIndex of
 0,1: DM.FakturaDBFakturaTekst.Value     := DM.FirmaDBFakturaTekst.Value;
 2,3: DM.FakturaDBFakturaTekst.Value     := '';
 end;
end;

procedure TFrmFaktura.DbFakturanrKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ',' then
    Key := #0;
end;

procedure TFrmFaktura.ToolButton1Click(Sender: TObject);
begin
  if DM.KoblingDBPris.Value > 0 then begin
   DM.KoblingDB.Edit;
   DM.KoblingDBPris.Value := DM.KoblingDBPris.Value / (1 + (Dm.KoblingDBMva.Value / 100));
   DM.KoblingDB.Post;
  end;
end;

procedure TFrmFaktura.TbHentClick(Sender: TObject);
begin
 Application.CreateForm(TfrmHentvarer, frmHentvarer);
 If (frmHentvarer.ShowModal = mrOk) and (FrmHentvarer.EditFnr.Text <> '') then
  begin
   Dm.FakturaQry.SQL.Clear;
   Dm.FakturaQry.SQL.Add('SELECT A.Varenr, Info, Mva, Enhet, Antall, Rabatt, Pris, Innpris');
   Dm.FakturaQry.SQL.Add('FROM "Fakturalinje.DB" A, "Faktura.DB" B');
   Dm.FakturaQry.SQL.Add('WHERE B.IdFaktura = A.IdFaktura');
   Dm.FakturaQry.SQL.Add('AND B.Fakturanr = ' + frmHentvarer.EditFnr.Text);
   Dm.FakturaQry.SQL.Add('ORDER BY Varenr;');
   Dm.FakturaQry.Active := True;

  If Dm.FakturaQry.RecordCount > 0 then
   begin

       Dm.FakturaQry.First;
       While NOT Dm.FakturaQry.Eof Do
        begin
         DM.KoblingDB.Append;
          Dm.KoblingDBVarenr.AsVariant           := Dm.FakturaQry.FieldValues['Varenr'];
          DM.KoblingDBInfo.AsVariant             := Dm.FakturaQry.FieldValues['Info'];
          DM.KoblingDBInnpris.AsVariant          := Dm.FakturaQry.FieldValues['Innpris'];
          DM.KoblingDBPris.AsVariant             := Dm.FakturaQry.FieldValues['Pris'];
          DM.KoblingDBMva.AsVariant              := Dm.FakturaQry.FieldValues['Mva'];
          DM.KoblingDBAntall.AsVariant           := Dm.FakturaQry.FieldValues['Antall'];
          DM.KoblingDBRabatt.AsVariant           := Dm.FakturaQry.FieldValues['Rabatt'];
          Dm.KoblingDBEnhet.AsVariant            := Dm.FakturaQry.FieldValues['Enhet'];
         DM.KoblingDB.Post;

         Dm.FakturaQry.Next;
        end;
   end
  else
   MessageBox(Handle, 'Oppgitt fakturanummer finnes ikke', 'Feil fakturanummer', MB_OK + MB_ICONINFORMATION);
  end;
 frmHentvarer.Free;
end;

procedure TFrmFaktura.SettGridBredde;
var Bredde: Integer;
begin
 Bredde := 0;

 If NOT VareGrid.Columns.Items[4].Visible then
  Bredde := Bredde + 51;
 If NOT VareGrid.Columns.Items[9].Visible then
  Bredde := Bredde + 61;

 VareGrid.Columns.Items[1].Width := 260 + Bredde;
end;

procedure TFrmFaktura.VisVip(Vis :Boolean);
begin
  PanelDB.Visible := Vis;
  VareGrid.Columns.Items[4].Visible := Vis;
  MVip.Checked := Vis;
  TbVip.Down := Vis;
  SettVip(Vis);
  SettGridBredde;
end;

procedure TFrmFaktura.TbVipClick(Sender: TObject);
begin
 VisVip(NOT PanelDB.Visible);
end;

procedure TFrmFaktura.FormShow(Sender: TObject);
begin
 VareGrid.Columns.Items[9].Visible := HentVisInk;
 VisVip(HentVip);
end;

procedure TFrmFaktura.VisInkMva(Vis: Boolean);
begin
 TbMva.Down := Vis;
 MVisInk.Checked := Vis;
end;

procedure TFrmFaktura.TbMvaClick(Sender: TObject);
begin
  VisInkMva(NOT MVisInk.Checked);

  VareGrid.Columns.Items[9].Visible := NOT VareGrid.Columns.Items[9].Visible;
  SettVisInk(VareGrid.Columns.Items[9].Visible);
  SettGridBredde;
end;

procedure TFrmFaktura.EditKundenrEnter(Sender: TObject);
begin
 BtnOk.Default := False;
end;

procedure TFrmFaktura.BtnPostClick(Sender: TObject);
var Tlf: String;
begin
  if Dm.FirmaDBPostnr.IsNull then begin
    MessageBox(Handle, 'Ingen postnummer registrert under firmainformasjon!', 'Postnummer mangler', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  FrmPostBeregning := TFrmPostBeregning.Create(Application);
  FrmPostBeregning.FraPostNr := Dm.FirmaDBPostnr.AsInteger;
  if Dm.FakturaDBPakkenr.Value <> '' then
    FrmPostBeregning.EndrePakke(Dm.FakturaDBPakkenr.Value)
  else begin
    FrmPostBeregning.NyPakke(Dm.FakturaDBFakturanr.AsString, Dm.FakturaDBFakturadato.Value);
    Tlf := Dm.KundeDBTelefon.Value;
    if Tlf = '' then
      Dm.KundeDBMobil.Value;
    FrmPostBeregning.SetKundeInfo(Dm.KundeDBKunde.Value, Dm.KundeDBPostadresse.Value,
      Dm.KundeDBPbPostnr.Value, Dm.KundeDBPbPoststed.Value, Dm.KundeDBPostnr.Value,
      Dm.KundeDBPoststed.Value, Dm.KundeDBAdresse.Value, Tlf);
  end;
  if FrmPostBeregning.ShowModal = mrOK then begin
    Dm.FakturaDB.Edit;
    Dm.FakturaDBPakkenr.Value := FrmPostBeregning.TblPostPakkenr.Value;
  end;

  FrmPostBeregning.Release;
end;

procedure TFrmFaktura.Innstillinger1Click(Sender: TObject);
begin
  FrmTools := TFrmTools.Create(Application);
  FrmTools.ShowModal;
  FrmTools.Release;
end;

procedure TFrmFaktura.Forsikring1Click(Sender: TObject);
var Ini: TIniFile;
    FVnr: String;
begin
  Ini := TIniFile.Create(Dir + 'fakuva.ini');
  try

    FVnr := Ini.ReadString(Application.Title, 'ForsikringVarenr', '');
    with TblFakturaLinje do begin
      Open;
      SetRange([Dm.FakturaDBIdFaktura.Value], [Dm.FakturaDBIdFaktura.Value]);
      if FindKey([FVnr]) then begin
        MessageBox(Application.Handle, 'Varenummeret eksisterer allerede på fakturaen!', 'Forsikring', MB_OK + MB_ICONINFORMATION);
        Close;
      end;
      Close;
    end;

    Dm.KoblingDB.Append;
    Dm.KoblingDBVarenr.Value := FVnr;
    Dm.KoblingDBInfo.Value := Ini.ReadString(Application.Title, 'ForsikringTekst', '');
    Dm.KoblingDBPris.Value := ((Dm.FakturaDBEks.Value * Ini.ReadFloat(Application.Title, 'ForsikringProsent', 0)) / 100);
    Dm.KoblingDBInnPris.Value := Dm.KoblingDBPris.Value;
    if Dm.VareDB.FindKey([FVnr]) then begin
      Dm.KoblingDBMva.Value := Dm.VareDBMvaKlasse.Value;
      Dm.KoblingDBEnhet.Value := Dm.VareDBEnhet.Value;
    end;

    BeregnFortjeneste;
  finally
    Ini.Free;
  end;
end;

procedure TFrmFaktura.ToolButton3Click(Sender: TObject);
//var I: Integer;
begin
  if MessageBox(Handle, 'Sorter fakturaen etter varenummer? Original sortering vil bli mistet.', 'Sortering', MB_YESNO + MB_ICONQUESTION) = idYes then begin
    Screen.Cursor := crHourglass;

    Dm.KoblingDB.DisableControls;

    //Leser inn varenene
    CdsSortering.CreateDataSet;
    Dm.KoblingDB.First;
    while not Dm.KoblingDB.Eof do begin
      CdsSortering.Append;
      CdsSorteringVarenr.Value  := Dm.KoblingDBVarenr.Value;
      CdsSorteringInfo.Value    := Dm.KoblingDBInfo.Value;
      CdsSorteringAntall.Value  := Dm.KoblingDBAntall.Value;
      CdsSorteringPris.Value    := Dm.KoblingDBPris.Value;
      CdsSorteringInnpris.Value := Dm.KoblingDBInnpris.Value;
      CdsSorteringEnhet.Value   := Dm.KoblingDBEnhet.Value;
      CdsSorteringMva.Value     := Dm.KoblingDBMva.Value;
      CdsSortering.Post;
      Dm.KoblingDB.Next;
    end;

    //Sletter varene fra tabellen...
    Dm.KoblingDB.First;
    while not Dm.KoblingDB.Eof do
      Dm.KoblingDB.Delete;

    //Leser varene sortert tilbake
    CdsSortering.First;
    while not CdsSortering.Eof do begin
      Dm.KoblingDB.Append;
      Dm.KoblingDBVarenr.Value  := CdsSorteringVarenr.Value;
      Dm.KoblingDBInfo.Value    := CdsSorteringInfo.Value;
      Dm.KoblingDBAntall.Value  := CdsSorteringAntall.Value;
      Dm.KoblingDBPris.Value    := CdsSorteringPris.Value;
      Dm.KoblingDBInnpris.Value := CdsSorteringInnpris.Value;
      Dm.KoblingDBEnhet.Value   := CdsSorteringEnhet.Value;
      Dm.KoblingDBMva.Value     := CdsSorteringMva.Value;
      Dm.KoblingDB.Post;

      CdsSortering.Next;
    end;
    CdsSortering.Close;

    Dm.KoblingDB.EnableControls;
    Screen.Cursor := crDefault;
  end;
end;

end.
