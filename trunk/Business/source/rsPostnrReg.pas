unit rsPostnrReg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DB, DBClient, Provider,
  ADODB, TB2Item, TBX, Menus, DBActns, ActnList;

type
  TfrmPostnrReg = class(TForm)
    adoPostnr: TADODataSet;
    dspPostnr: TDataSetProvider;
    adoPostnrPOSTNR: TStringField;
    adoPostnrPOSTSTED: TStringField;
    adoPostnrKOMMUNENR: TStringField;
    cdsPostnr: TClientDataSet;
    dsPostnr: TDataSource;
    cdsPostnrPOSTNR: TStringField;
    cdsPostnrPOSTSTED: TStringField;
    cdsPostnrKOMMUNENR: TStringField;
    cdsPostnrKOMMUNE: TStringField;
    Panel1: TPanel;
    btnOK: TButton;
    btnLukk: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    dbgPostnr: TDBGrid;
    GroupBox1: TGroupBox;
    cbIndex: TComboBox;
    Label1: TLabel;
    editSok: TEdit;
    Label2: TLabel;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    TBXPopupMenu1: TTBXPopupMenu;
    TBXItem2: TTBXItem;
    acSlett: TAction;
    TBXItem1: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cbIndexChange(Sender: TObject);
    procedure editSokKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acSlettExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPostnrReg: TfrmPostnrReg;

implementation

uses rsData, blsDialogs;

{$R *.dfm}

procedure TfrmPostnrReg.FormCreate(Sender: TObject);
begin
  cdsPostnr.Open;
end;

procedure TfrmPostnrReg.FormDestroy(Sender: TObject);
begin
  cdsPostnr.Close;
end;

procedure TfrmPostnrReg.btnOKClick(Sender: TObject);
begin
  cdsPostnr.ApplyUpdates(-1);
end;

procedure TfrmPostnrReg.cbIndexChange(Sender: TObject);
begin
  case cbIndex.ItemIndex of
    0: cdsPostnr.IndexFieldNames := 'POSTNR';
    1: cdsPostnr.IndexFieldNames := 'POSTSTED';
  end;
end;

procedure TfrmPostnrReg.editSokKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  cdsPostnr.FindNearest([editSok.Text]);
end;

procedure TfrmPostnrReg.acSlettExecute(Sender: TObject);
begin
  if ConfirmDialog('Slett', 'Er du sikker på at du vil slette postnummer ' +
    QuotedStr(cdsPostnrPOSTNR.Value) + '?') then
      cdsPostnr.Delete;
end;

end.
