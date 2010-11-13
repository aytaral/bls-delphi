unit rsInnstillinger;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Mask, JvExMask, JvToolEdit, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, blsBorderPanel, TB2Item, TBX, ActnList, Menus;

type
  TfrmInnstillinger = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Pc: TPageControl;
    tsGenerelt: TTabSheet;
    btnLukk: TButton;
    btnOK: TButton;
    tsMva: TTabSheet;
    blsBorderPanel1: TblsBorderPanel;
    JvDBGrid1: TJvDBGrid;
    blsBorderPanel2: TblsBorderPanel;
    Label1: TLabel;
    ActionList1: TActionList;
    popMva: TTBXPopupMenu;
    acDeleteMva: TAction;
    TBXItem1: TTBXItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure acDeleteMvaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInnstillinger: TfrmInnstillinger;

implementation

uses rsData, blsDialogs;

{$R *.dfm}

procedure TfrmInnstillinger.acDeleteMvaExecute(Sender: TObject);
begin
  if ConfirmDialog('Slett mva', 'Er du sikker på at du vil slette valgt merverdiavgift?') then
    Dm.cdsMva.Delete;
end;

procedure TfrmInnstillinger.btnOKClick(Sender: TObject);
begin
  Dm.cdsMva.ApplyUpdates(-1);
end;

procedure TfrmInnstillinger.FormCreate(Sender: TObject);
begin
  Pc.ActivePageIndex := 0;

  Dm.cdsMva.Open;
end;

procedure TfrmInnstillinger.FormDestroy(Sender: TObject);
begin
  Dm.cdsMva.Close;
end;

end.
