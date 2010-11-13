unit rsProduktSok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, TB2Item, TBX, TB2Dock,
  TB2Toolbar, ExtCtrls, ActnList, ImgList, blsList, DB,
  DBClient, Provider, ADODB, JvExDBGrids, JvDBGrid;

type
  TfrmProduktSok = class(TForm)
    ImageList: TImageList;
    ActionList: TActionList;
    acRediger: TAction;
    acLive: TAction;
    acOK: TAction;
    Panel2: TPanel;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem2: TTBXItem;
    TBXItem1: TTBXItem;
    Panel3: TPanel;
    dbgSok: TJvDBGrid;
    Pc: TPageControl;
    tsFritekst: TTabSheet;
    lblTxt: TLabel;
    lblGruppe: TLabel;
    lblType: TLabel;
    editSok: TEdit;
    btnNull: TButton;
    btnSok: TButton;
    cbKategori: TComboBox;
    cbType: TComboBox;
    Panel5: TPanel;
    Panel1: TPanel;
    btnOK: TButton;
    btnLukk: TButton;
    adoSok: TADOQuery;
    dspSok: TDataSetProvider;
    cdsSok: TClientDataSet;
    dsSok: TDataSource;
    blsSQL: TblsList;
    acIndeks: TAction;
    TBXItem3: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    acNy: TAction;
    acPreview: TAction;
    acMail: TAction;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    TBXItem6: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    lblIndeks: TLabel;
    adoKat: TADODataSet;
    dspKat: TDataSetProvider;
    cdsKat: TClientDataSet;
    cdsSokPRODUKTNR: TStringField;
    cdsSokNAVN: TStringField;
    cdsSokENHET: TStringField;
    cdsSokINNPRIS: TFloatField;
    cdsSokPRIS: TFloatField;
    cdsSokKATEGORINR: TIntegerField;
    cdsSokKATEGORI: TStringField;
    cdsKatKATNR: TIntegerField;
    cdsKatKATEGORINAVN: TStringField;
    cdsKatKATTRE: TStringField;
    adoProdType: TADODataSet;
    adoProdTypeIDPRODTYPE: TIntegerField;
    adoProdTypePRODTYPE: TStringField;
    TBXSeparatorItem3: TTBXSeparatorItem;
    btnKat: TButton;
    cbLev: TComboBox;
    Label1: TLabel;
    adoLev: TADODataSet;
    dspLev: TDataSetProvider;
    cdsLev: TClientDataSet;
    cdsLevKONTAKTNR: TIntegerField;
    cdsLevNAVN: TStringField;
    timerKey: TTimer;
    cdsSokLEVERANDORNR: TIntegerField;
    cdsSokLEVERANDOR: TStringField;
    acPDF: TAction;
    TBXItem7: TTBXItem;
    cbAktiv: TCheckBox;
    cdsSokAKTIV: TSmallintField;
    edProdnr: TEdit;
    Label2: TLabel;
    procedure acIndeksExecute(Sender: TObject);
    procedure acLiveExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acOKExecute(Sender: TObject);
    procedure editSokKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbKategoriChange(Sender: TObject);
    procedure editSokChange(Sender: TObject);
    procedure btnSokClick(Sender: TObject);
    procedure tsFritekstExit(Sender: TObject);
    procedure tsFritekstEnter(Sender: TObject);
    procedure btnNullClick(Sender: TObject);
    procedure editSokKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbKategoriKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure btnKatClick(Sender: TObject);
    procedure cbLevKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure timerKeyTimer(Sender: TObject);
    procedure acPDFExecute(Sender: TObject);
    procedure acMailExecute(Sender: TObject);
    procedure acPreviewExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgSokDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure acRedigerExecute(Sender: TObject);
    procedure acNyExecute(Sender: TObject);
  private
    procedure SetOKDefault;
    procedure SetSokDefault;
    procedure LastKategori;
    procedure LastProdType;
    procedure LastLeverandor;
    procedure GenererSok;
    function FinnKategorinrListe(Knr: Integer): String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProduktSok: TfrmProduktSok;

