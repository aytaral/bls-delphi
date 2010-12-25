unit faVare;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, Mask, ComCtrls, ToolWin, ExtCtrls, DB,
  blsAlignEdit, ActnList, DBActns, JvExStdCtrls, JvDBCombobox;

type
  TFrmVare = class(TForm)
    BtnOk: TButton;
    BtnAvbryt: TButton;
    Pc: TPageControl;
    tsVare: TTabSheet;
    tsMerknader: TTabSheet;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    TabSheet3: TTabSheet;
    GroupBox2: TGroupBox;
    Vare_nr_LBL: TLabel;
    Vare_navn_LBL: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    DbEditVarenr: TDBEdit;
    DBEdit2: TDBEdit;
    DBLKategori: TDBLookupComboBox;
    DBLLeverandor: TDBLookupComboBox;
    BtnKategori: TButton;
    BtnLeverandor: TButton;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    TbNy: TToolButton;
    TbAngre: TToolButton;
    ToolButton7: TToolButton;
    TbFirst: TToolButton;
    TbPrior: TToolButton;
    TbNext: TToolButton;
    TbLast: TToolButton;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit8: TDBEdit;
    LagerPanel: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label2: TLabel;
    Label11: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label15: TLabel;
    DBEdit9: TDBEdit;
    Label16: TLabel;
    ActionList1: TActionList;
    DsVare: TDataSource;
    GroupBox3: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label20: TLabel;
    Label14: TLabel;
    cbMva: TDBComboBox;
    AcSettInn: TAction;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetCancel1: TDataSetCancel;
    Prisinformasjon: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    EditFortjeneste: TblsAlignEdit;
    EditInk: TblsAlignEdit;
    EditDBP: TblsAlignEdit;
    dbcType: TJvDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnOkClick(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure EditFortjenesteKeyPress(Sender: TObject; var Key: Char);
    procedure EditFortjenesteExit(Sender: TObject);
    procedure DBLKategoriEnter(Sender: TObject);
    procedure DBLKategoriExit(Sender: TObject);
    procedure DBLKategoriKeyPress(Sender: TObject; var Key: Char);
    procedure DBLLeverandorKeyPress(Sender: TObject; var Key: Char);
    procedure BtnKategoriClick(Sender: TObject);
    procedure BtnLeverandorClick(Sender: TObject);
    procedure DsVareDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure AcSettInnExecute(Sender: TObject);
    procedure EditDBPExit(Sender: TObject);
    procedure EditInkExit(Sender: TObject);
    procedure cbMvaExit(Sender: TObject);
    procedure dbcTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    GmlVarenr: String;
    procedure LagreVare;
    procedure OppdaterPriser(Ix: Integer);
    procedure BeregnEditPriser;
  public
    { Public declarations }
    procedure LagNyVare;
  end;

var
  FrmVare: TFrmVare;

implementation

uses DataModul, faLeverandor, faKategori, unitVar;

{$R *.DFM}

procedure TFrmVare.LagNyVare;
begin
 DM.VareDB.Insert;
 DM.VareDBVarenr.Value := FloatToStrf(DM.FirmaDBVarenr.Value, ffFixed, 10, 0);
 DM.FirmaDB.Edit;
 DM.FirmaDBVarenr.Value := DM.FirmaDBVarenr.Value + 1;
 DM.FirmaDB.Post;
end;

procedure TFrmVare.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 If ModalResult <> mrOK then
   begin
    DM.VareDB.Cancel;
    DM.LagerDB.Cancel;
    Dm.LagerDB.MasterSource := Dm.VareDS;
    Dm.LagerDB.MasterFields := 'Varenr';
   end;

 Dm.VareDB.Refresh;
 Action := caFree;
end;

procedure TFrmVare.LagreVare;
begin
Try
 If (DM.VareDB.State = dsEdit) or (DM.VareDB.State = dsInsert) then
  DM.VareDB.Post;
 If (DM.LagerDB.State = dsEdit) or (DM.LagerDB.State = dsInsert) then
  DM.LagerDB.Post;
 Except
   ModalResult := mrNone;
 End;
end;

procedure TFrmVare.BtnOkClick(Sender: TObject);
begin
 LagreVare;
end;

procedure TFrmVare.DBEdit4Exit(Sender: TObject);
begin
  OppdaterPriser(0);
end;

procedure TFrmVare.DBEdit5Exit(Sender: TObject);
begin
 OppdaterPriser(3);
end;

procedure TFrmVare.EditFortjenesteKeyPress(Sender: TObject; var Key: Char);
begin
 If Not (Key in['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', #8, #13])
 then Key := #0;
end;

procedure TFrmVare.EditFortjenesteExit(Sender: TObject);
begin
  OppdaterPriser(2);
end;

procedure TFrmVare.DBLKategoriEnter(Sender: TObject);
begin
  BtnOk.Default := False;
end;

procedure TFrmVare.DBLKategoriExit(Sender: TObject);
begin
  BtnOk.Default := True;
end;

procedure TFrmVare.DBLKategoriKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then DblKategori.DropDown;
end;

procedure TFrmVare.DBLLeverandorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then DblLeverandor.DropDown;
end;

procedure TFrmVare.BtnKategoriClick(Sender: TObject);
begin
  Application.CreateForm(TFrmKategori, FrmKategori);
  If FrmKategori.ShowModal = mrOK then
  begin
    DM.VareDB.Edit;
    DM.VareDBIdKategori.Value := DM.KategoriDBIdKategori.Value;
  end;
end;

procedure TFrmVare.BtnLeverandorClick(Sender: TObject);
begin
   Application.CreateForm(TFrmLeverandor, FrmLeverandor);
   If FrmLeverandor.ShowModal = mrOk then
   begin
     DM.VareDB.Edit;
     DM.VareDBIdLeverandor.Value := DM.LeverandorDBIdLeverandor.Value;
   end;
end;

procedure TFrmVare.DsVareDataChange(Sender: TObject; Field: TField);
begin
  if GmlVarenr <> Dm.VareDBVarenr.Value then
    BeregnEditPriser;

  if not Dm.VareDBMerknader.IsNull then
    tsMerknader.ImageIndex := 0
  else
    tsMerknader.ImageIndex := -1;

  GmlVarenr := Dm.VareDBVarenr.Value;
end;

procedure TFrmVare.FormCreate(Sender: TObject);
var I: Integer;
begin
  Pc.ActivePage := tsVare;

  for I := 0 to AntVareTyper - 1 do begin
    dbcType.Items.Add(VareType[I]);
    dbcType.Values.Add(IntToStr(I));
  end;

  BeregnEditPriser;

  if Dm.MvaListe.Mva.Count > 0 then begin
    cbMva.Items.Clear;
    cbMva.Items.Assign(Dm.MvaListe.Mva);
    cbMva.ItemIndex := cbMva.Items.IndexOf(FormatFloat('#0.00', Dm.VareDBMvaKlasse.Value));
  end;
end;

procedure TFrmVare.AcSettInnExecute(Sender: TObject);
begin
 LagNyVare;
 Pc.ActivePageIndex := 0;
 DbEditVarenr.SetFocus;
end;

procedure TFrmVare.BeregnEditPriser;
begin
  if (EditDBP.Focused) or (EditFortjeneste.Focused) or
    (EditInk.Focused) then Exit;

  EditInk.AsFloat := Dm.VareDBPrisInk.Value;
  EditDBP.AsFloat := Dm.VareDBAvanseP.Value;
  EditFortjeneste.AsFloat := Dm.VareDBAvanse.Value;
end;

procedure TFrmVare.OppdaterPriser(Ix: Integer);
begin
  Dm.VareDB.Edit;
  case Ix of
    0: begin // Innpris
      if DM.VareDBInnpris.IsNull then
        Dm.VareDBInnPris.Value := 0;

      if Dm.VareDBPris.Value = 0 then
        Dm.VareDBPris.Value := Dm.VareDBInnPris.Value + EditFortjeneste.AsFloat;
//      EditFortjeneste.Text := FormatFloat('#,##0.00', Dm.VareDBPris.Value - Dm.VareDBInnPris.Value);
      EditFortjeneste.AsFloat := Dm.VareDBPris.Value - Dm.VareDBInnPris.Value;
      if Dm.VareDBInnpris.Value > 0 then
        EditDBP.AsFloat := (EditFortjeneste.AsFloat / Dm.VareDBInnPris.Value) * 100
      else
        EditDBP.AsFloat := 0;
    end;

    1: begin  // Avanse i %
      if ((EditDBP.Text = '') or (Dm.VareDBInnpris.Value = 0)) then
        EditDBP.AsFloat := 0;

      Dm.VareDBPris.Value := Dm.VareDBInnpris.Value + ((Dm.VareDBInnpris.Value * EditDBP.AsFloat) / 100);
      EditFortjeneste.AsFloat := Dm.VareDBPris.Value - Dm.VareDBInnPris.Value;
    end;

    2: begin // Avanse
      if EditFortjeneste.Text = '' then
        EditFortjeneste.AsFloat := 0;

      Dm.VareDBPris.Value := Dm.VareDBInnpris.Value + EditFortjeneste.AsFloat;
      if Dm.VareDBInnpris.Value > 0 then
        EditDBP.AsFloat := (EditFortjeneste.AsFloat / Dm.VareDBInnPris.Value) * 100
      else
        EditDBP.AsFloat := 0;
    end;

    3: begin // Pris eks
      if DM.VareDBPris.IsNull then
        DM.VareDBPris.Value := 0;
      EditFortjeneste.AsFloat := Dm.VareDBPris.Value - Dm.VareDBInnPris.Value;
      if Dm.VareDBInnpris.Value > 0 then
        EditDBP.AsFloat := (EditFortjeneste.AsFloat / Dm.VareDBInnPris.Value) * 100
      else
        EditDBP.AsFloat := 0;
    end;

    4: begin // Pris Ink
      if EditInk.Text = '' then
        EditInk.AsFloat := 0;
      Dm.VareDBPris.Value := EditInk.AsFloat / (1 + (Dm.VareDBMvaKlasse.Value / 100));
      EditFortjeneste.AsFloat := Dm.VareDBPris.Value - Dm.VareDBInnPris.Value;
      if Dm.VareDBInnpris.Value > 0 then
        EditDBP.AsFloat := (EditFortjeneste.AsFloat / Dm.VareDBInnPris.Value) * 100
      else
        EditDBP.AsFloat := 0;
    end;
  end;

  if Ix <> 4 then  //Hvis vi setter andre verdier enn PrisInk skal PrisInk oppdateres...
    EditInk.AsFloat := Dm.VareDBPris.Value + ((Dm.VareDBPris.Value * Dm.VareDBMvaKlasse.Value) / 100);
end;

procedure TFrmVare.EditDBPExit(Sender: TObject);
begin
  OppdaterPriser(1);
end;

procedure TFrmVare.EditInkExit(Sender: TObject);
begin
  OppdaterPriser(4);
end;

procedure TFrmVare.cbMvaExit(Sender: TObject);
begin
  OppdaterPriser(-1);
end;

procedure TFrmVare.dbcTypeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DELETE then begin
    Dm.VareDB.Edit;
    Dm.VareDBVareType.Clear;
  end;
end;

end.
