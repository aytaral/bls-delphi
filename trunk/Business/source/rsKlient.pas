unit rsKlient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, ADODB, DBClient, Provider,
  Mask, DBCtrls, ExtDlgs, dbcgrids, blsBorderPanel, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, blsList, ActnList;

type
  TfrmKlient = class(TForm)
    pnlTop: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    cbFirmaListe: TComboBox;
    Panel2: TPanel;
    btnNytt: TButton;
    btnSlett: TButton;
    btnOK: TButton;
    btnAvbryt: TButton;
    Panel1: TPanel;
    Pc: TPageControl;
    TabSheet1: TTabSheet;
    tsRegnskap: TTabSheet;
    adoKlient: TADODataSet;
    dspKlient: TDataSetProvider;
    cdsKlient: TClientDataSet;
    adoKlientIDKLIENT: TIntegerField;
    adoKlientNAVN: TStringField;
    adoKlientORGNR: TStringField;
    adoKlientADRESSE: TStringField;
    adoKlientPOSTNR: TStringField;
    adoKlientEPOST: TStringField;
    adoKlientURL: TStringField;
    adoKlientTELEFON: TStringField;
    adoKlientFAKS: TStringField;
    adoKlientMOBIL: TStringField;
    adoKlientLOGO: TStringField;
    adoKlientBANKKONTO: TStringField;
    adoKlientSELSKAPKODE: TStringField;
    adoKlientNESTEPRODNR: TIntegerField;
    adoKlientIMPORTNR: TIntegerField;
    dsKlient: TDataSource;
    adoSelskap: TADODataSet;
    dsSelskap: TDataSource;
    tsLogo: TTabSheet;
    btnFinnLogo: TButton;
    Label5: TLabel;
    Label6: TLabel;
    cdsKlientIDKLIENT: TIntegerField;
    cdsKlientNAVN: TStringField;
    cdsKlientORGNR: TStringField;
    cdsKlientADRESSE: TStringField;
    cdsKlientPOSTNR: TStringField;
    cdsKlientEPOST: TStringField;
    cdsKlientURL: TStringField;
    cdsKlientTELEFON: TStringField;
    cdsKlientFAKS: TStringField;
    cdsKlientMOBIL: TStringField;
    cdsKlientLOGO: TStringField;
    cdsKlientBANKKONTO: TStringField;
    cdsKlientSELSKAPKODE: TStringField;
    cdsKlientNESTEPRODNR: TIntegerField;
    cdsKlientIMPORTNR: TIntegerField;
    Panel3: TPanel;
    imgLogo: TImage;
    DBEdit3: TDBEdit;
    cdsKlientPOSTSTED: TStringField;
    tsUtvidet: TTabSheet;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    dbeNavn: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    btnPostnr: TButton;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    GroupBox4: TGroupBox;
    Label18: TLabel;
    DBEdit15: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    OpenPictureDialog: TOpenPictureDialog;
    adoFirmaListe: TADODataSet;
    adoFirmaListeIDKLIENT: TIntegerField;
    adoFirmaListeNAVN: TStringField;
    adoKlientKREDITNOTATEKST: TMemoField;
    adoKlientPURREFORFALL: TIntegerField;
    cdsKlientKREDITNOTATEKST: TMemoField;
    cdsKlientPURREFORFALL: TIntegerField;
    tsStatus: TTabSheet;
    tsTekst: TTabSheet;
    Label20: TLabel;
    DBMemo1: TDBMemo;
    Label21: TLabel;
    DBMemo3: TDBMemo;
    adoKlientKONTOKUNDE: TIntegerField;
    adoKlientKONTOLEVERANDOR: TIntegerField;
    cdsKlientKONTOKUNDE: TIntegerField;
    cdsKlientKONTOLEVERANDOR: TIntegerField;
    adoKlientSWIFT: TStringField;
    adoKlientIBAN: TStringField;
    adoKlientBANKNAVN: TMemoField;
    cdsKlientSWIFT: TStringField;
    cdsKlientIBAN: TStringField;
    cdsKlientBANKNAVN: TMemoField;
    GroupBox5: TGroupBox;
    DBMemo4: TDBMemo;
    Label31: TLabel;
    DBEdit22: TDBEdit;
    Label28: TLabel;
    DBEdit21: TDBEdit;
    Label27: TLabel;
    GroupBox6: TGroupBox;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    adoKlientKONTOMVA: TIntegerField;
    cdsKlientKONTOMVA: TIntegerField;
    GroupBox7: TGroupBox;
    Label30: TLabel;
    DBEdit24: TDBEdit;
    Label29: TLabel;
    DBEdit23: TDBEdit;
    Label32: TLabel;
    DBEdit25: TDBEdit;
    tsMva: TTabSheet;
    adoStatus: TADODataSet;
    dspStatus: TDataSetProvider;
    adoStatusIDKLIENT: TIntegerField;
    adoStatusIDSTATUS: TIntegerField;
    adoStatusSTATUS: TStringField;
    adoStatusOVERSKRIFT: TStringField;
    adoStatusTEKST: TMemoField;
    adoStatusGEBYR: TFloatField;
    adoStatusRENTESATS: TFloatField;
    adoStatusAKTIV: TSmallintField;
    cdsStatus: TClientDataSet;
    dsStatus: TDataSource;
    GroupBox9: TGroupBox;
    Label23: TLabel;
    DBEdit20: TDBEdit;
    Label24: TLabel;
    DBEdit17: TDBEdit;
    Label25: TLabel;
    DBEdit18: TDBEdit;
    Label26: TLabel;
    DBEdit19: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBMemo2: TDBMemo;
    Label22: TLabel;
    dbgStatus: TJvDBGrid;
    Label33: TLabel;
    cdsStatusIDKLIENT: TIntegerField;
    cdsStatusIDSTATUS: TIntegerField;
    cdsStatusSTATUS: TStringField;
    cdsStatusOVERSKRIFT: TStringField;
    cdsStatusTEKST: TMemoField;
    cdsStatusGEBYR: TFloatField;
    cdsStatusRENTESATS: TFloatField;
    cdsStatusAKTIV: TSmallintField;
    adoMva: TADODataSet;
    dspMva: TDataSetProvider;
    adoMvaIDKLIENT: TIntegerField;
    adoMvaMVAKODE: TIntegerField;
    adoMvaKONTONR: TIntegerField;
    cdsMva: TClientDataSet;
    dsMva: TDataSource;
    adoMvaBESKRIVELSE: TStringField;
    adoMvaSATS: TFloatField;
    cdsMvaIDKLIENT: TIntegerField;
    cdsMvaMVAKODE: TIntegerField;
    cdsMvaKONTONR: TIntegerField;
    cdsMvaBESKRIVELSE: TStringField;
    cdsMvaSATS: TFloatField;
    dbgMva: TJvDBGrid;
    adoMvaKONTONAVN: TStringField;
    cdsMvaKONTONAVN: TStringField;
    slMvaUpdate: TblsList;
    GroupBox8: TGroupBox;
    DBCtrlGrid1: TDBCtrlGrid;
    Label34: TLabel;
    DBEdit26: TDBEdit;
    DBText1: TDBText;
    adoSerie: TADODataSet;
    dsSerie: TDataSource;
    adoKlientKONTOAVRUNDING: TIntegerField;
    cdsKlientKONTOAVRUNDING: TIntegerField;
    Label35: TLabel;
    DBEdit27: TDBEdit;
    adoKlientKONTOSALG: TIntegerField;
    cdsKlientKONTOSALG: TIntegerField;
    Label36: TLabel;
    DBEdit28: TDBEdit;
    adoKlientKONTOBANK: TIntegerField;
    adoKlientKONTOKONTANT: TIntegerField;
    cdsKlientKONTOBANK: TIntegerField;
    cdsKlientKONTOKONTANT: TIntegerField;
    Label37: TLabel;
    Label38: TLabel;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    adoKlientBILAGSERIER: TSmallintField;
    cdsKlientBILAGSERIER: TSmallintField;
    GroupBox10: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    Button1: TButton;
    adoKlientORDRETEKST: TMemoField;
    cdsKlientORDRETEKST: TMemoField;
    ActionList: TActionList;
    acBilagSerier: TAction;
    adoKlientPROGTYPE: TIntegerField;
    cdsKlientPROGTYPE: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure PcChange(Sender: TObject);
    procedure btnPostnrClick(Sender: TObject);
    procedure btnFinnLogoClick(Sender: TObject);
    procedure cdsStatusBeforeOpen(DataSet: TDataSet);
    procedure adoSerieBeforeOpen(DataSet: TDataSet);
    procedure cbFirmaListeChange(Sender: TObject);
    procedure btnNyttClick(Sender: TObject);
    procedure cdsMvaBeforeOpen(DataSet: TDataSet);
    procedure acBilagSerierExecute(Sender: TObject);
  private
    procedure LagreEndringer;
    procedure LastNyLogo;
    procedure OppdaterMvaKoder;
    procedure EndreValgtKlient;
    procedure LastFirmaListe;
    { Private declarations }
  public
    { Public declarations }
    AllEdit: Boolean;
    AktivKlient: Integer;
  end;


