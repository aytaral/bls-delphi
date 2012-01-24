unit FrmKunde;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, DBCtrls, Buttons, DB, DBTables, ComCtrls,
  ExtCtrls, ToolWin, Menus, Spin, Mask;

type
  TKundeFrm = class(TForm)
    Kunde_Navn_LBL: TLabel;
    Kunde_Navn_EDIT: TEdit;
    Kunde_Adresse_LBL: TLabel;
    Kunde_Adresse_EDIT: TEdit;
    Post_nr_EDIT: TEdit;
    Post_nr_LBL: TLabel;
    Post_Sted_LBL: TLabel;
    Post_Sted_EDIT: TEdit;
    Telefon_LBL: TLabel;
    Telefon_EDIT: TEdit;
    Telefax_LBL: TLabel;
    Telefax_EDIT: TEdit;
    Kunde_Epost_LBL: TLabel;
    Kunde_Epost_EDIT: TEdit;
    Webadr_LBL: TLabel;
    Webadr_EDIT: TEdit;
    Kunde_ref_LBL: TLabel;
    Kunde_pers_EDIT: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Org_nr_EDIT: TEdit;
    Kunde_info_memo: TMemo;
    Kunde_nr_EDIT: TEdit;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Mobiledit: TEdit;
    VelgPostadr: TSpeedButton;
    Status: TLabel;
    FDageredit: TSpinEdit;
    Label5: TLabel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    TBNy: TToolButton;
    TBPrint: TToolButton;
    TBNr: TToolButton;
    ToolButton3: TToolButton;
    TBF: TToolButton;
    TBN: TToolButton;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    cbInaktiv: TCheckBox;
    procedure OkBtnClick(Sender: TObject);
    procedure NyKundeBitbtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Kunde_nr_EDITKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure TBNrClick(Sender: TObject);
    procedure Kunde_nr_EDITExit(Sender: TObject);
    procedure Post_nr_EDITExit(Sender: TObject);
    procedure TBNClick(Sender: TObject);
    procedure TBFClick(Sender: TObject);
    procedure VelgPostadrClick(Sender: TObject);
    procedure Post_nr_EDITKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
   procedure Blank;
   Procedure Registrer;
  public
    { Public declarations }
   Procedure EndreKunde;

  end;

var
  KundeFrm: TKundeFrm;

implementation

uses DataModul, FrmPost;

{$R *.DFM}

procedure TKundeFrm.Registrer;
begin
With DM Do
 begin
  If Status.Caption = 'Ny' then KundeDB.Append else KundeDB.Edit;
  KundeDBKundenr.Value             :=  StrToFloat(Kunde_nr_EDIT.Text);
  KundeDBFirma.Value               :=  Kunde_Navn_EDIT.Text;
  KundeDBAdresse.Value             :=  Kunde_Adresse_EDIT.Text;
  KundeDBPostnr.Value              :=  Post_nr_EDIT.Text;
  KundeDBPoststed.Value            :=  Post_Sted_EDIT.Text;
  KundeDbKontaktperson.Value       :=  Kunde_pers_EDIT.Text;
  KundeDBTelefon.Value             :=  Telefon_EDIT.Text;
  KundeDBTelefax.Value             :=  Telefax_EDIT.Text;
  KundeDBMobil.Value               :=  MobilEdit.Text;
  KundeDBEpost.Value               :=  Kunde_Epost_EDIT.Text;
  KundeDBWebadresse.Value          :=  Webadr_EDIT.Text;
  KundeDBOrganisasjonsnr.Value     :=  Org_nr_EDIT.Text;
  KundeDBKundeinfo.Value           :=  Kunde_info_memo.Text;
  KundeDBForfallsdager.Value       :=  FDageredit.Value;
  KundeDBInAktiv.Value             :=  cbInaktiv.Checked;
  KundeDB.Post;
 If Not PostDB.Locate('Postnr', post_nr_edit.Text, []) and (Post_nr_edit.Text <> '') then begin
 PostDB.Append;
 PostDB.FieldByName('Postnr').AsString   := post_nr_edit.Text;
 PostDB.FieldByName('Poststed').AsString := post_sted_edit.Text;
 PostDB.Post;
 end;
end;
end;

procedure TKundeFrm.OkBtnClick(Sender: TObject);
begin
 Registrer;
end;

procedure TKundeFrm.NyKundeBitbtnClick(Sender: TObject);
begin
 Registrer;
 Status.Caption := 'Ny';
 Blank;
 FormActivate(Sender);
end;

Procedure TKundeFrm.EndreKunde;
begin
 With DM Do
 begin
  Kunde_nr_EDIT.Text             := FloatToStr(KundeDBKundenr.Value);
  Kunde_Navn_EDIT.Text           := KundeDBFirma.Value;
  Kunde_Adresse_EDIT.Text        := KundeDBAdresse.Value;
  Post_nr_EDIT.Text              := KundeDBPostnr.Value;
  Post_Sted_EDIT.Text            := KundeDBPoststed.Value;
  Kunde_pers_EDIT.Text           := KundeDbKontaktperson.Value;
  Telefon_EDIT.Text              := KundeDBTelefon.Value;
  Telefax_EDIT.Text              := KundeDBTelefax.Value;
  MobilEdit.Text                 := KundeDBMobil.Value;
  Kunde_Epost_EDIT.Text          := KundeDBEpost.Value;
  Webadr_EDIT.Text               := KundeDBWebadresse.Value;
  Org_nr_EDIT.Text               := KundeDBOrganisasjonsnr.Value;
  Kunde_info_memo.Text           := KundeDBKundeinfo.Value;
  FDageredit.Value               := KundeDBForfallsdager.Value;
  cbInaktiv.Checked              := KundeDBInAktiv.Value;
 end;
