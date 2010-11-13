unit rsImpProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, blsList, DB, ADODB, blsImport,
  xmldom, XMLIntf, msxmldom, XMLDoc, pngimage, blsAlignEdit;

type
  TfrmImportProd = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Panel2: TPanel;
    btnAvbryt: TButton;
    Label1: TLabel;
    blsList: TblsList;
    adoProd: TADODataSet;
    OpenDialog: TOpenDialog;
    Bevel2: TBevel;
    Panel3: TPanel;
    Pb: TProgressBar;
    btnStart: TButton;
    lblStatus: TLabel;
    adoLev: TADODataSet;
    adoLevNAVN: TStringField;
    adoLevKONTAKTNR: TIntegerField;
    Image1: TImage;
    XmlDoc: TXMLDocument;
    adoKat: TADODataSet;
    adoKatIDKLIENT: TIntegerField;
    adoKatKATORGNR: TIntegerField;
    adoKatHOVEDKAT: TStringField;
    adoKatUNDERKAT: TStringField;
    adoKatKATEGORINR: TIntegerField;
    adoSQL: TADOCommand;
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
    adoProdURL: TStringField;
    adoProdBILDE: TStringField;
    adoProdLAGERANT: TFloatField;
    adoProdANKDATO: TDateField;
    adoProdANKANTALL: TFloatField;
    adoProdLPRODNR: TStringField;
    adoProdREGDATO: TDateTimeField;
    adoProdENDRETDATO: TDateTimeField;
    adoProdKATEGORINR: TIntegerField;
    adoProdKATORGNR: TIntegerField;
    adoProdLEVERANDORNR: TIntegerField;
    adoProdKONTONR: TIntegerField;
    adoProdAKTIV: TSmallintField;
    Pc: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    editFile: TEdit;
    btnFile: TButton;
    cbColHead: TCheckBox;
    cbLev: TComboBox;
    cbRutine: TComboBox;
    blsAvanse: TblsAlignEdit;
    GroupBox2: TGroupBox;
    cbNr: TCheckBox;
    editNr: TblsAlignEdit;
    Label6: TLabel;
    adoKatLEVERANDORNR: TIntegerField;
    adoProdIDPRODTYPE: TIntegerField;
    procedure btnStartClick(Sender: TObject);
    procedure btnFileClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbRutineChange(Sender: TObject);
    procedure cbNrClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure ImporterProdukt(ImpObj: TImpObject);
    procedure OppdaterDBFelt(Table: TDataSet; Felt: String; ImpObj: TImpObject);
    procedure LastLevListe;
    procedure StandardCSVImport;
    procedure NorekXMLImport;
    procedure ImporterKat(ImpObj: TImpObject);
    function BeregnUtPris(Pris: Variant; Prosent: Double): Double;
    procedure ItegraXMLImport;
    function BeregnAvgift(Pris, PrisInkAvg: Variant): Double;
    procedure ImportItegraKat(ImpObj: TImpObject);
    procedure SantechCVSImport;
    procedure NetShopXMLImport;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImportProd: TfrmImportProd;

implementation

uses rsData, blsFileUtil, blsString, blsDate, blsDialogs, blsRegistry;

{$R *.dfm}


procedure TfrmImportProd.OppdaterDBFelt(Table: TDataSet; Felt: String; ImpObj: TImpObject);
begin
  if Table.FieldByName(Felt).DataType = ftFloat then begin
    if Table.FieldByName(Felt).Value <> ImpObj.GetField(Felt).AsFloat then
      Table.FieldByName(Felt).Value := ImpObj.GetField(Felt).AsFloat;
  end

  else if Table.FieldByName(Felt).DataType = ftInteger then begin
    if Table.FieldByName(Felt).Value <> ImpObj.GetField(Felt).AsInteger then
      Table.FieldByName(Felt).Value := ImpObj.GetField(Felt).AsInteger
  end

  else if Table.FieldByName(Felt).DataType = ftDate then begin
    if (Table.FieldByName(Felt).Value <> UniStrToDate(ImpObj.GetField(Felt).AsString)) and
      (ImpObj.GetField(Felt).AsString <> '') then
      Table.FieldByName(Felt).Value := UniStrToDate(ImpObj.GetField(Felt).AsString);
  end

  else
    if Table.FieldByName(Felt).Value <> ImpObj.GetValue(Felt) then
      Table.FieldByName(Felt).Value := ImpObj.GetValue(Felt);
