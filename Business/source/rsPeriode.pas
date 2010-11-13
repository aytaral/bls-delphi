unit rsPeriode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls, DB,
  DBClient, Provider, ADODB, ImgList, ActnList, TB2Item, TBX, Menus;

type
  TfrmPeriode = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dbgPeriode: TJvDBGrid;
    btnAvbryt: TButton;
    btnOK: TButton;
    adoPeriode: TADODataSet;
    dspPeriode: TDataSetProvider;
    dsPeriode: TDataSource;
    cdsPeriode: TClientDataSet;
    adoPeriodeIDKLIENT: TIntegerField;
    adoPeriodeAAR: TIntegerField;
    adoPeriodePERIODENR: TIntegerField;
    adoPeriodeLUKKET: TSmallintField;
    adoPeriodeLUKKETDATO: TDateTimeField;
    adoPeriodeBRUKER: TStringField;
    ImageList: TImageList;
    cdsPeriodeIDKLIENT: TIntegerField;
    cdsPeriodeAAR: TIntegerField;
    cdsPeriodePERIODENR: TIntegerField;
    cdsPeriodeLUKKET: TSmallintField;
    cdsPeriodeLUKKETDATO: TDateTimeField;
    cdsPeriodeBRUKER: TStringField;
    ActionList1: TActionList;
    acOpenPeriode: TAction;
    popPeriode: TTBXPopupMenu;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    acLukkPeriode: TAction;
    TBXSeparatorItem1: TTBXSeparatorItem;
    procedure cdsPeriodeBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbgPeriodeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure acOpenPeriodeExecute(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure acLukkPeriodeExecute(Sender: TObject);
    procedure dsPeriodeDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPeriode: TfrmPeriode;

implementation

uses rsData, blsDialogs;

{$R *.dfm}

procedure TfrmPeriode.acLukkPeriodeExecute(Sender: TObject);
begin
  if Dm.HarAdminTilgang then begin
    if ConfirmDialog('Lukk periode', 'Er du sikker på at du vil lukke valgt periode?') then begin
      cdsPeriode.Edit;
      cdsPeriodeLUKKET.Value := 1;
      cdsPeriodeLUKKETDATO.Value := Now;
      cdsPeriodeBRUKER.Value := Dm.g_Bruker;
      cdsPeriode.Post;
    end;
  end;
end;

procedure TfrmPeriode.acOpenPeriodeExecute(Sender: TObject);
begin
  if Dm.HarAdminTilgang then begin
    if ConfirmDialog('Åpne periode', 'Er du sikker på at du vil åpne valgt periode?') then begin
      cdsPeriode.Edit;
      cdsPeriodeLUKKET.Value := 0;
      cdsPeriodeLUKKETDATO.Clear;
      cdsPeriodeBRUKER.Clear;
      cdsPeriode.Post;
    end;
  end;
end;

procedure TfrmPeriode.btnOKClick(Sender: TObject);
begin
  cdsPeriode.ApplyUpdates(-1);
end;

procedure TfrmPeriode.cdsPeriodeBeforeOpen(DataSet: TDataSet);
begin
  adoPeriode.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  cdsPeriode.FetchParams;
end;

procedure TfrmPeriode.dbgPeriodeDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if DataCol = 2 then
    if (cdsPeriodeLUKKET.Value = 1) then
      ImageList.Draw(dbgPeriode.Canvas, Rect.Left + 2 , Rect.Top, 0)
    else
      ImageList.Draw(dbgPeriode.Canvas, Rect.Left + 2 , Rect.Top, 1)
end;

procedure TfrmPeriode.dsPeriodeDataChange(Sender: TObject; Field: TField);
begin
  if Field = nil then begin
    acLukkPeriode.Enabled := cdsPeriodeLUKKET.Value = 0;
    acOpenPeriode.Enabled := not acLukkPeriode.Enabled;
  end;
end;

procedure TfrmPeriode.FormCreate(Sender: TObject);
begin
  cdsPeriode.Open;
end;

procedure TfrmPeriode.FormDestroy(Sender: TObject);
begin
  cdsPeriode.Close;
end;

end.
