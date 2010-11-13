unit rsKundeSok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, DBClient, Provider, blsList, ADODB, Grids,
  DBGrids, TB2Dock, TB2Toolbar, TBX, ComCtrls,
  TB2Item, ActnList, ImgList, JvExDBGrids, JvDBGrid;

type
  TfrmKundeSok = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    dbgSok: TJvDBGrid;
    btnOK: TButton;
    btnLukk: TButton;
    adoSok: TADOQuery;
    blsSql: TblsList;
    dspSok: TDataSetProvider;
    cdsSok: TClientDataSet;
    dsSok: TDataSource;
    PageControl1: TPageControl;
    tsFritekst: TTabSheet;
    Panel5: TPanel;
    Label1: TLabel;
    editSok: TEdit;
    btnNull: TButton;
    btnSok: TButton;
    lblGruppe: TLabel;
    cbGruppe: TComboBox;
    lblType: TLabel;
    cbType: TComboBox;
    adoGruppe: TADODataSet;
    adoType: TADODataSet;
    cdsSokKONTAKTNR: TIntegerField;
    cdsSokNAVN: TStringField;
    cdsSokKONTAKT: TStringField;
    cdsSokADRESSE: TStringField;
    cdsSokPOSTNR: TStringField;
    cdsSokPOSTSTED: TStringField;
    ActionList: TActionList;
    ImageList: TImageList;
    acRediger: TAction;
    acLive: TAction;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    adoGruppeGRUPPE: TStringField;
    adoTypeKUNDETYPE: TStringField;
    adoGruppeIDGRUPPE: TIntegerField;
    adoTypeIDKUNDETYPE: TIntegerField;
    acOK: TAction;
    cdsSokEPOST: TStringField;
    acNy: TAction;
    TBXItem3: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    timerKey: TTimer;
    cbKontaktAktiv: TCheckBox;
    cdsSokAKTIV: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbGruppeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editSokKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnNullClick(Sender: TObject);
    procedure tsFritekstEnter(Sender: TObject);
    procedure tsFritekstExit(Sender: TObject);
    procedure btnSokClick(Sender: TObject);
    procedure editSokChange(Sender: TObject);
    procedure cbGruppeChange(Sender: TObject);
    procedure acLiveExecute(Sender: TObject);
    procedure editSokKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acOKExecute(Sender: TObject);
    procedure timerKeyTimer(Sender: TObject);
    procedure acNyExecute(Sender: TObject);
    procedure acRedigerExecute(Sender: TObject);
    procedure cbKontaktAktivClick(Sender: TObject);
    procedure dbgSokDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    InLoading: Boolean;
    procedure LastGrupper;
    procedure LastTyper;
    procedure SetSokDefault;
    procedure SetOKDefault;
    procedure GenererSok;
    { Private declarations }
  public
    { Public declarations }
    KontaktSerie: String;
  end;

var
  frmKundeSok: TfrmKundeSok;

implementation

uses rsData, blsRegistry, JclStrings, rsFunction;

{$R *.dfm}

procedure TfrmKundeSok.LastGrupper;
begin
  adoGruppe.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoGruppe.Parameters.ParamValues['Serie'] := KontaktSerie;
  adoGruppe.Open;
  cbGruppe.Clear;
  while not adoGruppe.Eof do begin
    cbGruppe.AddItem(adoGruppeGRUPPE.Value, TNummer.Create(adoGruppeIDGRUPPE.Value));
    adoGruppe.Next;
  end;
  adoGruppe.Close;
end;

procedure TfrmKundeSok.LastTyper;
begin
  adoType.Open;
  cbType.Clear;
  while not adoType.Eof do begin
    cbType.AddItem(adoTypeKUNDETYPE.Value, TNummer.Create(adoTypeIDKUNDETYPE.Value));
    adoType.Next;
  end;
  adoType.Close;
end;

procedure TfrmKundeSok.FormCreate(Sender: TObject);
begin
  acLive.Checked := GetUserBool(RegPath, 'KontaktHurtigSok', True);
end;

procedure TfrmKundeSok.FormDestroy(Sender: TObject);
var I: Integer;
begin
  cdsSok.Close;
  for I := 0 to cbType.Items.Count -1 do
    cbType.Items.Objects[I].Free;
  for I := 0 to cbGruppe.Items.Count -1 do
    cbGruppe.Items.Objects[I].Free;
end;

procedure TfrmKundeSok.FormShow(Sender: TObject);
begin
  InLoading := True;
  if KontaktSerie = 'KS' then begin
    LastTyper;
  end
  else begin
    cbGruppe.Width := 461;
    lblType.Visible := False;
    cbType.Visible := False;
    lblGruppe.Caption := 'Leverandørgruppe:';
    Caption := 'Søk Leverandører';
    dbgSok.Columns[0].Title.Caption := 'Lev. nr';
  end;
  LastGrupper;

  cbKontaktAktiv.Checked := GetUserBool(RegPath, 'InkluderInaktiveKontakter' + KontaktSerie);

  GenererSok;
  adoSok.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoSok.Parameters.ParamValues['Serie'] := KontaktSerie;
  cdsSok.Open;
  InLoading := False;
end;

procedure TfrmKundeSok.cbGruppeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_BACK) or  (Key = VK_DELETE) then begin
    cbGruppe.ItemIndex := -1;
    cbGruppeChange(Self);
  end;
end;

procedure TfrmKundeSok.cbTypeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_BACK) or (Key = VK_DELETE) then begin
    cbType.ItemIndex := -1;
    cbGruppeChange(Self);
  end;
end;