end;


procedure TfrmImportProd.ImporterProdukt(ImpObj: TImpObject);
var I: Integer;
    Tmp: String;
begin
  if cbNr.Checked then begin  //Gir produktene eget nr.

    if adoProd.Locate('LPRODNR', ImpObj.GetValue('Produktnr'), [loCaseInsensitive]) then begin
      adoProd.Edit;
      ImpObj.DeleteField('Produktnr');
    end
    else begin
      adoProd.Insert;
      ImpObj.DeleteField('Produktnr');
      ImpObj.AddValue('Produktnr', IntToStr(editNr.AsInteger + 1));
      editNr.AsInteger := editNr.AsInteger + 1;
    end;

  end
  else begin  // Bruker leverandorens nr.

    if adoProd.Locate('Produktnr', ImpObj.GetValue('Produktnr'), [loCaseInsensitive]) then begin
      if adoProdLEVERANDORNR.Value = TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).Nr then
        adoProd.Edit
      else begin
        adoProd.Insert;
        Tmp := ImpObj.GetValue('Produktnr');
        ImpObj.DeleteField('Produktnr');
        ImpObj.AddValue('Produktnr', Tmp + '_' + IntToStr(TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).Nr));
      end;
    end
    else
      adoProd.Insert;

  end;

  for I := 0 to ImpObj.Count -1 do
    OppdaterDBFelt(adoProd, ImpObj.FieldName[I], ImpObj);
  adoProd.Post;
end;

procedure TfrmImportProd.ImporterKat(ImpObj: TImpObject);
var I: Integer;
begin
  if adoKat.Locate('KatOrgNr', ImpObj.GetValue('KatOrgNr'), []) then begin
    adoKat.Edit;
    ImpObj.DeleteField('KatOrgNr');
  end
  else
    adoKat.Insert;
  for I := 0 to ImpObj.Count -1 do
    OppdaterDBFelt(adoKat, ImpObj.FieldName[I], ImpObj);
  adoKat.Post;
end;

procedure TfrmImportProd.ImportItegraKat(ImpObj: TImpObject);
var I: Integer;
    Ny: Boolean;
begin
  Ny := False;
  if adoKat.Locate('HovedKat;UnderKat', VarArrayOf([ImpObj.GetValue('HovedKat'),
                   ImpObj.GetValue('UnderKat')]), []) then begin
    ImpObj.DeleteField('KatOrgNr');  //sletter feltet så den ikke skal oppdateres med verdi 0
    adoKat.Edit;
  end
  else begin
    adoKat.Insert;
    Ny := True;
  end;
  for I := 0 to ImpObj.Count -1 do
    OppdaterDBFelt(adoKat, ImpObj.FieldName[I], ImpObj);
  adoKat.Post;
  if Ny then
    adoKat.Requery();
end;

procedure TfrmImportProd.StandardCSVImport;
var ImpObj: TImpObject;
    I: Integer;
    StartNr: Integer;