implementation

uses rsData, blsRegistry, rsVelgKategori, rsFunction, rsPrint;

{$R *.dfm}

procedure TfrmProduktSok.acIndeksExecute(Sender: TObject);
begin
  SetUserBool(RegPath, 'ProdIndeksSok', acIndeks.Checked);
  lblIndeks.Visible := acIndeks.Checked;
  lblTxt.Visible := not lblIndeks.Visible;
end;

procedure TfrmProduktSok.acLiveExecute(Sender: TObject);
begin
  SetUserBool(RegPath, 'ProdHurtigSok', acLive.Checked);
end;

procedure TfrmProduktSok.LastKategori;
begin
  cbKategori.Clear;
  cdsKat.First;
  while not cdsKat.Eof do begin
    cbKategori.AddItem(cdsKATKATTRE.Value, TNummer.Create(cdsKATKATNR.Value));
    cdsKat.Next;
  end;
end;

procedure TfrmProduktSok.LastLeverandor;
begin
  cbLev.Clear;
  cdsLev.First;
  while not cdsLev.Eof do begin
    cbLev.AddItem(cdsLevNAVN.Value, TNummer.Create(cdsLevKONTAKTNR.Value));
    cdsLev.Next;
  end;
end;

procedure TfrmProduktSok.LastProdType;
begin
  cbType.Clear;
  adoProdType.Open;
  while not adoProdType.Eof do begin
    cbType.AddItem(adoProdTypePRODTYPE.Value, TNummer.Create(adoProdTypeIDPRODTYPE.Value));
    adoProdType.Next;
  end;
  adoProdType.Close;
end;

procedure TfrmProduktSok.FormCreate(Sender: TObject);
begin
  acLive.Checked := GetUserBool(RegPath, 'ProdHurtigSok', True);
  acIndeks.Checked := GetUserBool(RegPath, 'ProdIndeksSok', True);
  lblIndeks.Visible := acIndeks.Checked;
  lblTxt.Visible := not lblIndeks.Visible;  

  LastProdType;
  //Åpner kategori-tabellen her for å bruk som lookup...
  adoKat.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  cdsKat.Open;
  LastKategori;
  //Åpner lev-tabellen her for å bruk som lookup...
  adoLev.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  cdsLev.Open;
  LastLeverandor;

  Dm.adoHovedKat.Open;
  Dm.cdsUnderKat.Open;
end;

procedure TfrmProduktSok.SetSokDefault;
begin
  btnSok.Default := True;
  btnOk.Default := False;
end;

procedure TfrmProduktSok.SetOKDefault;
begin
  btnSok.Default := False;
  btnOK.Default := True;
end;