procedure TfrmKundeSok.editSokKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmKundeSok.btnNullClick(Sender: TObject);
begin
  editSok.Text := '';
  cbType.ItemIndex := -1;
  cbGruppe.ItemIndex := -1;
  btnSokClick(Self);  
  editSok.SetFocus;
end;

procedure TfrmKundeSok.tsFritekstEnter(Sender: TObject);
begin
  SetSokDefault;
end;

procedure TfrmKundeSok.tsFritekstExit(Sender: TObject);
begin
  SetOKDefault;
end;

procedure TfrmKundeSok.SetSokDefault;
begin
  btnSok.Default := True;
  btnOk.Default := False;
end;

procedure TfrmKundeSok.SetOKDefault;
begin
  btnSok.Default := False;
  btnOK.Default := True;
end;

procedure TfrmKundeSok.GenererSok;
var Str: String;
    AntHit: Integer;
begin
  AntHit := 100;
  adoSok.SQL.Text := blsSQL.Lines.Text;

  if editSok.Text = '' then
    Str := ''
  else begin
    if JclStrings.StrIsDigit(editSok.Text) then
      Str := 'and (KONTAKTNR starting with $Val)'
    else
      Str := 'and ((NAVN containing ''$Val'') or (KONTAKT containing ''$Val''))';
    Str := StringReplace(Str, '$Val', editSok.Text, [rfReplaceAll]);
  end;
  adoSok.SQL.Text := StringReplace(adoSok.SQL.Text, '$Sok', Str, []);

  if cbGruppe.ItemIndex = -1 then
    Str := ''
  else begin
    Str := 'and IDGRUPPE = ' + TNummer(cbGruppe.Items.Objects[cbGruppe.ItemIndex]).AsString;
  end;
  adoSok.SQL.Text := StringReplace(adoSok.SQL.Text, '$Gruppe', Str, []);

  if cbKontaktAktiv.Checked then
    Str := ''
  else
    Str := 'and AKTIV = 1';
  adoSok.SQL.Text := StringReplace(adoSok.SQL.Text, '$Aktiv', Str, []);


  if cbType.ItemIndex = -1 then
    Str := ''
  else begin
    Str := 'and IDKUNDETYPE = ' + TNummer(cbType.Items.Objects[cbType.ItemIndex]).AsString;
  end;
  adoSok.SQL.Text := StringReplace(adoSok.SQL.Text, '$Type', Str, []);
  adoSok.SQL.Text := StringReplace(adoSok.SQL.Text, '$Hit', IntToStr(AntHit), []);

end;

procedure TfrmKundeSok.btnSokClick(Sender: TObject);
begin
  timerKey.Enabled := False;
  GenererSok;
  timerKey.Enabled := True;
end;

procedure TfrmKundeSok.editSokChange(Sender: TObject);
begin
  if not acLive.Checked then
    SetSokDefault;
end;

procedure TfrmKundeSok.cbGruppeChange(Sender: TObject);
begin
  if acLive.Checked then
    btnSokClick(Self)
  else
    SetSokDefault;
end;

procedure TfrmKundeSok.acLiveExecute(Sender: TObject);
begin
  SetUserBool(RegPath, 'KontaktHurtigSok', acLive.Checked);
end;

procedure TfrmKundeSok.editSokKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [VK_UP, VK_DOWN, VK_PRIOR, VK_NEXT] then Exit;
  if acLive.Checked then
    btnSokClick(Self);
end;

procedure TfrmKundeSok.acOKExecute(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmKundeSok.timerKeyTimer(Sender: TObject);
begin
  timerKey.Enabled := False;
  if not cdsSok.Active then Exit;

  Screen.Cursor := crHourGlass;
  cdsSok.Refresh;
  Screen.Cursor := crDefault;

  SetOKDefault;
end;

procedure TfrmKundeSok.acNyExecute(Sender: TObject);
var I: Integer;
begin
  if KontaktSerie = 'KS' then begin
    I := dmFunction.LagNyKunde;
    if editSok.Text = '' then
      editSok.Text := IntToStr(I);
    if I > 0 then
      btnSokClick(Self);
      //timerKeyTimer(Self); //Oppdaterer søket...
  end
  else if KontaktSerie = 'LS' then begin
    I := dmFunction.LagNyLeverandor;
    if editSok.Text = '' then
      editSok.Text := IntToStr(I);
    if I > 0 then
      btnSokClick(Self);
      //timerKeyTimer(Self); //Oppdaterer søket...
  end;
end;

procedure TfrmKundeSok.acRedigerExecute(Sender: TObject);
begin
  if KontaktSerie = 'KS' then begin
    if dmFunction.EndreKunde(cdsSokKONTAKTNR.Value) = mrOK then
      timerKeyTimer(Self); //Oppdaterer søket...
  end
  else if KontaktSerie = 'LS' then begin
    if dmFunction.EndreLeverandor(cdsSokKONTAKTNR.Value) = mrOK then
      timerKeyTimer(Self); //Oppdaterer søket...
  end;
end;

procedure TfrmKundeSok.cbKontaktAktivClick(Sender: TObject);
begin
  SetUserBool(RegPath, 'InkluderInaktiveKontakter' + KontaktSerie, cbKontaktAktiv.Checked);
  if not InLoading then
    btnSokClick(Self);  //Oppdaterer søket.  
end;

procedure TfrmKundeSok.dbgSokDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if gdSelected in State then begin
     dbgSok.Canvas.Brush.Color := clHighLight; //need that highlight for 'focus'
     dbgSok.Canvas.Font.Color := clWhite;
  end
  else if (cdsSokAKTIV.Value = 0) then begin
    dbgSok.Canvas.Brush.Color := $00F0F0F0;
    dbgSok.Canvas.Font.Color := clWindowText;
  end;
  dbgSok.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
