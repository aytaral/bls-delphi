unit rsKontoSok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ImgList, TB2Item, TBX, TB2Dock, TB2Toolbar, Grids,
  DBGrids, StdCtrls, ComCtrls, ExtCtrls, DB, DBClient, Provider, ADODB,
  blsDbGridScroll, blsList;

type
  TfrmKontoSok = class(TForm)
    Panel1: TPanel;
    btnOK: TButton;
    btnLukk: TButton;
    Panel3: TPanel;
    Pc: TPageControl;
    tsFreetext: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    editSok: TEdit;
    btnNull: TButton;
    btnSok: TButton;
    Panel5: TPanel;
    dbgSok: TDBGrid;
    Panel2: TPanel;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem2: TTBXItem;
    ImageList: TImageList;
    ActionList1: TActionList;
    acLive: TAction;
    cbType: TComboBox;
    blsDbGridScroll1: TblsDbGridScroll;
    adoKontoType: TADODataSet;
    adoKontoTypeIDKONTOTYPE: TIntegerField;
    adoKontoTypeKONTOTYPE: TStringField;
    adoSok: TADOQuery;
    dspSok: TDataSetProvider;
    cdsSok: TClientDataSet;
    dsSok: TDataSource;
    blsSQL: TblsList;
    acNy: TAction;
    acEndre: TAction;
    TBXItem1: TTBXItem;
    TBXItem3: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    acOK: TAction;
    cdsSokKONTONR: TIntegerField;
    cdsSokNAVN: TStringField;
    cdsSokMVAKODE: TIntegerField;
    cdsSokBESKRIVELSE: TStringField;
    cdsSokKONTOTYPE: TStringField;
    procedure acLiveExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbTypeKeyDown(Sender: TObject; var Key: Word;
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
    procedure cbTypeChange(Sender: TObject);
    procedure acNyExecute(Sender: TObject);
    procedure acEndreExecute(Sender: TObject);
  private
    { Private declarations }
    procedure LastTyper;
    procedure SetOKDefault;
    procedure SetSokDefault;
    procedure GenererSok;
  public
    { Public declarations }
  end;

var
  frmKontoSok: TfrmKontoSok;

implementation

uses rsData, blsRegistry, JclStrings, rsFunction;

{$R *.dfm}

procedure TfrmKontoSok.acLiveExecute(Sender: TObject);
begin
  SetUserBool(RegPath, 'KontoHurtigSok', acLive.Checked);
end;

procedure TfrmKontoSok.FormCreate(Sender: TObject);
begin
  acLive.Checked := GetUserBool(RegPath, 'KontoHurtigSok', True);
end;

procedure TfrmKontoSok.LastTyper;
begin
  adoKontoType.Open;
  cbType.Clear;
  while not adoKontoType.Eof do begin
    cbType.AddItem(adoKontoTypeKONTOTYPE.Value, TNummer.Create(adoKontoTypeIDKONTOTYPE.Value));
    adoKontoType.Next;
  end;
  adoKontoType.Close;
end;

procedure TfrmKontoSok.FormDestroy(Sender: TObject);
var I: Integer;
begin
  cdsSok.Close;
  for I := 0 to cbType.Items.Count -1 do
    cbType.Items.Objects[I].Free;
end;

procedure TfrmKontoSok.FormShow(Sender: TObject);
begin
  LastTyper;
  GenererSok;
  cdsSok.Open;
end;

procedure TfrmKontoSok.cbTypeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_BACK) or (Key = VK_DELETE) then begin
    cbType.ItemIndex := -1;
    cbTypeChange(Self);
  end;
end;

procedure TfrmKontoSok.editSokKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmKontoSok.btnNullClick(Sender: TObject);
begin
  editSok.Text := '';
  cbType.ItemIndex := -1;
  btnSokClick(Self);
  editSok.SetFocus;
end;

procedure TfrmKontoSok.GenererSok;
var AntHit: Integer;
    SQL: TStringList;
    Num, Tekst, KType: String;
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

    if cbType.ItemIndex > -1 then
      KType := 'and K.IDTYPE = ' + TNummer(cbType.Items.Objects[cbType.ItemIndex]).AsString
    else
      KType := '';

    SQL.Text := StringReplace(SQL.Text, '$Hit', IntToStr(AntHit), []);
    SQL.Text := StringReplace(SQL.Text, '$IdKlient', IntToStr(Dm.g_KlientID), []);
    SQL.Text := StringReplace(SQL.Text, '$Num', Num, [rfReplaceAll]);
    SQL.Text := StringReplace(SQL.Text, '$Tekst', Tekst, [rfReplaceAll]);

    if KType <> '' then
      SQL[SQL.IndexOf('$Type')] := KType
    else
      SQL.Delete(SQL.IndexOf('$Type'));

    if adoSok.SQL.Text <> SQL.Text then
      adoSok.SQL.Text := SQL.Text;
  finally
    SQL.Free;
  end;
end;

procedure TfrmKontoSok.btnSokClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GenererSok;
  cdsSok.Refresh;
  SetOKDefault;  
  Screen.Cursor := crDefault;
end;

procedure TfrmKontoSok.SetSokDefault;
begin
  btnSok.Default := True;
  btnOk.Default := False;
end;

procedure TfrmKontoSok.SetOKDefault;
begin
  btnSok.Default := False;
  btnOK.Default := True;
end;

procedure TfrmKontoSok.tsFreetextEnter(Sender: TObject);
begin
  SetSokDefault;
end;

procedure TfrmKontoSok.tsFreetextExit(Sender: TObject);
begin
  SetOKDefault;
end;

procedure TfrmKontoSok.editSokChange(Sender: TObject);
begin
  if not acLive.Checked then
    SetSokDefault;
end;

procedure TfrmKontoSok.editSokKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [VK_UP, VK_DOWN, VK_PRIOR, VK_NEXT] then Exit;
  if acLive.Checked then
    btnSokClick(Self);
end;

procedure TfrmKontoSok.acOKExecute(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmKontoSok.cbTypeChange(Sender: TObject);
begin
  if acLive.Checked then
    btnSokClick(Self)
  else
    SetSokDefault;
end;

procedure TfrmKontoSok.acNyExecute(Sender: TObject);
begin
  if dmFunction.LagNyKonto > 0 then
    btnSokClick(Self); //Oppdaterer søket...
end;

procedure TfrmKontoSok.acEndreExecute(Sender: TObject);
begin
  if dmFunction.EndreKonto(cdsSokKONTONR.Value) = mrOK then
    btnSokClick(Self); //Oppdaterer søket...
end;

end.
