unit bsSettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls,
  blsBorderPanel, DB, ActnList, Menus, TB2Item, TBX;

type
  TfrmSettings = class(TForm)
    Pc: TPageControl;
    tsBiltype: TTabSheet;
    tsServicetype: TTabSheet;
    btnOK: TButton;
    btnAvbryt: TButton;
    blsBorderPanel1: TblsBorderPanel;
    blsBorderPanel2: TblsBorderPanel;
    JvDBGrid1: TJvDBGrid;
    JvDBGrid2: TJvDBGrid;
    popGrid: TTBXPopupMenu;
    ActionList: TActionList;
    acSlett: TAction;
    acNy: TAction;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAvbrytClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure acSlettExecute(Sender: TObject);
    procedure acNyExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSettings: TfrmSettings;

implementation

uses bsData, blsDialogs;

{$R *.dfm}

procedure TfrmSettings.acNyExecute(Sender: TObject);
begin
  case Pc.ActivePageIndex of
    0: dmData.cdsBilType.Append;
    1: dmData.cdsServiceType.Append;
  end;
end;

procedure TfrmSettings.acSlettExecute(Sender: TObject);
begin
  if ConfirmDialog('Slett', 'Slett valgt post') then begin
    case Pc.ActivePageIndex of
      0: dmData.cdsBilType.Delete;
      1: dmData.cdsServiceType.Delete;
    end;
  end;
end;

procedure TfrmSettings.btnAvbrytClick(Sender: TObject);
begin
  dmData.cdsBilType.Cancel;
  dmData.cdsBilType.CancelUpdates;
  dmData.cdsServiceType.Cancel;
  dmData.cdsServiceType.CancelUpdates;
  Close;
end;

procedure TfrmSettings.btnOKClick(Sender: TObject);
begin
  if dmData.cdsBilType.State in [dsEdit, dsInsert] then
    dmData.cdsBilType.Post;
  dmData.cdsBilType.ApplyUpdates(-1);

  if dmData.cdsServiceType.State in [dsEdit, dsInsert] then
    dmData.cdsServiceType.Post;
  dmData.cdsServiceType.ApplyUpdates(-1);

  Close;
end;

procedure TfrmSettings.FormCreate(Sender: TObject);
begin
  Pc.ActivePageIndex := 0;
  dmData.cdsBilType.Open;
  dmData.cdsServiceType.Open;
end;

procedure TfrmSettings.FormDestroy(Sender: TObject);
begin
  dmData.cdsBilType.Close;
  dmData.cdsServiceType.Close;
end;

end.
