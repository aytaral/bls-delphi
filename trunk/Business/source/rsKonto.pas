unit rsKonto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBClient, Provider, ADODB, Mask, DBCtrls,
  TB2Item, TBX, DBActns, ActnList, TB2Dock, TB2Toolbar;

type
  TfrmKonto = class(TForm)
    Panel1: TPanel;
    btnAvbryt: TButton;
    btnOK: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    dsMaster: TDataSource;
    adoKonto: TADODataSet;
    dspKonto: TDataSetProvider;
    cdsKonto: TClientDataSet;
    dsKonto: TDataSource;
    adoKontoIDKLIENT: TIntegerField;
    adoKontoKONTONR: TIntegerField;
    adoKontoNAVN: TStringField;
    adoKontoMVAKODE: TIntegerField;
    adoKontoIDSERIE: TStringField;
    cdsKontoIDKLIENT: TIntegerField;
    cdsKontoKONTONR: TIntegerField;
    cdsKontoNAVN: TStringField;
    cdsKontoMVAKODE: TIntegerField;
    cdsKontoIDSERIE: TStringField;
    adoMva: TADODataSet;
    dsMva: TDataSource;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    ActionList: TActionList;
    acFirst: TDataSetFirst;
    acPrior: TDataSetPrior;
    acNext: TDataSetNext;
    acLast: TDataSetLast;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXItem4: TTBXItem;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    TBXItem5: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem6: TTBXItem;
    acNy: TAction;
    TBXItem7: TTBXItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbeKontonr: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    dbRes: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    DBCheckBox1: TDBCheckBox;
    adoKontoIDTYPE: TIntegerField;
    cdsKontoIDTYPE: TIntegerField;
    adoKontoAKTIV: TSmallintField;
    cdsKontoAKTIV: TSmallintField;
    procedure dsMasterDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure dsKontoDataChange(Sender: TObject; Field: TField);
    procedure acNyExecute(Sender: TObject);
    procedure cdsKontoBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cdsKontoNewRecord(DataSet: TDataSet);
  private
    procedure VisNavButtons(Vis: Boolean);
    { Private declarations }
  public
    { Public declarations }
    NyKonto: Boolean;
    AktivKonto: Integer;
  end;

var
  frmKonto: TfrmKonto;

implementation

uses rsData;

{$R *.dfm}

procedure TfrmKonto.dsMasterDataChange(Sender: TObject; Field: TField);
begin
  if cdsKonto.Active and (Field = nil) then begin
    cdsKonto.ApplyUpdates(-1);
    adoKonto.Parameters.ParamValues['Kontonr'] := Dm.cdsKontoKONTONR.Value;
    cdsKonto.Refresh;
  end;
end;

procedure TfrmKonto.FormCreate(Sender: TObject);
begin
  NyKonto := False;
  AktivKonto := -1;
  adoMva.Open;

  adoKonto.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoKonto.Parameters.ParamValues['Kontonr'] := Dm.cdsKontoKONTONR.Value;
  cdsKonto.Open;

  cdsKonto.Edit;
  cdsKontoAKTIV.Value := Dm.cdsKontoAKTIV.Value;
end;

procedure TfrmKonto.FormDestroy(Sender: TObject);
begin
  cdsKonto.Close;
  adoMva.Close;
end;

procedure TfrmKonto.btnOKClick(Sender: TObject);
begin
  AktivKonto := cdsKontoKONTONR.Value;
  cdsKonto.ApplyUpdates(-1);
end;

procedure TfrmKonto.dsKontoDataChange(Sender: TObject; Field: TField);
begin
  if Field = nil then begin
    if cdsKontoIDSERIE.Value = '' then
      dbRes.ItemIndex := 0;
  end;

  acNy.Enabled := (cdsKontoNAVN.Value <> '') and (cdsKontoKONTONR.Value > 0);
  btnOk.Enabled := acNy.Enabled;
end;

procedure TfrmKonto.acNyExecute(Sender: TObject);
begin
  if cdsKonto.State in [dsEdit, dsInsert] then
    cdsKonto.Post;
  cdsKonto.ApplyUpdates(-1);
  Dm.cdsKonto.Cancel;
  Dm.cdsKonto.Refresh;

  NyKonto := True;
  VisNavButtons(False);
  Dm.cdsKonto.Insert;
  dbeKontonr.SetFocus;
end;

procedure TfrmKonto.cdsKontoBeforePost(DataSet: TDataSet);
begin
  cdsKontoIDKLIENT.Value := Dm.g_KlientID;
  if cdsKontoIDSERIE.Value = '-' then
    cdsKontoIDSERIE.Clear;
end;

procedure TfrmKonto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult <> mrOK then
    cdsKonto.CancelUpdates;
end;

procedure TfrmKonto.VisNavButtons(Vis: Boolean);
begin
  acFirst.Visible := Vis;
  acNext.Visible := Vis;
  acLast.Visible := Vis;
  acPrior.Visible := Vis;
end;

procedure TfrmKonto.FormShow(Sender: TObject);
begin
  VisNavButtons(not NyKonto);
end;

procedure TfrmKonto.cdsKontoNewRecord(DataSet: TDataSet);
begin
  cdsKontoAKTIV.Value := 1;
end;

end.
