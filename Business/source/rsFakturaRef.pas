unit rsFakturaRef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls, DB,
  DBClient, Provider, ADODB, ImgList, TB2Item, TBX, Menus;

type
  TfrmFakturaRef = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dbgRef: TJvDBGrid;
    btnOK: TButton;
    btnAvbryt: TButton;
    adoReferanse: TADODataSet;
    dspReferanse: TDataSetProvider;
    cdsReferanse: TClientDataSet;
    dsReferanse: TDataSource;
    adoReferanseIDKLIENT: TIntegerField;
    adoReferanseREF: TStringField;
    adoReferanseSTANDARD: TSmallintField;
    cdsReferanseIDKLIENT: TIntegerField;
    cdsReferanseREF: TStringField;
    cdsReferanseSTANDARD: TSmallintField;
    ImageList: TImageList;
    popRef: TTBXPopupMenu;
    TBXItem1: TTBXItem;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnAvbrytClick(Sender: TObject);
    procedure cdsReferanseNewRecord(DataSet: TDataSet);
    procedure dbgRefDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure TBXItem1Click(Sender: TObject);
  private
    { Private declarations }
    FKontaktSerie: String;
  public
    { Public declarations }
    property KontaktSerie: String read FKontaktSerie write FKontaktSerie;
  end;

var
  frmFakturaRef: TfrmFakturaRef;

implementation

uses rsData;

{$R *.dfm}

procedure TfrmFakturaRef.btnAvbrytClick(Sender: TObject);
begin
  cdsReferanse.Cancel;
  cdsReferanse.CancelUpdates;
end;

procedure TfrmFakturaRef.btnOKClick(Sender: TObject);
begin
  if cdsReferanse.State in [dsEdit, dsInsert] then
    cdsReferanse.Post;
  cdsReferanse.ApplyUpdates(-1);
end;

procedure TfrmFakturaRef.cdsReferanseNewRecord(DataSet: TDataSet);
begin
  cdsReferanseIDKLIENT.Value := Dm.g_KlientID;
end;

procedure TfrmFakturaRef.FormDestroy(Sender: TObject);
begin
  cdsReferanse.Close;
end;

procedure TfrmFakturaRef.FormShow(Sender: TObject);
begin
  adoReferanse.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  cdsReferanse.Open;
end;

procedure TfrmFakturaRef.TBXItem1Click(Sender: TObject);
var
  Ref: String;
begin
  Ref := cdsReferanseREF.Value;
  cdsReferanse.Edit;
  cdsReferanseSTANDARD.Value := 1;
  cdsReferanse.Post;

  cdsReferanse.DisableControls;
  cdsReferanse.First;
  while not cdsReferanse.Eof do begin
    if cdsReferanseSTANDARD.Value = 1 then begin
      if cdsReferanseREF.Value <> Ref then begin
        cdsReferanse.Edit;
        cdsReferanseSTANDARD.Value := 0;
        cdsReferanse.Post;
        Break;
      end;
    end;

    cdsReferanse.Next;
  end;
  cdsReferanse.Locate('REF', Ref, []);
  cdsReferanse.EnableControls;
end;

procedure TfrmFakturaRef.dbgRefDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if cdsReferanseSTANDARD.Value = 1 then
    ImageList.Draw(dbgRef.Canvas, Rect.Right - 18, Rect.Top -1, 0);
end;

end.
