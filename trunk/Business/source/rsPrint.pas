unit rsPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, blsList, ExtCtrls, frxClass, frxADOComponents,
  frxExportPDF;

type
  TfrmPrint = class(TForm)
    frRpt: TfrxReport;
    frxRptConn: TfrxADOComponents;
    frxPDFExport: TfrxPDFExport;
    adoFakturaArt: TADODataSet;
    adoFakturaArtIDFAKTURAART: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure frRptGetValue(const VarName: string; var Value: Variant);
  private
    PrintVar, PrintValue: Variant;
    function HentFakturaFil(IdArt, Media: Integer): String;
    function HentPurreFil(IdArt, Media: Integer): String;
    procedure LastFakturaRapport(IdFaktura, Media: Integer; Purring: Boolean;
      Fakturanr: String = '');
    procedure LastProduktRapport(Pnr: String);
    procedure LastBilagRapport(IdBilag: Integer);
    procedure LastOrdreRapport(IdOrdre: Integer; Ordrenr: String = '');
    { Private declarations }
  public
    { Public declarations }

    procedure VisBilag(IdBilag: Integer);
    procedure PrintBilag(IdBilag: Integer; ShowDialog: Boolean = True);

    procedure VisProduktArk(Pnr: String);
    procedure PrintProduktark(Pnr: String);
    function LagreProduktArk(Pnr: String; Filnavn: TFileName): TFileName;

    procedure VisOrdre(IdOrdre: Integer; Ordrenr: String = '');
    function PrintOrdre(IdOrdre: Integer): Boolean;
    function LagreOrdre(IdOrdre: Integer; Ordrenr: String;
      Filnavn: TFileName): TFileName;

    procedure VisFaktura(IdFaktura: Integer; Purring: Boolean = False;
      Fakturanr: String = '');
    function PrintFaktura(IdFaktura: Integer; Purring: Boolean = False): Boolean;
    function LagreFaktura(IdFaktura: Integer; Fakturanr: String;
      Filnavn: TFileName; Purring: Boolean = False): TFileName;
  end;

var
  frmPrint: TfrmPrint;

implementation

uses rsData, rsPreview, JPEG, JclSysInfo, blsFileUtil, IniFiles;

{$R *.dfm}

procedure TfrmPrint.FormCreate(Sender: TObject);
begin
  frmPreview := TfrmPreview.Create(Application);
  frRpt.Preview := frmPreview.frPreview;
end;

// ********************* FAKTURAUTSKRIFT ******************

function TfrmPrint.HentFakturaFil(IdArt, Media: Integer): String;
var Ini: TIniFile;
    Sec, RepName: String;
begin
  Sec := 'Rapporter';

  case IdArt of
    10: RepName := 'Faktura_' + IntToStr(Media);        //Faktura
    20: RepName := 'Kontantnota';                         //Kontant
    30, 40: RepName := 'Kvittering';                      //Kort, Oppkrav
    100: RepName := 'Kreditnota_' + IntToStr(Media);    //Kreditnota
    else RepName := 'Faktura_' + IntToStr(Media);
  end;

  Ini := TIniFile.Create(Dir + 'config.ini');
  try
    Result := Ini.ReadString(Sec, IntToStr(Dm.g_KlientID) + '_' + RepName, '');
    if Result = '' then
      Result := Ini.ReadString(Sec, 'Def_' + RepName, '');
  finally
    Ini.Free;
  end;
end;

function TfrmPrint.HentPurreFil(IdArt, Media: Integer): String;
var Ini: TIniFile;
    Sec, RepName: String;
begin
  Sec := 'Rapporter';

  case IdArt of
    10: RepName := 'Purring_' + IntToStr(Media);
    100: RepName := 'Kreditnota_' + IntToStr(Media);
    else RepName := 'Purring_' + IntToStr(Media);
  end;

  Ini := TIniFile.Create(Dir + 'config.ini');
  try
    Result := Ini.ReadString(Sec, IntToStr(Dm.g_KlientID) + '_' + RepName, '');
    if Result = '' then
      Result := Ini.ReadString(Sec, 'Def_' + RepName, '');
  finally
    Ini.Free;
  end;