//På denne uniten må ikke g_AktivKlient brukes når AllEdit er True...
//da brukeren logges ut..

var
  frmKlient: TfrmKlient;

implementation

uses rsData, rsPostnr, JclStrings, blsDialogs, Jpeg, rsBilagSerier;

{$R *.dfm}

procedure TfrmKlient.FormCreate(Sender: TObject);
begin
  Pc.ActivePageIndex := 0;
  AllEdit := False;
  AktivKlient := -1;
end;

procedure TfrmKlient.LastFirmaListe;
var I: Integer;
begin
  for I := 0 to cbFirmaListe.Items.Count -1 do
    cbFirmaListe.Items.Objects[I].Free;
  cbFirmaListe.Clear;

  adoFirmaListe.Open;
  while not adoFirmaListe.Eof do begin
    cbFirmaListe.Items.AddObject(adoFirmaListeNAVN.Value, TNummer.Create(adoFirmaListeIDKLIENT.Value));
    adoFirmaListe.Next;
  end;
  adoFirmaListe.Close;
end;

procedure TfrmKlient.FormShow(Sender: TObject);
begin
  if AllEdit then begin
    Dm.Connect;
    adoKlient.Parameters.ParamValues['IdKlient'] := AktivKlient;
    LastFirmaListe;
  end
  else begin
    pnlTop.Visible := False;
    btnSlett.Visible := False;
    btnNytt.Visible := False;
    Height := Height - pnlTop.Height;
    AktivKlient := Dm.g_KlientID;
    adoKlient.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  end;

  cdsKlient.Open;
  tsRegnskap.TabVisible := cdsKlientPROGTYPE.Value = 3;
  tsMva.TabVisible := cdsKlientPROGTYPE.Value = 3;

  adoSelskap.Open;

  if AllEdit then
    cbFirmaListe.ItemIndex := cbFirmaListe.Items.IndexOf(cdsKlientNAVN.Value);
  dbeNavn.SetFocus;  
