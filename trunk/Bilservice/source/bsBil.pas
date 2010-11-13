unit bsBil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, TB2Item, TBX, ActnList, TB2Dock,
  TB2Toolbar, DB, DBClient, Provider, ADODB, DBCtrls, Mask, DBActns, Grids,
  DBGrids, JvExDBGrids, JvDBGrid;

type
  TfrmBil = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    ActionList1: TActionList;
    acNy: TAction;
    TBXItem1: TTBXItem;
    Panel3: TPanel;
    Pc: TPageControl;
    tsGenerelt: TTabSheet;
    btnAvbryt: TButton;
    btnOK: TButton;
    GroupBox1: TGroupBox;
    adoBil: TADODataSet;
    dspBil: TDataSetProvider;
    cdsBil: TClientDataSet;
    dsBil: TDataSource;
    cdsBilIDBIL: TIntegerField;
    cdsBilREGNR: TStringField;
    cdsBilMERKE: TStringField;
    cdsBilIDBILTYPE: TIntegerField;
    cdsBilAARGANG: TIntegerField;
    cdsBilLASTEEVNE: TBCDField;
    cdsBilRAMMENR: TStringField;
    cdsBilTEKNISK: TMemoField;
    cdsBilAKTIV: TSmallintField;
    dsMasterBil: TDataSource;
    Label1: TLabel;
    dbeRegnr: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    GroupBox3: TGroupBox;
    adoBiltype: TADODataSet;
    dspBiltype: TDataSetProvider;
    cdsBiltype: TClientDataSet;
    dsBiltype: TDataSource;
    acFirst: TDataSetFirst;
    acPrior: TDataSetPrior;
    acNext: TDataSetNext;
    acLast: TDataSetLast;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    TBXItem6: TTBXItem;
    TBXItem7: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    tsKm: TTabSheet;
    adoBilIDBIL: TIntegerField;
    adoBilREGNR: TStringField;
    adoBilMERKE: TStringField;
    adoBilIDBILTYPE: TIntegerField;
    adoBilAARGANG: TIntegerField;
    adoBilLASTEEVNE: TBCDField;
    adoBilRAMMENR: TStringField;
    adoBilTEKNISK: TMemoField;
    adoBilAKTIV: TSmallintField;
    DBMemo1: TDBMemo;
    DBLookupComboBox1: TDBLookupComboBox;
    Label9: TLabel;
    DBCheckBox1: TDBCheckBox;
    GroupBox2: TGroupBox;
    dbgHistorikk: TJvDBGrid;
    adoHistorikk: TADODataSet;
    dspHistorikk: TDataSetProvider;
    adoHistorikkKMDATO: TDateField;
    adoHistorikkIDBIL: TIntegerField;
    adoHistorikkKMSTAND: TIntegerField;
    adoHistorikkBRUKER: TStringField;
    adoHistorikkREGDATE: TDateTimeField;
    cdsHistorikk: TClientDataSet;
    dsHistorikk: TDataSource;
    cdsHistorikkKMDATO: TDateField;
    cdsHistorikkIDBIL: TIntegerField;
    cdsHistorikkKMSTAND: TIntegerField;
    cdsHistorikkBRUKER: TStringField;
    cdsHistorikkREGDATE: TDateTimeField;
    procedure dsMasterBilDataChange(Sender: TObject; Field: TField);
    procedure dsBilDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure acNyExecute(Sender: TObject);
    procedure cdsHistorikkBeforeOpen(DataSet: TDataSet);
  private
    procedure VisNavButtons(Vis: Boolean);
    { Private declarations }
  public
    { Public declarations }
    NyBil:  Boolean;
  end;

var
  frmBil: TfrmBil;

implementation

uses bsData;

{$R *.dfm}

procedure TfrmBil.dsMasterBilDataChange(Sender: TObject; Field: TField);
begin
  if cdsBil.Active and (Field = nil) then begin
    cdsBil.ApplyUpdates(-1);
    adoBil.Parameters.ParamValues['IdBil'] := dmData.cdsBilIDBIL.Value;
    cdsBil.Refresh;

    adoHistorikk.Parameters.ParamValues['IdBil'] := dmData.cdsBilIDBIL.Value;
    cdsHistorikk.Refresh;
  end;
end;

procedure TfrmBil.dsBilDataChange(Sender: TObject; Field: TField);
begin
{  if cdsBilTEKNISK.IsNull = False then
    tsTeknisk.ImageIndex := 0
  else
    tsTeknisk.ImageIndex := -1;}

  acNy.Enabled := cdsBilREGNR.Value <> '';
  btnOK.Enabled := acNy.Enabled;
end;

procedure TfrmBil.FormCreate(Sender: TObject);
begin
  NyBil := False;
  cdsBiltype.Open;
  adoBil.Parameters.ParamValues['IdBil'] := dmData.cdsBilIDBIL.Value;
  cdsBil.Open;
  cdsHistorikk.Open;
  Pc.ActivePageIndex := 0;
end;

procedure TfrmBil.FormDestroy(Sender: TObject);
begin
  cdsBiltype.Close;
end;

procedure TfrmBil.btnOKClick(Sender: TObject);
begin
  if cdsBil.State in [dsEdit, dsInsert] then
    cdsBil.Post;
  cdsBil.ApplyUpdates(-1);
  ModalResult := mrOK;
end;

procedure TfrmBil.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult <> mrOK then
    cdsBil.CancelUpdates;
end;

procedure TfrmBil.VisNavButtons(Vis: Boolean);
begin
  acFirst.Visible := Vis;
  acNext.Visible := Vis;
  acLast.Visible := Vis;
  acPrior.Visible := Vis;
end;

procedure TfrmBil.FormShow(Sender: TObject);
begin
  VisNavButtons(not NyBil);
  dbeRegnr.SetFocus;
end;

procedure TfrmBil.acNyExecute(Sender: TObject);
begin
  if cdsBil.State in [dsEdit, dsInsert] then begin
    cdsBil.Post;
  end;
  cdsBil.ApplyUpdates(-1);
  dmData.cdsBil.RefreshRecord;

  NyBil := True;
  VisNavButtons(False);
  dmData.cdsBil.Insert;
  dmData.cdsBil.Post;
  dmData.cdsBil.ApplyUpdates(-1);
  dmData.cdsBil.RefreshRecord;
  dbeRegnr.SetFocus;
end;

procedure TfrmBil.cdsHistorikkBeforeOpen(DataSet: TDataSet);
begin
  adoHistorikk.Parameters.ParamValues['IdBil'] := dmData.cdsBilIDBIL.Value;
end;

end.
