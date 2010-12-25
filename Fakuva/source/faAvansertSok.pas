unit faAvansertSok;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db;

type
  TFrmAvansertSok = class(TForm)
    EditNavn: TEdit;
    EditNr: TEdit;
    CbKategori: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CbCase: TCheckBox;
    BtnLukk: TButton;
    Button1: TButton;
    procedure BtnLukkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditNavnKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure CbCaseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CbKategoriDropDown(Sender: TObject);
    procedure CbKategoriChange(Sender: TObject);
  private
    { Private declarations }
    AktivSide : Integer;
    procedure SokKunder(Nr: String; Navn: String);
    procedure SokLeverandor(Nr: String; Navn: String);
    procedure SokFaktura(Nr: String);
    procedure SokVare(Nr: String; Navn: String; Kategori: String);

  public
    { Public declarations }
    procedure StartVindu(PageIndex: Integer);
  end;

var
  FrmAvansertSok: TFrmAvansertSok;

implementation

uses DataModul;

{$R *.DFM}

procedure TFrmAvansertSok.SokFaktura(Nr: String);
var S: String;
begin
 If (Nr <> '') then
  S := 'Fakturanr = ''' + Nr + ''''
 else If (Nr = '') then
  S := '';

 Dm.FakturaDB.Filter := S;
end;

procedure TFrmAvansertSok.SokKunder(Nr: String; Navn: String);
var S: String;
begin
 If (Nr = '') and (Navn <> '') then
  S := 'Kunde = ''' + Navn + '*'''
 else If (Nr <> '') and (Navn = '') then
  S := 'Kundenr = ''' + Nr + ''''
 else If (Nr <> '') and (Navn <> '') then
  S := 'Kundenr = ''' + Nr + ''' and Kunde = ''' + Navn + '*'''
 else If (Nr = '') and (Navn = '') then
  S := '';

 DM.KundeDB.Filter := S;
end;

procedure TFrmAvansertSok.SokLeverandor(Nr: String; Navn: String);
var S: String;
begin
 If (Nr = '') and (Navn <> '') then
  S := 'Leverandor = ''' + Navn + '*'''
 else If (Nr <> '') and (Navn = '') then
  S := 'Leverandornr = ''' + Nr + ''''
 else If (Nr <> '') and (Navn <> '') then
  S := 'Leverandornr = ''' + Nr + ''' and Leverandor = ''' + Navn + '*'''
 else If (Nr = '') and (Navn = '') then
  S := '';

 DM.LeverandorDB.Filter := S;
end;

procedure TFrmAvansertSok.SokVare(Nr: String; Navn: String; Kategori: String);
var S: String;
begin
 If (Nr <> '') and (Navn = '') and (Kategori = 'Alle') then
  S := 'Varenr = ''' + Nr + '*'''
 else If (Nr = '') and (Navn <> '') and (Kategori = 'Alle') then
  S := 'Vare = ''' + Navn + '*'''
 else If (Nr = '') and (Navn = '') and (Kategori <> 'Alle') then
  S := 'IdKategori = ' + IntToStr(Dm.KategoriDbIdKategori.Value)

 else If (Nr <> '') and (Navn <> '') and (Kategori = 'Alle') then
  S := 'Varenr = ''' + Nr + '*'' and Vare = ''' + Navn + '*'''
 else If (Nr <> '') and (Navn = '') and (Kategori <> 'Alle') then
  S := 'Varenr = ''' + Nr + '*'' and IdKategori = ' + IntToStr(Dm.KategoriDbIdKategori.Value)
 else If (Nr = '') and (Navn <> '') and (Kategori <> 'Alle') then
  S := 'Vare = ''' + Navn + '*'' and IdKategori = ' + IntToStr(Dm.KategoriDbIdKategori.Value)

 else If (Nr <> '') and (Navn <> '') and (Kategori <> 'Alle') then
  S := 'Varenr = ''' + Nr + '*'' and Vare = ''' + Navn + '*'' and IdKategori = ' + IntToStr(Dm.KategoriDbIdKategori.Value)

 else If (Nr = '') and (Navn = '') and (Kategori = 'Alle') then
  S := '';

 DM.VareDB.Filter := S;
