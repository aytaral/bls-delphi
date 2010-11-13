unit rsLeverandor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Mask, ActnList, TB2Dock,
  TB2Toolbar, TBX, TB2Item, DBActns, DB, DBClient, Provider, ADODB,
  DBClientActns, Grids, DBGrids, JvExDBGrids, JvDBGrid;

type
  TfrmLeverandor = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Pc: TPageControl;
    tsKunde: TTabSheet;
    tsMerknader: TTabSheet;
    tsKontakt: TTabSheet;
    tsOkonomi: TTabSheet;
    btnAvbryt: TButton;
    btnOK: TButton;
    GroupBox1: TGroupBox;
    dbeNavn: TDBEdit;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    Panel3: TPanel;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    ActionList1: TActionList;
    acFirst: TDataSetFirst;
    acPrior: TDataSetPrior;
    acNext: TDataSetNext;
    acLast: TDataSetLast;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXItem4: TTBXItem;
    adoLev: TADODataSet;
    dspLev: TDataSetProvider;
    cdsLev: TClientDataSet;
    dsLev: TDataSource;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    GroupBox5: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Label9: TLabel;
    Label11: TLabel;
    dbeOrgnr: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    cdsLevIDKLIENT: TIntegerField;
    cdsLevKONTAKTNR: TIntegerField;
    cdsLevIDSERIE: TStringField;
    cdsLevNAVN: TStringField;
    cdsLevPOSTADR1: TStringField;
    cdsLevPOSTADR2: TStringField;
    cdsLevPOSTNR: TStringField;
    cdsLevBESOKADR1: TStringField;
    cdsLevBESOKADR2: TStringField;
    cdsLevBESOKPOSTNR: TStringField;
    cdsLevLAND: TStringField;
    cdsLevORGNR: TStringField;
    cdsLevTELEFON: TStringField;
    cdsLevFAKS: TStringField;
    cdsLevMOBIL: TStringField;
    cdsLevEPOST: TStringField;
    cdsLevWEB: TStringField;
    cdsLevBANKKONTO: TStringField;
    cdsLevKONTAKT: TStringField;
    cdsLevINFO: TMemoField;
    cdsLevIDGRUPPE: TIntegerField;
    cdsLevIDKUNDETYPE: TIntegerField;
    cdsLevREGDATO: TDateTimeField;
    cdsLevENDRETDATO: TDateTimeField;
    cdsLevPOSTSTED: TStringField;
    cdsLevBESOKPSTED: TStringField;
    adoGruppe: TADODataSet;
    dsGruppe: TDataSource;
    dsMasterLev: TDataSource;
    Label15: TLabel;
    Label16: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    adoLand: TADODataSet;
    dsLand: TDataSource;
    GroupBox6: TGroupBox;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    cdsLevFORFALLSDAGER: TIntegerField;
    cdsLevRABATT: TFloatField;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DataSetCancel1: TDataSetCancel;
    TBXItem5: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem6: TTBXItem;
    TBXItem7: TTBXItem;
    DataSetPost1: TDataSetPost;
    acNy: TAction;
    cdsLevIDUTSENDELSE: TIntegerField;
    cdsLevKREDITT: TFloatField;
    DBCheckBox1: TDBCheckBox;
    cdsLevAKTIV: TSmallintField;
    TBXSeparatorItem2: TTBXSeparatorItem;
    acWebInfo: TAction;
    TBXItem8: TTBXItem;
    acSettings: TAction;
    TBXItem9: TTBXItem;
    adoLevIDKLIENT: TIntegerField;
    adoLevKONTAKTNR: TIntegerField;
    adoLevIDSERIE: TStringField;
    adoLevNAVN: TStringField;
    adoLevPOSTADR1: TStringField;
    adoLevPOSTADR2: TStringField;
    adoLevPOSTNR: TStringField;
    adoLevBESOKADR1: TStringField;
    adoLevBESOKADR2: TStringField;
    adoLevBESOKPOSTNR: TStringField;
    adoLevLAND: TStringField;
    adoLevORGNR: TStringField;
    adoLevTELEFON: TStringField;
    adoLevFAKS: TStringField;
    adoLevMOBIL: TStringField;
    adoLevEPOST: TStringField;
    adoLevWEB: TStringField;
    adoLevBANKKONTO: TStringField;
    adoLevKONTAKT: TStringField;
    adoLevFORFALLSDAGER: TIntegerField;
    adoLevKREDITT: TFloatField;
    adoLevRABATT: TFloatField;
    adoLevINFO: TMemoField;
    adoLevIDGRUPPE: TIntegerField;
    adoLevIDKUNDETYPE: TIntegerField;
    adoLevIDUTSENDELSE: TIntegerField;
    adoLevREGDATO: TDateTimeField;
    adoLevENDRETDATO: TDateTimeField;
    adoLevAKTIV: TSmallintField;
    GroupBox11: TGroupBox;
    JvDBGrid1: TJvDBGrid;
    adoPerson: TADODataSet;
    adoPersonIDPERSON: TIntegerField;
    adoPersonIDKLIENT: TIntegerField;
    adoPersonKONTAKTNR: TIntegerField;
    adoPersonNAVN: TStringField;
    adoPersonEPOST: TStringField;
    adoPersonTELEFON: TStringField;
    adoPersonMOBIL: TStringField;
    adoPersonINFO: TStringField;
    dspPerson: TDataSetProvider;
    cdsPerson: TClientDataSet;
    cdsPersonIDPERSON: TIntegerField;
    cdsPersonIDKLIENT: TIntegerField;
    cdsPersonKONTAKTNR: TIntegerField;
    cdsPersonNAVN: TStringField;
    cdsPersonEPOST: TStringField;
    cdsPersonTELEFON: TStringField;
    cdsPersonMOBIL: TStringField;
    cdsPersonINFO: TStringField;
    dsPerson: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dsMasterLevDataChange(Sender: TObject; Field: TField);
    procedure dsLevDataChange(Sender: TObject; Field: TField);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure acNyExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure acWebInfoExecute(Sender: TObject);
    procedure dbeOrgnrChange(Sender: TObject);
    procedure acSettingsExecute(Sender: TObject);
    procedure cdsLevPOSTNRSetText(Sender: TField; const Text: string);
    procedure cdsLevBESOKPOSTNRSetText(Sender: TField; const Text: string);
    procedure PcChange(Sender: TObject);
    procedure cdsPersonNewRecord(DataSet: TDataSet);
  private
    procedure VisNavButtons(Vis: Boolean);
    procedure OppdaterFraWeb(Data: String);
    { Private declarations }
  public
    { Public declarations }
    NyLev: Boolean;
  end;

