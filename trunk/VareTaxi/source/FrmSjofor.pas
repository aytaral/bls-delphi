unit FrmSjofor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, ToolWin;

type
  TSjoforFrm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Kunde_Navn_LBL: TLabel;
    Kunde_Adresse_LBL: TLabel;
    Post_nr_LBL: TLabel;
    Post_Sted_LBL: TLabel;
    Telefon_LBL: TLabel;
    Kunde_Epost_LBL: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    VelgPostadr: TSpeedButton;
    navnedit: TEdit;
    adredit: TEdit;
    PostnrEDIT: TEdit;
    poststededit: TEdit;
    tlfedit: TEdit;
    epostedit: TEdit;
    nredit: TEdit;
    mobedit: TEdit;
    Status: TLabel;
    timelonnedit: TEdit;
    Label1: TLabel;
    Persnr: TEdit;
    Label2: TLabel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    TBNy: TToolButton;
    TBPrint: TToolButton;
    TBNr: TToolButton;
    ToolButton3: TToolButton;
    TBF: TToolButton;
    TBN: TToolButton;
    procedure VelgPostadrClick(Sender: TObject);
    procedure PostnrEDITExit(Sender: TObject);
    procedure TBPrintClick(Sender: TObject);
    procedure TBNrClick(Sender: TObject);
    procedure nreditExit(Sender: TObject);
    procedure nreditKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TBNyClick(Sender: TObject);
    procedure TBFClick(Sender: TObject);
    procedure TBNClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure timelonneditKeyPress(Sender: TObject; var Key: Char);
    procedure PostnrEDITKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure Blank;
    procedure Registrer;

  public
    { Public declarations }
     procedure EndreSjofor;
  end;

var
  SjoforFrm: TSjoforFrm;

implementation

uses DataModul, FrmPost;

{$R *.DFM}

procedure TSjoforFrm.VelgPostadrClick(Sender: TObject);
begin
 PostnrEdit.Text := VisPostForm;
 PostnrEDITExit(Sender);
end;

procedure TSjoforFrm.PostnrEDITExit(Sender: TObject);
begin
 If DM.PostDB.Locate('Postnr', postnredit.text, []) then begin
 Poststededit.text := DM.PostDB.FieldByName('Poststed').AsString;
 tlfedit.SetFocus;
 end;
end;

procedure TSjoforFrm.TBPrintClick(Sender: TObject);
begin
 If MessageDlg('Ønsker du å skrive ut dette skjermbildet ?', mtConfirmation, [mbYes, MbNo], 0) = mrYes then
 Print;
end;

procedure TSjoforFrm.TBNrClick(Sender: TObject);
begin
 nredit.SetFocus;
 nredit.ReadOnly := False;
 nredit.Color := clWhite;
 TBNr.Enabled := False;
end;

procedure TSjoforFrm.nreditExit(Sender: TObject);
begin
 If TBNr.enabled = False then begin
 If DM.SjoforDB.Locate('Sjofornr', nredit.text, []) then
 begin
 MessageDlg('Sjåførnummeret eksisterer fra før!', mtInformation, [mbOK], 0);
 nrEdit.SetFocus;
 end
 else
 begin
 nrEdit.Color := clSilver;
 nrEdit.ReadOnly := True;
 nrEdit.SetFocus;
 TBNr.Enabled := True;
 end;
 end;
end;