procedure TfrmProduktSok.acOKExecute(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmProduktSok.editSokKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [VK_UP, VK_DOWN, VK_PRIOR, VK_NEXT] then Exit;
  if acLive.Checked then
    btnSokClick(Self);
end;

procedure TfrmProduktSok.cbKategoriChange(Sender: TObject);
begin
  if acLive.Checked then
    btnSokClick(Self)
  else
    SetSokDefault;
end;

procedure TfrmProduktSok.editSokChange(Sender: TObject);
begin
  if not acLive.Checked then
    SetSokDefault;
end;

function TfrmProduktSok.FinnKategorinrListe(Knr: Integer): String;
begin
  Result := '';

  if Dm.adoHovedKat.Locate('KATEGORINR', Knr, []) then begin
    Dm.cdsUnderKat.SetRange([Dm.adoHovedKatKATEGORINR.Value], [Dm.adoHovedKatKATEGORINR.Value]);
    if Dm.cdsUnderKat.RecordCount = 0 then begin
      Result := IntToStr(Knr);
      Dm.cdsUnderKat.CancelRange;
      Exit;
    end;

    Result := Dm.cdsUnderKatKATEGORINR.AsString;
    Dm.cdsUnderKat.Next;
    while not Dm.cdsUnderKat.Eof do begin
      Result := Result + ',';
      Result := Result + Dm.cdsUnderKatKATEGORINR.AsString;
      Dm.cdsUnderKat.Next;
    end;
    Dm.cdsUnderKat.CancelRange;
  end
  else
    Result := IntToStr(Knr);
end;

procedure TfrmProduktSok.GenererSok;
var AntHit: Integer;
    STxt, KTxt, PTxt, LTxt: String;
    SQL: TStringList;
begin
  AntHit := 500;

  SQL := TStringList.Create;
  try

    SQL.Text := blsSQL.Lines.Text;

    STxt := '';
    if edProdnr.Text <> '' then begin
      STxt := 'and ((upper(PRODUKTNR) starting with ' + QuotedStr(AnsiUpperCase(edProdnr.Text)) + ')' +
              ' or (upper(ORGPRODNR) starting with ' + QuotedStr(AnsiUpperCase(edProdnr.Text)) + ')' +
              ' or (upper(LPRODNR) starting with ' + QuotedStr(AnsiUpperCase(edProdnr.Text)) + '))' + #13#10;
    end;

    //Generer SQL for søketeksten
    if editSok.Text <> '' then begin
      if acIndeks.Checked then
        STxt := STxt + 'and (upper(NAVN) starting with ' + QuotedStr(AnsiUpperCase(editSok.Text)) + ')'
      else
        STxt := STxt + 'and (NAVN containing ' + QuotedStr(editSok.Text) + ')';
    end;

    //Generer SQL for kategori
    if cbKategori.ItemIndex = -1 then
      KTxt := ''
    else begin
      KTxt := FinnKategorinrListe(TNummer(cbKategori.Items.Objects[cbKategori.ItemIndex]).Nr);
      if Pos(',', KTxt) > 0 then
        KTxt := 'and KATEGORINR IN (' + KTxt + ')'
      else
        KTxt := 'and KATEGORINR = ' + KTxt;
    end;

    //Generer SQL for produkttype
    if cbType.ItemIndex = -1 then
      PTxt := ''
    else begin
      PTxt := 'and P.IDPRODTYPE = ' + TNummer(cbType.Items.Objects[cbType.ItemIndex]).AsString;
    end;

    //Generer SQL for leverandør
    if cbLev.ItemIndex = -1 then
      LTxt := ''
    else begin
      LTxt := 'and LEVERANDORNR = ' + TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).AsString;
    end;

    SQL.Text := StringReplace(SQL.Text, '$Hit', IntToStr(AntHit), []);
    SQL.Text := StringReplace(SQL.Text, '$IdKlient', IntToStr(Dm.g_KlientID), []);

    if cbAktiv.Checked then
      SQL.Delete(SQL.IndexOf('$Aktiv'))
    else
      SQL[SQL.IndexOf('$Aktiv')] := 'and AKTIV = 1';

    if STxt <> '' then
      SQL[SQL.IndexOf('$Sok')] := STxt
    else
      SQL.Delete(SQL.IndexOf('$Sok'));

    if KTxt <> '' then
      SQL[SQL.IndexOf('$Kat')] := KTxt
    else
      SQL.Delete(SQL.IndexOf('$Kat'));

    if PTxt <> '' then
      SQL[SQL.IndexOf('$Type')] := PTxt
    else
      SQL.Delete(SQL.IndexOf('$Type'));

    if LTxt <> '' then
      SQL[SQL.IndexOf('$Lev')] := LTxt
    else
      SQL.Delete(SQL.IndexOf('$Lev'));

    //ShowMessage(SQL.Text);
    if adoSok.SQL.Text <> SQL.Text then
      adoSok.SQL.Text := SQL.Text;

  finally
    SQL.Free;
  end;
end;

procedure TfrmProduktSok.btnSokClick(Sender: TObject);
begin
  timerKey.Enabled := False;
  GenererSok;
  timerKey.Enabled := True;
end;

procedure TfrmProduktSok.tsFritekstExit(Sender: TObject);
begin
  SetOKDefault;
end;

procedure TfrmProduktSok.tsFritekstEnter(Sender: TObject);
begin
  SetSokDefault;