end;

procedure TFrmAvansertSok.StartVindu(PageIndex: Integer);
begin
 AktivSide := PageIndex;
 CbKategori.ItemIndex := 0;
 Show;

 Case PageIndex Of
  0, 4: begin
         EditNavn.Enabled    := False;
         EditNavn.Color      := clBtnFace;
         CbKategori.Enabled  := False;
         CbKategori.Color    := clBtnFace;
         EditNr.SetFocus;
        end;

  1, 3: begin
         CbKategori.Enabled  := False;
         CbKategori.Color    := clBtnFace;
         EditNavn.SetFocus;
        end;

  2: begin
         EditNavn.SetFocus;
     end;

  else
     begin
         EditNr.Enabled      := False;
         EditNavn.Enabled    := False;
         CbKategori.Enabled  := False;
         BtnLukk.SetFocus;
     end;
 end;
end;

procedure TFrmAvansertSok.BtnLukkClick(Sender: TObject);
begin
 Close;
end;

procedure TFrmAvansertSok.FormClose(Sender: TObject;
  var Action: TCloseAction);
var I: Integer;
begin
 Case AktivSide of
 0, 4: begin
     I := DM.FakturaDB.RecNo;
     DM.FakturaDB.Filter := '';
     DM.FakturaDB.RecNo  := I;
    end;

 1: begin
     I := DM.KundeDB.RecNo;
     DM.KundeDB.Filter := '';
     DM.KundeDB.RecNo  := I;
    end;

 2: begin
     I := DM.VareDB.RecNo;
     DM.VareDB.Filter := '';
     DM.VareDB.RecNo  := I;
    end;

 3: begin
     I := DM.LeverandorDB.RecNo;
     DM.LeverandorDB.Filter := '';
     DM.LeverandorDB.RecNo  := I;
    end;
 End;

 Action := caFree;
end;

procedure TFrmAvansertSok.EditNavnKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 Case AktivSide of
  0, 4: SokFaktura(Editnr.Text);
  1: SokKunder(EditNr.Text, EditNavn.Text);
  2: SokVare(Editnr.Text, EditNavn.Text, CbKategori.Text);
  3: SokLeverandor(EditNr.Text, EditNavn.Text);
 End;
end;

procedure TFrmAvansertSok.Button1Click(Sender: TObject);
begin
 EditNr.Text := '';
 EditNavn.Text := '';
 CbKategori.ItemIndex := 0;
end;

procedure TFrmAvansertSok.CbCaseClick(Sender: TObject);
var Fo: TFilterOptions;
begin
 If CbCase.Checked = True then
  Fo := []
 else
  Fo := [foCaseInsensitive];

 Case AktivSide of
  0, 4: Dm.FakturaDB.FilterOptions := Fo;
  1: Dm.KundeDB.FilterOptions   := Fo;
  2: Dm.VareDB.FilterOptions    := Fo;
  3: Dm.LeverandorDB.FilterOptions := Fo;
 End;

end;

procedure TFrmAvansertSok.FormShow(Sender: TObject);
begin
 CbCase.Checked := False;
end;

procedure TFrmAvansertSok.CbKategoriDropDown(Sender: TObject);
begin
 CbKategori.Clear;
 CbKategori.Items.Add('Alle');
 Dm.KategoriDb.First;

 While NOT Dm.KategoriDB.Eof do
 begin
  CbKategori.Items.Add(Dm.KategoriDbKategori.Value);
  Dm.KategoriDB.Next;
 end;

 CbKategori.ItemIndex := 0;
end;

procedure TFrmAvansertSok.CbKategoriChange(Sender: TObject);
begin
 DM.KategoriDB.Locate('Kategori', CbKategori.Text, [loCaseInsensitive, loPartialKey]);
 SokVare(EditNr.Text, EditNavn.Text, CbKategori.Text);
end;

end.
