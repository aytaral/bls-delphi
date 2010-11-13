unit bsData;

interface

uses
  SysUtils, Classes, DB, ADODB, DBClient, Provider, ImgList, Controls, ComCtrls;

type
  TdmData = class(TDataModule)
    adoConn: TADOConnection;
    adoBil: TADODataSet;
    dspBil: TDataSetProvider;
    cdsBil: TClientDataSet;
    dsBil: TDataSource;
    ImageList24: TImageList;
    cdsBilIDBIL: TIntegerField;
    cdsBilREGNR: TStringField;
    cdsBilMERKE: TStringField;
    cdsBilIDBILTYPE: TIntegerField;
    cdsBilAARGANG: TIntegerField;
    cdsBilLASTEEVNE: TBCDField;
    cdsBilRAMMENR: TStringField;
    cdsBilTEKNISK: TMemoField;
    cdsBilAKTIV: TSmallintField;
    cdsBilBILTYPE: TStringField;
    adoService: TADODataSet;
    dspService: TDataSetProvider;
    cdsService: TClientDataSet;
    dsService: TDataSource;
    adoBilIDBIL: TIntegerField;
    adoBilREGNR: TStringField;
    adoBilMERKE: TStringField;
    adoBilIDBILTYPE: TIntegerField;
    adoBilAARGANG: TIntegerField;
    adoBilLASTEEVNE: TBCDField;
    adoBilRAMMENR: TStringField;
    adoBilTEKNISK: TMemoField;
    adoBilAKTIV: TSmallintField;
    adoBilBILTYPE: TStringField;
    ImageListPC: TImageList;
    spIdBil: TADOStoredProc;
    spIdBilIDBIL: TIntegerField;
    spIdService: TADOStoredProc;
    spIdServiceIDSERVICE: TIntegerField;
    spNyKmStand: TADOStoredProc;
    adoServiceDATO: TDateField;
    adoServiceKMSTAND: TIntegerField;
    adoServiceBESKRIVELSE: TStringField;
    adoServicePRIS: TBCDField;
    adoServiceBRUKER: TStringField;
    adoServiceREGDATE: TDateTimeField;
    adoServiceIDBIL: TIntegerField;
    adoServiceSERVICETYPE: TStringField;
    adoServiceREGNR: TStringField;
    adoServiceMERKE: TStringField;
    cdsServiceDATO: TDateField;
    cdsServiceKMSTAND: TIntegerField;
    cdsServiceBESKRIVELSE: TStringField;
    cdsServicePRIS: TBCDField;
    cdsServiceBRUKER: TStringField;
    cdsServiceREGDATE: TDateTimeField;
    cdsServiceIDBIL: TIntegerField;
    cdsServiceSERVICETYPE: TStringField;
    cdsServiceREGNR: TStringField;
    cdsServiceMERKE: TStringField;
    adoServiceIDSERVICE: TIntegerField;
    cdsServiceIDSERVICE: TIntegerField;
    adoBilType: TADODataSet;
    adoServiceType: TADODataSet;
    spIdBilType: TADOStoredProc;
    spIdServiceType: TADOStoredProc;
    spIdBilTypeIDBILTYPE: TIntegerField;
    dspBilType: TDataSetProvider;
    dspServiceType: TDataSetProvider;
    cdsBilType: TClientDataSet;
    cdsServiceType: TClientDataSet;
    adoServiceTypeIDSERVICETYPE: TIntegerField;
    adoServiceTypeSERVICETYPE: TStringField;
    adoBilTypeIDBILTYPE: TIntegerField;
    adoBilTypeBILTYPE: TStringField;
    cdsBilTypeIDBILTYPE: TIntegerField;
    cdsBilTypeBILTYPE: TStringField;
    cdsServiceTypeIDSERVICETYPE: TIntegerField;
    cdsServiceTypeSERVICETYPE: TStringField;
    dsBilType: TDataSource;
    dsServiceType: TDataSource;
    spIdServiceTypeIDSERVICETYPE: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adoConnBeforeConnect(Sender: TObject);
    procedure cdsBilNewRecord(DataSet: TDataSet);
    procedure dspBilAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspBilBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsBilAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsBilBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsBilBeforeOpen(DataSet: TDataSet);
    procedure dspServiceAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspServiceBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsServiceAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsServiceBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsServiceBeforeOpen(DataSet: TDataSet);
    procedure cdsServiceNewRecord(DataSet: TDataSet);
    procedure cdsBilTypeNewRecord(DataSet: TDataSet);
    procedure cdsServiceTypeNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    CalledCreate: Boolean;

    FBilID: OleVariant;
    FServiceID: OleVariant;

    procedure NullStillGlobaler;
    procedure dspAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant; FieldName: String);
    procedure dspBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant; FieldName: String);
  public
    { Public declarations }
    g_Bruker: String;
    g_Tilgang: Integer;
    g_ReportDir: String;
    //g_LogDir: String;

    function Connect: Boolean;
    procedure Disconnect;
    function HarAdminTilgang: Boolean;
    procedure RegNyKmStand(IdBil, KmStand: Integer; Dato: TDate);
    procedure FreeKategorier(TreeView: TTreeView);
    procedure LastKategorier(TreeView: TTreeView);
  end;

  TIdBil = class(TObject)
    IdBil: Integer;
    constructor Create(Id: Integer);
  end;

