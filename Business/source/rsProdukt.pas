unit rsProdukt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DBCtrls, ExtCtrls, TB2Dock, TB2Toolbar, TBX,
  Mask, TB2Item, DBActns, ActnList, DB, DBClient, Provider, ADODB,
  blsAlignEdit, blsBorderPanel;

type
  TfrmProdukt = class(TForm)
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    Panel1: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    btnAvbryt: TButton;
    btnOK: TButton;
    Panel2: TPanel;
    adoProd: TADODataSet;
    dspProd: TDataSetProvider;
    adoProdIDKLIENT: TIntegerField;
    adoProdPRODUKTNR: TStringField;
    adoProdNAVN: TStringField;
    adoProdSPES: TStringField;
    adoProdTEKST: TMemoField;
    adoProdENHET: TStringField;
    adoProdVEKT: TFloatField;
    adoProdVOLUM: TFloatField;
    adoProdMVA: TFloatField;
    adoProdINNPRIS: TFloatField;
    adoProdPRIS: TFloatField;
    adoProdAVGIFT: TFloatField;
    adoProdRABATT: TFloatField;
    adoProdORGPRODNR: TStringField;
    adoProdLAGERANT: TFloatField;
    adoProdANKDATO: TDateField;
    adoProdANKANTALL: TFloatField;
    adoProdREGDATO: TDateTimeField;
    adoProdENDRETDATO: TDateTimeField;
    adoProdKONTONR: TIntegerField;
    adoProdAKTIV: TSmallintField;
    cdsProd: TClientDataSet;
    dsProd: TDataSource;
    ActionList1: TActionList;
    acFirst: TDataSetFirst;
    acPrior: TDataSetPrior;
    acNext: TDataSetNext;
    acLast: TDataSetLast;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXItem4: TTBXItem;
    DataSetPost1: TDataSetPost;
    TBXItem5: TTBXItem;
    cdsProdIDKLIENT: TIntegerField;
    cdsProdPRODUKTNR: TStringField;
    cdsProdNAVN: TStringField;
    cdsProdSPES: TStringField;
    cdsProdTEKST: TMemoField;
    cdsProdENHET: TStringField;
    cdsProdVEKT: TFloatField;
    cdsProdVOLUM: TFloatField;
    cdsProdMVA: TFloatField;
    cdsProdINNPRIS: TFloatField;
    cdsProdPRIS: TFloatField;
    cdsProdAVGIFT: TFloatField;
    cdsProdRABATT: TFloatField;
    cdsProdORGPRODNR: TStringField;
    cdsProdLAGERANT: TFloatField;
    cdsProdANKDATO: TDateField;
    cdsProdANKANTALL: TFloatField;
    cdsProdREGDATO: TDateTimeField;
    cdsProdENDRETDATO: TDateTimeField;
    cdsProdKONTONR: TIntegerField;
    cdsProdAKTIV: TSmallintField;
    acNy: TAction;
    DataSetCancel1: TDataSetCancel;
    TBXItem6: TTBXItem;
    TBXItem7: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    adoProdURL: TStringField;
    cdsProdURL: TStringField;
    adoProdBILDE: TStringField;
    cdsProdBILDE: TStringField;
    adoProdKATEGORINR: TIntegerField;
    adoProdKATORGNR: TIntegerField;
    adoProdLEVERANDORNR: TIntegerField;
    cdsProdKATEGORINR: TIntegerField;
    cdsProdKATORGNR: TIntegerField;
    cdsProdLEVERANDORNR: TIntegerField;
    Pc: TPageControl;
    tsGeneral: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label27: TLabel;
    dbeProdnr: TDBEdit;
    dbeNavn: TDBEdit;
    DBEdit3: TDBEdit;
    dblKategori: TDBLookupComboBox;
    gbPris: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    editAvanse: TblsAlignEdit;
    editFortjeneste: TblsAlignEdit;
    editInk: TblsAlignEdit;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    GroupBox8: TGroupBox;
    Label7: TLabel;
    Label19: TLabel;
    dbcMva: TDBComboBox;
    DBEdit12: TDBEdit;
    tsBeskrivelse: TTabSheet;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    tsExtra: TTabSheet;
    GroupBox10: TGroupBox;
    blsBorderPanel1: TblsBorderPanel;
    GroupBox7: TGroupBox;
    Label17: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    DBEdit10: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit14: TDBEdit;
    GroupBox5: TGroupBox;
    Label26: TLabel;
    DBEdit2: TDBEdit;
    TabSheet4: TTabSheet;
    GroupBox6: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit15: TDBEdit;
    btnKontoSok: TButton;
    DBEdit16: TDBEdit;
    Label6: TLabel;
    DBComboBox1: TDBComboBox;
    Label21: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBText4: TDBText;
    DBText5: TDBText;
    GroupBox9: TGroupBox;
    Label22: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label20: TLabel;
    DBEdit13: TDBEdit;
    Panel4: TPanel;
    Shape1: TShape;
    Img: TImage;
    adoProdType: TADODataSet;
    dsProdType: TDataSource;
    Panel3: TPanel;
    DBText3: TDBText;
    Label29: TLabel;
    Label30: TLabel;
    DBText6: TDBText;
    adoProdLPRODNR: TStringField;
    cdsProdLPRODNR: TStringField;
    adoLev: TADODataSet;
    dsLev: TDataSource;
    adoKategori: TADODataSet;
    dsKategori: TDataSource;
    adoKatOrg: TADODataSet;
    dspKatOrg: TDataSetProvider;
    cdsKatOrg: TClientDataSet;
    dsKatOrg: TDataSource;
    btnKat: TButton;
    adoProdIDPRODTYPE: TIntegerField;
    cdsProdIDPRODTYPE: TIntegerField;
    GroupBox3: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    adoProdINETTBUTIKK: TSmallintField;
    cdsProdINETTBUTIKK: TSmallintField;
    cdsProdKONTONAVN: TStringField;
    dsMaster: TDataSource;
    procedure dsMasterProduktDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure editAvanseExit(Sender: TObject);
    procedure editFortjenesteExit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure editInkExit(Sender: TObject);
    procedure dbcMvaExit(Sender: TObject);
    procedure dsProdDataChange(Sender: TObject; Field: TField);
    procedure PcChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acNyExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnKatClick(Sender: TObject);
    procedure btnKontoSokClick(Sender: TObject);
    procedure cdsProdCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure BeregnEditPriser;
    procedure OppdaterPriser(Ix: Integer);
    procedure VisNavButtons(Vis: Boolean);
    procedure SjekkKontonr;
  public
    { Public declarations }
    AktivProdnr: String;
    NyttProd: Boolean;
    Katnr: Integer;
    procedure RedigerExternt(Produktnr: String);
  end;

