unit rsBilagKontoSok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, ActnList,
  ImgList, TB2Item, TBX, TB2Dock, TB2Toolbar, ExtCtrls, blsList, DB,
  DBClient, Provider, ADODB, JvExDBGrids, JvDBGrid;

type
  TfrmBilagKontoSok = class(TForm)
    Panel1: TPanel;
    btnOK: TButton;
    btnLukk: TButton;
    Panel2: TPanel;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem3: TTBXItem;
    TBXItem1: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem2: TTBXItem;
    ImageList: TImageList;
    ActionList1: TActionList;
    acLive: TAction;
    acNy: TAction;
    acEndre: TAction;
    acOK: TAction;
    Panel3: TPanel;
    Pc: TPageControl;
    tsFreetext: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    editSok: TEdit;
    btnNull: TButton;
    btnSok: TButton;
    cbGruppe: TComboBox;
    Panel5: TPanel;
    dbgSok: TJvDBGrid;
    adoSok: TADOQuery;
    dspSok: TDataSetProvider;
    cdsSok: TClientDataSet;
    dsSok: TDataSource;
    blsSQL: TblsList;
    cdsSokKONTONR: TIntegerField;
    cdsSokNAVN: TStringField;
    cdsSokMVAKODE: TIntegerField;
    cdsSokKTYPE: TIntegerField;
    cdsSokMVA: TStringField;
    cdsSokGRUPPE: TStringField;
    timerKey: TTimer;
    procedure cdsSokCalcFields(DataSet: TDataSet);
    procedure acLiveExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbGruppeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editSokKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnNullClick(Sender: TObject);
    procedure btnSokClick(Sender: TObject);
    procedure tsFreetextEnter(Sender: TObject);
    procedure tsFreetextExit(Sender: TObject);
    procedure editSokChange(Sender: TObject);
    procedure editSokKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acOKExecute(Sender: TObject);
    procedure cbGruppeChange(Sender: TObject);
    procedure timerKeyTimer(Sender: TObject);
    procedure acNyExecute(Sender: TObject);
    procedure acEndreExecute(Sender: TObject);
  private
    procedure GenererSok;
    procedure SetOKDefault;
    procedure SetSokDefault;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBilagKontoSok: TfrmBilagKontoSok;

implementation

uses rsData, blsRegistry, JclStrings, rsBilagNyKonto, rsFunction;

{$R *.dfm}

procedure TfrmBilagKontoSok.cdsSokCalcFields(DataSet: TDataSet);
begin
  case cdsSokKTYPE.Value of
    1: cdsSokGRUPPE.Value := 'Hovedbok';
    2: cdsSokGRUPPE.Value := 'Kunde';
    3: cdsSokGRUPPE.Value := 'Leverandør';
  end;

  if Dm.cdsMva.Locate('MVAKODE', cdsSokMVAKODE.Value, []) then begin
    cdsSokMVA.Value := FormatFloat('#,##0.0%', Dm.cdsMvaSATS.Value) + ' - ' +
      Dm.cdsMvaBESKRIVELSE.Value; 
  end;

end;

procedure TfrmBilagKontoSok.acLiveExecute(Sender: TObject);
begin
  SetUserBool(RegPath, 'BilagKontoHurtigSok', acLive.Checked);
end;

procedure TfrmBilagKontoSok.FormCreate(Sender: TObject);
begin
  acLive.Checked := GetUserBool(RegPath, 'BilagKontoHurtigSok', True);
  GenererSok;
  cdsSok.Open;
end;

procedure TfrmBilagKontoSok.cbGruppeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_BACK) or (Key = VK_DELETE) then begin
    cbGruppe.ItemIndex := -1;
    cbGruppeChange(Self);
  end;
end;

procedure TfrmBilagKontoSok.editSokKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmBilagKontoSok.btnNullClick(Sender: TObject);
begin
  editSok.Text := '';
  cbGruppe.ItemIndex := -1;
  btnSokClick(Self);
  editSok.SetFocus;
end;

procedure TfrmBilagKontoSok.GenererSok;
var AntHit: Integer;
    SQL: TStringList;
    Num, Tekst, KGruppe: String;