begin
  btnStart.Enabled := False;
  lblStatus.Caption := 'Leser produktfil ...';
  lblStatus.Update;

  blsList.Lines.LoadFromFile(editFile.Text);
  StartNr := 0;

  // **** Init ****
  ImpObj := TImpObject.Create;
  adoProd.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoProd.Parameters.ParamValues['Levnr'] := TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).Nr;
  adoProd.Open;

  Pb.Max := blsList.Lines.Count;
  if cbColHead.Checked then begin
    StartNr := 1;
    Pb.Max := Pb.Max -1;
  end;

  for I := StartNr to blsList.Lines.Count -1 do begin
    lblStatus.Caption := 'Importerer produkt ' + Splitt(blsList.Lines[I], 2);
    lblStatus.Update;

    ImpObj.Clear;
    // Legger til alle produktverdiene...
    ImpObj.AddValue('IdKlient', Dm.g_KlientID);
    ImpObj.AddValue('LProdnr', Splitt(blsList.Lines[I], 1)); // *!
    ImpObj.AddValue('Produktnr', Splitt(blsList.Lines[I], 1));
    ImpObj.AddValue('Navn', Splitt(blsList.Lines[I], 2));
    ImpObj.AddValue('Spes', Splitt(blsList.Lines[I], 3));
    ImpObj.AddValue('OrgProdnr', Splitt(blsList.Lines[I], 4));
    ImpObj.AddValue('InnPris', Splitt(blsList.Lines[I], 5));
    ImpObj.AddValue('Rabatt', Splitt(blsList.Lines[I], 6));
    ImpObj.AddValue('Vekt', Splitt(blsList.Lines[I], 7));

    if Splitt(blsList.Lines[I], 8) <> '' then
      ImpObj.AddValue('Enhet', Splitt(blsList.Lines[I], 8))
    else
      ImpObj.AddValue('Enhet', 'Stk');

    ImpObj.AddValue('LagerAnt', Splitt(blsList.Lines[I], 9));
    ImpObj.AddValue('AnkAntall', Splitt(blsList.Lines[I], 10));
    ImpObj.AddValue('AnkDato', Splitt(blsList.Lines[I], 11));
    //Standard verdier ...
    if cbLev.ItemIndex > 0 then
      ImpObj.AddValue('Leverandornr', TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).Nr);
    ImpObj.AddValue('Mva', dm.MvaListe.DefaultMva);
    ImpObj.AddValue('IdProdType', 10);
    // *! Må være med for identifisering av eksisterende produkter.

    ImporterProdukt(ImpObj);
    if I mod 1000 = 0 then
      Application.ProcessMessages;


    Pb.StepIt;
    Pb.Update;
  end;

  lblStatus.Caption := 'Oppdaterer databasen ...';
  lblStatus.Update;

  adoKat.UpdateBatch();
  adoProd.UpdateBatch();

  lblStatus.Caption := 'Importering fullført!';

  // *** final ****
  adoProd.Close;
  ImpObj.Free;
end;

function TfrmImportProd.BeregnUtPris(Pris: Variant; Prosent: Double): Double;
var Tmp: String;
begin
  Tmp := Pris;
  Tmp := StringReplace(Tmp, '.', DecimalSeparator, []);
  Tmp := StringReplace(Tmp, ',', DecimalSeparator, []);
  Result := StrToFloatDef(Tmp, 0);
  Result := Result + (Result * (Prosent / 100));
end;

procedure TfrmImportProd.NorekXMLImport;
var Root, GrpNode, ProdNode, JNode: IXMLNode;
    I, J: Integer;
    ImpObj, KatObj: TImpObject;
    HKat, UKat: String;