var
  frmProdukt: TfrmProdukt;

implementation

uses rsData, rsVelgKategori, rsKontoSok;

{$R *.dfm}

procedure TfrmProdukt.RedigerExternt(Produktnr: String);
begin
  if (Produktnr <> '') then begin
    cdsProd.ApplyUpdates(-1);
    adoProd.Parameters.ParamValues['Pnr'] := Produktnr;
    cdsProd.Refresh;
  end;
end;

procedure TfrmProdukt.dsMasterProduktDataChange(Sender: TObject;
  Field: TField);
begin
  if cdsProd.Active and (Field = nil) then begin
    cdsProd.ApplyUpdates(-1);
    adoProd.Parameters.ParamValues['Pnr'] := Dm.cdsProdPRODUKTNR.Value;
    cdsProd.Refresh;
  end;
end;

procedure TfrmProdukt.FormCreate(Sender: TObject);
begin
  Katnr := -1;
  NyttProd := False;
  AktivProdnr := '';

  adoProdType.Open;
  adoLev.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoLev.Open;
  adoKategori.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoKategori.Open;
  cdsKatOrg.Open;

  adoProd.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoProd.Parameters.ParamValues['Pnr'] := Dm.cdsProdPRODUKTNR.Value;
  cdsProd.Open;

  Pc.ActivePageIndex := 0;
  dbcMva.Items.Assign(Dm.MvaListe.Mva);
  dbcMva.ItemIndex := dbcMva.Items.IndexOf(FormatFloat('#0.00', cdsProdMVA.Value));
  BeregnEditPriser;
end;

