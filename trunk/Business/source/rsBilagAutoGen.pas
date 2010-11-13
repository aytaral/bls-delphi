unit rsBilagAutoGen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls, ExtCtrls,
  blsBorderPanel, ComCtrls, DB, DBClient, Provider, ADODB, DBCtrls, Menus,
  TB2Item, TBX, ActnList;

type
  TfrmBilagAutoGen = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnGenerer: TButton;
    btnAvbryt: TButton;
    Pc: TPageControl;
    tsFaktura: TTabSheet;
    tsInnbetaling: TTabSheet;
    blsBorderPanel1: TblsBorderPanel;
    dbgFaktura: TJvDBGrid;
    blsBorderPanel2: TblsBorderPanel;
    dbgInnbetaling: TJvDBGrid;
    adoFaktura: TADODataSet;
    dspFaktura: TDataSetProvider;
    cdsFaktura: TClientDataSet;
    dsFaktura: TDataSource;
    adoFakturaFAKTURANR: TIntegerField;
    adoFakturaFAKTURADATO: TDateField;
    adoFakturaKUNDENR: TIntegerField;
    adoFakturaNAVN: TStringField;
    adoFakturaSUMTOT: TFloatField;
    cdsFakturaFAKTURANR: TIntegerField;
    cdsFakturaFAKTURADATO: TDateField;
    cdsFakturaKUNDENR: TIntegerField;
    cdsFakturaNAVN: TStringField;
    cdsFakturaSUMTOT: TFloatField;
    Label1: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Image1: TImage;
    dtpStart: TDateTimePicker;
    dtpSlutt: TDateTimePicker;
    popFaktura: TTBXPopupMenu;
    Label3: TLabel;
    popInnbetaling: TTBXPopupMenu;
    adoFakturaFORFALLDATO: TDateField;
    cdsFakturaFORFALLDATO: TDateField;
    btnVelgAlle: TButton;
    btnFjernMerking: TButton;
    adoInnbetaling: TADODataSet;
    dspInnbetaling: TDataSetProvider;
    cdsInnbetaling: TClientDataSet;
    dsInnbetaling: TDataSource;
    adoInnbetalingDATO: TDateField;
    adoInnbetalingBELOP: TFloatField;
    adoInnbetalingFAKTURANR: TIntegerField;
    adoInnbetalingFORFALLDATO: TDateField;
    adoInnbetalingKUNDENR: TIntegerField;
    adoInnbetalingNAVN: TStringField;
    adoInnbetalingSUMTOT: TFloatField;
    cdsInnbetalingDATO: TDateField;
    cdsInnbetalingBELOP: TFloatField;
    cdsInnbetalingFAKTURANR: TIntegerField;
    cdsInnbetalingFORFALLDATO: TDateField;
    cdsInnbetalingKUNDENR: TIntegerField;
    cdsInnbetalingNAVN: TStringField;
    cdsInnbetalingSUMTOT: TFloatField;
    cbTilhorende: TCheckBox;
    ActionList: TActionList;
    acKobleFakturaBilag: TAction;
    acKobleInnbetalingBilag: TAction;
    adoFakturaIDBILAG: TIntegerField;
    cdsFakturaIDBILAG: TIntegerField;
    adoInnbetalingIDBILAG: TIntegerField;
    cdsInnbetalingIDBILAG: TIntegerField;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    adoFakturaIDFAKTURA: TIntegerField;
    adoInnbetalingIDINNBETALING: TIntegerField;
    cdsFakturaIDFAKTURA: TIntegerField;
    cdsInnbetalingIDINNBETALING: TIntegerField;
    adoInnbetalingIDFAKTURA: TIntegerField;
    cdsInnbetalingIDFAKTURA: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dtpStartChange(Sender: TObject);
    procedure btnVelgAlleClick(Sender: TObject);
    procedure btnFjernMerkingClick(Sender: TObject);
    procedure dbgInnbetalingDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbgFakturaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PcChange(Sender: TObject);
    procedure acKobleFakturaBilagExecute(Sender: TObject);
    procedure acKobleInnbetalingBilagExecute(Sender: TObject);
    procedure btnGenererClick(Sender: TObject);
  private
    procedure OppdaterFakturaListe;
    procedure OppdaterInnbetalingListe;
    procedure SjekkData;
    procedure RunFaktura;
    procedure RunInnbetaling;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBilagAutoGen: TfrmBilagAutoGen;

implementation

uses rsData, DateUtils, rsBilagSok, blsDialogs, rsFunction;

{$R *.dfm}

