unit faPurreListe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, ToolWin, StdCtrls, ExtCtrls, DBActns,
  ActnList, DB;

type
  TFrmPurreListe = class(TForm)
    Panel1: TPanel;
    BtnOK: TButton;
    BtnClose: TButton;
    StatusBar1: TStatusBar;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Panel2: TPanel;
    DbgPurreRutiner: TDBGrid;
    ActionList: TActionList;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPurreListe: TFrmPurreListe;

implementation

uses DataModul;

{$R *.dfm}

procedure TFrmPurreListe.BtnCloseClick(Sender: TObject);
begin
 If Dm.DBPurreListe.State IN [dsEdit, dsInsert] then
  Dm.DBPurreListe.Cancel;
end;

procedure TFrmPurreListe.BtnOKClick(Sender: TObject);
begin
 If Dm.DBPurreListe.State IN [dsEdit, dsInsert] then
  Dm.DBPurreListe.Post;
end;

procedure TFrmPurreListe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
end;

end.