end;

procedure TfrmProduktSok.btnNullClick(Sender: TObject);
begin
  editSok.Text := '';
  cbType.ItemIndex := -1;
  cbKategori.ItemIndex := -1;
  cbLev.ItemIndex := -1;
  btnSokClick(Self);
  editSok.SetFocus;
end;

procedure TfrmProduktSok.editSokKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmProduktSok.cbKategoriKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_BACK) or (Key = VK_DELETE) then begin
    cbKategori.ItemIndex := -1;
    cbKategoriChange(Self);
  end;
end;

procedure TfrmProduktSok.cbTypeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_BACK) or (Key = VK_DELETE) then begin
    cbType.ItemIndex := -1;
    cbKategoriChange(Self);
  end;
end;

procedure TfrmProduktSok.FormDestroy(Sender: TObject);
var I: Integer;
begin
  cdsKat.Close;
  cdsSok.Close;

  Dm.cdsUnderKat.Close;
  Dm.adoHovedKat.Close;

  for I := 0 to cbType.Items.Count -1 do
    cbType.Items.Objects[I].Free;
  for I := 0 to cbKategori.Items.Count -1 do
    cbKategori.Items.Objects[I].Free;
  for I := 0 to cbLev.Items.Count -1 do
    cbLev.Items.Objects[I].Free;
end;

procedure TfrmProduktSok.btnKatClick(Sender: TObject);
var Nr, I: Integer;
begin
  frmVelgKat := TfrmVelgKat.Create(Application);
  Dm.LastProdKategorier(frmVelgKat.tvKat, False);
  if frmVelgKat.ShowModal = mrOK then begin
    Nr := TNummer(frmVelgKat.tvKat.Selected.Data).Nr;
    for I := 0 to cbKategori.Items.Count do
      if Nr = TNummer(cbKategori.Items.Objects[I]).Nr then begin
        cbKategori.ItemIndex := I;
        Break;
      end;
    cbKategoriChange(Self);
  end;
  Dm.FreeProdKategorier(frmVelgKat.tvKat);
  frmVelgKat.Release;
end;

procedure TfrmProduktSok.cbLevKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_BACK) or (Key = VK_DELETE) then begin
    cbLev.ItemIndex := -1;
    cbKategoriChange(Self);
  end;
end;

procedure TfrmProduktSok.timerKeyTimer(Sender: TObject);
begin
  timerKey.Enabled := False;
  if not cdsSok.Active then Exit;

  Screen.Cursor := crHourGlass;
  cdsSok.Refresh;
  Screen.Cursor := crDefault;

  SetOKDefault;
end;

procedure TfrmProduktSok.acPDFExecute(Sender: TObject);
begin
  dmFunction.SaveProduktArk(cdsSokPRODUKTNR.Value);
end;

procedure TfrmProduktSok.acMailExecute(Sender: TObject);
begin
  dmFunction.SendProduktMail(cdsSokPRODUKTNR.Value, nil);
end;

procedure TfrmProduktSok.acNyExecute(Sender: TObject);
var
  Prodnr: String;
begin
  Prodnr := dmFunction.LagNyttProdukt;
  if Prodnr <> '' then begin
    editSok.Text := Prodnr;
    btnSokClick(Self);
  end;
end;

procedure TfrmProduktSok.acPreviewExecute(Sender: TObject);
begin
  frmPrint := TfrmPrint.Create(Application);
  frmPrint.VisProduktArk(cdsSokPRODUKTNR.Value);
  frmPrint.Release;
end;

procedure TfrmProduktSok.acRedigerExecute(Sender: TObject);
begin
  if dmFunction.EndreProdukt(cdsSokPRODUKTNR.Value) = mrOK then
    btnSokClick(Self); //Oppdaterer søket...
end;

procedure TfrmProduktSok.FormShow(Sender: TObject);
begin
  //adoSok.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  GenererSok;
  cdsSok.Open;
end;

procedure TfrmProduktSok.dbgSokDrawColumnCell(Sender: TObject;
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
