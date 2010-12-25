unit rsKundeBrReg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmKundeBrReg = class(TForm)
    btnOK: TButton;
    btnAvbryt: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edFirma: TEdit;
    Label2: TLabel;
    edOrgnr: TEdit;
    edEpost: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edUrl: TEdit;
    Label5: TLabel;
    edTelefon: TEdit;
    Label6: TLabel;
    edMobil: TEdit;
    Label7: TLabel;
    edTelefax: TEdit;
    Label9: TLabel;
    edBAdresse: TEdit;
    Label10: TLabel;
    edBPostnr: TEdit;
    Label11: TLabel;
    edBPoststed: TEdit;
    Label12: TLabel;
    edPAdresse: TEdit;
    Label13: TLabel;
    edPPostnr: TEdit;
    Label14: TLabel;
    edPPoststed: TEdit;
  private
    { Private declarations }
    FData: String;
    procedure SetData(const Value: String);
    function HentVariabelInfo(VarName, Strings: String): String;
    procedure UpdateData;
    function FormaterString(Str: String): String;
    function HentAdresseInfo(VarName, Strings: String): String;
  public
    { Public declarations }
    property Data: String read FData write SetData;

  end;

var
  frmKundeBrReg: TfrmKundeBrReg;

implementation

uses blsString, JclStrings;

{$R *.dfm}

{ TForm1 }

procedure TfrmKundeBrReg.SetData(const Value: String);
begin
  FData := Value;
  UpdateData;
end;

function TfrmKundeBrReg.FormaterString(Str: String): String;
begin
  Result := Str + ' ';
  Result := AnsiLowerCase(Result);
  Result := StringReplace(Result, ' as ', ' AS ', [rfReplaceAll]);
  Result := Trim(StrSmartCase(Result, [' ']));
end;

procedure TfrmKundeBrReg.UpdateData;
var
  S: String;
begin
  edFirma.Text := FormaterString(HentVariabelInfo('Navn/foretaksnavn:', Data));
  S := HentVariabelInfo('Organisasjonsnummer:', Data);

  if Trim(S) <> '' then begin
    edOrgnr.Text := 'NO ' + HentVariabelInfo('Organisasjonsnummer:', Data);
    if HentVariabelInfo('Merverdiavgiftsmanntallet', Data) <> '' then
      edOrgnr.Text := edOrgnr.Text + ' MVA';
  end;

  S := HentAdresseInfo('Forretningsadresse:', Data);
  edBAdresse.Text := Splitt(S, 1, '|');
  if Trim(edBAdresse.Text) = '-' then
    edBAdresse.Text := '';

  S := Splitt(S, 2, '|');
  edBPostnr.Text := Splitt(S, 1, ' ');
  edBPoststed.Text := Splitt(S, 2, ' ');

  S := HentAdresseInfo('Postadresse:', Data);
  edPAdresse.Text := Splitt(S, 1, '|');
  if Trim(edPAdresse.Text) = '-' then
    edPAdresse.Text := '';

  S := Splitt(S, 2, '|');
  edPPostnr.Text := Splitt(S, 1, ' ');
  edPPoststed.Text := Splitt(S, 2, ' ');

  edEpost.Text := AnsiLowerCase(HentVariabelInfo('E-postadresse:', Data));
  edUrl.Text := AnsiLowerCase(HentVariabelInfo('Internettadresse:', Data));

  S := AnsiLowerCase(HentVariabelInfo('Telefon:', Data));
  if (Trim(S) <> '-') then
    edTelefon.Text := S;
  S := AnsiLowerCase(HentVariabelInfo('Mobil:', Data));
  if (Trim(S) <> '-') then
    edMobil.Text := S;
  S := AnsiLowerCase(HentVariabelInfo('Telefaks:', Data));
  if (Trim(S) <> '-') then
    edTelefax.Text := S;
end;

function TfrmKundeBrReg.HentVariabelInfo(VarName: String; Strings: String): String;
var
  I: Integer;
  Sl: TStringList;
begin
  Result := '';
  Sl := TStringList.Create;
  try
    Sl.Text := Strings;

    I := 0;
    while (I < Sl.Count) and (Pos(VarName, Sl[I]) = 0)  do
      Inc(I);

    if (I < Sl.Count) then begin
      Result := Sl[I];

      if Pos(':', Result) > 0 then
        Result := blsString.Splitt(Result, 2, ':');
    end;

  finally
    Sl.Free;
  end;
end;

function TfrmKundeBrReg.HentAdresseInfo(VarName: String; Strings: String): String;
var
  I: Integer;
  Sl: TStringList;
begin
  Result := '';
  Sl := TStringList.Create;
  try
    Sl.Text := Strings;

    I := 0;
    while (I < Sl.Count) and (Pos(VarName, Sl[I]) = 0)  do
      Inc(I);

    if (I < Sl.Count) then begin

      Result := Sl[I];

      if Pos(':', Result) > 0 then
        Result := blsString.Splitt(Result, 2, ':');

      if ((I + 1) <= Sl.Count - 1) then begin
        if Pos(':', Sl[I + 1]) = 0 then
          Result := Result + '|' + Sl[I + 1];
      end;
      
    end;

  finally
    Sl.Free;
  end;
end;



end.