begin
  btnStart.Enabled := False;
  lblStatus.Caption := 'Leser produktfil ...';
  lblStatus.Update;

  XmlDoc.Filename := editFile.Text;
  XmlDoc.Active := True;

  // **** Init ****
  ImpObj := TImpObject.Create;
  KatObj := TImpObject.Create;

  adoProd.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoProd.Parameters.ParamValues['Levnr'] := TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).Nr;
  adoProd.Open;
  adoKat.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoKat.Parameters.ParamValues['Levnr'] := TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).Nr;
  adoKat.Open;

  Root := XmlDoc.DocumentElement;
  GrpNode := Root.ChildNodes.Nodes['Grupper'];
  ProdNode := Root.ChildNodes.Nodes['Produkter'];
  Pb.Max := GrpNode.ChildNodes.Count + ProdNode.ChildNodes.Count;

  for I := 0 to GrpNode.ChildNodes.Count - 1 do begin
    lblStatus.Caption := 'Leser produktkategorier ...';
    lblStatus.Update;

    HKat := GrpNode.ChildNodes.Nodes[I].Attributes['GruppeLev1Txt'];
    JNode := GrpNode.ChildNodes.Nodes[I];
    for J := 0 to JNode.ChildNodes.Count -1 do begin
      UKat := JNode.ChildNodes.Nodes[J].Attributes['GruppeLev2Txt'];

      KatObj.Clear;
      KatObj.AddValue('IdKlient', Dm.g_KlientID);
      KatObj.AddValue('KatOrgNr', JNode.ChildNodes.Nodes[J].Attributes['PrdGruppeLev2ID']);
      KatObj.AddValue('HovedKat', HKat);
      KatObj.AddValue('UnderKat', UKat);
      KatObj.AddValue('Leverandornr', TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).Nr);

      ImporterKat(KatObj);
    end;
    Pb.StepIt;
    Pb.Update;
  end;

  Application.ProcessMessages;

  for I := 0 to ProdNode.ChildNodes.Count - 1 do begin
    JNode := ProdNode.ChildNodes.Nodes[I];

    lblStatus.Caption := 'Importerer produkt ' + IntToStr(Pb.Position) + ' av ' +
      IntToStr(Pb.Max) + ' ' + JNode.Attributes['ProduktDesc1'];
    lblStatus.Update;

    ImpObj.Clear;
    ImpObj.AddValue('IdKlient', Dm.g_KlientID);
    ImpObj.AddValue('LProdnr', JNode.Attributes['Varenr']); // *!
    ImpObj.AddValue('Produktnr', JNode.Attributes['Varenr']);
    ImpObj.AddValue('Navn', JNode.Attributes['ProduktDesc1']);
    ImpObj.AddValue('Spes', JNode.Attributes['ProduktDesc2']);
    ImpObj.AddValue('KatOrgNr', JNode.Attributes['PrdGruppeLev2ID']);
    ImpObj.AddValue('InnPris', JNode.Attributes['KundePris']);
    ImpObj.AddValue('Pris', BeregnUtPris(JNode.Attributes['KundePris'], blsAvanse.AsFloat));
    ImpObj.AddValue('LagerAnt', JNode.Attributes['TilgjForSalg']);

    case JNode.Attributes['ProduktStatusID'] of
      1: ImpObj.AddValue('IDProdType', 10);  //Lagervare
      2: ImpObj.AddValue('IDProdType', 20);  //Bestillingvare
      3: begin
           ImpObj.AddValue('IDProdType', 10);  //Utgått
           ImpObj.AddValue('Aktiv', 0);  //Utgått
      end;
    end;

    ImpObj.AddValue('AnkAntall', JNode.Attributes['Bekreftet']);
    ImpObj.AddValue('AnkDato', StringReplace(JNode.Attributes['AnkomstDato'], '-', '', [rfReplaceAll]));
    ImpObj.AddValue('Vekt', JNode.Attributes['PrdMalNettoVekt']);
    ImpObj.AddValue('OrgProdNr', JNode.Attributes['OrgPrdNr']);
    ImpObj.AddValue('Enhet', 'Stk');
    ImpObj.AddValue('Mva', Dm.MvaListe.DefaultMva);
    if cbLev.ItemIndex > 0 then
      ImpObj.AddValue('Leverandornr', TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).Nr);
    if adoKat.Locate('KatOrgNr', JNode.Attributes['PrdGruppeLev2ID'], []) then
      if adoKatKategorinr.Value > 0 then
        ImpObj.AddValue('Kategorinr', adoKatKategorinr.Value);

    ImporterProdukt(ImpObj);
    if I mod 1000 = 0 then
      Application.ProcessMessages;

    Pb.StepIt;
    Pb.Update;
  end;

  lblStatus.Caption := 'Oppdaterer databasen ...';
  lblStatus.Update;

  adoKat.UpdateBatch();
  adoProd.UpdateBatch();

  lblStatus.Caption := 'Importering fullført!';

  // *** final ****
  adoProd.Close;
  adoKat.Close;
  ImpObj.Free;
  KatObj.Free;
end;

function TfrmImportProd.BeregnAvgift(Pris, PrisInkAvg: Variant): Double;
var Tmp: String;
    P1, P2: Double;
begin
  Tmp := Pris;
  Tmp := StringReplace(Tmp, '.', DecimalSeparator, []);
  Tmp := StringReplace(Tmp, ',', DecimalSeparator, []);
  P1 := StrToFloat(Tmp);

  Tmp := PrisInkAvg;
  Tmp := StringReplace(Tmp, '.', DecimalSeparator, []);
  Tmp := StringReplace(Tmp, ',', DecimalSeparator, []);
  P2 := StrToFloat(Tmp);

  Result := P2 - P1;

  if Round(Result) <= 0 then
    Result := 0;
end;

procedure TfrmImportProd.ItegraXMLImport;
var ProdNode, JNode: IXMLNode;
    ImpObj, KatObj: TImpObject;
    I: Integer;
    Tmp: String;
