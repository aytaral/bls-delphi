unit faLeverandor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ComCtrls, ToolWin, ExtCtrls, DB, DBCtrls, DBActns,
  ActnList;

 const PostNr = WM_USER + 1010;

type
  TFrmLeverandor = class(TForm)
    BtnOk: TButton;
    BtnAvbryt: TButton;
    CbKunde: TCheckBox;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    TbNy: TToolButton;
    TbEndrenr: TToolButton;
    TbAngre: TToolButton;
    ToolButton7: TToolButton;
    TbFirst: TToolButton;
    TbPrior: TToolButton;
    TbNext: TToolButton;
    TbLast: TToolButton;
    Pc: TPageControl;
    tsLeverandor: TTabSheet;
    tsMerknader: TTabSheet;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Telefon_LBL: TLabel;
    Telefax_LBL: TLabel;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    Kunde_Navn_LBL: TLabel;
    DbEditLeverandor: TDBEdit;
    Kunde_Adresse_LBL: TLabel;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    BtnPostnr: TButton;
    Kunde_ref_LBL: TLabel;
    DBEdit9: TDBEdit;
    GroupBox5: TGroupBox;
    Kunde_Epost_LBL: TLabel;
    DBEdit11: TDBEdit;
    Webadr_LBL: TLabel;
    DBEdit13: TDBEdit;
    Label2: TLabel;
    DBEdit12: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label7: TLabel;
    Label4: TLabel;
    DbLeverandornr: TDBEdit;
    Label1: TLabel;
    Label11: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DsLeverandor: TDataSource;
    ActionList1: TActionList;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    AcNy: TAction;
    AcEndreNr: TAction;
    DataSetCancel1: TDataSetCancel;
    DBEdit1: TDBEdit;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    acBrReg: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DbLeverandornrExit(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure DbLeverandornrKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtnPostnrClick(Sender: TObject);
    procedure DsLeverandorDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure AcEndreNrExecute(Sender: TObject);
    procedure AcNyExecute(Sender: TObject);
    procedure acBrRegExecute(Sender: TObject);
  private
    { Private declarations }
//    procedure LagreSomKunde;
    procedure LagreLeverandor;
    procedure OppdaterFraWeb(Data: String);
//    procedure SettPostNr(var Msg: TMessage); Message PostNr;

  public
    { Public declarations }
    procedure LagNyLeverandor;

  end;

var
  FrmLeverandor: TFrmLeverandor;

implementation

uses DataModul, faPostnummer, rsKundeBrReg, blsDialogs;

{$R *.DFM}

procedure TFrmLeverandor.LagNyLeverandor;
begin
 DM.LeverandorDB.Insert;
 DM.LeverandorDBLeverandornr.Value := DM.FirmaDBLeverandornr.Value;
 DM.FirmaDB.Edit;
 DM.FirmaDBLeverandornr.Value := DM.FirmaDBLeverandornr.Value + 1;
 DM.FirmaDB.Post;
end;

procedure TFrmLeverandor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult <> mrOK then
    DM.LeverandorDB.Cancel;
  Dm.LeverandorDB.Refresh;
  Action := caFree;
end;

procedure TFrmLeverandor.DbLeverandornrExit(Sender: TObject);
begin
 DBLeverandornr.Color    := clBtnFace;
 DBLeverandornr.ReadOnly := True;
end;

procedure TFrmLeverandor.LagreLeverandor;
begin
Try
 If (DM.LeverandorDB.State = dsEdit) or (DM.LeverandorDB.State = dsInsert) then
  DM.LeverandorDB.Post;
 Except
   ModalResult := mrNone;
 End;
end;

{
procedure TFrmLeverandor.LagreSomKunde;
begin
 With DM do
   begin
     KundeDB.Append;
     KundeDBKundenr.Value           :=    FirmaDBKundenr.Value;
     KundeDBKunde.Value             :=    LeverandorDBLeverandor.Value;
     KundeDBAdresse.Value           :=    LeverandorDBAdresse.Value;
     KundeDBPostnr.Value            :=    LeverandorDBPostnr.Value;
     KundeDBKontaktperson.Value     :=    LeverandorDBKontaktperson.Value;
     KundeDBTelefon.Value           :=    LeverandorDBTelefon.Value;
     KundeDBTelefax.Value           :=    LeverandorDBTelefax.Value;
     KundeDBMobil.Value             :=    LeverandorDBMobil.Value;
     KundeDBEpost.Value             :=    LeverandorDBEpost.Value;
     KundeDBUrl.Value               :=    LeverandorDBUrl.Value;
     KundeDBOrgnr.Value             :=    LeverandorDBOrgnr.Value;
     KundeDB.Post;
     FirmaDB.Edit;
     FirmaDBKundenr.Value := FirmaDBKundenr.Value + 1;
     FirmaDB.Post;
   end;
end;}

procedure TFrmLeverandor.BtnOkClick(Sender: TObject);
begin
 LagreLeverandor;
{ If CbKunde.Checked = True
 then LagreSomKunde;}
end;

procedure TFrmLeverandor.DbLeverandornrKeyPress(Sender: TObject;
  var Key: Char);
begin
 If Key = ',' then Key := #0;
end;

procedure TFrmLeverandor.FormShow(Sender: TObject);
begin
 If FileExists('PostNo.exe') then
  BtnPostnr.Enabled := True
 else
  BtnPostnr.Enabled := True
end;

procedure TFrmLeverandor.BtnPostnrClick(Sender: TObject);
begin
// Winexec('PostNo.exe Fkv5', SW_SHOWDEFAULT);
  FrmPostnummer := TFrmPostnummer.Create(Application);
  if FrmPostnummer.ShowModal = mrOK then begin
    Dm.LeverandorDB.Edit;
    Dm.LeverandorDBPostnr.Value := FrmPostnummer.TblPostPostnr.Value;
  end;
  FrmPostnummer.Release;
end;

{procedure TFrmLeverandor.SettPostNr(var Msg: TMessage);
var Pnr: String;
begin
 Pnr := IntToStr(Msg.WParam);
 While (Length(Pnr) < 4) Do
  Pnr := '0' + Pnr;

 DM.LeverandorDB.Edit;
 DM.LeverandorDBPostnr.Value := Pnr;
end;}

procedure TFrmLeverandor.DsLeverandorDataChange(Sender: TObject;
  Field: TField);
begin
  if not Dm.LeverandorDBLeverandorInfo.IsNull then
    tsMerknader.ImageIndex := 0
  else
    tsMerknader.ImageIndex := -1;
end;

procedure TFrmLeverandor.FormCreate(Sender: TObject);
begin
  Pc.ActivePage := tsLeverandor;
end;

procedure TFrmLeverandor.AcEndreNrExecute(Sender: TObject);
begin
 DBLeverandornr.Color    := ClWindow;
 DBLeverandornr.ReadOnly := False;
 DbLeverandornr.SetFocus;
end;

procedure TFrmLeverandor.AcNyExecute(Sender: TObject);
begin
 LagNyLeverandor;
 Pc.ActivePageIndex := 0;
 DbEditLeverandor.SetFocus;
end;

procedure TFrmLeverandor.OppdaterFraWeb(Data: String);
var
  S: String;
begin
  frmKundeBrReg := TfrmKundeBrReg.Create(Application);
  frmKundeBrReg.Data := Data;
  if frmKundeBrReg.ShowModal = mrOK then begin
    Dm.LeverandorDB.Edit;

    S := frmKundeBrReg.edOrgnr.Text;
    if Trim(S) <> '' then
      Dm.LeverandorDBOrgnr.Value := S;

    S := frmKundeBrReg.edFirma.Text;
    if Trim(S) <> '' then
      Dm.LeverandorDBLeverandor.Value := S;

    if (Trim(frmKundeBrReg.edBAdresse.Text) <> '') or (Trim(frmKundeBrReg.edBPostnr.Text) <> '') then begin
      Dm.LeverandorDBAdresse.Value := Trim(frmKundeBrReg.edBAdresse.Text);
      Dm.LeverandorDBPostnr.Value := Trim(frmKundeBrReg.edBPostnr.Text);
    end
    else begin
      //Dersom Besøksadresse er gitt brukes denne
      if (Trim(frmKundeBrReg.edPAdresse.Text) <> '') or (Trim(frmKundeBrReg.edPPostnr.Text) <> '') then begin
        Dm.LeverandorDBAdresse.Value := Trim(frmKundeBrReg.edPAdresse.Text);
        Dm.LeverandorDBPostnr.Value := Trim(frmKundeBrReg.edPPostnr.Text);
      end;
    end;

    S := frmKundeBrReg.edTelefon.Text;
    if Trim(S) <> '' then
      Dm.LeverandorDBTelefon.Value := S;

    S := frmKundeBrReg.edMobil.Text;
    if Trim(S) <> '' then
      Dm.LeverandorDBMobil.Value := S;

    S := frmKundeBrReg.edTelefax.Text;
    if Trim(S) <> '' then
      Dm.LeverandorDBTelefax.Value := S;

    S := frmKundeBrReg.edEpost.Text;
    if Trim(S) <> '' then
      Dm.LeverandorDBEpost.Value := S;

    S := frmKundeBrReg.edUrl.Text;
    if Trim(S) <> '' then
      Dm.LeverandorDBUrl.Value := S;

  end;
  frmKundeBrReg.Release;
end;

procedure TFrmLeverandor.acBrRegExecute(Sender: TObject);
begin
  DbEditLeverandor.SetFocus;
  if dm.LeverandorDBOrgnr.Value = '' then begin
    blsDialogs.InfoDialog('Manglende info', 'Organisasjonsnummer må være utfylt for at denne funksjonen kan benyttes');
    Exit;
  end;

  OppdaterFraWeb(Dm.HentBrRegData(dm.LeverandorDBOrgnr.Value));
end;

end.
