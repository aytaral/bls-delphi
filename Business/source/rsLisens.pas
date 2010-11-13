unit rsLisens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, JvExStdCtrls, JvDBCombobox, ComCtrls,
  JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker, Mask, DBCtrls, Provider,
  DBClient, Buttons;

type
  TfrmLisens = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnLukk: TButton;
    adoKlient: TADODataSet;
    cdsKlient: TClientDataSet;
    dspKlient: TDataSetProvider;
    dsKlient: TDataSource;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    lblLisens: TLabel;
    btnManuelt: TButton;
    btnReg: TButton;
    cdsKlientIDKLIENT: TIntegerField;
    cdsKlientORGNR: TStringField;
    cdsKlientNAVN: TStringField;
    cdsKlientADRESSE: TStringField;
    cdsKlientPOSTNR: TStringField;
    cdsKlientTELEFON: TStringField;
    cdsKlientMOBIL: TStringField;
    cdsKlientEPOST: TStringField;
    cdsKlientPROGTYPE: TIntegerField;
    cdsKlientREGDATO: TDateField;
    cdsKlientGYLDIGHET: TIntegerField;
    cdsKlientLISENSKODE: TStringField;
    btnCheck: TBitBtn;
    adoKlientIDKLIENT: TIntegerField;
    adoKlientORGNR: TStringField;
    adoKlientNAVN: TStringField;
    adoKlientADRESSE: TStringField;
    adoKlientPOSTNR: TStringField;
    adoKlientTELEFON: TStringField;
    adoKlientMOBIL: TStringField;
    adoKlientEPOST: TStringField;
    adoKlientPROGTYPE: TIntegerField;
    adoKlientREGDATO: TDateField;
    adoKlientGYLDIGHET: TIntegerField;
    adoKlientLISENSKODE: TStringField;
    btnFirmaInfo: TButton;
    cbProgType: TComboBox;
    cbGyldighet: TComboBox;
    dtpRegDato: TDateTimePicker;
    edKey: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure cdsKlientBeforeOpen(DataSet: TDataSet);
    procedure btnManueltClick(Sender: TObject);
    procedure btnFirmaInfoClick(Sender: TObject);
    procedure btnCheckClick(Sender: TObject);
    procedure btnLukkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRegClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edKeyChange(Sender: TObject);
    procedure cbProgTypeChange(Sender: TObject);
    procedure edKeyKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    function ErGyldig: Boolean;
    procedure LagreLisens;
    procedure OppdaterFelter(Gyldig: Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLisens: TfrmLisens;

implementation

uses rsData, rsKlient, blsWebUtil, DateUtils, rsFunction, blsDialogs, blsLicense;

{$R *.dfm}

function TfrmLisens.ErGyldig: Boolean;
var
  OK: Boolean;
begin
  if (cbProgType.ItemIndex = -1) or (cbGyldighet.ItemIndex = -1) or
    (edKey.Text = '') then begin
    Result := False;
    Exit;
  end;

  OK := SjekkLisens(cdsKlientNAVN.Value, cdsKlientORGNR.Value, cbProgType.ItemIndex +1,
          cbGyldighet.ItemIndex +1, dtpRegDato.Date, edKey.Text);

  Result := False;
  if OK then
    if SjekkDato(dtpRegDato.Date, cbGyldighet.ItemIndex +1) = 0 then
      Result := True;
end;

procedure TfrmLisens.OppdaterFelter(Gyldig: Boolean);
var
  Res: Integer;
begin
  if Gyldig then begin
    lblLisens.Caption := 'Registrert';
    lblLisens.Font.Color := clWindowText;
    edKey.ReadOnly := True;
    edKey.Color := clBtnFace;
  end
  else begin
    Res := SjekkDato(dtpRegDato.Date, cbGyldighet.ItemIndex +1);
    case Res of
      LS_NULLDATE:    lblLisens.Caption := 'Uregistrert';
      LS_INVALIDDATE: lblLisens.Caption := 'Ugyldig dato';
      LS_EXPIRED:     lblLisens.Caption := 'Utgått lisens';
      else            lblLisens.Caption := 'Ugyldig lisenskode';
    end;
    edKey.ReadOnly := False;
    edKey.Color := clWindow;
    lblLisens.Font.Color := clMaroon;
  end;
end;

procedure TfrmLisens.btnCheckClick(Sender: TObject);
var
  G: Boolean;
begin
  G := ErGyldig;
  OppdaterFelter(G);
  if G then
    LagreLisens;
end;

procedure TfrmLisens.LagreLisens;
begin
  cdsKlient.Edit;
  cdsKlientREGDATO.Value := dtpRegDato.Date;
  cdsKlientGYLDIGHET.Value := cbGyldighet.ItemIndex +1;
  cdsKlientPROGTYPE.Value := cbProgType.ItemIndex +1;
  cdsKlientLISENSKODE.Value := edKey.Text;
  cdsKlient.Post;
  cdsKlient.ApplyUpdates(-1);
end;

procedure TfrmLisens.btnLukkClick(Sender: TObject);
begin
  if ErGyldig then begin
    LagreLisens;
    ModalResult := mrOk;
  end
  else
    ModalResult := mrCancel;
end;

procedure TfrmLisens.btnManueltClick(Sender: TObject);
begin
  Dm.OpenWebHelp('reg');
end;

procedure TfrmLisens.btnRegClick(Sender: TObject);
var
  S, Url, Key: String;
begin
  if (cbProgType.ItemIndex = -1) or (cbGyldighet.ItemIndex = -1) then begin
    InfoDialog('Registrering', 'Programversjon og gyldighet må velges før automatisk registrering kan fullføres!');
    Exit;
  end;

  cdsKlient.Edit;
  cdsKlientREGDATO.Value := Date;
  dtpRegDato.Date := Date;

  S := 'Gyldighet=' + IntToStr(cbGyldighet.ItemIndex +1) + '&' +
       'Firma=' + cdsKlientNAVN.Value + '&' +
       'Orgnr=' + cdsKlientORGNR.Value + '&' +
       'Progtype=' + IntToStr(cbProgType.ItemIndex +1) + '&' +
       'Navn=' + Dm.g_Bruker + '&' +
       'Adresse=' + cdsKlientADRESSE.Value + '&' +
       'Postnr=' + cdsKlientPOSTNR.Value + '&' +
       'Telefon=' + cdsKlientTELEFON.Value + '&' +
       'Mobil=' + cdsKlientMOBIL.Value + '&' +
       'Epost=' + cdsKlientEPOST.Value + '&' +
       'IdKlient=' + cdsKlientIDKLIENT.AsString;

  Url := Dm.HentOnlineServiceUrl;
  if Url = '' then begin
    AlertDialog('Registrering', 'Tjeneste for registrering via internett ikke angitt!');
    Exit;
  end;

  Url := Url + rsData.LisensReg + S;

  Key := blsWebUtil.ReadUrl(Url);
  Key := StringReplace(Key, #13#10, '', [rfReplaceAll]);
  edKey.Text := Trim(Key);
  btnCheckClick(Sender);
end;

procedure TfrmLisens.btnFirmaInfoClick(Sender: TObject);
begin
  frmKlient := TfrmKlient.Create(Application);
  if frmKlient.ShowModal = mrOK then begin
    cdsKlient.Close;
    cdsKlient.Open;

    OppdaterFelter(ErGyldig);
  end;
  frmKlient.Release;
end;

procedure TfrmLisens.cdsKlientBeforeOpen(DataSet: TDataSet);
begin
  adoKlient.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  cdsKlient.FetchParams;
end;

procedure TfrmLisens.cbProgTypeChange(Sender: TObject);
begin
  OppdaterFelter(ErGyldig);
end;

procedure TfrmLisens.edKeyChange(Sender: TObject);
begin
//  btnCheck.Enabled := Length(dbeKey.Text) = 32;
end;

procedure TfrmLisens.edKeyKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  OppdaterFelter(ErGyldig);
end;

procedure TfrmLisens.FormCreate(Sender: TObject);
begin
  cdsKlient.Open;
  if not cdsKlientGYLDIGHET.IsNull then
    cbGyldighet.ItemIndex := cdsKlientGYLDIGHET.Value -1;
  if not cdsKlientPROGTYPE.IsNull then
    cbProgType.ItemIndex := cdsKlientPROGTYPE.Value -1;
  if not cdsKlientREGDATO.IsNull then
    dtpRegDato.Date := cdsKlientREGDATO.Value;
  edKey.Text := cdsKlientLISENSKODE.Value;
end;

procedure TfrmLisens.FormDestroy(Sender: TObject);
begin
  cdsKlient.Close;
end;

procedure TfrmLisens.FormShow(Sender: TObject);
begin
  OppdaterFelter(ErGyldig);
end;

end.