end;

procedure TfrmKlient.FormDestroy(Sender: TObject);
var I: Integer;
begin
  cdsKlient.Close;
  adoSelskap.Close;
  adoSerie.Close;
  cdsStatus.Close;
  cdsMva.Close;

  if AllEdit then begin
    Dm.Disconnect;
    for I := 0 to cbFirmaListe.Items.Count -1 do
      cbFirmaListe.Items.Objects[I].Free
  end;
end;

procedure TfrmKlient.LagreEndringer;
begin
  if cdsStatus.Active then begin
    if cdsStatus.State in [dsEdit, dsInsert] then
      cdsStatus.Post;
    cdsStatus.ApplyUpdates(-1);
  end;

  if cdsMva.Active then begin
    if cdsMva.State in [dsEdit, dsInsert] then
      cdsMva.Post;
    cdsMva.ApplyUpdates(-1);
  end;

  if adoSerie.Active then
    if adoSerie.State in [dsEdit, dsInsert] then
      adoSerie.Post;

  if (cdsKlient.State in [dsEdit, dsInsert]) then
    cdsKlient.Post;
  cdsKlient.ApplyUpdates(-1);
end;

procedure TfrmKlient.btnOKClick(Sender: TObject);
begin
  LagreEndringer;
end;

procedure TfrmKlient.OppdaterMvaKoder;
var S: String;
begin
  S := StringReplace(slMvaUpdate.Lines.Text, '$IdKlient', IntToStr(AktivKlient) ,[rfReplaceAll]);
  Dm.adoSQL.CommandText := S;
  Dm.adoSQL.Execute;
end;

procedure TfrmKlient.PcChange(Sender: TObject);
begin
  if Pc.ActivePage = tsLogo then
    LastNyLogo
  else if Pc.ActivePage = tsStatus then
    cdsStatus.Open
  else if Pc.ActivePage = tsMva then begin
    if not cdsMva.Active then begin
      OppdaterMvaKoder;
      cdsMva.Open;
    end;
  end
  else if Pc.ActivePage = tsUtvidet then
    adoSerie.Open;
end;