procedure TfrmProdukt.FormDestroy(Sender: TObject);
begin
  cdsKatOrg.Close;
  cdsProd.Close;
  adoProdType.Close;
  adoLev.Close;
  adoKategori.Close;
end;

procedure TfrmProdukt.SjekkKontonr;
begin
  if cdsProdKONTONAVN.Value = '' then begin
    cdsProd.Edit;
    cdsProdKONTONR.Clear;
    cdsProd.Post;
  end;
end;

procedure TfrmProdukt.btnOKClick(Sender: TObject);
begin
  SjekkKontonr;
  if NyttProd then
    AktivProdnr := cdsProdPRODUKTNR.Value;
  cdsProd.ApplyUpdates(-1);
end;

procedure TfrmProdukt.BeregnEditPriser;
begin
  if (editAvanse.Focused) or (editFortjeneste.Focused) or
    (editInk.Focused) then Exit;

  editInk.AsFloat := Dm.cdsProdPRISINK.Value;
  editAvanse.AsFloat := Dm.cdsProdAVANSEP.Value;
  editFortjeneste.AsFloat := Dm.cdsProdFORTJENESTE.Value;
end;

procedure TfrmProdukt.OppdaterPriser(Ix: Integer);
begin
  cdsProd.Edit;
  case Ix of
    0: begin // Innpris
      if cdsProdPRIS.Value = 0 then
        cdsProdPRIS.Value := cdsProdINNPRIS.Value + editFortjeneste.AsFloat;
      editFortjeneste.AsFloat := cdsProdPRIS.Value - cdsProdINNPRIS.Value;
      if cdsProdINNPRIS.Value > 0 then
        editAvanse.AsFloat := (editFortjeneste.AsFloat / cdsProdINNPRIS.Value) * 100
      else
        editAvanse.AsFloat := 0;
    end;

    1: begin  // Avanse i %
      if ((editAvanse.Text = '') or (cdsProdINNPRIS.Value = 0)) then
        editAvanse.AsFloat := 0;

      cdsProdPRIS.Value := cdsProdINNPRIS.Value + ((cdsProdINNPRIS.Value * editAvanse.AsFloat) / 100);
      editFortjeneste.AsFloat := cdsProdPRIS.Value - cdsProdINNPRIS.Value;
    end;

    2: begin // Avanse
      if editFortjeneste.Text = '' then
        editFortjeneste.AsFloat := 0;

      cdsProdPRIS.Value := cdsProdINNPRIS.Value + editFortjeneste.AsFloat;
      if cdsProdINNPRIS.Value > 0 then
        editAvanse.AsFloat := (editFortjeneste.AsFloat / cdsProdINNPRIS.Value) * 100
      else
        editAvanse.AsFloat := 0;
    end;

    3: begin // Pris eks
      editFortjeneste.AsFloat := cdsProdPRIS.Value - cdsProdINNPRIS.Value;
      if cdsProdINNPRIS.Value > 0 then
        editAvanse.AsFloat := (editFortjeneste.AsFloat / cdsProdINNPRIS.Value) * 100
      else
        editAvanse.AsFloat := 0;
    end;

    4: begin // Pris Ink
      if editInk.Text = '' then
        editInk.AsFloat := 0;
      cdsProdPRIS.Value := editInk.AsFloat / (1 + (cdsProdMVA.Value / 100));
      editFortjeneste.AsFloat := cdsProdPRIS.Value - cdsProdINNPRIS.Value;
      if cdsProdINNPRIS.Value > 0 then
        editAvanse.AsFloat := (editFortjeneste.AsFloat / cdsProdINNPRIS.Value) * 100
      else
        editAvanse.AsFloat := 0;
    end;
  end;

  if Ix <> 4 then  //Hvis vi setter andre verdier enn PrisInk skal PrisInk oppdateres...
    editInk.AsFloat := cdsProdPRIS.Value + ((cdsProdPRIS.Value * cdsProdMVA.Value) / 100);
end;


procedure TfrmProdukt.DBEdit7Exit(Sender: TObject);
begin
  OppdaterPriser(0);
end;

procedure TfrmProdukt.editAvanseExit(Sender: TObject);
begin
  OppdaterPriser(1);
end;

