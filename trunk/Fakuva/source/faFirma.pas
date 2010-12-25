unit faFirma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, DB, DBTables, ComCtrls, ExtDlgs, Menus,
  ActnPopupCtrl;

type
  TFrmFirma = class(TForm)
    Button1: TButton;
    Button2: TButton;
    PageControl1: TPageControl;
    tsFirma: TTabSheet;
    TblFirma: TTable;
    DsFirma: TDataSource;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label17: TLabel;
    DBEdit10: TDBEdit;
    DBEdit8: TDBEdit;
    Label16: TLabel;
    Label50: TLabel;
    DBEdit13: TDBEdit;
    Label39: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Firmalogo: TDBImage;
    Label76: TLabel;
    DBMemo2: TDBMemo;
    Label48: TLabel;
    DBMemo3: TDBMemo;
    Label52: TLabel;
    TblFirmaOrgnr: TStringField;
    TblFirmaFirma: TStringField;
    TblFirmaAdresse: TStringField;
    TblFirmaTelefon: TStringField;
    TblFirmaTelefax: TStringField;
    TblFirmaMobil: TStringField;
    TblFirmaEpost: TStringField;
    TblFirmaUrl: TStringField;
    TblFirmaBankkontonr: TStringField;
    TblFirmaFakturaTekst: TBlobField;
    TblFirmaPurreTekst: TBlobField;
    TblFirmaPurregebyr: TCurrencyField;
    TblFirmaLogo: TGraphicField;
    TblFirmaFakturanr: TFloatField;
    TblFirmaKontantnr: TFloatField;
    TblFirmaKundenr: TFloatField;
    TblFirmaVarenr: TFloatField;
    TblFirmaLeverandornr: TFloatField;
    TblFirmaPassord: TStringField;
    TblFirmaPass: TBooleanField;
    TblFirmaPostnr: TStringField;
    TblFirmaPurrerente: TFloatField;
    TblFirmaOrdrenr: TFloatField;
    TblFirmaBestillingnr: TFloatField;
    TblFirmaInkassotekst: TMemoField;
    TblPost: TTable;
    TblFirmaPoststed: TStringField;
    BtnPostnr: TButton;
    OpenPic: TOpenPictureDialog;
    PopLogo: TPopupActionBarEx;
    Settinnbilde1: TMenuItem;
    Slettbilde1: TMenuItem;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnPostnrClick(Sender: TObject);
    procedure FirmalogoDblClick(Sender: TObject);
    procedure Settinnbilde1Click(Sender: TObject);
    procedure Slettbilde1Click(Sender: TObject);
  private
    procedure HentFirmaLogo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFirma: TFrmFirma;

implementation

uses faPostnummer;

{$R *.dfm}

procedure TFrmFirma.FormCreate(Sender: TObject);
begin
  TblFirma.Open;
end;

procedure TFrmFirma.FormDestroy(Sender: TObject);
begin
  if ModalResult = mrOK then
    if TblFirma.State in [dsEdit, dsInsert] then
      TblFirma.Post
  else
    TblFirma.Cancel;

  TblFirma.Close;
end;

procedure TFrmFirma.BtnPostnrClick(Sender: TObject);
begin
  FrmPostnummer := TFrmPostnummer.Create(Application);
  if FrmPostnummer.ShowModal = mrOK then begin
    TblFirma.Edit;
    TblFirmaPostnr.Value := FrmPostnummer.TblPostPostnr.Value;
  end;
  FrmPostnummer.Release;
end;

procedure TFrmFirma.HentFirmaLogo;
begin
  if OpenPic.Execute then begin
    TblFirma.Edit;
    TblFirmaLogo.LoadFromFile(OpenPic.FileName);
  end;
end;

procedure TFrmFirma.FirmalogoDblClick(Sender: TObject);
begin
  HentFirmaLogo;
end;

procedure TFrmFirma.Settinnbilde1Click(Sender: TObject);
begin
  HentFirmaLogo;
end;

procedure TFrmFirma.Slettbilde1Click(Sender: TObject);
begin
  TblFirma.Edit;
  TblFirmaLogo.Clear;
end;

end.
