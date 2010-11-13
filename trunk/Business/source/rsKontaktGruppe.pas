unit rsKontaktGruppe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls, DB,
  DBClient, Provider, ADODB;

type
  TfrmKontaktGruppe = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    JvDBGrid1: TJvDBGrid;
    btnOK: TButton;
    btnAvbryt: TButton;
    adoGruppe: TADODataSet;
    dspGruppe: TDataSetProvider;
    cdsGruppe: TClientDataSet;
    dsGruppe: TDataSource;
    adoGruppeIDGRUPPE: TIntegerField;
    adoGruppeIDSERIE: TStringField;
    adoGruppeIDKLIENT: TIntegerField;
    adoGruppeGRUPPE: TStringField;
    cdsGruppeIDGRUPPE: TIntegerField;
    cdsGruppeIDSERIE: TStringField;
    cdsGruppeIDKLIENT: TIntegerField;
    cdsGruppeGRUPPE: TStringField;
    spGruppe: TADOStoredProc;
    spGruppeID: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnAvbrytClick(Sender: TObject);
    procedure cdsGruppeNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    FKontaktSerie: String;
  public
    { Public declarations }
    property KontaktSerie: String read FKontaktSerie write FKontaktSerie;
  end;

var
  frmKontaktGruppe: TfrmKontaktGruppe;

implementation

uses rsData;

{$R *.dfm}

procedure TfrmKontaktGruppe.btnAvbrytClick(Sender: TObject);
begin
  cdsGruppe.Cancel;
  cdsGruppe.CancelUpdates;
end;

procedure TfrmKontaktGruppe.btnOKClick(Sender: TObject);
begin
  if cdsGruppe.State in [dsEdit, dsInsert] then
    cdsGruppe.Post;
  cdsGruppe.ApplyUpdates(-1);
end;

procedure TfrmKontaktGruppe.cdsGruppeNewRecord(DataSet: TDataSet);
begin
  cdsGruppeIDKLIENT.Value := Dm.g_KlientID;
  cdsGruppeIDSERIE.Value := KontaktSerie;

  spGruppe.Open;
  cdsGruppeIDGRUPPE.Value := spGruppeID.Value;
  spGruppe.Close;
end;

procedure TfrmKontaktGruppe.FormDestroy(Sender: TObject);
begin
  cdsGruppe.Close;
end;

procedure TfrmKontaktGruppe.FormShow(Sender: TObject);
begin
  adoGruppe.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoGruppe.Parameters.ParamValues['IdSerie'] := KontaktSerie;
  cdsGruppe.Open;
end;

end.