var
  frmLeverandor: TfrmLeverandor;

implementation

uses rsData, rsPostnr, rsFunction, rsKundeBrReg, rsKontaktGruppe;

{$R *.dfm}

procedure TfrmLeverandor.FormCreate(Sender: TObject);
begin
  NyLev := False;
  adoLand.Open;
  adoGruppe.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoGruppe.Open;

  adoLev.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoLev.Parameters.ParamValues['Knr'] := Dm.cdsLevKONTAKTNR.Value;
  cdsLev.Open;

  Pc.ActivePageIndex := 0;
end;

procedure TfrmLeverandor.FormDestroy(Sender: TObject);
begin
  adoGruppe.Close;
  cdsLev.Close;
  adoLand.Close;

  cdsPerson.Close;
end;

procedure TfrmLeverandor.dsMasterLevDataChange(Sender: TObject;
  Field: TField);
begin
  if cdsLev.Active and (Field = nil) then begin
    cdsLev.ApplyUpdates(-1);
    adoLev.Parameters.ParamValues['Knr'] := Dm.cdsLevKONTAKTNR.Value;
    cdsLev.Refresh;
  end;
end;

procedure TfrmLeverandor.dsLevDataChange(Sender: TObject; Field: TField);
begin
  if cdsLevINFO.IsNull = False then
    tsMerknader.ImageIndex := 0
  else
    tsMerknader.ImageIndex := -1;

  if Field = nil then begin
    Caption := 'Registrering Leverandør - ' + cdsLevNAVN.Value;
  end;

  acNy.Enabled := cdsLevNAVN.Value <> '';
  acWebInfo.Enabled := cdsLevOrgnr.IsNull = False;
  btnOk.Enabled := acNy.Enabled;
end;

procedure TfrmLeverandor.Button1Click(Sender: TObject);
begin
  frmPostnr := TfrmPostnr.Create(Application);
  if frmPostnr.ShowModal = mrOK then begin
    cdsLev.Edit;
    cdsLevPOSTNR.Value := frmPostnr.cdsPostnrPOSTNR.Value;
    cdsLev.Post;
  end;
  frmPostnr.Release;
end;

procedure TfrmLeverandor.Button2Click(Sender: TObject);
begin
  frmPostnr := TfrmPostnr.Create(Application);
  if frmPostnr.ShowModal = mrOK then begin
    cdsLev.Edit;
    cdsLevBESOKPOSTNR.Value := frmPostnr.cdsPostnrPOSTNR.Value;
    cdsLev.Post;
  end;
  frmPostnr.Release;
end;

procedure TfrmLeverandor.cdsLevBESOKPOSTNRSetText(Sender: TField;
  const Text: string);
begin
  if Text = '' then
    cdsLevBESOKPOSTNR.Clear
  else
    cdsLevBESOKPOSTNR.Value := Text;
end;

procedure TfrmLeverandor.cdsLevPOSTNRSetText(Sender: TField;
  const Text: string);
begin
  if Text = '' then
    cdsLevPOSTNR.Clear
  else
    cdsLevPOSTNR.Value := Text;
end;

procedure TfrmLeverandor.cdsPersonNewRecord(DataSet: TDataSet);
begin
  Dm.spPersonID.Open;
  cdsPersonIDPERSON.Value := Dm.spPersonIDIDPERSON.Value;
  Dm.spPersonID.Close;
  cdsPersonIDKLIENT.Value := Dm.g_KlientID;
  cdsPersonKONTAKTNR.Value := cdsLevKONTAKTNR.Value;
end;