procedure TfrmProdukt.editFortjenesteExit(Sender: TObject);
begin
  OppdaterPriser(2);
end;

procedure TfrmProdukt.DBEdit8Exit(Sender: TObject);
begin
  OppdaterPriser(3);
end;

procedure TfrmProdukt.editInkExit(Sender: TObject);
begin
  OppdaterPriser(4);
end;

procedure TfrmProdukt.dbcMvaExit(Sender: TObject);
begin
  OppdaterPriser(-1);
end;

procedure TfrmProdukt.dsProdDataChange(Sender: TObject; Field: TField);
begin
  if cdsProdTEKST.IsNull = False then
    tsBeskrivelse.ImageIndex := 0
  else
    tsBeskrivelse.ImageIndex := -1;

  if Field = nil then begin
    Caption := 'Registrering Produkt - ' + cdsProdNAVN.Value;

    if Showing and (Pc.ActivePage = tsGeneral) then begin
      if gbPris.Focused then begin
        dbeNavn.SetFocus; //Setter focus så priser skal bli beregnet riktig.
        dbeNavn.SelLength := 0;
      end;
    end;
    BeregnEditPriser;
  end;

  acNy.Enabled := (cdsProdPRODUKTNR.Value <> '') and (cdsProdNAVN.Value <> '');
  btnOK.Enabled := acNy.Enabled;
end;

procedure TfrmProdukt.PcChange(Sender: TObject);
begin
  if Pc.ActivePage = tsExtra then begin
    if cdsProdBILDE.Value <> '' then begin
      if FileExists(Dm.g_DataImgDir + cdsProdBilde.Value) then
        Img.Picture.LoadFromFile(Dm.g_DataImgDir + cdsProdBilde.Value);
    end;
  end;
end;

procedure TfrmProdukt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult <> mrOK then
    cdsProd.CancelUpdates;
end;

procedure TfrmProdukt.acNyExecute(Sender: TObject);
begin
  SjekkKontonr;
  if cdsProd.State in [dsEdit, dsInsert] then begin
    cdsProd.Post;
  end;
  cdsProd.ApplyUpdates(-1);
  Dm.cdsProd.RefreshRecord;

  Dm.cdsProd.Insert;
  Dm.cdsProdKATEGORINR.Value  := Katnr;
  Dm.cdsProd.Post;
  Dm.cdsProd.ApplyUpdates(-1);
  Dm.cdsProd.RefreshRecord;
  dbeProdnr.SetFocus;
end;

procedure TfrmProdukt.VisNavButtons(Vis: Boolean);
begin
  acFirst.Visible := Vis;
  acNext.Visible := Vis;
  acLast.Visible := Vis;
  acPrior.Visible := Vis;
end;

procedure TfrmProdukt.FormShow(Sender: TObject);
begin
  VisNavButtons(not NyttProd);

  if dbeProdnr.ReadOnly then
    dbeNavn.SetFocus;
end;

procedure TfrmProdukt.btnKatClick(Sender: TObject);
begin
  frmVelgKat := TfrmVelgKat.Create(Application);
  Dm.LastProdKategorier(frmVelgKat.tvKat, False);
  if frmVelgKat.ShowModal = mrOK then begin
    cdsProd.Edit;
    cdsProdKATEGORINR.Value := TNummer(frmVelgKat.tvKat.Selected.Data).Nr;
    cdsProd.Post;
  end;
  Dm.FreeProdKategorier(frmVelgKat.tvKat);
  frmVelgKat.Release;
end;

procedure TfrmProdukt.btnKontoSokClick(Sender: TObject);
begin
  frmKontoSok := TfrmKontoSok.Create(Application);
  if frmKontoSok.ShowModal = mrOK then begin
    //ShowMessage(frmKontoSok.cdsSokKONTONR.AsString);
    cdsProd.Edit;
    cdsProdKONTONR.Value := frmKontoSok.cdsSokKONTONR.Value;
    cdsProd.Post;
  end;
  frmKontoSok.Release;
end;

procedure TfrmProdukt.cdsProdCalcFields(DataSet: TDataSet);
begin
  if not cdsProdKONTONR.IsNull then
    cdsProdKONTONAVN.Value := Dm.HentKontoNavn(cdsProdKONTONR.Value);
end;

end.
