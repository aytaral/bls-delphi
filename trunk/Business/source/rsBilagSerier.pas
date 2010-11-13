unit rsBilagSerier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvFullColorDialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls,
  ExtCtrls, DB, Provider, ADODB, DBClient, JvExStdCtrls, JvCombobox, JvListComb,
  DBCtrls, ActnList, Menus, TB2Item, TBX, ComCtrls;

type
  TfrmBilagSerier = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnOK: TButton;
    btnLukk: TButton;
    dbgBilagnr: TJvDBGrid;
    cdColor: TColorDialog;
    cdsBilagnr: TClientDataSet;
    adoBilagnr: TADODataSet;
    dspBilagnr: TDataSetProvider;
    dsBilagnr: TDataSource;
    adoBilagnrIDKLIENT: TIntegerField;
    adoBilagnrIDBILAGSERIE: TIntegerField;
    adoBilagnrBILAGSERIE: TStringField;
    adoBilagnrSTARTNR: TIntegerField;
    cdsBilagnrIDKLIENT: TIntegerField;
    cdsBilagnrIDBILAGSERIE: TIntegerField;
    cdsBilagnrBILAGSERIE: TStringField;
    cdsBilagnrSTARTNR: TIntegerField;
    adoBilagnrFARGE: TIntegerField;
    cdsBilagnrFARGE: TIntegerField;
    cdsBilagnrFARGETEKST: TStringField;
    adoBilagnrBILDEINDEX: TIntegerField;
    cdsBilagnrBILDEINDEX: TIntegerField;
    popBilagSerie: TTBXPopupMenu;
    ActionList: TActionList;
    acClearFarge: TAction;
    acClearBilde: TAction;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    procedure cdsBilagnrBeforeOpen(DataSet: TDataSet);
    procedure dbgBilagnrEditButtonClick(Sender: TObject);
    procedure dbgBilagnrDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cdsBilagnrNewRecord(DataSet: TDataSet);
    procedure cdsBilagnrCalcFields(DataSet: TDataSet);
    procedure acClearFargeExecute(Sender: TObject);
    procedure acClearBildeExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBilagSerier: TfrmBilagSerier;

implementation

uses rsData, rsBilagSerierSymbol;

{$R *.dfm}

procedure TfrmBilagSerier.acClearBildeExecute(Sender: TObject);
begin
  cdsBilagnr.Edit;
  cdsBilagnrBILDEINDEX.Clear;
  cdsBilagnr.Post;
end;

procedure TfrmBilagSerier.acClearFargeExecute(Sender: TObject);
begin
  cdsBilagnr.Edit;
  cdsBilagnrFARGE.Clear;
  cdsBilagnr.Post;
end;

procedure TfrmBilagSerier.btnOKClick(Sender: TObject);
begin
  cdsBilagnr.ApplyUpdates(-1);
end;

procedure TfrmBilagSerier.cdsBilagnrBeforeOpen(DataSet: TDataSet);
begin
  adoBilagnr.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
end;

procedure TfrmBilagSerier.cdsBilagnrCalcFields(DataSet: TDataSet);
begin
  if cdsBilagnrFARGE.Value > 0 then
    cdsBilagnrFARGETEKST.Value := 'Farge';
end;

procedure TfrmBilagSerier.cdsBilagnrNewRecord(DataSet: TDataSet);
begin
  cdsBilagnrIDKLIENT.Value := Dm.g_KlientID;
end;

procedure TfrmBilagSerier.dbgBilagnrDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if ((DataCol = 3) and (cdsBilagnrFARGE.Value > 0)) then begin
    dbgBilagnr.Canvas.Font.Color := cdsBilagnrFARGE.Value;
    dbgBilagnr.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end
  else if ((DataCol = 4) and (not cdsBilagnrBILDEINDEX.IsNull)) then
    Dm.ilBilagSerie.Draw(dbgBilagnr.Canvas, Rect.Left + 3, Rect.Top, cdsBilagnrBILDEINDEX.Value);
end;

procedure TfrmBilagSerier.dbgBilagnrEditButtonClick(Sender: TObject);
begin
  if dbgBilagnr.SelectedIndex = 3 then begin
    if cdColor.Execute then begin
      cdsBilagnr.Edit;
      cdsBilagnrFARGE.Value := Integer(cdColor.Color);
      cdsBilagnr.Post;
    end;
  end
  else if dbgBilagnr.SelectedIndex = 4 then begin
    frmBilagSerieSymbol := TfrmBilagSerieSymbol.Create(Application);
    if frmBilagSerieSymbol.ShowModal = mrOK then begin
      cdsBilagnr.Edit;
      cdsBilagnrBILDEINDEX.Value := frmBilagSerieSymbol.cbImg.ItemIndex;
      cdsBilagnr.Post;
    end;
    frmBilagSerieSymbol.Release;
  end;
end;

procedure TfrmBilagSerier.FormCreate(Sender: TObject);
begin
  cdsBilagnr.Open;
end;

procedure TfrmBilagSerier.FormDestroy(Sender: TObject);
begin
  cdsBilagnr.Close;
end;

end.