end;

//*************** FAKTURA **********************


procedure TfrmPrint.LastFakturaRapport(IdFaktura, Media: Integer; Purring: Boolean;
  Fakturanr: String = '');
var
  FName: String;
  IdArt: Integer;
begin
  adoFakturaArt.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoFakturaArt.Parameters.ParamValues['IdFaktura'] := IdFaktura;
  adoFakturaArt.Open;
  IdArt := adoFakturaArtIDFAKTURAART.AsInteger;
  adoFakturaArt.Close;

  if IdArt > 0 then begin
    if not Purring then begin
      FName := HentFakturaFil(IdArt, Media);
      if FName = '' then
        FName := 'rpt_Faktura.fr3';
    end
    else begin
      FName := HentPurreFil(IdArt, Media);
      if FName = '' then
        FName := 'rpt_Purring.fr3';
    end;
    frRpt.LoadFromFile(Dm.g_ReportDir + FName);
    if Fakturanr <> '' then
      frRpt.ReportOptions.Name := frRpt.ReportOptions.Name + ' ' + Fakturanr;
    PrintVar := 'IdFaktura';
    PrintValue := IdFaktura;
  end;
end;

function TfrmPrint.PrintFaktura(IdFaktura: Integer; Purring: Boolean = False): Boolean;
begin
  Result := False;
  LastFakturaRapport(IdFaktura, 1, Purring);
  if frRpt.PrepareReport then
    Result := frRpt.Print;
end;

procedure TfrmPrint.VisFaktura(IdFaktura: Integer; Purring: Boolean = False;
  Fakturanr: String = '');
begin
  LastFakturaRapport(IdFaktura, 2, Purring, Fakturanr);
  frRpt.ShowReport;
  frmPreview.ShowModal;
end;

function TfrmPrint.LagreFaktura(IdFaktura: Integer; Fakturanr: String; Filnavn: TFileName;
  Purring: Boolean = False): TFileName;
var
  Fn: String;
begin
  Result := '';
  LastFakturaRapport(IdFaktura, 3, Purring, Fakturanr);

  Fn := Filnavn; //Filnavn angitt av bruker
  if Fn = '' then
    Fn := AddBackSlash(JclSysInfo.GetWindowsTempFolder) +
          StringReplace(frRpt.ReportOptions.Name, ' ', '_', [rfReplaceAll]) + '.pdf';
    //Fn := AddBackSlash(JclSysInfo.GetWindowsTempFolder) + 'Faktura_' + Fakturanr + '.pdf';
  if frRpt.PrepareReport then begin
    frxPDFExport.FileName := Fn;
    frRpt.Export(frxPDFExport);
    Result := Fn;
  end;
end;

//*************** ORDRE **********************


procedure TfrmPrint.LastOrdreRapport(IdOrdre: Integer; Ordrenr: String = '');
begin
  frRpt.LoadFromFile(Dm.g_ReportDir + 'rpt_Ordre.fr3');
  if Ordrenr <> '' then
    frRpt.ReportOptions.Name := frRpt.ReportOptions.Name + ' ' + Ordrenr;
  PrintVar := 'IdOrdre';
  PrintValue := IdOrdre;
end;

procedure TfrmPrint.VisOrdre(IdOrdre: Integer; Ordrenr: String = '');
begin
  LastOrdreRapport(IdOrdre, Ordrenr);
  frRpt.ShowReport;
  frmPreview.ShowModal;
end;

function TfrmPrint.PrintOrdre(IdOrdre: Integer): Boolean;
begin
  Result := False;
  LastOrdreRapport(IdOrdre);
  if frRpt.PrepareReport then
    Result := frRpt.Print;
end;