procedure TfrmLeverandor.btnOKClick(Sender: TObject);
begin
  if cdsPerson.Active then begin
    if cdsPerson.State in [dsEdit, dsInsert] then
      cdsPerson.Post;
    cdsPerson.ApplyUpdates(-1);
  end;

  cdsLev.ApplyUpdates(-1);
end;

procedure TfrmLeverandor.acNyExecute(Sender: TObject);
begin
  if cdsLev.State in [dsEdit, dsInsert] then begin
    cdsLev.Post;
  end;
  cdsLev.ApplyUpdates(-1);
  Dm.cdsLev.RefreshRecord;

  NyLev := True;
  VisNavButtons(False);
  Dm.cdsLev.Append;
  Dm.cdsLev.Post;
  Dm.cdsLev.ApplyUpdates(-1);
  Dm.cdsLev.RefreshRecord;
  dbeNavn.SetFocus;
end;

procedure TfrmLeverandor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if ModalResult <> mrOK then
    cdsLev.CancelUpdates;
end;

procedure TfrmLeverandor.VisNavButtons(Vis: Boolean);
begin
  acFirst.Visible := Vis;
  acNext.Visible := Vis;
  acLast.Visible := Vis;
  acPrior.Visible := Vis;
end;

procedure TfrmLeverandor.FormShow(Sender: TObject);
begin
  VisNavButtons(not NyLev);
  dbeNavn.SetFocus;
end;

procedure TfrmLeverandor.acSettingsExecute(Sender: TObject);
begin
  frmKontaktGruppe := TfrmKontaktGruppe.Create(Application);
  frmKontaktGruppe.KontaktSerie := 'LS';
  if frmKontaktGruppe.ShowModal = mrOK then begin
    adoGruppe.Requery;
  end;
  frmKontaktGruppe.Release;
end;

procedure TfrmLeverandor.acWebInfoExecute(Sender: TObject);
begin
  dbeNavn.SetFocus;
  OppdaterFraWeb(dmFunction.HentBrRegData(cdsLevORGNR.Value));
end;

procedure TfrmLeverandor.OppdaterFraWeb(Data: String);
var
  S: String;
begin
  frmKundeBrReg := TfrmKundeBrReg.Create(Application);
  frmKundeBrReg.Data := Data;
  if frmKundeBrReg.ShowModal = mrOK then begin
    cdsLev.Edit;

    S := frmKundeBrReg.edOrgnr.Text;
    if Trim(S) <> '' then
      cdsLevORGNR.Value := S;

    S := frmKundeBrReg.edFirma.Text;
    if Trim(S) <> '' then
      cdsLevNAVN.Value := S;

    if (Trim(frmKundeBrReg.edPAdresse.Text) <> '') or (Trim(frmKundeBrReg.edPPostnr.Text) <> '') then begin
      //Dersom Postadresse er gitt brukes denne
      cdsLevPOSTADR1.Value := Trim(frmKundeBrReg.edPAdresse.Text);
      cdsLevPOSTNR.Value := Trim(frmKundeBrReg.edPPostnr.Text);

      if (Trim(frmKundeBrReg.edBAdresse.Text) <> '') or (Trim(frmKundeBrReg.edBPostnr.Text) <> '') then begin
        cdsLevBESOKADR1.Value := Trim(frmKundeBrReg.edBAdresse.Text);
        cdsLevBESOKPOSTNR.Value := Trim(frmKundeBrReg.edBPostnr.Text);
      end;

    end
    else begin
      //Dersom Besøksadresse er gitt brukes denne
      if (Trim(frmKundeBrReg.edBAdresse.Text) <> '') or (Trim(frmKundeBrReg.edBPostnr.Text) <> '') then begin
        cdsLevPOSTADR1.Value := Trim(frmKundeBrReg.edBAdresse.Text);
        cdsLevPOSTNR.Value := Trim(frmKundeBrReg.edBPostnr.Text);
      end;
    end;

    S := frmKundeBrReg.edTelefon.Text;
    if Trim(S) <> '' then
      cdsLevTELEFON.Value := S;

    S := frmKundeBrReg.edMobil.Text;
    if Trim(S) <> '' then
      cdsLevMOBIL.Value := S;

    S := frmKundeBrReg.edTelefax.Text;
    if Trim(S) <> '' then
      cdsLevFAKS.Value := S;

    S := frmKundeBrReg.edEpost.Text;
    if Trim(S) <> '' then
      cdsLevEPOST.Value := S;

    S := frmKundeBrReg.edUrl.Text;
    if Trim(S) <> '' then
      cdsLevWEB.Value := S;

  end;
  frmKundeBrReg.Release;
end;


procedure TfrmLeverandor.PcChange(Sender: TObject);
begin
  if Pc.ActivePage = tsKontakt then begin
    adoPerson.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
    adoPerson.Parameters.ParamValues['Kontaktnr'] := cdsLevKONTAKTNR.Value;
    cdsPerson.Open;
  end;
end;

procedure TfrmLeverandor.dbeOrgnrChange(Sender: TObject);
begin
  if Length(dbeOrgnr.Text) > 8 then
    acWebInfo.Enabled := True;
end;

end.