var
  dmData: TdmData;

implementation

uses blsFirebird, blsFileUtil, blsDialogs, blsRegistry, Variants;

{$R *.dfm}

function TdmData.Connect: Boolean;
begin
  Result := blsFireBird.ConnectToFireBird(AdoConn, Dir + 'config.ini', 'sysdba', 'masterkey', 'ISO8859_1');
end;

function TdmData.HarAdminTilgang: Boolean;
begin
  if g_Tilgang = 0 then
    Result := True
  else begin
    InfoDialog('Tilgang', 'Du har ikke tilgang til denne funksjonen.' + #13#10 + ' Kontakt din systemadministrator!');
    Result := False;
  end;
end;

procedure TdmData.Disconnect;
begin
  AdoConn.Close;
end;

procedure TdmData.NullStillGlobaler;
begin
  g_Tilgang := -1;
  g_Bruker := '';
end;

procedure TdmData.DataModuleCreate(Sender: TObject);
begin
  //Sjekker at den ikke connecter til databasen før settingene er lest.
  CalledCreate := True;
  blsRegistry.RegisterApplication;
  NullStillGlobaler;

  g_ReportDir := Dir + 'Reports\';
  ForceDirectories(g_ReportDir);
end;

procedure TdmData.RegNyKmStand(IdBil, KmStand: Integer; Dato: TDate);
begin
  spNyKmStand.Parameters.ParamValues['IdBil'] := IdBil;
  spNyKmStand.Parameters.ParamValues['KmStand'] := KmStand;
  spNyKmStand.Parameters.ParamValues['KmDato'] := Dato;
  spNyKmStand.Parameters.ParamValues['Bruker'] := g_Bruker;
  spNyKmStand.ExecProc;
end;

procedure TdmData.adoConnBeforeConnect(Sender: TObject);
begin
  //Sjekker at den ikke connecter til databasen før settingene er lest.
  if not CalledCreate then
    Abort;
end;

procedure TdmData.cdsBilNewRecord(DataSet: TDataSet);
begin
  spIdBil.Open;
  cdsBilIDBIL.Value := spIdBilIDBIL.Value;
  spIdBil.Close;

  cdsBilAKTIV.Value := 1;
end;

procedure TdmData.cdsBilTypeNewRecord(DataSet: TDataSet);
begin
  spIdBilType.Open;
  cdsBilTypeIDBILTYPE.Value := spIdBilTypeIDBILTYPE.Value;
  spIdBilType.Close;
end;

procedure TdmData.dspBeforeGetRecords(Sender: TObject; var OwnerData: OleVariant;
  FieldName: String);
begin
  with (Sender as TDataSetProvider).DataSet do begin
    Open;
    if VarIsEmpty(OwnerData) then
      First
    else if VarIsNull(OwnerData) then
      Last
    else
      if not Locate(FieldName, OwnerData, []) then begin
        Close;
        //raise Exception.Create('Feil ved henting av data fra databaseserver.');
      end;
  end;
end;

procedure TdmData.dspAfterGetRecords(Sender: TObject; var OwnerData: OleVariant;
  FieldName: String);
begin
  with (Sender as TDataSetProvider).DataSet do begin
    if Eof then
      OwnerData := null
    else
      OwnerData := FieldByName(FieldName).Value;
    Close;
  end;
end;

procedure TdmData.dspBilAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dspAfterGetRecords(Sender, OwnerData, 'IDBIL'); //Stateless Datasnap
end;

procedure TdmData.dspBilBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dspBeforeGetRecords(Sender, OwnerData, 'IDBIL'); //Stateless Datasnap
end;

procedure TdmData.cdsBilAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  FBilID := OwnerData; //Stateless Datasnap
end;

procedure TdmData.cdsBilBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  OwnerData := FBilId; //Stateless Datasnap
end;

procedure TdmData.cdsBilBeforeOpen(DataSet: TDataSet);
begin
  VarClear(FBilID); //Stateless Datasnap
end;

procedure TdmData.dspServiceAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dspAfterGetRecords(Sender, OwnerData, 'IDSERVICE'); //Stateless Datasnap
end;

procedure TdmData.dspServiceBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dspBeforeGetRecords(Sender, OwnerData, 'IDSERVICE'); //Stateless Datasnap
end;

procedure TdmData.cdsServiceAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  FServiceID := OwnerData; //Stateless Datasnap
end;

procedure TdmData.cdsServiceBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  OwnerData := FServiceId; //Stateless Datasnap
end;

procedure TdmData.cdsServiceBeforeOpen(DataSet: TDataSet);
begin
  VarClear(FServiceID); //Stateless Datasnap
end;

procedure TdmData.cdsServiceNewRecord(DataSet: TDataSet);
begin
  spIdService.Open;
  cdsServiceIDSERVICE.Value := spIdServiceIDSERVICE.Value;
  spIdService.Close;

  cdsServiceBRUKER.Value := g_Bruker;
  cdsServiceDATO.Value := Date;
  cdsServicePRIS.Value := 0;
end;

procedure TdmData.cdsServiceTypeNewRecord(DataSet: TDataSet);
begin
  spIdServiceType.Open;
  cdsServiceTypeIDSERVICETYPE.Value := spIdServiceTypeIDSERVICETYPE.Value;
  spIdServiceType.Close;
end;

procedure TdmData.LastKategorier(TreeView: TTreeView);
var HNode: TTreeNode;
    S: String;
begin
  FreeKategorier(TreeView);
  TreeView.Items.Clear;
  HNode := TreeView.Items.Add(nil, 'Alle Kjøretøy');

  cdsBil.DisableControls;
  cdsBil.First;
  while not cdsBil.Eof do begin
    if cdsBilAKTIV.Value = 1 then begin
      if cdsBilAARGANG.Value > 0 then
        S :=  Trim(cdsBilMERKE.Value) + ' (' + cdsBilAARGANG.AsString + ')'
      else
        S :=  Trim(cdsBilMERKE.Value);
        
      HNode := TreeView.Items.AddChild(TreeView.Items.Item[0], S);
      HNode.Data := TIdBil.Create(cdsBilIDBIL.Value);
    end;

    cdsBil.Next;
  end;
  cdsBil.EnableControls;
  cdsBil.First;

  TreeView.Items.Item[0].Expand(False);
end;

procedure TdmData.FreeKategorier(TreeView: TTreeView);
var I: Integer;
begin
  for I := 0 to TreeView.Items.Count - 1 do
    TIdBil(TreeView.Items.Item[I].Data).Free;
end;


{ TIdBil }

constructor TIdBil.Create(Id: Integer);
begin
  IdBil := Id;
end;

end.
