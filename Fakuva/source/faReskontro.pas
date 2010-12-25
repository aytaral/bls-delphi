unit faReskontro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ExtCtrls, ComCtrls;

type
  TFrmReskontro = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    EditKundenr: TEdit;
    EditKunde: TEdit;
    Label2: TLabel;
    BtnHentKunde: TButton;
    Bevel1: TBevel;
    Panel4: TPanel;
    Button1: TButton;
    Label3: TLabel;
    EditUbetalt: TEdit;
    EditSalg: TEdit;
    Label4: TLabel;
    PbStatus: TProgressBar;
    CbVis: TComboBox;
    Label5: TLabel;
    procedure BtnHentKundeClick(Sender: TObject);
    procedure EditKundenrExit(Sender: TObject);
    procedure EditKundenrKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CbVisChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure FinnFakturaTilKunde(IdKunde: Double = 0);
    procedure BeregnKundeKonto;

  public
    { Public declarations }
  end;

var
  FrmReskontro: TFrmReskontro;

implementation

uses faHentKunde, DataModul, blsMisc;

{$R *.DFM}

procedure TFrmReskontro.BeregnKundeKonto;
var Salg, Ute: Double;
begin
 Salg := 0;
 Ute := 0;
 PbStatus.Position := 0;
 PbStatus.Max := Dm.FakturaDB.RecordCount;
 With Dm.FakturaDB do
  begin
   First;
    While NOT EOF Do
     begin
      Salg := Salg + Dm.FakturaDbTotal.Value;
      If Dm.FakturaDBBetalt.Value = '-' then
       Ute := Ute + Dm.FakturaDBTotal.Value;
      PbStatus.StepIt;
      Next;
     end;
  end;
 EditUbetalt.Text := FloatToStrF(Ute, ffFixed, 10, 2);
 EditSalg.Text    := FloatToStrF(Salg, ffFixed, 10, 2); 
 PbStatus.Position := 0;
end;

procedure TFrmReskontro.FinnFakturaTilKunde(IdKunde: Double = 0);
var S: String;
    Id: Double;
begin
 Id := IdKunde;
 If Id = 0 then
  Id := Dm.KundeDBIdKunde.Value;
 If CbVis.Text = 'Alle' then S := 'Betalt <> '''''
  else
 If CbVis.Text = 'Innbetalte' then S := 'Betalt <> ''-'''
  else
 If CbVis.Text = 'Utestående' then S := 'Betalt = ''-''';
 Dm.FakturaDB.Filter := 'IdKunde = ' + FloatToStr(Id)  + ' and ' + S;
 BeregnKundeKonto;
end;

procedure TFrmReskontro.BtnHentKundeClick(Sender: TObject);
begin
 Application.CreateForm(TFrmHentKunde, FrmHentKunde);
 FrmHentKunde.ShowModal;
 If FrmHentKunde.ModalResult = mrOk then
  begin
   EditKundenr.Text := FloatToStrF(DM.KundeDBKundenr.Value, ffFixed, 10, 0);
   EditKunde.Text   := Dm.KundeDBKunde.Value;
   FinnFakturaTilKunde(Dm.KundeDBIdKunde.Value);
  end;
end;

procedure TFrmReskontro.EditKundenrExit(Sender: TObject);
begin
 If (EditKundenr.Text <> '') and DM.KundeDB.Locate('Kundenr', EditKundenr.Text, []) then
  FinnFakturaTilKunde(Dm.KundeDBIdKunde.Value);
end;

procedure TFrmReskontro.EditKundenrKeyPress(Sender: TObject;
  var Key: Char);
begin
 IntKontroll(Key);
 If Key = #13 then EditKundenrExit(Sender);
end;

procedure TFrmReskontro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 Dm.FakturaDB.Filter := '';
end;

procedure TFrmReskontro.CbVisChange(Sender: TObject);
begin
 FinnFakturaTilKunde;
end;

procedure TFrmReskontro.Button1Click(Sender: TObject);
begin
 Close;
end;

procedure TFrmReskontro.FormShow(Sender: TObject);
begin
 CbVis.ItemIndex := 0;
end;

end.
