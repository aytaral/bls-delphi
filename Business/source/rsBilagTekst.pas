unit rsBilagTekst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, DB, DBClient, Provider,
  blsDbGridScroll, ADODB, ActnList, TB2Item, TBX, Menus;

type
  TfrmBilagTekst = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dbgTekst: TDBGrid;
    btnOK: TButton;
    btnAvbryt: TButton;
    adoTekst: TADODataSet;
    adoTekstIDTEKST: TIntegerField;
    adoTekstTEKST: TStringField;
    blsDbGridScroll1: TblsDbGridScroll;
    dspTekst: TDataSetProvider;
    cdsTekst: TClientDataSet;
    dsTekst: TDataSource;
    cdsTekstIDTEKST: TIntegerField;
    cdsTekstTEKST: TStringField;
    ActionList: TActionList;
    acSlett: TAction;
    TBXPopupMenu1: TTBXPopupMenu;
    TBXItem1: TTBXItem;
    btnRediger: TButton;
    procedure cdsTekstNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure acSlettExecute(Sender: TObject);
    procedure btnRedigerClick(Sender: TObject);
  private
    { Private declarations }
    TId: Integer;
  public
    { Public declarations }
  end;

var
  frmBilagTekst: TfrmBilagTekst;

implementation

uses rsData, blsDialogs;

{$R *.dfm}

procedure TfrmBilagTekst.cdsTekstNewRecord(DataSet: TDataSet);
begin
  Inc(TId);
  cdsTekstIDTEKST.Value := TId;
end;

procedure TfrmBilagTekst.FormCreate(Sender: TObject);
begin
  cdsTekst.Open;
  cdsTekst.Last;
  TId := cdsTekstIDTEKST.Value;
  cdsTekst.First;
end;

procedure TfrmBilagTekst.FormDestroy(Sender: TObject);
begin
  cdsTekst.Close;
end;

procedure TfrmBilagTekst.btnOKClick(Sender: TObject);
begin
  cdsTekst.ApplyUpdates(-1);
end;

procedure TfrmBilagTekst.acSlettExecute(Sender: TObject);
begin
  if blsDialogs.ConfirmDialog('Bekreft', 'Er du sikker på at du vil slette merket tekst?') then
    cdsTekst.Delete;
end;

procedure TfrmBilagTekst.btnRedigerClick(Sender: TObject);
begin
  dbgTekst.Options := dbgTekst.Options - [dgRowSelect] + [dgEditing];
  btnRediger.Enabled := False;
end;

end.