begin
  btnStart.Enabled := False;
  lblStatus.Caption := 'Leser produktfil ...';
  lblStatus.Update;

  XmlDoc.FileName := editFile.Text;
  XmlDoc.Active := True;

  // **** Init ****
  ImpObj := TImpObject.Create;
  KatObj := TImpObject.Create;

  adoProd.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoProd.Parameters.ParamValues['Levnr'] := TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).Nr;
  adoProd.Open;
  adoKat.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoKat.Parameters.ParamValues['Levnr'] := TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).Nr;
  adoKat.Open;

  ProdNode := XmlDoc.DocumentElement;
  Pb.Max := ProdNode.ChildNodes.Count;

  for I := 0 to ProdNode.ChildNodes.Count - 1 do begin
    JNode := ProdNode.ChildNodes.Nodes[I];

    lblStatus.Caption := 'Importerer produkt ' + IntToStr(Pb.Position) + ' av ' +
      IntToStr(Pb.Max) + ' ' + JNode.Attributes['ProduktBeskrivelse1'];
    lblStatus.Update;

    ImpObj.Clear;
    ImpObj.AddValue('IdKlient', Dm.g_KlientID);
    ImpObj.AddValue('LProdnr', JNode.Attributes['Varenr']); // *!
    ImpObj.AddValue('Produktnr', JNode.Attributes['Varenr']);
    ImpObj.AddValue('Navn', JNode.Attributes['ProduktBeskrivelse1']);
    ImpObj.AddValue('Spes', JNode.Attributes['ProduktBeskrivelse2']);
    ImpObj.AddValue('InnPris', JNode.Attributes['Pris']);
    ImpObj.AddValue('Pris', BeregnUtPris(JNode.Attributes['Pris'], blsAvanse.AsFloat));
    ImpObj.AddValue('Avgift', BeregnAvgift(JNode.Attributes['Pris'], JNode.Attributes['KundePrisInkSpsAvg']));
    ImpObj.AddValue('LagerAnt', JNode.Attributes['Lagerstatus']);
    ImpObj.AddValue('IDProdType', 10);  //Lagervare
    if JNode.Attributes['AltVarenr'] <> '' then
      ImpObj.AddValue('OrgProdNr', JNode.Attributes['AltVarenr'])
    else
      ImpObj.AddValue('OrgProdNr', JNode.Attributes['Varenr']);
    Tmp := JNode.Attributes['ForventetInn'];
    ImpObj.AddValue('AnkDato', Splitt(Tmp, 3, '-') + Splitt(Tmp, 2, '-') + Splitt(Tmp, 1, '-'));
    ImpObj.AddValue('Enhet', 'Stk');
    ImpObj.AddValue('Mva', Dm.MvaListe.DefaultMva);
    if cbLev.ItemIndex > 0 then
      ImpObj.AddValue('Leverandornr', TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).Nr);


    KatObj.Clear;
    KatObj.AddValue('IdKlient', Dm.g_KlientID);
    KatObj.AddValue('KatOrgNr', 0);
    KatObj.AddValue('HovedKat', JNode.Attributes['ProduktGruppeLevel2']);
    KatObj.AddValue('UnderKat', JNode.Attributes['ProduktGruppeLevel3']);
    KatObj.AddValue('Leverandornr', TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).Nr);

    ImportItegraKat(KatObj);

    if adoKat.Locate('HovedKat;UnderKat', VarArrayOf([JNode.Attributes['ProduktGruppeLevel2'],
                     JNode.Attributes['ProduktGruppeLevel3']]), []) then begin
      ImpObj.AddValue('KatOrgNr', adoKatKATORGNR.Value);
      if adoKatKategorinr.Value > 0 then
        ImpObj.AddValue('Kategorinr', adoKatKategorinr.Value);
    end;

    //OBS: Her gjenstår ProduktGruppeLevel1 som er Produsent...

    ImporterProdukt(ImpObj);
    if I mod 1000 = 0 then
      Application.ProcessMessages;

    Pb.StepIt;
    Pb.Update;
  end;

  lblStatus.Caption := 'Oppdaterer databasen ...';
  lblStatus.Update;

  adoKat.UpdateBatch();
  adoProd.UpdateBatch();

  if cbLev.ItemIndex > 0 then begin
    adoSQL.CommandText := 'update PRODUKT set AKTIV = 0 where ENDRETDATO is not null and ENDRETDATO < ''' +
      FormatDateTime('YYYY-MM-DD', Date) + ''' and IDKLIENT = ' + IntToStr(Dm.g_KlientID) + ' and ' +
      'LEVERANDORNR = ' + IntToStr(TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).Nr);
    adoSQL.Execute;
  end;
  
  lblStatus.Caption := 'Importering fullført!';

  // *** final ****
  adoProd.Close;
  adoKat.Close;
  ImpObj.Free;
  KatObj.Free;
end;

procedure TfrmImportProd.NetShopXMLImport;
var ProdNode, JNode: IXMLNode;
    ImpObj, KatObj: TImpObject;
    I: Integer;
begin
  btnStart.Enabled := False;
  lblStatus.Caption := 'Leser produktfil ...';
  lblStatus.Update;

  XmlDoc.FileName := editFile.Text;
  XmlDoc.Active := True;

  // **** Init ****
  ImpObj := TImpObject.Create;
  KatObj := TImpObject.Create;

  adoProd.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoProd.Parameters.ParamValues['Levnr'] := TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).Nr;
  adoProd.Open;
  adoKat.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoKat.Parameters.ParamValues['Levnr'] := TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).Nr;
  adoKat.Open;

  ProdNode := XmlDoc.DocumentElement;
  Pb.Max := ProdNode.ChildNodes.Count;

  for I := 0 to ProdNode.ChildNodes.Count - 1 do begin
    JNode := ProdNode.ChildNodes.Nodes[I];

    lblStatus.Caption := 'Importerer produkt ' + IntToStr(Pb.Position) + ' av ' +
      IntToStr(Pb.Max) + ' ' + JNode.Attributes['ProduktBeskrivelse1'];
    lblStatus.Update;

    ImpObj.Clear;
    ImpObj.AddValue('IdKlient', Dm.g_KlientID);
    ImpObj.AddValue('LProdnr', JNode.Attributes['Varenr']); // *!
    ImpObj.AddValue('Produktnr', JNode.Attributes['Varenr']);
    ImpObj.AddValue('Navn', JNode.Attributes['ProduktBeskrivelse1']);
    ImpObj.AddValue('Spes', JNode.Attributes['ProduktBeskrivelse2']);
    ImpObj.AddValue('InnPris', JNode.Attributes['Pris']);
    ImpObj.AddValue('Pris', BeregnUtPris(JNode.Attributes['Pris'], blsAvanse.AsFloat));
    ImpObj.AddValue('LagerAnt', JNode.Attributes['Lagerstatus']);
    ImpObj.AddValue('IDProdType', 10);  //Lagervare
    if JNode.Attributes['AltVarenr'] <> '' then
      ImpObj.AddValue('OrgProdNr', JNode.Attributes['AltVarenr'])
    else
      ImpObj.AddValue('OrgProdNr', JNode.Attributes['Varenr']);
    ImpObj.AddValue('Enhet', 'Stk');
    ImpObj.AddValue('Mva', Dm.MvaListe.DefaultMva);
    if cbLev.ItemIndex > 0 then
      ImpObj.AddValue('Leverandornr', TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).Nr);


    KatObj.Clear;
    KatObj.AddValue('IdKlient', Dm.g_KlientID);
    KatObj.AddValue('KatOrgNr', 0);
    KatObj.AddValue('HovedKat', JNode.Attributes['ProduktGruppeLevel2']);
    KatObj.AddValue('UnderKat', JNode.Attributes['ProduktGruppeLevel3']);
    KatObj.AddValue('Leverandornr', TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).Nr);
    ImportItegraKat(KatObj);

    if adoKat.Locate('HovedKat;UnderKat', VarArrayOf([JNode.Attributes['ProduktGruppeLevel2'],
                     JNode.Attributes['ProduktGruppeLevel3']]), []) then begin
      ImpObj.AddValue('KatOrgNr', adoKatKATORGNR.Value);
      if adoKatKategorinr.Value > 0 then
        ImpObj.AddValue('Kategorinr', adoKatKategorinr.Value);
    end;

    //OBS: Her gjenstår ProduktGruppeLevel1 som er Produsent...

    ImporterProdukt(ImpObj);
    if I mod 1000 = 0 then
      Application.ProcessMessages;

    Pb.StepIt;
    Pb.Update;
  end;

  lblStatus.Caption := 'Oppdaterer databasen ...';
  lblStatus.Update;
  
  adoKat.UpdateBatch();
  adoProd.UpdateBatch();

  if cbLev.ItemIndex > 0 then begin
    adoSQL.CommandText := 'update PRODUKT set AKTIV = 0 where ENDRETDATO is not null and ENDRETDATO < ''' +
      FormatDateTime('YYYY-MM-DD', Date) + ''' and IDKLIENT = ' + IntToStr(Dm.g_KlientID) + ' and ' +
      'LEVERANDORNR = ' + IntToStr(TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).Nr);
    adoSQL.Execute;
  end;
  lblStatus.Caption := 'Importering fullført!';

  // *** final ****
  adoProd.Close;
  adoKat.Close;
  ImpObj.Free;
  KatObj.Free;
end;


procedure TfrmImportProd.SantechCVSImport;
var ImpObj, KatObj: TImpObject;
    I: Integer;
    StartNr: Integer;
begin
  btnStart.Enabled := False;
  lblStatus.Caption := 'Leser produktfil ...';
  lblStatus.Update;

  blsList.Lines.LoadFromFile(editFile.Text);
  StartNr := 0;

  // **** Init ****
  ImpObj := TImpObject.Create;
  KatObj := TImpObject.Create;

  adoProd.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoProd.Parameters.ParamValues['Levnr'] := TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).Nr;
  adoProd.Open;
  adoKat.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoKat.Parameters.ParamValues['Levnr'] := TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).Nr;
  adoKat.Open;


  Pb.Max := blsList.Lines.Count;
  if cbColHead.Checked then begin
    StartNr := 1;
    Pb.Max := Pb.Max -1;
  end;

  for I := StartNr to blsList.Lines.Count -1 do begin
    lblStatus.Caption := 'Importerer produkt ' + IntToStr(Pb.Position) + ' av ' +
      IntToStr(Pb.Max) + ' ' + Splitt(blsList.Lines[I], 3);
    lblStatus.Update;

    ImpObj.Clear;
    // Legger til alle produktverdiene...
    ImpObj.AddValue('IdKlient', Dm.g_KlientID);
    ImpObj.AddValue('LProdnr', Splitt(blsList.Lines[I], 2)); // *!
    ImpObj.AddValue('Produktnr', Splitt(blsList.Lines[I], 2));
    ImpObj.AddValue('OrgProdnr', Splitt(blsList.Lines[I], 2));

    ImpObj.AddValue('Navn', Splitt(blsList.Lines[I], 3));
    //ImpObj.AddValue('Spes', Splitt(blsList.Lines[I], 1));

    ImpObj.AddValue('InnPris', Splitt(blsList.Lines[I], 6));
    ImpObj.AddValue('Pris', BeregnUtPris(ImpObj.GetValue('InnPris'), blsAvanse.AsFloat));
    ImpObj.AddValue('Rabatt', Splitt(blsList.Lines[I], 4));
    ImpObj.AddValue('LagerAnt', Splitt(blsList.Lines[I], 7));
    ImpObj.AddValue('AnkDato', Splitt(blsList.Lines[I], 9));

    //Standard verdier ...
    ImpObj.AddValue('Enhet', 'Stk');
    if cbLev.ItemIndex > 0 then
      ImpObj.AddValue('Leverandornr', TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).Nr);
    ImpObj.AddValue('Mva', dm.MvaListe.DefaultMva);
    ImpObj.AddValue('IDProdType', 10);
    // *! Må være med for identifisering av eksisterende produkter.

    KatObj.Clear;
    KatObj.AddValue('IdKlient', Dm.g_KlientID);
    KatObj.AddValue('KatOrgNr', 0);
    KatObj.AddValue('HovedKat', 'SMG');
    KatObj.AddValue('UnderKat', Splitt(blsList.Lines[I], 1));
    ImportItegraKat(KatObj);

    if adoKat.Locate('HovedKat;UnderKat', VarArrayOf(['SMG',
                     KatObj.GetValue('UnderKat')]), []) then begin
      ImpObj.AddValue('KatOrgNr', adoKatKATORGNR.Value);
      if adoKatKategorinr.Value > 0 then
        ImpObj.AddValue('Kategorinr', adoKatKategorinr.Value);
    end;

    ImporterProdukt(ImpObj);
    if I mod 1000 = 0 then
      Application.ProcessMessages;
    
    Pb.StepIt;
    Pb.Update;
  end;

  lblStatus.Caption := 'Oppdaterer databasen ...';
  lblStatus.Update;

  adoKat.UpdateBatch();
  adoProd.UpdateBatch();

  if cbLev.ItemIndex > 0 then begin
    adoSQL.CommandText := 'update PRODUKT set AKTIV = 0 where ENDRETDATO is not null and ENDRETDATO < ''' +
      FormatDateTime('YYYY-MM-DD', Date) + ''' and IDKLIENT = ' + IntToStr(Dm.g_KlientID) + ' and ' +
      'LEVERANDORNR = ' + IntToStr(TNummer(cbLev.Items.Objects[cbLev.ItemIndex]).Nr);
    adoSQL.Execute;
  end;

  lblStatus.Caption := 'Importering fullført!';

  // *** final ****
  adoProd.Close;
  adoKat.Close;
  ImpObj.Free;
  KatObj.Free;

end;

procedure TfrmImportProd.btnStartClick(Sender: TObject);
begin
  if (cbLev.ItemIndex = -1) or (cbRutine.ItemIndex = -1) then begin
    InfoDialog('Manglende info', 'Leverandør og importrutine må velges!'); 
    Exit;
  end;

  Screen.Cursor := crHourGlass;
  if cbNr.Checked then
    adoProd.IndexFieldNames := 'LPRODNR'
  else
    adoProd.IndexFieldNames := '';

  case cbRutine.ItemIndex of
    0: StandardCSVImport;
    1: NorekXMLImport;
    2: SantechCVSImport;
    3: ItegraXMLImport;
    4: NetShopXMLImport;
  end;

  if cbNr.Checked then begin
    Dm.adoKlient.Open;
    Dm.adoKlient.Edit;
    Dm.adoKlientIMPORTNR.Value := editNr.AsInteger;
    Dm.adoKlient.Post;
    Dm.adoKlient.Close;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfrmImportProd.btnFileClick(Sender: TObject);
begin
  if OpenDialog.Execute then begin
    editFile.Text := OpenDialog.FileName;
    btnStart.Enabled := True;
  end;
end;

procedure TfrmImportProd.LastLevListe;
begin
  adoLev.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoLev.Open;

  while not adoLev.Eof do begin
    cbLev.Items.AddObject(adoLevNAVN.Value, TNummer.Create(adoLevKONTAKTNR.Value));
    adoLev.Next;
  end;

  adoLev.Close;
end;

procedure TfrmImportProd.FormCreate(Sender: TObject);
begin
  LastLevListe;
  Pc.ActivePageIndex := 0;
end;

procedure TfrmImportProd.FormDestroy(Sender: TObject);
var I: Integer;
begin
  for I := 0 to cbLev.Items.Count -1 do
    cbLev.Items.Objects[I].Free;
end;

procedure TfrmImportProd.cbRutineChange(Sender: TObject);
begin
  cbColHead.Enabled := (cbRutine.ItemIndex = 0) or (cbRutine.ItemIndex = 2);
end;

procedure TfrmImportProd.cbNrClick(Sender: TObject);
begin
  editNr.ReadOnly := not cbNr.Checked;
  if editNr.ReadOnly then
    editNr.Color := clBtnFace
  else
    editNr.Color := clWindow;

  if cbNr.Checked then begin
    Dm.adoKlient.Open;
    if Dm.adoKlientIMPORTNR.Value > 0 then begin
      editNr.AsInteger := Dm.adoKlientIMPORTNR.Value;
      editNr.ReadOnly := True;
      editNr.Color := clBtnFace;
    end;
    Dm.adoKlient.Close;
  end;

  SetUserBool(RegPath, 'ImportProdnr' + IntToStr(Dm.g_KlientID), cbNr.Checked);
end;

procedure TfrmImportProd.FormShow(Sender: TObject);
begin
  cbNr.Checked := GetUserBool(RegPath, 'ImportProdnr' + IntToStr(Dm.g_KlientID), True);
end;

end.
