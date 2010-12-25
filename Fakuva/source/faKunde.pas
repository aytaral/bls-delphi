unit faKunde;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ToolWin, ComCtrls, ExtCtrls, DBCtrls, Mask, DB, Menus, Grids,
  DBGrids, DBTables, DBActns, ActnList;

// const PostNr = WM_USER + 1010;

type
  TFrmKunde = class(TForm)
    BtnOk: TButton;
    BtnAvbryt: TButton;
    CbLeverandor: TCheckBox;
    Pc: TPageControl;
    tsKunde: TTabSheet;
    tsMerknader: TTabSheet;
    GbKunde: TGroupBox;
    Kunde_Navn_LBL: TLabel;
    DbEditKunde: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    BtnPostnr: TButton;
    Kunde_Adresse_LBL: TLabel;
    DBEdit1: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    BtnPbPostnr: TButton;
    Kunde_ref_LBL: TLabel;
    DBEdit9: TDBEdit;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    GbInternett: TGroupBox;
    Kunde_Epost_LBL: TLabel;
    DBEdit11: TDBEdit;
    Webadr_LBL: TLabel;
    DBEdit13: TDBEdit;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    DbKundenr: TDBEdit;
    Label2: TLabel;
    DBEdit12: TDBEdit;
    Label7: TLabel;
    DBComboBox1: TDBComboBox;
    GroupBox4: TGroupBox;
    Telefon_LBL: TLabel;
    DBEdit5: TDBEdit;
    Telefax_LBL: TLabel;
    DBEdit8: TDBEdit;
    Label3: TLabel;
    DBEdit10: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Button2: TButton;
    Label9: TLabel;
    tsKreditt: TTabSheet;
    GbKreditt: TGroupBox;
    GbRabatt: TGroupBox;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    DBEdit16: TDBEdit;
    GroupBox2: TGroupBox;
    GroupBox5: TGroupBox;
    DbgFordringer: TDBGrid;
    EditTot: TLabeledEdit;
    EditUte: TLabeledEdit;
    Label1: TLabel;
    Label11: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    TblGruppe: TTable;
    DsGruppe: TDataSource;
    DsKunde: TDataSource;
    TblGruppeIdGruppe: TAutoIncField;
    TblGruppeGruppe: TStringField;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    TbNy: TToolButton;
    TbEndreNr: TToolButton;
    TbAngre: TToolButton;
    ToolButton7: TToolButton;
    TbFirst: TToolButton;
    TbPrior: TToolButton;
    TbNext: TToolButton;
    TbLast: TToolButton;
    ActionList1: TActionList;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetCancel1: TDataSetCancel;
    AcNyttNr: TAction;
    AcSettInn: TAction;
    TblFaktura: TTable;
    DsFaktura: TDataSource;
    TblFakturaFakturanr: TFloatField;
    TblFakturaFakturaDato: TDateField;
    TblFakturaForfallsDato: TDateField;
    TblFakturaBetalt: TStringField;
    TblFakturaStatus: TStringField;
    TblFakturaEks: TCurrencyField;
    TblFakturaRabatt: TCurrencyField;
    TblFakturaMVA: TCurrencyField;
    TblFakturaTotal: TCurrencyField;
    TblFakturaIdKunde: TIntegerField;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    acBrReg: TAction;
    procedure DbKundenrExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DbKundenrKeyPress(Sender: TObject; var Key: Char);
    procedure BtnPostnrClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DsKundeDataChange(Sender: TObject; Field: TField);
    procedure Button2Click(Sender: TObject);
    procedure BtnPbPostnrClick(Sender: TObject);
    procedure AcSettInnExecute(Sender: TObject);
    procedure AcNyttNrExecute(Sender: TObject);
    procedure TblFakturaFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure acBrRegExecute(Sender: TObject);
  private
    procedure UpdateOmsettning;
    procedure OppdaterFraWeb(Data: String);
    { Private declarations }
//    procedure LagreSomLeverandor;
//    procedure LagreKunde;
//    procedure SettPostNr(var Msg: TMessage); Message PostNr;

  public
    { Public declarations }
    procedure LagNyKunde;

  end;

var
  FrmKunde: TFrmKunde;

implementation

uses DataModul, faGruppe, faPostnummer, rsKundeBrReg, blsDialogs;

{$R *.DFM}

procedure TFrmKunde.LagNyKunde;
begin
 Dm.KundeDB.Insert;
 Dm.KundeDBKundenr.Value := Dm.FirmaDBKundenr.Value;
 DM.FirmaDB.Edit;
 DM.FirmaDBKundenr.Value := DM.FirmaDBKundenr.Value + 1;
 DM.FirmaDB.Post;

 UpdateOmsettning;
end;