procedure TfrmBilagAutoGen.OppdaterFakturaListe;
begin
  adoFaktura.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoFaktura.Parameters.ParamValues['Start'] := dtpStart.Date;
  adoFaktura.Parameters.ParamValues['Slutt'] := dtpSlutt.Date;

  if not cdsFaktura.Active then
    cdsFaktura.Open
  else
    cdsFaktura.Refresh;
  SjekkData;
end;

procedure TfrmBilagAutoGen.OppdaterInnbetalingListe;
begin
  adoInnbetaling.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoInnbetaling.Parameters.ParamValues['Start'] := dtpStart.Date;
  adoInnbetaling.Parameters.ParamValues['Slutt'] := dtpSlutt.Date;

  if not cdsInnbetaling.Active then
    cdsInnbetaling.Open
  else
    cdsInnbetaling.Refresh;
  SjekkData;
end;

procedure TfrmBilagAutoGen.FormCreate(Sender: TObject);
var
  Aar, Termin: Integer;
begin
  //Setter dato intervall til perioden etter siste lukket termin
  Dm.HentSisteLukketPeriode(Aar, Termin);
  Inc(Termin);
  dtpSlutt.Date := DateUtils.EndOfAMonth(Aar, Termin * 2);
  dtpStart.Date := DateUtils.StartOfAMonth(Aar, (Termin * 2) -1);

  Pc.ActivePageIndex := 0;
  OppdaterFakturaListe;
  OppdaterInnbetalingListe;
end;

procedure TfrmBilagAutoGen.SjekkData;
begin
  if Pc.ActivePage = tsFaktura then
      btnGenerer.Enabled := cdsFaktura.RecordCount > 0
  else if Pc.ActivePage = tsInnbetaling then
      btnGenerer.Enabled := cdsInnbetaling.RecordCount > 0;
end;

procedure TfrmBilagAutoGen.FormDestroy(Sender: TObject);
begin
  cdsFaktura.Close;
  cdsInnbetaling.Close;
end;

procedure TfrmBilagAutoGen.dtpStartChange(Sender: TObject);
begin
  if Pc.ActivePage = tsFaktura then
    OppdaterFakturaListe
  else if Pc.ActivePage = tsInnbetaling then
    OppdaterInnbetalingListe;
end;

procedure TfrmBilagAutoGen.btnVelgAlleClick(Sender: TObject);
begin
  if Pc.ActivePage = tsFaktura then
    dbgFaktura.SelectAll
  else if Pc.ActivePage = tsInnbetaling then
    dbgInnbetaling.SelectAll;
end;

procedure TfrmBilagAutoGen.btnFjernMerkingClick(Sender: TObject);
begin
  if Pc.ActivePage = tsFaktura then
    dbgFaktura.UnselectAll
  else if Pc.ActivePage = tsInnbetaling then
    dbgInnbetaling.UnselectAll;
end;

procedure TfrmBilagAutoGen.dbgInnbetalingDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if gdSelected in State then begin
     dbgInnbetaling.Canvas.Brush.Color := clHighLight; //need that highlight for 'focus'
     dbgInnbetaling.Canvas.Font.Color := clWhite;
  end;

  if ((cdsInnbetalingBELOP.Value <> cdsInnbetalingSUMTOT.Value) and (DataCol = 1)) then begin
    dbgInnbetaling.Canvas.Font.Color := clRed;
  end;
  
  dbgInnbetaling.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmBilagAutoGen.dbgFakturaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if gdSelected in State then begin
     dbgFaktura.Canvas.Brush.Color := clHighLight; //need that highlight for 'focus'
     dbgFaktura.Canvas.Font.Color := clWhite;
  end;
  dbgFaktura.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmBilagAutoGen.PcChange(Sender: TObject);
begin
  cbTilhorende.Visible := Pc.ActivePage = tsFaktura;
  SjekkData;

  case Pc.ActivePageIndex of 
    0: OppdaterFakturaListe;
    1: OppdaterInnbetalingListe;
  end;
end;

procedure TfrmBilagAutoGen.acKobleFakturaBilagExecute(Sender: TObject);
begin
  frmBilagSok := TfrmBilagSok.Create(Application);
  if frmBilagsok.ShowModal = mrOk then begin
    cdsFaktura.Edit;
    cdsFakturaIDBILAG.Value := frmBilagSok.cdsSokIDBILAG.Value;
    cdsFaktura.Post;
    cdsFaktura.ApplyUpdates(-1);
  end;
  frmBilagSok.Release;
  OppdaterFakturaListe;
end;

