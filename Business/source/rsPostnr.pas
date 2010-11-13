unit rsPostnr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, blsList, DBClient, Provider,
  blsDbGridScroll, ActnList, TB2Item, TBX, ImgList, TB2Dock, TB2Toolbar;

type
  TfrmPostnr = class(TForm)
    btnOK: TButton;
    btnLukk: TButton;
    dbgPostnr: TDBGrid;
    dsPostnr: TDataSource;
    gbSok: TGroupBox;
    Label1: TLabel;
    editSok: TEdit;
    Label2: TLabel;
    cbFylke: TComboBox;
    cbKommune: TComboBox;
    Label3: TLabel;
    btnSok: TButton;
    blsList: TblsList;
    adoPostnr: TADOQuery;
    dspPostnr: TDataSetProvider;
    cdsPostnr: TClientDataSet;
    btnNull: TButton;
    adoFylke: TADODataSet;
    adoKommune: TADODataSet;
    adoFylkeFYLKENR: TStringField;
    adoFylkeFYLKE: TStringField;
    blsDbGridScroll1: TblsDbGridScroll;
    blsListKom: TblsList;
    dspKommune: TDataSetProvider;
    cdsKommune: TClientDataSet;
    cdsKommuneKOMMUNENR: TStringField;
    cdsKommuneKOMMUNE: TStringField;
    cdsPostnrPOSTNR: TStringField;
    cdsPostnrPOSTSTED: TStringField;
    cdsPostnrKOMMUNENR: TStringField;
    cdsPostnrKOMMUNE: TStringField;
    cdsPostnrFYLKE: TStringField;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    ActionList: TActionList;
    ImageList: TImageList;
    TBXItem1: TTBXItem;
    acEndre: TAction;
    acOppdater: TAction;
    TBXItem2: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    acInfo: TAction;
    TBXItem3: TTBXItem;
    acLive: TAction;
    TBXItem4: TTBXItem;
    procedure gbSokEnter(Sender: TObject);
    procedure gbSokExit(Sender: TObject);
    procedure btnSokClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnNullClick(Sender: TObject);
    procedure dbgPostnrDblClick(Sender: TObject);
    procedure cbFylkeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbFylkeChange(Sender: TObject);
    procedure cbKommuneKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editSokKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acOKExecute(Sender: TObject);
    procedure editSokChange(Sender: TObject);
    procedure cbKommuneChange(Sender: TObject);
    procedure acOppdaterExecute(Sender: TObject);
    procedure acLiveExecute(Sender: TObject);
    procedure acInfoExecute(Sender: TObject);
    procedure editSokKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acEndreExecute(Sender: TObject);
  private
    procedure OppdaterKommune;
    procedure SetSokDefault;
    { Private declarations }
  public
    { Public declarations }
  end;

  TNr = class(TObject)
    Nr: String;
  end;

var
  frmPostnr: TfrmPostnr;

implementation

uses rsData, rsMeny, rsPostnrInfo, rsPostnrReg, blsRegistry;

{$R *.dfm}

procedure TfrmPostnr.gbSokEnter(Sender: TObject);
begin
  btnSok.Default := True;
  btnOK.Default := False;
end;

procedure TfrmPostnr.gbSokExit(Sender: TObject);
begin
  btnOK.Default := True;
  btnSok.Default := False;
end;