begin
  AntHit := 1000;
  SQL := TStringList.Create;
  try
    SQL.Text := blsSQL.Lines.Text;

    if StrIsDigit(editSok.Text) then begin
      Num := QuotedStr(editSok.Text);
      Tekst := QuotedStr('');
    end
    else begin
      Num := QuotedStr('');
      Tekst := QuotedStr(editSok.Text);
    end;

    if cbGruppe.ItemIndex > -1 then
      KGruppe := 'and K.KTYPE = ' + IntToStr(cbGruppe.ItemIndex + 1)
    else
      KGruppe := '';

    SQL.Text := StringReplace(SQL.Text, '$Hit', IntToStr(AntHit), []);
    SQL.Text := StringReplace(SQL.Text, '$IdKlient', IntToStr(Dm.g_KlientID), []);
    SQL.Text := StringReplace(SQL.Text, '$Num', Num, [rfReplaceAll]);
    SQL.Text := StringReplace(SQL.Text, '$Tekst', Tekst, [rfReplaceAll]);

    if KGruppe <> '' then
      SQL[SQL.IndexOf('$Gruppe')] := KGruppe
    else
      SQL.Delete(SQL.IndexOf('$Gruppe'));

    if adoSok.SQL.Text <> SQL.Text then
      adoSok.SQL.Text := SQL.Text;
  finally
    SQL.Free;
  end;
end;

procedure TfrmBilagKontoSok.btnSokClick(Sender: TObject);
begin
  timerKey.Enabled := False;
  GenererSok;
  timerKey.Enabled := True;
end;

procedure TfrmBilagKontoSok.SetSokDefault;
begin
  btnSok.Default := True;
  btnOk.Default := False;
end;

procedure TfrmBilagKontoSok.SetOKDefault;
begin
  btnSok.Default := False;
  btnOK.Default := True;
end;

procedure TfrmBilagKontoSok.tsFreetextEnter(Sender: TObject);
begin
  SetSokDefault;
end;

procedure TfrmBilagKontoSok.tsFreetextExit(Sender: TObject);
begin
  SetOKDefault;
end;

procedure TfrmBilagKontoSok.editSokChange(Sender: TObject);
begin
  if not acLive.Checked then
    SetSokDefault;
end;

procedure TfrmBilagKontoSok.editSokKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [VK_UP, VK_DOWN, VK_PRIOR, VK_NEXT] then Exit;
  if acLive.Checked then
    btnSokClick(Self);
end;

procedure TfrmBilagKontoSok.acOKExecute(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmBilagKontoSok.cbGruppeChange(Sender: TObject);
begin
  if acLive.Checked then
    btnSokClick(Self)
  else
    SetSokDefault;
end;

procedure TfrmBilagKontoSok.timerKeyTimer(Sender: TObject);
begin
  timerKey.Enabled := False;
  if not cdsSok.Active then Exit;

  Screen.Cursor := crHourGlass;
  cdsSok.Refresh;
  Screen.Cursor := crDefault;

  SetOKDefault;
end;

procedure TfrmBilagKontoSok.acNyExecute(Sender: TObject);
var Nr: Integer;
begin
  Nr := 0;
  frmBilagNyKonto := TfrmBilagNyKonto.Create(Application);
  if frmBilagNyKonto.ShowModal = mrOK then begin
    case frmBilagNyKonto.KType of
      1: Nr := dmFunction.LagNyKonto;
      2: Nr := dmFunction.LagNyKunde;
      3: Nr := dmFunction.LagNyLeverandor;
    end;
    if Nr > 0 then
      if editSok.Text = '' then
        editSok.Text := IntToStr(Nr);

    //timerKeyTimer(Self);
    btnSok.Click;
  end;
  frmBilagNyKonto.Release;
end;

procedure TfrmBilagKontoSok.acEndreExecute(Sender: TObject);
begin
  case cdsSokKTYPE.Value of
    1: dmFunction.EndreKonto(cdsSokKONTONR.Value);
    2: dmFunction.EndreKunde(cdsSokKONTONR.Value);
    3: dmFunction.EndreLeverandor(cdsSokKONTONR.Value);
  end;
  timerKeyTimer(Self);
end;

end.