end;

procedure TKundeFrm.Blank;
begin
 Kunde_nr_EDIT.Text          := '';
 Kunde_Navn_EDIT.Text        := '';
 Kunde_Adresse_EDIT.Text     := '';
 Post_nr_EDIT.Text           := '';
 Post_Sted_EDIT.Text         := '';
 Kunde_pers_EDIT.Text        := '';
 Telefon_EDIT.Text           := '';
 Telefax_EDIT.Text           := '';
 MobilEdit.Text              := '';
 Kunde_Epost_EDIT.Text       := '';
 Webadr_EDIT.Text            := '';
 Org_nr_EDIT.Text            := '';
 Kunde_info_memo.Text        := '';
 FDageredit.Value            := 15;
 cbInaktiv.Checked           := False;
end;

procedure TKundeFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Blank;
end;

procedure TKundeFrm.Kunde_nr_EDITKeyPress(Sender: TObject; var Key: Char);
begin
 If not (key in['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', #8, #13])
 then key := #0;
If TBNr.enabled = false then begin
 If Key = #13 then begin
 If DM.KundeDB.Locate('kundenr', kunde_nr_edit.text, []) then
 MessageDlg('Kundenummeret eksisterer fra før!', mtInformation, [mbOK], 0)
 else
 begin
 Kunde_nr_Edit.Color := clSilver;
 Kunde_nr_Edit.ReadOnly := True;
 Kunde_navn_Edit.SetFocus;
 TBNr.Enabled := True;
 end;
 end;
 end;
end;

procedure TKundeFrm.FormActivate(Sender: TObject);
begin
 If Status.Caption = 'Ny' then begin
 With DM Do begin
   KundeDB.DisableControls;
   KundeDB.IndexFieldNames := 'Kundenr';
   KundeDB.Last;
   Kunde_nr_EDIT.Text := FloatToStr(KundeDBKundenr.Value + 1);
   KundeDB.IndexFieldNames := 'Firma';
   KundeDB.EnableControls;
  end;
 end;
Kunde_Navn_EDIT.SetFocus;
end;

procedure TKundeFrm.SpeedButton1Click(Sender: TObject);
begin
 If MessageDlg('Ønsker du å skrive ut dette skjermbildet ?', mtConfirmation, [mbYes, MbNo], 0) = mrYes then
   Print;
end;

procedure TKundeFrm.TBNrClick(Sender: TObject);
begin
 Kunde_nr_Edit.SetFocus;
 Kunde_nr_Edit.ReadOnly := False;
 Kunde_nr_Edit.Color := clWhite;
 TBNr.Enabled := False;
end;

procedure TKundeFrm.Kunde_nr_EDITExit(Sender: TObject);
begin
If TBNr.enabled = False then begin
 If DM.KundeDB.Locate('kundenr', kunde_nr_edit.text, []) then
 begin
 MessageDlg('Kundenummeret eksisterer fra før!', mtInformation, [mbOK], 0);
 Kunde_nr_Edit.SetFocus;
 end
 else
 begin
 Kunde_nr_Edit.Color := clSilver;
 Kunde_nr_Edit.ReadOnly := True;
 Kunde_navn_Edit.SetFocus;
 TBNr.Enabled := True;
 end;
 end;
end;

procedure TKundeFrm.Post_nr_EDITExit(Sender: TObject);
begin
 If DM.PostDB.Locate('Postnr', post_nr_edit.text, []) then begin
 Post_sted_edit.text := DM.PostDB.FieldByName('Poststed').AsString;
 Kunde_pers_edit.SetFocus;
 end;
end;

procedure TKundeFrm.TBNClick(Sender: TObject);
begin
 Registrer;
 DM.KundeDB.Next;
 Status.Caption := 'Endre';
 EndreKunde;
 TBF.Enabled := True;
 If DM.KundeDB.EOF then
 TBN.Enabled  := False;
end;

procedure TKundeFrm.TBFClick(Sender: TObject);
begin
 Registrer;
 DM.KundeDB.Prior;
 Status.Caption := 'Endre';
 EndreKunde;
 TBN.Enabled  := True;
 If DM.KundeDB.BOF then TBF.Enabled := False;
end;

procedure TKundeFrm.VelgPostadrClick(Sender: TObject);
begin
 Post_nr_Edit.Text := VisPostForm;
 Post_nr_EDITExit(Sender);
end;

procedure TKundeFrm.Post_nr_EDITKeyPress(Sender: TObject; var Key: Char);
begin
 If not (key in['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', #8, #13])
 then key := #0;
end;

procedure TKundeFrm.Button2Click(Sender: TObject);
begin
  Dm.KundeDB.Cancel;
end;

end.
