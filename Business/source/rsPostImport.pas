unit rsPostImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ActnList, ExtActns, DB, ComCtrls,
  Provider, DBClient, IniFiles, ExtCtrls, ADODB, pngimage, AbBase,
  AbBrowse, AbZBrows, AbZipper, AbZipKit; //, IEDownload;

type
  TfrmPostImport = class(TForm)
    ProgressBar: TProgressBar;
    BtnStart: TButton;
    LblNedlasting: TLabel;
    BtnLukk: TButton;
    LblDatabase: TLabel;
    PbUpdate: TProgressBar;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    ZipKit: TAbZipKit;
    adoPostnr: TADODataSet;
    adoPostnrPOSTNR: TStringField;
    adoPostnrPOSTSTED: TStringField;
    adoPostnrKOMMUNENR: TStringField;
//    dlComp: TIEDownload;
{    procedure HttpWorkBegin(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCountMax: Integer);
    procedure HttpWork(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCount: Integer);}
    procedure BtnStartClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
//    procedure dlCompProgress(Sender: TBSCB; ulProgress, ulProgressMax,
//      ulStatusCode: Cardinal; szStatusText: PWideChar; ElapsedTime, Speed,
//      EstimatedTime: String);
  private
    { Private declarations }
    Avbrudd: Boolean;
    procedure DoUpdatePostnr(const AList: TStringList);
    function GetListFromWeb(const AList: TStringList): Boolean;
  public
    { Public declarations }
  end;

var
  frmPostImport: TfrmPostImport;

implementation

uses rsData, blsFileUtil, blsString, JclSysInfo, blsWebUtil, blsDialogs;

{$R *.dfm}

procedure TfrmPostImport.DoUpdatePostnr(const AList: TStringList);
var PNr, PSted, Knr, OldPnr: String;
    I: Integer;
begin
  Dm.adoConn.BeginTrans;
  adoPostnr.Open;

  try
    OldPnr := '';

    PbUpdate.Max := AList.Count;
    for I := 0 to AList.Count - 1 do begin

      if Avbrudd then
        Break;
      if (I mod 50 = 0) then
        Application.ProcessMessages;

      PNr := FjernFnutter(Splitt(AList[I], 1));
      PSted := UpperCase(FjernFnutter(Splitt(AList[I], 2)));
      KNr := FjernFnutter(Splitt(AList[I], 5));

      if OldPNr <> PNr then begin
        if adoPostnr.Locate('Postnr', PNr, []) then begin
          adoPostnr.Edit;
          if adoPostnrPOSTSTED.Value <> PSted then
            adoPostnrPOSTSTED.Value := PSted;
          if adoPostnrKOMMUNENR.Value <> Knr then
            adoPostnrKOMMUNENR.Value := Knr;
          adoPostnr.Post;
        end
        else begin
          adoPostnr.Append;
          adoPostnrPOSTNR.Value := PNr;
          adoPostnrPOSTSTED.Value := PSted;
          adoPostnrKOMMUNENR.Value := Knr;
          adoPostnr.Post;
        end;
      end;

      PbUpdate.StepIt;
      OldPnr := Pnr;
    end;

    if Avbrudd then begin
      //Dm.SQLConnection.Rollback(TD);
      Dm.adoConn.RollbackTrans;
      LblDataBase.Caption := 'Operasjonen ble avbrutt!';
    end
    else begin
      //Dm.SQLConnection.Commit(TD);
      Dm.adoConn.CommitTrans;
      LblDatabase.Caption := 'Oppdatering av postnummer fullført';
    end;

  except
    //Dm.SQLConnection.Rollback(TD);
    Dm.adoConn.RollbackTrans;
    LblDataBase.Caption := 'Operasjonen feilet!';
  end;
  adoPostnr.Close;
end;

{procedure TfrmPostImport.HttpWorkBegin(Sender: TObject;
  AWorkMode: TWorkMode; const AWorkCountMax: Integer);
begin
  ProgressBar.Max := AWorkCountMax;
end;}

{procedure TfrmPostImport.HttpWork(Sender: TObject; AWorkMode: TWorkMode;
  const AWorkCount: Integer);
begin
  ProgressBar.Position := AWorkCount;
  if Avbrudd then
    Http.EndWork(AWorkMode);
  Application.ProcessMessages;
end;}

function TfrmPostImport.GetListFromWeb(const AList: TStringList): Boolean;
var Ini: TIniFile;
    Url: String;
//    F: TFileStream;
begin
  Result := False;
  Ini := TIniFile.Create(Dir + 'config.ini');
  try
    Avbrudd := False;
    Url := Ini.ReadString('Oppdatering', 'Postnr', '');
    if Url <> '' then begin
{      F := TFileStream.Create(AddBackSlash(GetWindowsTempFolder) + 'PostNrSS.zip', fmCreate);
      try
        HTTP.Get(Url, F);
      finally
        F.Free;
      end;}
//      dlComp.Go(Url, AddBackSlash(GetWindowsTempFolder) + 'PostNrSS.zip');
    end;
    ZipKit.FileName := AddBackSlash(GetWindowsTempFolder) + 'PostNrSS.zip';
    ZipKit.BaseDirectory := AddBackSlash(GetWindowsTempFolder);
    ZipKit.ExtractFiles('PostNrSS.txt');
    ZipKit.CloseArchive;
    DeleteFile(AddBackSlash(GetWindowsTempFolder) + 'PostNrSS.zip');
    AList.LoadFromFile(AddBackSlash(GetWindowsTempFolder) + 'PostNrSS.Txt');
    DeleteFile(AddBackSlash(GetWindowsTempFolder) + 'PostNrSS.Txt');

    if Avbrudd then begin
      LblNedlasting.Caption := 'Nedlastingen ble avbrutt!';
      LblDatabase.Caption := 'Oppdatering kansellert';
      Exit;
    end;

    if Url = '' then begin
      LblNedlasting.Caption := 'Ingen kildefil tilgjengelig!';
      LblDatabase.Caption := 'Oppdatering avbrutt';
      Exit;
     end;

    LblNedlasting.Caption := 'Nedlasting fullført';
    Result := True;
  finally
    Ini.free;
  end;
end;

procedure TfrmPostImport.BtnStartClick(Sender: TObject);
var SList: TStringList;
    OK: Boolean;
begin
  if not blsWebUtil.IsConnectedToInternet then
    if not blsWebUtil.InternetDial then begin
      //MessageBox(Handle, 'Ingen internettforbindelse tilgjengelig!', 'Tilkoblingsfeil', MB_OK + MB_ICONERROR);
      InfoDialog('Tilkoblingsfeil', 'Ingen internettforbindelse tilgjengelig!');
      Exit;
    end;

  SList := TStringList.Create;
  try
    BtnStart.Enabled := False;
    LblDataBase.Caption := 'Oppdaterer databasen ...';
    LblNedlasting.Caption := 'Laster ned fra www.posten.no';

    OK := GetListFromWeb(SList);

    if OK then
      DoUpdatePostnr(SList);

  finally
    BtnStart.Enabled := True;
    SList.Free;
  end;
end;

procedure TfrmPostImport.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 Avbrudd := (Shift = []) and (Key = VK_ESCAPE);
end;
//
//procedure TfrmPostImport.dlCompProgress(Sender: TBSCB; ulProgress,
//  ulProgressMax, ulStatusCode: Cardinal; szStatusText: PWideChar;
//  ElapsedTime, Speed, EstimatedTime: String);
//begin
//  if Avbrudd then
//    dlComp.Cancel;
//  ProgressBar.Max := ulProgressMax;
//  ProgressBar.Position := ulProgress;
//end;

end.
