unit rsBilagSok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, Grids, DBGrids, StdCtrls, ComCtrls, ImgList, TB2Item,
  TBX, TB2Dock, TB2Toolbar, ExtCtrls, blsAlignEdit, DB, DBClient, Provider,
  ADODB, blsList, Mask, JvExMask, JvSpin, JvExDBGrids, JvDBGrid;

type
  TfrmBilagSok = class(TForm)
    Panel1: TPanel;
    btnOK: TButton;
    btnLukk: TButton;
    Panel2: TPanel;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem2: TTBXItem;
    ImageList: TImageList;
    ActionList: TActionList;
    Panel3: TPanel;
    Pc: TPageControl;
    tsFreetext: TTabSheet;
    Label1: TLabel;
    editSok: TEdit;
    btnNull: TButton;
    btnSok: TButton;
    Panel5: TPanel;
    dbgSok: TJvDBGrid;
    acPreview: TAction;
    Label2: TLabel;
    editBelop: TblsAlignEdit;
    editKonto: TblsAlignEdit;
    Label3: TLabel;
    btnKontoSok: TButton;
    acLive: TAction;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem1: TTBXItem;
    blsSql: TblsList;
    adoSok: TADOQuery;
    dspSok: TDataSetProvider;
    cdsSok: TClientDataSet;
    dsSok: TDataSource;
    timerKey: TTimer;
    edAar: TJvSpinEdit;
    Label4: TLabel;
    acOK: TAction;
    cdsSokBILAGNR: TIntegerField;
    cdsSokPERIODENR: TSmallintField;
    cdsSokNAVN: TStringField;
    cdsSokBELOP: TBCDField;
    cdsSokFAKTURANR: TStringField;
    cdsSokTEKST: TStringField;
    cdsSokKONTONR: TIntegerField;
    cdsSokKONTAKTNR: TIntegerField;
    cdsSokIDBILAG: TIntegerField;
    procedure btnKontoSokClick(Sender: TObject);
    procedure acLiveExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure editSokKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnNullClick(Sender: TObject);
    procedure btnSokClick(Sender: TObject);
    procedure editSokKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acOKExecute(Sender: TObject);
    procedure timerKeyTimer(Sender: TObject);
    procedure editSokChange(Sender: TObject);
    procedure tsFreetextEnter(Sender: TObject);
    procedure tsFreetextExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acPreviewExecute(Sender: TObject);
    procedure editKontoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    InLoading: Boolean;
    procedure SetOKDefault;
    procedure SetSokDefault;
    procedure GenererSok;
    procedure RunSearch;
  public
    { Public declarations }
  end;

var
  frmBilagSok: TfrmBilagSok;

implementation

uses rsBilagKontoSok, blsRegistry, rsData, DateUtils, JclStrings, rsPrint;

{$R *.dfm}

procedure TfrmBilagSok.GenererSok;
var Str: String;
    BYear, AntHit: Integer;
begin
  AntHit := 100;
  adoSok.SQL.Text := blsSQL.Lines.Text;

  if Trim(editSok.Text) = '' then
    Str := ''
  else begin
    if JclStrings.StrIsDigit(editSok.Text) then
      Str := 'and ((BILAGNR starting with $Val) or (KONTONR starting with $Val))'
    else
      Str := 'and ((NAVN containing ''$Val'') or (FAKTURANR containing ''$Val'') or (TEKST containing ''$Val''))';
    Str := StringReplace(Str, '$Val', editSok.Text, [rfReplaceAll]);
  end;
  adoSok.SQL.Text := StringReplace(adoSok.SQL.Text, '$Sok', Str, []);

  if Trim(editKonto.Text) = '' then begin
    Str := '';
  end
  else begin
    if editKonto.AsInteger > 9999 then
      Str := 'and KONTAKTNR = ' + editKonto.Text
    else
      Str := 'and KONTONR = ' + editKonto.Text;
  end;
  adoSok.SQL.Text := StringReplace(adoSok.SQL.Text, '$Konto', Str, []);

  if Trim(editBelop.Text) = '' then
    Str := ''
  else
    Str := 'and ((BELOP starting with ' + StringReplace(FloatToStr(editBelop.AsFloat), ',', '.', []) +
           ') or (BELOP starting with ' + StringReplace(FloatToStr(editBelop.AsFloat * -1), ',', '.', []) + '))';
  adoSok.SQL.Text := StringReplace(adoSok.SQL.Text, '$Belop', Str, []);

  BYear := edAar.AsInteger;
  if (Trim(editSok.Text) = '') and (Trim(editKonto.Text) = '') and (Trim(editBelop.Text) = '') then
    BYear := -1;
  Str := 'and B.AAR = ' + IntToStr(BYear);
  adoSok.SQL.Text := StringReplace(adoSok.SQL.Text, '$Aar', Str, []);
  adoSok.SQL.Text := StringReplace(adoSok.SQL.Text, '$Hit', IntToStr(AntHit), []);
