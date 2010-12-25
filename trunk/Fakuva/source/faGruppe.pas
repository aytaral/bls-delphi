unit faGruppe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, DBActns, ActnList,
  ComCtrls, ToolWin;

type
  TFrmGruppe = class(TForm)
    BtnOk: TButton;
    BtnAvbryt: TButton;
    DBGrid1: TDBGrid;
    TblGruppe: TTable;
    DsGruppe: TDataSource;
    TblGruppeIdGruppe: TAutoIncField;
    TblGruppeGruppe: TStringField;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ActionList1: TActionList;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetInsert1: TDataSetInsert;
    AcDelete: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AcDeleteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGruppe: TFrmGruppe;

implementation

uses Datamodul;

{$R *.dfm}

procedure TFrmGruppe.FormCreate(Sender: TObject);
begin
  TblGruppe.Open;
end;

procedure TFrmGruppe.FormDestroy(Sender: TObject);
begin
  if TblGruppe.State in [dsEdit, dsInsert] then
    if TblGruppeGruppe.Value <> '' then
      TblGruppe.Post
    else
      TblGruppe.Cancel;
  TblGruppe.Close;
end;

procedure TFrmGruppe.AcDeleteExecute(Sender: TObject);
begin
 if MessageBox(Handle, 'Slett valgt kundegruppe?', 'Sletting', MB_YESNO + MB_ICONQUESTION) = IDYes then
   TblGruppe.Delete;
end;

end.
