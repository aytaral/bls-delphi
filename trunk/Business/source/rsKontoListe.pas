unit rsKontoListe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, ADODB, blsDbGridScroll,
  blsList;

type
  TfrmKontoListe = class(TForm)
    Panel1: TPanel;
    btnOK: TButton;
    Panel2: TPanel;
    dbgListe: TDBGrid;
    adoKontoPlan: TADODataSet;
    dsKontoplan: TDataSource;
    adoKontoPlanKONTONR: TStringField;
    adoKontoPlanNAVN: TStringField;
    adoKontoPlanMVAKODE: TIntegerField;
    blsDbGridScroll1: TblsDbGridScroll;
    Panel3: TPanel;
    Label1: TLabel;
    editSok: TEdit;
    btnAddall: TButton;
    btnAdd: TButton;
    blsList: TblsList;
    adoKontoPlanKONTOTYPE: TStringField;
    adoKontoPlanIDTYPE: TIntegerField;
    adoKontoPlanFINNES: TBooleanField;
    procedure dbgListeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure editSokKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAddClick(Sender: TObject);
    procedure dsKontoplanDataChange(Sender: TObject; Field: TField);
    procedure btnAddallClick(Sender: TObject);
    procedure adoKontoPlanCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    AllowAdd: Boolean;
    procedure Sok;
  public
    { Public declarations }
    procedure LeggTilSok;
  end;

var
  frmKontoListe: TfrmKontoListe;

implementation

uses rsData, JclStrings, blsDialogs;

{$R *.dfm}

procedure TfrmKontoListe.dbgListeDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Length(adoKontoPlanKONTONR.Value) < 4 then
    dbgListe.Canvas.Brush.Color := $00E2E2E2;

  if Length(adoKontoPlanKONTONR.Value) = 1 then begin
    dbgListe.Canvas.Font.Style := [fsBold];
    dbgListe.Canvas.Font.Color := clNavy;
  end;

  if Length(adoKontoPlanKONTONR.Value) = 2 then begin
    dbgListe.Canvas.Font.Style := [fsBold];
    dbgListe.Canvas.Font.Color := clGreen;
  end;

  if gdSelected in State then begin
     dbgListe.Canvas.Brush.Color := clHighLight; //need that highlight for 'focus'
     dbgListe.Canvas.Font.Color := clWhite;
  end;
  dbgListe.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  if (AllowAdd) and (DataCol = 0) then
    if adoKontoPlanFINNES.Value then
      Dm.ImageListPC.Draw(dbgListe.Canvas, Rect.Left + 2 , Rect.Top + 1, 2);

end;

procedure TfrmKontoListe.FormCreate(Sender: TObject);
begin
  Dm.adoKlient.Open;
  adoKontoPlan.Parameters.ParamValues['Kode'] := Dm.adoKlientSELSKAPKODE.Value;
  adoKontoPlan.Open;
  Dm.adoKlient.Close;
  AllowAdd := False;
end;

procedure TfrmKontoListe.LeggTilSok;
begin
{  adoKontoPlan.Close;
  adoKontoPlan.CommandText := StringReplace(blsList.Lines.Text, '$IdKlient', IntToStr(Dm.g_KlientID), []);
  adoKontoPlan.Open;}
  btnAddAll.Visible := True;
  btnAdd.Visible := True;
  AllowAdd := True;
  Dm.cdsKonto.DisableControls;
end;

procedure TfrmKontoListe.FormDestroy(Sender: TObject);
begin
  adoKontoPlan.Close;
end;

procedure TfrmKontoListe.Sok;
begin
  if StrIsDigit(editSok.Text) then
    adoKontoPlan.Locate('Kontonr', editSok.Text, [loPartialKey])
  else
    adoKontoPlan.Locate('Navn', editSok.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TfrmKontoListe.editSokKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Sok;
end;

procedure TfrmKontoListe.btnAddClick(Sender: TObject);
var Nr: String;
begin
  Dm.cdsKonto.Insert;
  Dm.cdsKontoKONTONR.Value := adoKontoPlanKONTONR.AsInteger;
  Dm.cdsKontoNAVN.Value := adoKontoPlanNAVN.Value;
  Dm.cdsKontoMVAKODE.Value := adoKontoplanMVAKODE.Value;
  Dm.cdsKontoIDTYPE.Value := adoKontoplanIDTYPE.Value;
  Dm.cdsKonto.Post;
  Dm.cdsKonto.ApplyUpdates(-1);

  adoKontoPlan.DisableControls;
  adoKontoPlan.Next;
  Nr := adoKontoplanKONTONR.Value;
  adoKontoplan.Requery;
  adoKontoPlan.Locate('Kontonr', Nr, []);
  adoKontoPlan.EnableControls;
end;

procedure TfrmKontoListe.dsKontoplanDataChange(Sender: TObject;
  Field: TField);
begin
  btnAdd.Enabled := Length(adoKontoplanKontonr.Value) >= 4;
  if AllowAdd and btnAdd.Enabled then
    btnAdd.Enabled := not adoKontoplanFINNES.Value;
  btnAddAll.Enabled := btnAdd.Enabled;
end;

procedure TfrmKontoListe.btnAddallClick(Sender: TObject);
begin
  if not ConfirmDialog('Legg til', 'Er du sikker på at du vil legge til alle kontoene?') then
    Exit;

  Screen.Cursor := crHourGlass;
  Dm.cdsKonto.DisableControls;
  adoKontoPlan.DisableControls;
  adoKontoPlan.First;
  while not adoKontoPlan.Eof do begin
    if Length(adoKontoPlanKONTONR.Value) >= 4 then begin
      Dm.cdsKonto.Insert;
      Dm.cdsKontoKONTONR.Value := adoKontoPlanKONTONR.AsInteger;
      Dm.cdsKontoNAVN.Value := adoKontoPlanNAVN.Value;
      Dm.cdsKontoMVAKODE.Value := adoKontoplanMVAKODE.Value;
      Dm.cdsKontoIDTYPE.Value := adoKontoplanIDTYPE.Value;
      Dm.cdsKonto.Post;
      Dm.cdsKonto.ApplyUpdates(-1);
    end;
    adoKontoplan.Next;
  end;

  adoKontoplan.Requery;

  Dm.cdsKonto.EnableControls;
  adoKontoPlan.EnableControls;
  Screen.Cursor := crDefault;
end;

procedure TfrmKontoListe.adoKontoPlanCalcFields(DataSet: TDataSet);
begin
  if AllowAdd then
    adoKontoPlanFINNES.Value := Dm.cdsKonto.Locate('KONTONR', adoKontoPlanKONTONR.Value, []);
end;

procedure TfrmKontoListe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if AllowAdd then
    Dm.cdsKonto.EnableControls;
end;

end.