procedure TSjoforFrm.nreditKeyPress(Sender: TObject; var Key: Char);
begin
 If not (key in['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', #8, #13])
 then key := #0;
 If TBNr.enabled = False then begin
 If Key = #13 then begin
 If DM.SjoforDB.Locate('Sjofornr', nredit.text, []) then
 MessageDlg('Sjofornummeret eksisterer fra før!', mtInformation, [mbOK], 0)
 else
 begin
 nrEdit.Color := clSilver;
 nrEdit.ReadOnly := True;
 nrEdit.SetFocus;
 TBNr.Enabled := True;
 end;
 end;
 end;
end;

procedure TSjoforFrm.FormActivate(Sender: TObject);
begin
 If Status.Caption = 'Ny' then begin
 With DM Do
  begin
  SjoforDB.Last;
  nrEDIT.Text := FloatToStr(SjoforDBSjofornr.Value + 1);
  end;
 end;
Persnr.SetFocus;
end;

procedure TSjoforFrm.Blank;
begin
 navnedit.Text       := '';
 persnr.Text         := '';
 nredit.Text         := '';
 adredit.Text        := '';
 postnredit.Text     := '';
 poststededit.Text   := '';
 tlfedit.Text        := '';
 mobedit.Text        := '';
 timelonnedit.Text   := '0,00';
 epostedit.Text      := '';
end;

procedure TSjoforFrm.Registrer;
begin
 With DM do begin
  If Status.Caption = 'Ny' then SjoforDB.Append else SjoforDB.Edit;
  SjoforDBPersonnr.Value      :=  persnr.Text;
  SjoforDBNavn.Value          :=  navnedit.Text;
  SjoforDBSjofornr.Value      :=  StrToFloat(nredit.Text);
  SjoforDBAdresse.Value       :=  adredit.Text;
  SjoforDBPostnr.Value        :=  postnredit.Text;
  SjoforDBPoststed.Value      :=  poststededit.Text;
  SjoforDBTelefon.Value       :=  tlfedit.Text;
  SjoforDBMobil.Value         :=  mobedit.Text;
  SjoforDBEpost.Value         :=  epostedit.Text;
  SjoforDBTimelonn.Value      :=  StrToCurr(timelonnedit.Text);
  SjoforDB.Post;
 If Not PostDB.Locate('Postnr', postnredit.Text, []) and (Postnredit.Text <> '') then begin
 PostDB.Append;
 PostDB.FieldByName('Postnr').AsString   := postnredit.Text;
 PostDB.FieldByName('Poststed').AsString := poststededit.Text;
 PostDB.Post;
 end;
end;
end;

procedure TSjoforFrm.Button1Click(Sender: TObject);
begin
 Registrer;
end;

procedure TSjoforFrm.TBNyClick(Sender: TObject);
begin
 Registrer;
 Status.Caption := 'Ny';
 Blank;
 FormActivate(Sender);
end;

procedure TSjoforFrm.EndreSjofor;
begin
 With DM Do
 begin
 persnr.Text         := SjoforDBPersonnr.Value;
 navnedit.Text       := SjoforDBNavn.Value;
 nredit.Text         := FloatToStr(SjoforDBSjofornr.Value);
 adredit.Text        := SjoforDBAdresse.Value;
 postnredit.Text     := SjoforDBPostnr.Value;
 poststededit.Text   := SjoforDBPoststed.Value;
 tlfedit.Text        := SjoforDBTelefon.Value;
 mobedit.Text        := SjoforDBMobil.Value;
 epostedit.Text      := SjoforDBEpost.Value;
 timelonnedit.Text   := CurrToStrF(SjoforDBTimelonn.Value, ffNumber, 2);
 end;
end;

procedure TSjoforFrm.TBFClick(Sender: TObject);
begin
 Registrer;
 DM.SjoforDB.Prior;
 Status.Caption := 'Endre';
 EndreSjofor;
 TBN.Enabled  := True;
 If DM.SjoforDB.BOF then TBF.Enabled := False;
end;

procedure TSjoforFrm.TBNClick(Sender: TObject);
begin
 Registrer;
 DM.SjoforDB.Next;
 Status.Caption := 'Endre';
 EndreSjofor;
 TBF.Enabled := True;
 If DM.SjoforDB.EOF then
 TBN.Enabled  := False;
end;

procedure TSjoforFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Blank;
end;

procedure TSjoforFrm.timelonneditKeyPress(Sender: TObject; var Key: Char);
begin
 If not (key in['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', #8, #13])
 then key := #0;
end;

procedure TSjoforFrm.PostnrEDITKeyPress(Sender: TObject; var Key: Char);
begin
 If not (key in['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', #8, #13])
 then key := #0;
end;

end.
