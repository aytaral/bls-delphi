unit faPostBeregning;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ComCtrls, ExtCtrls, blsPostSys, DB,
  DBTables, IniFiles, Printers;

type
  TFrmPostBeregning = class(TForm)
    Panel1: TPanel;
    Label8: TLabel;
    EditID: TEdit;
    EditNR: TEdit;
    EditNO: TEdit;
    EditDate: TDateTimePicker;
    Label9: TLabel;
    Label10: TLabel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    GroupBox2: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    GroupBox3: TGroupBox;
    Panel3: TPanel;
    GroupBox4: TGroupBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    GroupBox5: TGroupBox;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit10: TDBEdit;
    DBEdit9: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    GroupBox7: TGroupBox;
    DbMemoInfo: TDBMemo;
    CbType: TComboBox;
    BtnOK: TButton;
    BtnPrint: TButton;
    BtnPreview: TButton;
    blsPost: TblsPostSys;
    TblPost: TTable;
    TblPostPakkeNr: TStringField;
    TblPostDato: TDateField;
    TblPostPostboks: TStringField;
    TblPostFPostnr: TStringField;
    TblPostFPoststed: TStringField;
    TblPostPostnr: TStringField;
    TblPostTelefon: TStringField;
    TblPostPakketype: TIntegerField;
    TblPostSone: TIntegerField;
    TblPostVekt: TFloatField;
    TblPostPris: TFloatField;
    TblPostInfo: TStringField;
    DsPost: TDataSource;
    TblPostKunde: TStringField;
    TblPostAdresse: TStringField;
    BtnSporing: TButton;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    BtnPakkenr: TButton;
    DBEdit15: TDBEdit;
    BtnAvbryt: TButton;
    TblPostVolum: TFloatField;
    TblPostHoyde: TFloatField;
    TblPostBredde: TFloatField;
    TblPostDybde: TFloatField;
    TblPostVolumVekt: TFloatField;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit16: TDBEdit;
    TblPostInnhold: TStringField;
    Print: TPrintDialog;
    Label3: TLabel;
    DBEdit17: TDBEdit;
    TblPostPoststed: TStringField;
    procedure BtnSporingClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TblPostNewRecord(DataSet: TDataSet);
    procedure CbTypeChange(Sender: TObject);
    procedure EditDateChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure TblPostHoydeChange(Sender: TField);
    procedure TblPostVolumChange(Sender: TField);
    procedure TblPostPostnrChange(Sender: TField);
    procedure BtnPakkenrClick(Sender: TObject);
    procedure BtnAvbrytClick(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure TblPostPakkeNrChange(Sender: TField);
    procedure BtnPreviewClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
  private
    { Private declarations }
    FFraPostNr: Integer;
    procedure FinnVolum;
    procedure FinnVolumVekt;
    procedure HentPris;
    function HentNestePakkeNr: String;
    procedure LagreSisteNummer;
    procedure LastStandardPakkeType;
    function TestPakkeNummer(PakkeNr: String): Boolean;
  public
    { Public declarations }
    procedure NyPakke(FakturaNr: String = ''; FakturaDato: TDate = 0);
    procedure EndrePakke(Pakkenr: String);
    procedure SetKundeInfo(Kunde, Postboks, FPostnr, FPoststed, Postnr,
      Poststed, Adresse, Telefon: String);
    property FraPostNr: Integer read FFraPostNr write FFraPostNr;
  end;

var
  FrmPostBeregning: TFrmPostBeregning;

implementation

uses blsFileUtil, blsString, faPakkeSpor, faPakkenr, faRptPakke;

{$R *.dfm}

procedure TFrmPostBeregning.BtnSporingClick(Sender: TObject);
begin
  FrmPakkeSporing := TFrmPakkeSporing.Create(Application);
  FrmPakkeSporing.PakkeNr := TblPostPakkeNr.Value;
  FrmPakkeSporing.ShowModal;
  FrmPakkeSporing.Release;
end;

procedure TFrmPostBeregning.FormCreate(Sender: TObject);
begin
  FFraPostNr := 0;
  TblPost.Open;
  EditDate.Date := Date;
  LastStandardPakkeType;
  blsPost.DataPath := Dir + 'PostData\';
  blsPost.Active := True;
end;

procedure TFrmPostBeregning.LastStandardPakkeType;
var Ini: TIniFile;
    I: Integer;
begin
  Ini := TIniFile.Create(Dir + 'fakuva.ini');
  try
    I := Ini.ReadInteger('PostSys', 'StandardType', 0);
    if (I >= 0) and (I < 5) then
      CbType.ItemIndex := I;
  finally
    Ini.Free;
  end;
end;

procedure TFrmPostBeregning.LagreSisteNummer;
var Ini: TIniFile;
begin
  Ini := TIniFile.Create(Dir + 'fakuva.ini');
  try
    Ini.WriteString('PostSys', 'SisteNummer', TblPostPakkeNr.Value);
  finally
    Ini.Free;
  end;
end;

function TFrmPostBeregning.TestPakkeNummer(PakkeNr: String): Boolean;
begin
  Result := True;
end;

function TFrmPostBeregning.HentNestePakkeNr: String;
var Ini: TIniFile;
    S: String;
    D: Integer;
begin
  Result := 'CK000000001NO';
  Ini := TIniFile.Create(Dir + 'fakuva.ini');
  try
    S := Ini.ReadString('PostSys', 'SisteNummer', '');
    if S <> '' then begin

      D := StrToInt(Copy(S, 3, 9));
      D := D + 1;
      S := S[1] + S[2] + blsString.FillWithChar(IntToStr(D), 9, '0') + S[Length(S) - 1] + S[Length(S)];

      if TestPakkeNummer(S) then begin
        // ************* HER ER NUMMERET OK
        Result := S;
      end
      else begin
        // ************ NUMMERET FINNES - VIS NYTTNR DIALOG
        FrmPakkeNr := TFrmPakkeNr.Create(Application);
        FrmPakkeNr.EditID.Text := S[1] + S[2];
        FrmPakkeNr.EditNr.Text := Copy(S, 3, 9);
        FrmPakkeNr.EditNo.Text := S[Length(S) - 1] + S[Length(S)];
        if FrmPakkeNr.ShowModal = mrOK then begin
          Result := FrmPakkeNr.EditID.Text + FrmPakkeNr.EditNr.Text + FrmPakkeNr.EditNo.Text;
        end;
        FrmPakkeNr.Release;
      end;

    end;
  finally
    Ini.Free;
  end;
end;

procedure TFrmPostBeregning.NyPakke(FakturaNr: String = ''; FakturaDato: TDate = 0);
begin
  TblPost.Append;
  TblPostPakkeNr.Value := HentNestePakkeNr;
  LagreSisteNummer;

  TblPostInfo.Value := 'Fakturanr: ' + Fakturanr + #13#10 + 'Fakturadato: ' + DateToStr(FakturaDato);
end;

procedure TFrmPostBeregning.EndrePakke(Pakkenr: String);
var S: String;
begin
  if TblPost.FindKey([Pakkenr]) then begin
    S := Pakkenr;
    EditID.Text := S[1] + S[2];
    EditNr.Text := Copy(S, 3, 9);
    EditNo.Text := S[Length(S) - 1] + S[Length(S)];
  end
  else begin
    TblPost.Append;
    TblPostPakkenr.Value := Pakkenr;
  end;
end;

procedure TFrmPostBeregning.SetKundeInfo(Kunde, Postboks, FPostnr, FPoststed,
   Postnr, Poststed, Adresse, Telefon: String);
begin
  TblPost.Edit;
  TblPostKunde.Value := Kunde;
  TblPostPostboks.Value := Postboks;
  TblPostFPostnr.Value := FPostnr;
  TblPostFPoststed.Value := FPoststed;
  TblPostTelefon.Value := Telefon;
  TblPostAdresse.Value := Adresse;
  TblPostPostnr.Value := Postnr;
  TblPostPoststed.Value := Poststed;
end;

procedure TFrmPostBeregning.TblPostNewRecord(DataSet: TDataSet);
begin
  TblPostPakkeType.Value := 0;
  TblPostHoyde.Value := 0;
  TblPostBredde.Value := 0;
  TblPostDybde.Value := 0;
  TblPostVolum.Value := 0;
  TblPostVekt.Value := 0;
  TblPostVolumVekt.Value := 0;
  TblPostDato.Value := Date;
end;

procedure TFrmPostBeregning.CbTypeChange(Sender: TObject);
begin
  TblPost.Edit;
  TblPostPakkeType.Value := CbType.ItemIndex;

  HentPris;
end;

procedure TFrmPostBeregning.EditDateChange(Sender: TObject);
begin
  TblPost.Edit;
  TblPostDato.Value := EditDate.Date;
end;

procedure TFrmPostBeregning.FormDestroy(Sender: TObject);
begin
  if TblPost.State in [dsEdit, dsInsert] then
    TblPost.Post;
  TblPost.Close;
end;

procedure TFrmPostBeregning.FinnVolum;
begin
  if TblPostHoyde.IsNull then Exit;
  if TblPostBredde.IsNull then Exit;
  if TblPostDybde.IsNull then Exit;

  TblPost.Edit;
  TblPostVolum.Value := (TblPostHoyde.Value * TblPostBredde.Value * TblPostDybde.Value) / 1000;
end;

procedure TFrmPostBeregning.TblPostHoydeChange(Sender: TField);
begin
  FinnVolum;
end;

procedure TFrmPostBeregning.FinnVolumVekt;
begin
  if (TblPostVolum.Value = 0) or (TblPostVekt.Value = 0) then begin
    TblPost.Edit;
    TblPostVolumVekt.Value := 0;
    Exit;
  end;

  TblPost.Edit;
  TblPostVolumVekt.Value := blsPost.BeregnVolumVekt(TblPostVolum.Value, TblPostVekt.Value);
  HentPris;
end;

procedure TFrmPostBeregning.HentPris;
begin
  if TblPostVolumVekt.Value = 0 then Exit;

  if (not TblPostSone.IsNull) and (TblPostSone.Value > 0) then
    TblPostPris.Value := blsPost.HentPris(TblPostVolumVekt.AsInteger, TblPostSone.Value, TPakkeType(CbType.ItemIndex))
end;

procedure TFrmPostBeregning.TblPostVolumChange(Sender: TField);
begin
  FinnVolumVekt;
end;

procedure TFrmPostBeregning.TblPostPostnrChange(Sender: TField);
begin
  if TblPostPostnr.Value = '' then Exit;
  if FraPostNr < 1 then Exit;

  TblPost.Edit;
  TblPostSone.Value := blsPost.HentSone(FraPostNr, TblPostPostnr.AsInteger);
  HentPris;
end;

procedure TFrmPostBeregning.BtnPakkenrClick(Sender: TObject);
begin
  FrmPakkeNr := TFrmPakkeNr.Create(Application);
  FrmPakkeNr.EditID.Text := EditID.Text;
  FrmPakkeNr.EditNr.Text := EditNr.Text;
  FrmPakkenr.EditNo.Text := EditNo.Text;
  if FrmPakkeNr.ShowModal = mrOK then begin
    TblPost.Edit;
    TblPostPakkeNr.Value := FrmPakkeNr.EditID.Text + FrmPakkeNr.EditNr.Text + FrmPakkeNr.EditNo.Text;
  end;
  FrmPakkeNr.Release;

  LagreSisteNummer;
  HentPris;
end;

procedure TFrmPostBeregning.BtnAvbrytClick(Sender: TObject);
begin
  TblPost.Cancel;
end;

procedure TFrmPostBeregning.BtnOKClick(Sender: TObject);
begin
  if TblPostPakkeNr.IsNull then begin
    ModalResult := mrNone;
    MessageBox(Handle, 'Pakkenummeret er ikke gyldig!', 'Feilmelding', MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure TFrmPostBeregning.TblPostPakkeNrChange(Sender: TField);
var S: String;
begin
  S := TblPostPakkeNr.Value;
  EditID.Text := S[1] + S[2];
  EditNR.Text := Copy(S, 3, 9);
  EditNO.Text := S[Length(S) - 1] + S[Length(S)];
end;

procedure TFrmPostBeregning.BtnPreviewClick(Sender: TObject);
begin
  if TblPost.State in [dsEdit, dsInsert] then
    TblPost.Post;

  RptPakke := TRptPakke.Create(Application);
  RptPakke.OppdaterPakke(TblPostPakkenr.Value);
  RptPakke.PreviewModal;
  RptPakke.Free;
end;

procedure TFrmPostBeregning.BtnPrintClick(Sender: TObject);
begin
  if TblPost.State in [dsEdit, dsInsert] then
    TblPost.Post;

  if Print.Execute then begin
    RptPakke := TRptPakke.Create(Application);
    RptPakke.OppdaterPakke(TblPostPakkenr.Value);
    RptPakke.PrinterSettings.PrinterIndex := Printer.PrinterIndex;
    RptPakke.PrinterSettings.Copies := Print.Copies;
    RptPakke.Print;
    RptPakke.Free;
  end;
end;

end.
