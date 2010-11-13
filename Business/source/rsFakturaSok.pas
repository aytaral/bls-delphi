unit rsFakturaSok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, TB2Dock,
  TB2Toolbar, TBX, TB2Item, ActnList, ImgList, blsList, DB, DBClient,
  Provider, ADODB, blsDbGridScroll;

type
  TfrmFakturaSok = class(TForm)
    Panel1: TPanel;
    btnOK: TButton;
    btnLukk: TButton;
    Panel3: TPanel;
    Pc: TPageControl;
    tsFreetext: TTabSheet;
    Panel5: TPanel;
    dbgSok: TDBGrid;
    Label1: TLabel;
    editSok: TEdit;
    btnNull: TButton;
    btnSok: TButton;
    Label2: TLabel;
    cbStatus: TComboBox;
    Label3: TLabel;
    cbArt: TComboBox;
    ImageList: TImageList;
    ActionList1: TActionList;
    acLive: TAction;
    blsDbGridScroll1: TblsDbGridScroll;
    adoSok: TADOQuery;
    dspSok: TDataSetProvider;
    cdsSok: TClientDataSet;
    dsSok: TDataSource;
    timerKey: TTimer;
    cdsSokFAKTURANR: TIntegerField;
    cdsSokFAKTURADATO: TDateField;
    cdsSokSUMTOT: TFloatField;
    cdsSokKUNDENR: TIntegerField;
    cdsSokNAVN: TStringField;
    cdsSokREFNR: TStringField;
    cdsSokSTATUS: TStringField;
    cdsSokFAKTURAART: TStringField;
    acPreview: TAction;
    acPrint: TAction;
    acMail: TAction;
    acPDF: TAction;
    cdsSokIDBETSTATUS: TIntegerField;
    blsSQL: TblsList;
    adoStatus: TADODataSet;
    adoArt: TADODataSet;
    adoArtIDFAKTURAART: TIntegerField;
    adoArtFAKTURAART: TStringField;
    adoStatusIDSTATUS: TIntegerField;
    adoStatusSTATUS: TStringField;
    cdsSokIDFAKTURA: TIntegerField;
    Panel2: TPanel;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem1: TTBXItem;
    cdsSokAAR: TIntegerField;
    procedure acLiveExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSokClick(Sender: TObject);
    procedure editSokKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editSokChange(Sender: TObject);
    procedure cbStatusChange(Sender: TObject);
    procedure tsFreetextExit(Sender: TObject);
    procedure tsFreetextEnter(Sender: TObject);
    procedure btnNullClick(Sender: TObject);
    procedure editSokKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbStatusKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbArtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure timerKeyTimer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbgSokDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure acPreviewExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acPDFExecute(Sender: TObject);
    procedure acMailExecute(Sender: TObject);
  private
    procedure SetOKDefault;
    procedure SetSokDefault;
    procedure LastFakturaArt;
    procedure LastFakturaStatus;
    procedure GenererSok;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFakturaSok: TfrmFakturaSok;

implementation

uses rsData, blsRegistry, JclStrings, rsPrint, rsFunction;

{$R *.dfm}

procedure TfrmFakturaSok.acLiveExecute(Sender: TObject);
begin
  SetUserBool(RegPath, 'FakturaHurtigSok', acLive.Checked);
end;

procedure TfrmFakturaSok.FormCreate(Sender: TObject);
begin
  acLive.Checked := GetUserBool(RegPath, 'FakturaHurtigSok', True);
  adoSok.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;

  LastFakturaArt;
  LastFakturastatus;

  GenererSok;
  cdsSok.Open;
end;

procedure TfrmFakturaSok.LastFakturaArt;
begin
  adoArt.Open;
  cbArt.Clear;
  while not adoArt.Eof do begin
    cbArt.AddItem(adoArtFAKTURAART.Value, TNummer.Create(adoArtIDFAKTURAART.Value));
    adoArt.Next;
  end;
  adoArt.Close;
end;

procedure TfrmFakturaSok.LastFakturaStatus;
begin
  adoStatus.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoStatus.Open;
  cbStatus.Clear;
  while not adoStatus.Eof do begin
    cbStatus.AddItem(adoStatusSTATUS.Value, TNummer.Create(adoStatusIDSTATUS.Value));
    adoStatus.Next;
  end;
  adoStatus.Close;
end;

procedure TfrmFakturaSok.SetSokDefault;
begin
  btnSok.Default := True;
  btnOk.Default := False;
end;

procedure TfrmFakturaSok.SetOKDefault;
begin
  btnSok.Default := False;
  btnOK.Default := True;
end;

procedure TfrmFakturaSok.GenererSok;
var AntHit: Integer;
    SQL: TStringList;
    Num, Tekst, Art, Status: String;