procedure TfrmKlient.LastNyLogo;
begin
  if cdsKlientLOGO.Value <> '' then begin
    if FileExists(Dm.g_LogoDir + cdsKlientLOGO.Value) then
      imgLogo.Picture.LoadFromFile(Dm.g_LogoDir + cdsKlientLOGO.Value)
    else begin
      cdsKlient.Edit;
      cdsKlientLOGO.Value := '';
    end;
  end;
end;

procedure TfrmKlient.btnPostnrClick(Sender: TObject);
begin
  frmPostnr := TfrmPostnr.Create(Application);
  if frmPostnr.ShowModal = mrOK then begin
    cdsKlient.Edit;
    cdsKlientPOSTNR.Value := frmPostnr.cdsPostnrPOSTNR.Value;
    cdsKlient.Post;
  end;
  frmPostnr.Release;
end;

procedure TfrmKlient.btnFinnLogoClick(Sender: TObject);
var Fn: TFileName;
    Pic: TPicture;
    Jpg: TJPEGImage;
begin
 if OpenPictureDialog.Execute then begin
   if ExtractFilePath(OpenPictureDialog.FileName) = Dm.g_LogoDir then begin
     cdsKlient.Edit;
     cdsKlientLOGO.Value := ExtractFileName(OpenPictureDialog.FileName);
     cdsKlient.Post;
     LastNyLogo;
   end
   else begin
     Fn := StrPadLeft(cdsKlientIDKLIENT.AsString, 4, '0');
     Fn := Fn + '_' + FormatDateTime('yyyymmdd_hhnnss', Now) + '.jpg';
     if not FileExists(Fn) then begin
       Pic := TPicture.Create;
       try
         Pic.LoadFromFile(OpenPictureDialog.FileName);
         Jpg := TJPEGImage.Create;
         try
           Jpg.Performance := jpBestQuality;
           Jpg.Assign(Pic.Graphic);
           Jpg.SaveToFile(Dm.g_LogoDir + Fn);
           cdsKlient.Edit;
           cdsKlientLOGO.Value := Fn;
           cdsKlient.Post;
         finally
           Jpg.Free;
         end;
       finally
         Pic.Free;
       end;
       LastNyLogo;
     end
     else
       ErrorDialog('Filnavn', 'Feil ved lagring av logo. Filnavnet allerede brukt!');
   end;
 end;
end;

procedure TfrmKlient.cdsStatusBeforeOpen(DataSet: TDataSet);
begin
  adoStatus.Parameters.ParamValues['IdKlient'] := AktivKlient;
end;

procedure TfrmKlient.acBilagSerierExecute(Sender: TObject);
begin
  frmBilagSerier := TfrmBilagSerier.Create(Application);
  frmBilagSerier.ShowModal;
  frmBilagSerier.Release;
end;

procedure TfrmKlient.adoSerieBeforeOpen(DataSet: TDataSet);
begin
  adoSerie.Parameters.ParamValues['IdKlient'] := AktivKlient;
end;

procedure TfrmKlient.EndreValgtKlient;
begin
  if cdsKlient.State in [dsEdit, dsInsert] then
    cdsKlient.Post;
  cdsKlient.ApplyUpdates(-1);

  if cbFirmaListe.ItemIndex = -1 then Exit;
  AktivKlient := TNummer(cbFirmaListe.Items.Objects[cbFirmaListe.ItemIndex]).Nr;
  Pc.ActivePageIndex := 0;

  adoKlient.Parameters.ParamValues['IdKlient'] := AktivKlient;
  cdsKlient.Refresh;
  adoSerie.Close;
  cdsStatus.Close;
  cdsMva.Close;
end;

procedure TfrmKlient.cbFirmaListeChange(Sender: TObject);
begin
  EndreValgtKlient;
end;

procedure TfrmKlient.btnNyttClick(Sender: TObject);
var N, Sql: String;
begin
  N := InputBox('Nytt firma', 'Oppgi navn på nytt firma', '');
  if N <> '' then begin
    Sql := 'insert into KLIENT(IDKLIENT, NAVN) values (0, ' + QuotedStr(N) + ')';
    Dm.adoSQL.CommandText := Sql;
    Dm.adoSQL.Execute;
    LastFirmaListe;
    cbFirmaListe.ItemIndex := cbFirmaListe.Items.IndexOf(N);
    EndreValgtKlient;
  end;
end;

procedure TfrmKlient.cdsMvaBeforeOpen(DataSet: TDataSet);
begin
  adoMva.Parameters.ParamValues['IdKlient'] := AktivKlient;
end;

end.
