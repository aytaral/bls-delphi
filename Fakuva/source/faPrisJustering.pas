unit faPrisJustering;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBTables, Db, blsAlignEdit;

type
  TFrmPrisJustering = class(TForm)
    BtnOk: TButton;
    BtnAvbryt: TButton;
    Pc: TPageControl;
    Prisjustering: TTabSheet;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel3: TBevel;
    PrisLbl: TLabel;
    EditVerdi: TEdit;
    CbTypePris: TComboBox;
    CbEnhet: TComboBox;
    PrisPb: TProgressBar;
    BtnPris: TButton;
    CbKategori: TComboBox;
    VareDB: TTable;
    VareDBVarenr: TStringField;
    VareDBVare: TStringField;
    VareDBInnpris: TCurrencyField;
    VareDBPris: TCurrencyField;
    VareDBIdKategori: TIntegerField;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    EditMva: TblsAlignEdit;
    cbMva: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    LblMvaendring: TLabel;
    PbMva: TProgressBar;
    BtnMva: TButton;
    VareDBMvaKlasse: TFloatField;
    procedure BtnPrisClick(Sender: TObject);
    procedure CbKategoriDropDown(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure EditVerdiKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnMvaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrisJustering: TFrmPrisJustering;

implementation

uses DataModul, blsMva;

{$R *.DFM}

procedure TFrmPrisJustering.BtnPrisClick(Sender: TObject);
begin
  if (CbKategori.Text <> '') and (CbKategori.Text <> 'Alle') then
    if DM.KategoriDB.Locate('Kategori', CbKategori.Text, []) then begin
      VareDB.Filter := 'IdKategori = ' + IntToStr(DM.KategoriDBIdKategori.Value);
      VareDB.Filtered := True;
    end;

  PrisLbl.Caption := 'Berenger priser ...';
  PrisLbl.Visible := True;
  PrisLbl.Update;
  PrisPb.Position := 0;
  PrisPb.Max := VareDB.RecordCount;

  VareDB.First;

  case CbTypePris.ItemIndex of
  // Prisøkning
  0: begin
    if (CbEnhet.ItemIndex = 0) then begin
      while NOT VareDB.Eof do begin
        VareDB.Edit;
        VareDBPris.Value := VareDBPris.Value * ((StrToFloat(EditVerdi.Text) + 100) / 100);
        VareDB.Post;
        PrisPb.StepIt;
        VareDB.Next;
      end;
    end
    else
    if (CbEnhet.ItemIndex = 1)then begin
      while NOT VareDB.Eof do begin
        VareDB.Edit;
        VareDBPris.Value := VareDBPris.Value + StrToFloat(EditVerdi.Text);
        VareDB.Post;
        PrisPb.StepIt;
        VareDB.Next;
      end;
    end;
  end;

  // Prisreduksjon
  1: begin
    if (CbEnhet.ItemIndex = 0) then begin
      while NOT VareDB.Eof do begin
        VareDB.Edit;
        VareDBPris.Value := VareDBPris.Value - (VareDBPris.Value * ((StrToFloat(EditVerdi.Text)/ 100)));
        VareDB.Post;
        PrisPb.StepIt;
        VareDB.Next;
      end;
    end
    else
    if (CbEnhet.ItemIndex = 1)then begin
      while NOT VareDB.Eof do begin
        VareDB.Edit;
        VareDBPris.Value := VareDBPris.Value - StrToFloat(EditVerdi.Text);
        VareDB.Post;
        PrisPb.StepIt;
        VareDB.Next;
      end;
    end;
  end;

  // I forhold til innprisen
  2: begin
    if (CbEnhet.ItemIndex = 0) then begin
      while NOT VareDB.EOF do begin
        VareDB.Edit;
        VareDBPris.Value := VareDBInnpris.Value * ((StrToFloat(EditVerdi.Text) + 100) / 100);
        VareDB.Post;
        PrisPb.StepIt;
        VareDB.Next;
      end;
    end
    else
    if (CbEnhet.ItemIndex = 1)then begin
      while NOT VareDB.EOF do begin
        VareDB.Edit;
        VareDBPris.Value := VareDBInnpris.Value + StrToFloat(EditVerdi.Text);
        VareDB.Post;
        PrisPb.StepIt;
        VareDB.Next;
      end;
    end;
  end;
  end;    // Slutt  på CASE setningen

  PrisLbl.Caption            := 'Beregninger ferdig';
  PrisPb.Position := 0;
  DM.SkrivTilLogg('Prisjusteringer utført!');
end;

procedure TFrmPrisJustering.CbKategoriDropDown(Sender: TObject);
begin
  DM.KategoriDB.First;
  CbKategori.Clear;
  CbKategori.Items.Add('Alle');
  While NOT DM.KategoriDB.EOF do
  begin
   CbKategori.Items.Add(DM.KategoriDBKategori.Value);
   DM.KategoriDB.Next;
  end;
  CbKategori.ItemIndex := 0;
end;

procedure TFrmPrisJustering.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPrisJustering.FormShow(Sender: TObject);
begin
  CbEnhet.ItemIndex      := 0;
  CbTypePris.ItemIndex   := 2;
  CbKategori.ItemIndex   := 0;
end;

procedure TFrmPrisJustering.EditVerdiKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', #8, #13]) then
    Key := #0;
end;

procedure TFrmPrisJustering.FormCreate(Sender: TObject);
begin
  VareDb.Open;
  cbMva.Items.Assign(Dm.MvaListe.Mva);
  cbMva.ItemIndex := 0;
  Pc.ActivePageIndex := 0;
  EditMva.AsFloat := 24;
end;

procedure TFrmPrisJustering.FormDestroy(Sender: TObject);
begin
  if VareDb.State in [dsEdit, dsInsert] then
    VareDb.Post;
  VareDB.Close;
end;

procedure TFrmPrisJustering.BtnMvaClick(Sender: TObject);
begin
  VareDB.Filtered := False;
  VareDB.First;

  LblMvaendring.Visible := True;
  LblMvaendring.Update;
  PbMva.Position := 0;
  PbMva.Max := VareDB.RecordCount;

  while not VareDb.Eof do begin
    if VareDBMvaKlasse.Value = EditMva.AsFloat then begin
      VareDB.Edit;
      VareDBMvaKlasse.Value := TblsMva(cbMva.Items.Objects[cbMva.ItemIndex]).Mva;
      VareDB.Post;
    end;
    PbMva.StepIt;
    VareDb.Next;
  end;

  LblMvaendring.Caption := 'Mva oppdatering ferdig';
  PbMva.Position := 0;
  DM.SkrivTilLogg('Mva justeringer utført');
end;

end.