procedure TfrmPostnr.btnSokClick(Sender: TObject);
var Str: String;
begin
  Str := '';
  if cbKommune.ItemIndex > -1 then
    Str := 'and KOMMUNENR starting with ''' + TNr(cbKommune.Items.Objects[cbKommune.ItemIndex]).Nr + ''''
  else if cbFylke.ItemIndex > -1 then
    Str := 'and KOMMUNENR starting with ''' + TNr(cbFylke.Items.Objects[cbFylke.ItemIndex]).Nr + '''';

  adoPostnr.SQL.Text := blsList.Lines.Text;
  adoPostnr.SQL.Text := StringReplace(adoPostnr.SQL.Text, '$PNR', editSok.Text, []);
  adoPostnr.SQL.Text := StringReplace(adoPostnr.SQL.Text, '$PSTD', editSok.Text, []);
  adoPostnr.SQL.Text := StringReplace(adoPostnr.SQL.Text, '$KNR', Str, []);
  cdsPostnr.Refresh;
  
  btnOK.Default := True;
  btnSok.Default := False;
end;

procedure TfrmPostnr.FormCreate(Sender: TObject);
var Nr: TNr;
begin
  cdsPostnr.Open;

  adoFylke.Open;
  adoFylke.First;
  while not adoFylke.Eof do begin
    Nr := TNr.Create;
    Nr.Nr := adoFylkeFYLKENR.Value;
    cbFylke.Items.AddObject(adoFylkeFYLKE.Value, Nr);
    adoFylke.Next;
  end;
  cbFylke.Sorted := True;

  OppdaterKommune;
  acLive.Checked := GetUserBool(RegPath, 'HurtigSok', True);
end;

procedure TfrmPostnr.OppdaterKommune;
var Nr: TNr;
    Str: String;
    I: Integer;
begin
  for I := 0 to cbKommune.Items.Count -1 do
    cbKommune.Items.Objects[I].Free;
  cbKommune.Items.Clear;
  Str := '';
  if cbFylke.ItemIndex > -1 then
    Str := TNr(cbFylke.Items.Objects[cbFylke.ItemIndex]).Nr;

  adoKommune.CommandText := StringReplace(blsListKom.Lines.Text, '$Fnr', Str, []);
  if not cdsKommune.Active then
    cdsKommune.Open
  else
    cdsKommune.Refresh;

  cdsKommune.First;
  while not cdsKommune.Eof do begin
    Nr := TNr.Create;
    Nr.Nr := cdsKommuneKOMMUNENR.Value;
    cbKommune.Items.AddObject(cdsKommuneKOMMUNE.Value, Nr);
    cdsKommune.Next;
  end;
  cbKommune.Sorted := True;
end;

procedure TfrmPostnr.FormDestroy(Sender: TObject);
var I: Integer;
begin
  cdsPostnr.Close;
  for I := 0 to cbFylke.Items.Count -1 do
    cbFylke.Items.Objects[I].Free;
  for I := 0 to cbKommune.Items.Count -1 do
    cbKommune.Items.Objects[I].Free;
end;

procedure TfrmPostnr.btnNullClick(Sender: TObject);
begin
  editSok.Text := '';
  cbFylke.ItemIndex := -1;
  cbKommune.ItemIndex := -1;
  btnSokClick(Self);  
  editSok.SetFocus;
end;

procedure TfrmPostnr.dbgPostnrDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmPostnr.cbFylkeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = VK_DELETE) or (Key = VK_BACK) then
   cbFylke.ItemIndex := -1;
end;

procedure TfrmPostnr.cbFylkeChange(Sender: TObject);
begin
  OppdaterKommune;
  if acLive.Checked then
    btnSokClick(Self)
  else
    SetSokDefault;
end;

procedure TfrmPostnr.cbKommuneKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = VK_DELETE) or (Key = VK_BACK) then
   cbKommune.ItemIndex := -1;
end;

procedure TfrmPostnr.editSokKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_UP then
    cdsPostnr.Prior
  else if Key = VK_DOWN then
    cdsPostnr.Next
  else if Key = VK_PRIOR then
    cdsPostnr.MoveBy(-10)
  else if Key = VK_NEXT then
    cdsPostnr.MoveBy(10);

  if Key in [VK_UP, VK_DOWN, VK_PRIOR, VK_NEXT] then
    Key := 0;
end;

procedure TfrmPostnr.acOKExecute(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmPostnr.SetSokDefault;
begin
  btnSok.Default := True;
  btnOk.Default := False;
end;

procedure TfrmPostnr.editSokChange(Sender: TObject);
begin
  if not acLive.Checked then
    SetSokDefault;
end;

procedure TfrmPostnr.cbKommuneChange(Sender: TObject);
begin
  if acLive.Checked then
    btnSokClick(Self)
  else
    SetSokDefault;
end;

procedure TfrmPostnr.acOppdaterExecute(Sender: TObject);
begin
  frmCRM.acPostImport.Execute;
end;

procedure TfrmPostnr.acLiveExecute(Sender: TObject);
begin
  SetUserBool(RegPath, 'HurtigSok', acLive.Checked);
end;

procedure TfrmPostnr.acInfoExecute(Sender: TObject);
begin
  frmPostnrInfo := TfrmPostnrInfo.Create(Application);
  frmPostnrInfo.Postnr := cdsPostnrPostnr.Value;
  frmPostnrInfo.ShowModal;
  frmPostnrInfo.Release;
end;

procedure TfrmPostnr.editSokKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [VK_UP, VK_DOWN, VK_PRIOR, VK_NEXT] then Exit;
  if acLive.Checked then
    btnSokClick(Self);
end;

procedure TfrmPostnr.acEndreExecute(Sender: TObject);
begin
  frmPostnrReg := TfrmPostnrReg.Create(Application);
  frmPostnrReg.ShowModal;
  frmPostnrReg.Free;
end;

end.