begin
  AntHit := 100;

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

    if cbArt.ItemIndex > -1 then
      Art := 'and F.IDFAKTURAART = ' + TNummer(cbArt.Items.Objects[cbArt.ItemIndex]).AsString
    else
      Art := '';

    if cbStatus.ItemIndex > -1 then
      Status := 'and F.IDSTATUS = ' + TNummer(cbStatus.Items.Objects[cbStatus.ItemIndex]).AsString
    else
      Status := '';

    SQL.Text := StringReplace(SQL.Text, '$Hit', IntToStr(AntHit), []);
    SQL.Text := StringReplace(SQL.Text, '$IdKlient', IntToStr(Dm.g_KlientID), []);
    SQL.Text := StringReplace(SQL.Text, '$Num', Num, [rfReplaceAll]);
    SQL.Text := StringReplace(SQL.Text, '$Tekst', Tekst, [rfReplaceAll]);

    if Tekst = QuotedStr('') then
      SQL.Text := StringReplace(SQL.Text, '$Blank', 'or (K.NAVN is null)', [rfReplaceAll])
    else
      SQL.Text := StringReplace(SQL.Text, '$Blank', '', [rfReplaceAll]);

    if Art <> '' then
      SQL[SQL.IndexOf('$Art')] := Art
    else
      SQL.Delete(SQL.IndexOf('$Art'));

    if Status <> '' then
      SQL[SQL.IndexOf('$Status')] := Status
    else
      SQL.Delete(SQL.IndexOf('$Status'));

    if adoSok.SQL.Text <> SQL.Text then
      adoSok.SQL.Text := SQL.Text;
  finally
    SQL.Free;
  end;
end;

procedure TfrmFakturaSok.btnSokClick(Sender: TObject);
begin
  timerKey.Enabled := False;
  GenererSok;
  timerKey.Enabled := True;
end;

procedure TfrmFakturaSok.editSokKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [VK_UP, VK_DOWN, VK_PRIOR, VK_NEXT] then Exit;
  if acLive.Checked then
    btnSokClick(Self);
end;

procedure TfrmFakturaSok.editSokChange(Sender: TObject);
begin
  if not acLive.Checked then
    SetSokDefault;
end;

procedure TfrmFakturaSok.cbStatusChange(Sender: TObject);
begin
  if acLive.Checked then
    btnSokClick(Self)
  else
    SetSokDefault;
end;

procedure TfrmFakturaSok.tsFreetextExit(Sender: TObject);
begin
  SetOKDefault;
end;

procedure TfrmFakturaSok.tsFreetextEnter(Sender: TObject);
begin
  SetSokDefault;
end;

procedure TfrmFakturaSok.btnNullClick(Sender: TObject);
begin
  editSok.Text := '';
  cbStatus.ItemIndex := -1;
  cbArt.ItemIndex := -1;
  btnSokClick(Self);
  editSok.SetFocus;
end;

procedure TfrmFakturaSok.editSokKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmFakturaSok.cbStatusKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_BACK) or (Key = VK_DELETE) then begin
    cbStatus.ItemIndex := -1;
    cbStatusChange(Self);
  end;
end;

procedure TfrmFakturaSok.cbArtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_BACK) or (Key = VK_DELETE) then begin
    cbArt.ItemIndex := -1;
    cbStatusChange(Self);
  end;
end;

procedure TfrmFakturaSok.timerKeyTimer(Sender: TObject);
begin
  timerKey.Enabled := False;
  if not cdsSok.Active then Exit;

  Screen.Cursor := crHourGlass;
  cdsSok.Refresh;
  Screen.Cursor := crDefault;

  SetOKDefault;
end;

procedure TfrmFakturaSok.FormDestroy(Sender: TObject);
var I: Integer;
begin
  cdsSok.Close;

  for I := 0 to cbArt.Items.Count -1 do
    cbArt.Items.Objects[I].Free;
  for I := 0 to cbStatus.Items.Count -1 do
    cbStatus.Items.Objects[I].Free;
end;

procedure TfrmFakturaSok.dbgSokDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if DataCol = 2 then begin
    if (cdsSokIDBETSTATUS.Value = 30) then
      Dm.ImageListPC.Draw(dbgSok.Canvas, Rect.Left + 2 , Rect.Top, 1)
    else if (cdsSokIDBETSTATUS.Value = 20) then
      Dm.ImageListPC.Draw(dbgSok.Canvas, Rect.Left + 2 , Rect.Top, 2);
  end;

end;

procedure TfrmFakturaSok.acPreviewExecute(Sender: TObject);
begin
  frmPrint := TfrmPrint.Create(Application);
  frmPrint.VisFaktura(cdsSokIDFAKTURA.Value, False, cdsSokFAKTURANR.AsString);
  frmPrint.Release;
end;

procedure TfrmFakturaSok.acPrintExecute(Sender: TObject);
begin
  frmPrint := TfrmPrint.Create(Application);
  frmPrint.PrintFaktura(cdsSokIDFAKTURA.Value, False);
  frmPrint.Release;
end;

procedure TfrmFakturaSok.acPDFExecute(Sender: TObject);
begin
  dmFunction.SaveFaktura(cdsSokIDFAKTURA.Value, cdsSokFAKTURANR.AsString);
end;

procedure TfrmFakturaSok.acMailExecute(Sender: TObject);
begin
  dmFunction.SendFakturaMail(cdsSokIDFAKTURA.Value, cdsSokFAKTURANR.AsString,
    cdsSokKUNDENR.AsString, cdsSokNAVN.Value);
end;

end.
