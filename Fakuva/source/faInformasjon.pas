unit faInformasjon;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ExtCtrls, StdCtrls, ComCtrls;

type
  TFrmInformasjon = class(TForm)
    BtnOk: TButton;
    BtnAvbryt: TButton;
    Pc: TPageControl;
    tsInfo: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    LblFakturaV: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LblKunde: TLabel;
    LblVare: TLabel;
    LblLeverandor: TLabel;
    Label11: TLabel;
    LblKategori: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    LblFaktura: TLabel;
    Label6: TLabel;
    LblReferanse: TLabel;
    tsSys: TTabSheet;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    LblVer: TLabel;
    Label8: TLabel;
    LblLang: TLabel;
    Label9: TLabel;
    LblShare: TLabel;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    LblClients: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure PcChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInformasjon: TFrmInformasjon;

implementation

uses DataModul, blsDB;

{$R *.DFM}

procedure TFrmInformasjon.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmInformasjon.FormCreate(Sender: TObject);
begin
  Pc.ActivePageIndex := 0;

  LblFakturaV.Caption         := IntToStr(DM.FakturaDB.RecordCount);
  DM.FakturaDB.Filter         := '';
  LblFaktura.Caption          := IntToStr(DM.FakturaDB.RecordCount);
  LblKunde.Caption            := IntToStr(DM.KundeDB.RecordCount);
  LblLeverandor.Caption       := IntToStr(DM.LeverandorDB.RecordCount);
  LblVare.Caption             := IntToStr(DM.VareDB.RecordCount);
  LblKategori.Caption         := IntToStr(DM.KategoriDB.RecordCount);
  LblReferanse.Caption        := IntToStr(DM.ReferanseDB.RecordCount);
end;

procedure TFrmInformasjon.PcChange(Sender: TObject);
begin
  if Pc.ActivePage = tsSys then begin
    LblVer.Caption := FormatFloat('0', GetSysVersion / 100) + '.00';
    LblLang.Caption := GetLanguageDriver;
    if GetLocalShare then
      LblShare.Caption := 'TRUE'
    else
      LblShare.Caption := 'FALSE';
    LblClients.Caption := IntToStr(GetClients);
  end;
end;

end.