function TfrmPrint.LagreOrdre(IdOrdre: Integer; Ordrenr: String; Filnavn: TFileName): TFileName;
var
  Fn: String;
begin
  Result := '';
  LastOrdreRapport(IdOrdre, Ordrenr);

  Fn := Filnavn;
  if Fn = '' then
    Fn := AddBackSlash(JclSysInfo.GetWindowsTempFolder) +
          StringReplace(frRpt.ReportOptions.Name, ' ', '_', [rfReplaceAll]) + '.pdf';
  if frRpt.PrepareReport then begin
    frxPDFExport.FileName := Fn;
    frRpt.Export(frxPDFExport);
    Result := Fn;
  end;
end;

//*************** BILAG **********************

procedure TfrmPrint.LastBilagRapport(IdBilag: Integer);
begin
  frRpt.LoadFromFile(Dm.g_ReportDir + 'rpt_Bilag.fr3');
  PrintVar := 'IdBilag';
  PrintValue := IdBilag;
end;

procedure TfrmPrint.VisBilag(IdBilag: Integer);
begin
  LastBilagRapport(IdBilag);
  frRpt.ShowReport;
  frmPreview.ShowModal;
end;

procedure TfrmPrint.PrintBilag(IdBilag: Integer; ShowDialog: Boolean = True);
begin
  LastBilagRapport(IdBilag);

  if ShowDialog = False then
    frRpt.PrintOptions.ShowDialog := False;

  if frRpt.PrepareReport then
    frRpt.Print;

  //Lastes fra rapportfila...
  //if ShowDialog = False then
  //  frRpt.PrintOptions.ShowDialog := True;
end;

//*************** PRODUKTARK **********************

procedure TfrmPrint.LastProduktRapport(Pnr: String);
begin
  frRpt.LoadFromFile(Dm.g_ReportDir + 'rpt_Produkt.fr3');
  PrintVar := 'Prodnr';
  PrintValue := Pnr;
end;

procedure TfrmPrint.PrintProduktark(Pnr: String);
begin
  LastProduktRapport(Pnr);
  if frRpt.PrepareReport then
    frRpt.Print;
end;

procedure TfrmPrint.VisProduktArk(Pnr: String);
begin
  LastProduktRapport(Pnr);
  frRpt.ShowReport;
  frmPreview.ShowModal;
end;

function TfrmPrint.LagreProduktArk(Pnr: String; Filnavn: TFileName): TFileName;
var Fn: String;
    I: Integer;
begin
  Result := '';
  LastProduktRapport(Pnr);

  Pnr := LowerCase(Pnr);
  Fn := Filnavn;
  if Fn = '' then begin
    for I := 1 to Length(Pnr) do
      if (Pnr[I] in ['a'..'z']) or (Pnr[I] in ['0'..'9']) then
        Fn := Fn + LowerCase(Pnr[I])
      else
        Fn := Fn + '_';
    Fn := AddBackSlash(JclSysInfo.GetWindowsTempFolder) + Fn + '.pdf';
  end;

  if frRpt.PrepareReport then begin
    frxPDFExport.FileName := Fn;
    frRpt.Export(frxPDFExport);
    Result := Fn;
  end;
end;

//******************** ANDRE FUNKSJONER *********************

procedure TfrmPrint.FormDestroy(Sender: TObject);
begin
  frmPreview.Release;
end;

procedure TfrmPrint.frRptGetValue(const VarName: string; var Value: Variant);
begin
  if VarName = 'IdKlient' then
    Value := Dm.g_KlientID
  else if VarName = 'LogoPath' then
    Value := Dm.g_LogoDir
  else if VarName = 'ImgPath' then
    Value := Dm.g_DataImgDir
  else if VarName = 'VisBilde' then begin
    Value := FileExists(Dm.g_DataImgDir + PrintValue + '.jpg');
  end
  else if VarName = PrintVar then  //Settes av funksjonen som kaller rapporten
    Value := PrintValue;
end;

end.