procedure TFrmKunde.DbKundenrExit(Sender: TObject);
begin
 DBKundenr.Color    := clBtnFace;
 DBKundenr.ReadOnly := True;
end;

procedure TFrmKunde.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult <> mrOK then
    Dm.KundeDB.Cancel;

  Dm.KundeDB.Refresh;
  Action := caFree;
end;

{procedure TFrmKunde.LagreSomLeverandor;
begin
 With DM do
   begin
     LeverandorDB.Append;
     LeverandorDBLeverandornr.Value   := FirmaDBLeverandornr.Value;
     LeverandorDBLeverandor.Value     := KundeDBKunde.Value;
     LeverandorDBAdresse.Value        := KundeDBAdresse.Value;
     LeverandorDBPostnr.Value         := KundeDBPostnr.Value;
     LeverandorDBKontaktperson.Value  := KundeDBKontaktperson.Value;
     LeverandorDBTelefon.Value        := KundeDBTelefon.Value;
     LeverandorDBTelefax.Value        := KundeDBTelefax.Value;
     LeverandorDBMobil.Value          := KundeDBMobil.Value;
     LeverandorDBEpost.Value          := KundeDBEpost.Value;
     LeverandorDBUrl.Value            := KundeDBUrl.Value;
     LeverandorDBOrgnr.Value          := KundeDBOrgnr.Value;
     LeverandorDB.Post;
     FirmaDB.Edit;
     FirmaDBLeverandornr.Value := FirmaDBLeverandornr.Value + 1;
     FirmaDB.Post;
   end;
end;}

{procedure TFrmKunde.LagreKunde;
begin
Try
 If (DM.KundeDB.State = dsEdit) or (DM.KundeDB.State = dsInsert) then
  DM.KundeDB.Post;
 Except
   ModalResult := mrNone;
 End;
end;}

procedure TFrmKunde.DbKundenrKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ',' then Key := #0;
end;

procedure TFrmKunde.UpdateOmsettning;
var Ute, Tot: Double;
begin
  Ute := 0;
  Tot := 0;

  if Dm.KundeDB.State <> dsInsert then begin
    with TblFaktura do begin
      DisableControls;
      Filtered := False;
      First;

      while not eof do begin
        Tot := Tot + TblFakturaEks.Value;
        if TblFakturaBetalt.Value = '-' then
          Ute := Ute + TblFakturaEks.Value;
        Next;
      end;

      Filtered := True;
      EnableControls;
    end;
  end;

  EditUte.Text := FormatFloat('#,##0.00', Ute);
  EditTot.Text := FormatFloat('#,##0.00', Tot);
end;

procedure TFrmKunde.BtnPostnrClick(Sender: TObject);
begin
  //Winexec('PostNo.exe Fkv5', SW_SHOWDEFAULT);
  FrmPostnummer := TFrmPostnummer.Create(Application);
  if FrmPostnummer.ShowModal = mrOK then begin
    Dm.KundeDB.Edit;
    Dm.KundeDBPostnr.Value := FrmPostnummer.TblPostPostnr.Value;
  end;
  FrmPostnummer.Release;
end;

{procedure TFrmKunde.SettPostNr(var Msg: TMessage);
var Pnr: String;
begin
 Pnr := IntToStr(Msg.WParam);
 While (Length(Pnr) < 4) Do
  Pnr := '0' + Pnr;

  Dm.KundeDB.Edit;
  Dm.KundeDBPostnr.Value := Pnr;
end;}

procedure TFrmKunde.FormShow(Sender: TObject);
begin
 If FileExists('PostNo.exe') then
  BtnPostnr.Enabled := True
 else
  BtnPostnr.Enabled := True
end;

procedure TFrmKunde.FormCreate(Sender: TObject);
begin
  TblGruppe.Open;
  TblFaktura.Open;
  TblFaktura.SetRange([Dm.KundeDBIdKunde.Value], [Dm.KundeDBIdKunde.Value]);
  UpdateOmsettning;

  Pc.ActivePage := tsKunde;
end;

procedure TFrmKunde.FormDestroy(Sender: TObject);
begin
  if TblGruppe.State in [dsEdit, dsInsert] then
    TblGruppe.Post;
  if Dm.KundeDB.State in [dsEdit, dsInsert] then
    Dm.KundeDB.Post;

  TblGruppe.Close;
end;

procedure TFrmKunde.DsKundeDataChange(Sender: TObject; Field: TField);
begin
  if not Dm.KundeDBKundeinfo.IsNull then
    tsMerknader.ImageIndex := 0
  else
    tsMerknader.ImageIndex := -1;

  if TblFaktura.Active and (Dm.KundeDBIdKunde.Value <> TblFakturaIdKunde.Value) then begin
    TblFaktura.SetRange([Dm.KundeDBIdKunde.Value], [Dm.KundeDBIdKunde.Value]);
    UpdateOmsettning;
  end;
