unit rsMvaSok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, blsDbGridScroll, Grids, DBGrids, StdCtrls, ExtCtrls, DB,
  DBClient, Provider, ADODB;

type
  TfrmMvaSok = class(TForm)
    Panel1: TPanel;
    btnOK: TButton;
    btnAvbryt: TButton;
    btnRediger: TButton;
    Panel2: TPanel;
    dbgMva: TDBGrid;
    blsDbGridScroll1: TblsDbGridScroll;
    adoMva: TADODataSet;
    dspMva: TDataSetProvider;
    cdsMva: TClientDataSet;
    dsMva: TDataSource;
    cdsMvaMVAKODE: TIntegerField;
    cdsMvaBESKRIVELSE: TStringField;
    cdsMvaSATS: TFloatField;
    cdsMvaAKTIV: TSmallintField;
    procedure dsMvaDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMvaSok: TfrmMvaSok;

implementation

uses rsData;

{$R *.dfm}

procedure TfrmMvaSok.dsMvaDataChange(Sender: TObject; Field: TField);
begin
  if cdsMva.Active then begin
    btnOk.Enabled := cdsMvaAKTIV.Value <> 0;
  end;
end;

procedure TfrmMvaSok.FormCreate(Sender: TObject);
begin
  cdsMva.Open;
end;

procedure TfrmMvaSok.FormDestroy(Sender: TObject);
begin
  cdsMva.Close;
end;

end.