end;


procedure TfrmBilagSok.btnKontoSokClick(Sender: TObject);
begin
  frmBilagKontoSok := TfrmBilagKontoSok.Create(Application);
  if frmBilagKontoSok.ShowModal = mrOK then begin
    editKonto.Text := frmBilagKontoSok.cdsSokKONTONR.AsString;
  end;
  frmBilagKontoSok.Release;
end;

procedure TfrmBilagSok.acLiveExecute(Sender: TObject);
begin
  SetUserBool(RegPath, 'BilagHurtigSok', acLive.Checked);
end;

procedure TfrmBilagSok.FormCreate(Sender: TObject);
begin
  InLoading := False;
  acLive.Checked := GetUserBool(RegPath, 'BilagHurtigSok', True);
end;

procedure TfrmBilagSok.FormDestroy(Sender: TObject);
begin
  cdsSok.Close;
end;

procedure TfrmBilagSok.editSokKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_UP then
    cdsSok.Prior
  else if Key = VK_DOWN then
    cdsSok.Next
  else if Key = VK_PRIOR then
    cdsSok.MoveBy(-10)
  else if Key = VK_NEXT then
    cdsSok.MoveBy(10);

  if Key in [VK_UP, VK_DOWN, VK_PRIOR, VK_NEXT] then
    Key := 0;
end;

procedure TfrmBilagSok.btnNullClick(Sender: TObject);
begin
  editSok.Text := '';
  editKonto.Text := '';
  editBelop.Text := '';
  RunSearch;
  editSok.SetFocus;
end;

procedure TfrmBilagSok.SetSokDefault;
begin
  btnSok.Default := True;
  btnOk.Default := False;
end;

procedure TfrmBilagSok.SetOKDefault;
begin
  btnSok.Default := False;
  btnOK.Default := True;
end;

procedure TfrmBilagSok.RunSearch;
begin
  if InLoading then Exit;
  timerKey.Enabled := False;
  GenererSok;
  timerKey.Enabled := True;
end;

procedure TfrmBilagSok.btnSokClick(Sender: TObject);
begin
  RunSearch;
end;

procedure TfrmBilagSok.editSokKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [VK_UP, VK_DOWN, VK_PRIOR, VK_NEXT] then Exit;
  if acLive.Checked then
    RunSearch;
end;

procedure TfrmBilagSok.acOKExecute(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmBilagSok.timerKeyTimer(Sender: TObject);
begin
  timerKey.Enabled := False;
  if not cdsSok.Active then Exit;

  Screen.Cursor := crHourGlass;
  cdsSok.Refresh;
  Screen.Cursor := crDefault;

  SetOKDefault;
end;

procedure TfrmBilagSok.editKontoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if acLive.Checked then
    RunSearch;
end;

procedure TfrmBilagSok.editSokChange(Sender: TObject);
begin
  if not acLive.Checked then
    SetSokDefault;
end;

procedure TfrmBilagSok.tsFreetextEnter(Sender: TObject);
begin
  SetSokDefault;
end;

procedure TfrmBilagSok.tsFreetextExit(Sender: TObject);
begin
  SetOKDefault;
end;

procedure TfrmBilagSok.FormShow(Sender: TObject);
begin
  InLoading := True;
  if Dm.g_BilagAar > 0 then
    edAar.Value := Dm.g_BilagAar
  else
    edAar.Value := YearOf(Date);
  InLoading := False;

  GenererSok;
  adoSok.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  cdsSok.Open;
end;

procedure TfrmBilagSok.acPreviewExecute(Sender: TObject);
begin
  if cdsSok.RecordCount = 0 then Exit;
  frmPrint := TfrmPrint.Create(Application);
  frmPrint.VisBilag(cdsSokIDBILAG.Value);
  frmPrint.Release;
end;

end.