end;

procedure TFrmKunde.Button2Click(Sender: TObject);
begin
  FrmGruppe := TFrmGruppe.Create(Application);
  if FrmGruppe.ShowModal = mrOK then begin
    TblGruppe.Refresh;
    Dm.KundeDB.Edit;
    Dm.KundeDBIdGruppe.Value := FrmGruppe.TblGruppeIdGruppe.Value;
  end;
  TblGruppe.Refresh;
  FrmGruppe.Release;
end;

procedure TFrmKunde.BtnPbPostnrClick(Sender: TObject);
begin
  FrmPostnummer := TFrmPostnummer.Create(Application);
  if FrmPostnummer.ShowModal = mrOK then begin
    Dm.KundeDB.Edit;
    Dm.KundeDBPbPostnr.Value := FrmPostnummer.TblPostPostnr.Value;
  end;
  FrmPostnummer.Release;
end;

procedure TFrmKunde.AcSettInnExecute(Sender: TObject);
begin
{ If CbLeverandor.Checked = True
 then LagreSomLeverandor;}
 LagNyKunde;
 Pc.ActivePageIndex := 0;
 DbEditKunde.SetFocus;
end;

procedure TFrmKunde.AcNyttNrExecute(Sender: TObject);
begin
 DBKundenr.Color    := ClWindow;
 DBKundenr.ReadOnly := False;
 DbKundenr.SetFocus;
end;

procedure TFrmKunde.TblFakturaFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  if TblFakturaBetalt.Value <> '-' then begin
    Accept := False;
  end
  else begin
    Accept := True;
  end;
end;

procedure TFrmKunde.acBrRegExecute(Sender: TObject);
begin
  DbEditKunde.SetFocus;
  if dm.KundeDBOrgnr.Value = '' then begin
    blsDialogs.InfoDialog('Manglende info', 'Organisasjonsnummer må være utfylt for at denne funksjonen kan benyttes');
    Exit;
  end;

  OppdaterFraWeb(Dm.HentBrRegData(dm.KundeDBOrgnr.Value));
end;

procedure TFrmKunde.OppdaterFraWeb(Data: String);
var
  S: String;
begin
  frmKundeBrReg := TfrmKundeBrReg.Create(Application);
  frmKundeBrReg.Data := Data;
  if frmKundeBrReg.ShowModal = mrOK then begin

    Dm.KundeDB.Edit;
    S := frmKundeBrReg.edOrgnr.Text;
    if Trim(S) <> '' then
      Dm.KundeDBOrgnr.Value := S;

    S := frmKundeBrReg.edFirma.Text;
    if Trim(S) <> '' then
      Dm.KundeDBKunde.Value := S;

    if (Trim(frmKundeBrReg.edPAdresse.Text) <> '') or (Trim(frmKundeBrReg.edPPostnr.Text) <> '') then begin
      //Dersom Postadresse er gitt brukes denne
      Dm.KundeDBPostadresse.Value := Trim(frmKundeBrReg.edPAdresse.Text);
      Dm.KundeDBPbPostnr.Value := Trim(frmKundeBrReg.edPPostnr.Text);

      if (Trim(frmKundeBrReg.edBAdresse.Text) <> '') or (Trim(frmKundeBrReg.edBPostnr.Text) <> '') then begin
        Dm.KundeDBAdresse.Value := Trim(frmKundeBrReg.edBAdresse.Text);
        Dm.KundeDBPostnr.Value := Trim(frmKundeBrReg.edBPostnr.Text);
      end;
    end
    else begin
      //Dersom Besøksadresse er gitt brukes denne
      if (Trim(frmKundeBrReg.edBAdresse.Text) <> '') or (Trim(frmKundeBrReg.edBPostnr.Text) <> '') then begin
        Dm.KundeDBAdresse.Value := Trim(frmKundeBrReg.edBAdresse.Text);
        Dm.KundeDBPostnr.Value := Trim(frmKundeBrReg.edBPostnr.Text);
      end;
    end;

    S := frmKundeBrReg.edTelefon.Text;
    if Trim(S) <> '' then
      Dm.KundeDBTelefon.Value := S;

    S := frmKundeBrReg.edMobil.Text;
    if Trim(S) <> '' then
      Dm.KundeDBMobil.Value := S;

    S := frmKundeBrReg.edTelefax.Text;
    if Trim(S) <> '' then
      Dm.KundeDBTelefax.Value := S;

    S := frmKundeBrReg.edEpost.Text;
    if Trim(S) <> '' then
      Dm.KundeDBEpost.Value := S;

    S := frmKundeBrReg.edUrl.Text;
    if Trim(S) <> '' then
      Dm.KundeDBUrl.Value := S;

  end;
  frmKundeBrReg.Release;
end;


end.