procedure TfrmBilagAutoGen.acKobleInnbetalingBilagExecute(Sender: TObject);
begin
  frmBilagSok := TfrmBilagSok.Create(Application);
  if frmBilagsok.ShowModal = mrOk then begin
    cdsInnbetaling.Edit;
    cdsInnbetalingIDBILAG.Value := frmBilagSok.cdsSokIDBILAG.Value;
    cdsInnbetaling.Post;
    cdsInnbetaling.ApplyUpdates(-1);
  end;
  frmBilagSok.Release;
  OppdaterInnbetalingListe;
end;

procedure TfrmBilagAutoGen.RunFaktura;
var
  I: Integer;
begin
  if ConfirmDialog('Bekreft', 'Er du sikker på at du vil generere bilag for merkede fakturaer?') then begin
    Screen.Cursor := crHourGlass;

    Dm.adoKlient.Open;
    if Dm.adoKlientKONTOSALG.IsNull then begin
      AlertDialog('Systemkonto', 'Det er ikke spesifisert noen systemkonto for salg.' +
          #13#10 + 'Dette kan settes under firmainfo for aktivt firma.');
      Dm.adoKlient.Close;
      Exit;
    end;
    if cbTilhorende.Checked then begin
      if (Dm.adoKlientKONTOKONTANT.IsNull) or (Dm.adoKlientKONTOBANK.IsNull) then begin
        AlertDialog('Systemkonto', 'Det er ikke spesifisert noen systemkonto for bankinnskudd / kontanter.' +
            #13#10 + 'Dette kan settes under firmainfo for aktivt firma.');
        Dm.adoKlient.Close;
        Exit;
      end;
    end;

    Dm.cdsFaktura.Open;
    Dm.cdsInnbetaling.Open;

    if dbgFaktura.SelCount > 1 then begin
      for I := 0 to dbgFaktura.SelCount - 1 do begin
        dbgFaktura.GotoSelection(I);
        if Dm.cdsFaktura.Locate('IDFAKTURA', cdsFakturaIDFAKTURA.Value, []) then begin
          dmFunction.GenererFakturaBilag;
          if cbTilhorende.Checked then
            dmFunction.GenererInnbetalingBilag;
        end;
      end;
    end
    else begin
      if Dm.cdsFaktura.Locate('IDFAKTURA', cdsFakturaIDFAKTURA.Value, []) then begin
        dmFunction.GenererFakturaBilag;
        if cbTilhorende.Checked then
          dmFunction.GenererInnbetalingBilag;
      end;
    end;

    Dm.cdsInnbetaling.Close;
    Dm.cdsFaktura.Close;
    Dm.adoKlient.Close;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmBilagAutoGen.RunInnbetaling;
var
  I: Integer;
begin
  if ConfirmDialog('Bekreft', 'Er du sikker på at du vil generere bilag for merkede innbetalinger?') then begin
    Screen.Cursor := crHourGlass;

    Dm.adoKlient.Open;
    if (Dm.adoKlientKONTOKONTANT.IsNull) or (Dm.adoKlientKONTOBANK.IsNull) then begin
      AlertDialog('Systemkonto', 'Det er ikke spesifisert noen systemkonto for bankinnskudd / kontanter.' +
          #13#10 + 'Dette kan settes under firmainfo for aktivt firma.');
      Dm.adoKlient.Close;
      Exit;
    end;

    Dm.cdsFaktura.Open;
    Dm.cdsInnbetaling.Open;

    if dbgInnbetaling.SelCount > 1 then begin
      for I := 0 to dbgInnbetaling.SelCount - 1 do begin
        dbgInnbetaling.GotoSelection(I);
        if Dm.cdsFaktura.Locate('IDFAKTURA', cdsInnbetalingIDFAKTURA.Value, []) then
          dmFunction.GenererInnbetalingBilag;
      end;
    end
    else begin
      if Dm.cdsFaktura.Locate('IDFAKTURA', cdsInnbetalingIDFAKTURA.Value, []) then
        dmFunction.GenererInnbetalingBilag;
    end;

    Dm.cdsInnbetaling.Close;
    Dm.cdsFaktura.Close;
    Dm.adoKlient.Close;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmBilagAutoGen.btnGenererClick(Sender: TObject);
begin
  cdsFaktura.DisableControls;
  cdsInnbetaling.DisableControls;

  if Pc.ActivePage = tsFaktura then begin
    RunFaktura;
    OppdaterFakturaListe;
    Dm.cdsBilag.Refresh;
  end
  else if Pc.ActivePage = tsInnbetaling then begin
    RunInnbetaling;
    OppdaterInnbetalingListe;
    Dm.cdsBilag.Refresh;
  end;

  cdsInnbetaling.EnableControls;
  cdsFaktura.EnableControls;
end;

end.
