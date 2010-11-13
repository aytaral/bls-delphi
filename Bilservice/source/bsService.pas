unit bsService;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBClient, Provider, ADODB, Mask,
  DBCtrls, ComCtrls, JvExComCtrls, JvDateTimePicker,
  JvDBDateTimePicker;

type
  TfrmService = class(TForm)
    Panel2: TPanel;
    btnAvbryt: TButton;
    btnOK: TButton;
    adoService: TADODataSet;
    dspService: TDataSetProvider;
    cdsService: TClientDataSet;
    dsService: TDataSource;
    cdsServiceIDSERVICE: TIntegerField;
    cdsServiceIDBIL: TIntegerField;
    cdsServiceIDSERVICETYPE: TIntegerField;
    cdsServiceDATO: TDateField;
    cdsServiceKMSTAND: TIntegerField;
    cdsServiceBESKRIVELSE: TStringField;
    cdsServicePRIS: TBCDField;
    cdsServiceBRUKER: TStringField;
    cdsServiceREGDATE: TDateTimeField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cbBil: TComboBox;
    btnSok: TButton;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
//    adpDBDateTimePicker1: TadpDBDateTimePicker;
    DBEdit1: TDBEdit;
    dbeBeskrivelse: TDBEdit;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    adoBil: TADODataSet;
    adoBilBILMERKE: TStringField;
    adoBilIDBIL: TIntegerField;
    adoServiceType: TADODataSet;
    dsServiceType: TDataSource;
    adoServiceIDSERVICE: TIntegerField;
    adoServiceIDBIL: TIntegerField;
    adoServiceIDSERVICETYPE: TIntegerField;
    adoServiceDATO: TDateField;
    adoServiceKMSTAND: TIntegerField;
    adoServiceBESKRIVELSE: TStringField;
    adoServicePRIS: TBCDField;
    adoServiceBRUKER: TStringField;
    adoServiceREGDATE: TDateTimeField;
    JvDBDateTimePicker1: TJvDBDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbBilChange(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure LastBiler;
    procedure NullStillBiler;
    procedure HentValgtBil;
    { Private declarations }
  public
    { Public declarations }
    NyService: Boolean;
  end;

{  TIdBil = class(TObject)
    IdBil: Integer;
  end;}

var
  frmService: TfrmService;

implementation

uses bsData;

{$R *.dfm}

procedure TfrmService.NullStillBiler;
var I: Integer;
begin
  for I := 0 to cbBil.Items.Count -1 do
    cbBil.Items.Objects[I].Free;
  cbBil.Clear;
end;

procedure TfrmService.LastBiler;
var Id: TIdBil;
begin
  NullStillBiler;

  adoBil.Open;
  while not adoBil.eof do begin
    Id := TIdBil.Create(adoBilIDBIL.Value);
    cbBil.AddItem(adoBilBILMERKE.Value, Id);
    adoBil.Next;
  end;
  adoBil.Close;
end;

procedure TfrmService.FormCreate(Sender: TObject);
begin
  LastBiler;

  adoService.Parameters.ParamValues['IdService'] := dmData.cdsServiceIDSERVICE.Value;
  cdsService.Open;
  adoServiceType.Open;

  HentValgtBil;
end;

procedure TfrmService.HentValgtBil;
var I: Integer;
begin
  if not cdsServiceIDBIL.IsNull then
    for I := 0 to cbBil.Items.Count - 1 do
      if TIdBil(cbBil.Items.Objects[I]).IdBil = cdsServiceIDBIL.Value then begin
        cbBil.ItemIndex := I;
        Break;
      end;
end;

procedure TfrmService.FormDestroy(Sender: TObject);
begin
  NullStillBiler;
  adoServiceType.Close;
  cdsService.Close;
end;

procedure TfrmService.cbBilChange(Sender: TObject);
begin
  cdsService.Edit;
  cdsServiceIDBIL.Value := TIdBil(cbBil.Items.Objects[cbBil.ItemIndex]).IdBil;
end;

procedure TfrmService.btnOKClick(Sender: TObject);
begin
  if cdsService.State in [dsEdit, dsInsert] then
    cdsService.Post;
  cdsService.ApplyUpdates(-1);
  if NyService then
    if cdsServiceKMSTAND.Value > 0 then
      dmData.RegNyKmStand(cdsServiceIDBIL.Value, cdsServiceKMSTAND.Value, cdsServiceDATO.Value);
  ModalResult := mrOK;
end;

procedure TfrmService.FormShow(Sender: TObject);
begin
  if cbBil.ItemIndex > -1 then
    dbeBeskrivelse.SetFocus;
end;

end.
