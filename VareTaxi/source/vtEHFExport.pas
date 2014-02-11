unit vtEHFExport;

interface

uses SysUtils, Classes, Windows, Variants, Math,
  XMLIntf, XmlDoc, blsFileUtil, blsXMLUtil, IniFiles;


function EHFInvoiceExport(): IXMLDocument;
procedure SetInvoiceHeader(InvoiceNo, Currency, OrderNo, ContractNo: String;
  InvoiceDate: TDateTime; Root: IXMLNode);
procedure SetCompanyInfo(Name, Postbox, Street, City, PostCode, CountryCode,
  OrgNo, OurRef: String; Root: IXMLNode);
procedure SetCustomerInfo(Id, Name, Street, City, PostCode, CountryCode, OrgNo,
  YourRef: String; Root: IXMLNode);
procedure SetDeliveryInfo(DelDate: TDateTime; Street, City, PostCode,
  CountryCode: String; Root: IXMLNode);

procedure SetPaymentInfo(DueDate: TDateTime; KID: String; AccountNo: String;
  Root: IXMLNode);
function SetTaxTotalInfo(Currency: String; Mva: Double; Root: IXMLNode): IXMLNode;
procedure SetTaxSubTotal(Currency: String; MvaPercent,
  SubTotal, MvaSubTotal: Double; TaxNode: IXMLNode);
procedure SetInvoiceTotals(Currency: String; SumEx, SumInc: Double; Root: IXMLNode);

procedure AddLine(LineNo: Integer; Currency, OrderNo, UnitCode, ItemNo,
  ItemText: String; Qty, ItemPrice, MvaPercent: Double; Root: IXMLNode);

implementation

function EHFInvoiceExport(): IXMLDocument;
var
  xDoc: IXMLDocument;
  aNode: IXMLNode;
begin
  xDoc := blsXMLUtil.CreateXMLDocument('Invoice', 'UTF-8', 'EHF-faktura_NO.xslt');

  xDoc.DocumentElement.Attributes['xsi:schemaLocation'] := 'urn:oasis:names:specification:ubl:schema:xsd:Invoice-2 UBL-Invoice-2.0.xsd';
  xDoc.DocumentElement.DeclareNamespace('', 'urn:oasis:names:specification:ubl:schema:xsd:Invoice-2');
  xDoc.DocumentElement.DeclareNamespace('xsi', 'http://www.w3.org/2001/XMLSchema-instance');
  xDoc.DocumentElement.DeclareNamespace('cac', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2');
  xDoc.DocumentElement.DeclareNamespace('cbc', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2');
  xDoc.DocumentElement.DeclareNamespace('ext', 'urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2');

  blsXMLUtil.SetNodeValue('cbc:UBLVersionID', '2.0', xDoc.DocumentElement, False);
  blsXMLUtil.SetNodeValue('cbc:CustomizationID', 'urn:www.cenbii.eu:transaction:biicoretrdm010:ver1.0:#urn:www.peppol.eu:bis:peppol4a:ver1.0#urn:www.difi.no:ehf:faktura:ver1', xDoc.DocumentElement, False);
  blsXMLUtil.SetNodeValue('cbc:ProfileID', 'urn:www.cenbii.eu:profile:bii04:ver1.0', xDoc.DocumentElement, False);

  Result := xDoc;
end;

function GetTaxCode(Value: Double): String;
const
  Ep = 0.001;
begin
  if SameValue(Value, 25, Ep) then Result := 'S'
  else if SameValue(Value, 15, Ep) then Result := 'H'
  else if SameValue(Value, 8, Ep) then Result := 'AA'
  else if SameValue(Value, 0, Ep) then Result := 'Z'
  else if SameValue(Value, -1, Ep) then Result := 'E';
end;

procedure SetInvoiceHeader(InvoiceNo, Currency, OrderNo, ContractNo: String;
  InvoiceDate: TDateTime; Root: IXMLNode);
var
  aNode: IXMLNode;
begin
  blsXMLUtil.SetNodeValue('cbc:ID', InvoiceNo, Root, False);
  blsXMLUtil.SetNodeValue('cbc:IssueDate', FormatDateTime('yyyy-mm-dd', InvoiceDate), Root, False);
  blsXMLUtil.SetNodeValue('cbc:DocumentCurrencyCode', Currency, Root, False);

  if OrderNo <> '' then
    blsXMLUtil.SetNodeValue('cac:OrderReference\cbc:ID', OrderNo, Root, False);

  if ContractNo <> '' then
    blsXMLUtil.SetNodeValue('cac:ContractDocumentReference\cbc:ID', ContractNo, Root, False);
end;

procedure SetTaxScheme(IncludeScheme: Boolean; var Root: IXMLNode);
var
  aNode: IXMLNode;
begin
  aNode := Root.AddChild('cac:TaxScheme');
  aNode := aNode.AddChild('cbc:ID');
  if IncludeScheme then begin
    aNode.Attributes['schemeID'] := 'UN/ECE 5153';
    aNode.Attributes['schemeAgencyID'] := '6';
    aNode.NodeValue := 'VAT';
  end;
end;

procedure SetCompanyInfo(Name, Postbox, Street, City, PostCode, CountryCode,
  OrgNo, OurRef: String; Root: IXMLNode);
var
  aNode, tNode: IXMLNode;
  FullOrgNo, CompNo: String;
begin
  FullOrgNo := AnsiUpperCase(OrgNo);
  FullOrgNo := StringReplace(FullOrgNo, '.', '', [rfReplaceAll]);
  FullOrgNo := StringReplace(FullOrgNo, ' ', '', [rfReplaceAll]);

  CompNo := StringReplace(FullOrgNo, 'NO', '', []);
  CompNo := StringReplace(CompNo, 'MVA', '', []);

  tNode := Root.AddChild('cac:AccountingSupplierParty');
  tNode := tNode.AddChild('cac:Party');

  if CountryCode = 'NO' then
    blsXMLUtil.SetNodeValue('cbc:EndpointID', '9908:' + CompNo, tNode, False);
  blsXMLUtil.SetNodeValue('cac:PartyName\cbc:Name', Name, tNode, False);

  aNode := tNode.AddChild('cac:PostalAddress');
  if Postbox <> '' then
    blsXMLUtil.SetNodeValue('cbc:Postbox', Postbox, aNode, False);
  blsXMLUtil.SetNodeValue('cbc:StreetName', Street, aNode, False);
  //blsXMLUtil.SetNodeValue('cbc:BuildingNumber', '', aNode, False);
  blsXMLUtil.SetNodeValue('cbc:CityName', City, aNode, False);
  blsXMLUtil.SetNodeValue('cbc:PostalZone', PostCode, aNode, False);
  blsXMLUtil.SetNodeValue('cac:Country\cbc:IdentificationCode', CountryCode, aNode, False);

  aNode := tNode.AddChild('cac:PartyTaxScheme');
  blsXMLUtil.SetNodeValue('cbc:CompanyID', FullOrgNo, aNode, False);
  SetTaxScheme(True, aNode);

  blsXMLUtil.SetNodeValue('cac:PartyLegalEntity\cbc:CompanyID', CompNo, tNode, False);
  blsXMLUtil.SetNodeValue('cac:Contact\cbc:ID', OurRef, tNode, False);
end;

procedure SetCustomerInfo(Id, Name, Street, City, PostCode, CountryCode, OrgNo,
  YourRef: String; Root: IXMLNode);
var
  aNode, tNode: IXMLNode;
  CompNo: String;
begin
  //Fjerner uønskede elementer fra org no.
  CompNo := AnsiUpperCase(OrgNo);
  CompNo := StringReplace(CompNo, '.', '', [rfReplaceAll]);
  CompNo := StringReplace(CompNo, ' ', '', [rfReplaceAll]);
  CompNo := StringReplace(CompNo, 'NO', '', []);
  CompNo := StringReplace(CompNo, 'MVA', '', []);

  tNode := Root.AddChild('cac:AccountingCustomerParty');
  tNode := tNode.AddChild('cac:Party');

  if CountryCode = 'NO' then
    blsXMLUtil.SetNodeValue('cbc:EndpointID', '9908:' + CompNo, tNode, False);

  blsXMLUtil.SetNodeValue('cac:PartyIdentification\cbc:ID', Id, tNode, False);
  blsXMLUtil.SetNodeValue('cac:PartyName\cbc:Name', Name, tNode, False);

  aNode := tNode.AddChild('cac:PostalAddress');
  blsXMLUtil.SetNodeValue('cbc:StreetName', Street, aNode, False);
  //blsXMLUtil.SetNodeValue('cbc:BuildingNumber', '', aNode, False);
  blsXMLUtil.SetNodeValue('cbc:CityName', City, aNode, False);
  blsXMLUtil.SetNodeValue('cbc:PostalZone', PostCode, aNode, False);
  blsXMLUtil.SetNodeValue('cac:Country\cbc:IdentificationCode', CountryCode, aNode, False);

  blsXMLUtil.SetNodeValue('cac:PartyLegalEntity\cbc:CompanyID', CompNo, tNode, False);
  blsXMLUtil.SetNodeValue('cac:Contact\cbc:ID', YourRef, tNode, False);
end;

procedure SetDeliveryInfo(DelDate: TDateTime; Street, City, PostCode,
  CountryCode: String; Root: IXMLNode);
var
  tNode: IXMLNode;
begin
  tNode := Root.AddChild('cac:Delivery');
  blsXMLUtil.SetNodeValue('cbc:ActualDeliveryDate', FormatDateTime('yyyy-mm-dd', DelDate), tNode, False);

  tNode := tNode.AddChild('cac:DeliveryLocation');
  tNode := tNode.AddChild('cac:Address');

  blsXMLUtil.SetNodeValue('cbc:StreetName', Street, tNode, False);
  blsXMLUtil.SetNodeValue('cbc:CityName', City, tNode, False);
  blsXMLUtil.SetNodeValue('cbc:PostalZone', PostCode, tNode, False);
  blsXMLUtil.SetNodeValue('cac:Country\cbc:IdentificationCode', CountryCode, tNode, False);
end;

procedure SetPaymentInfo(DueDate: TDateTime; KID: String; AccountNo: String;
  Root: IXMLNode);
var
  tNode: IXMLNode;
  ANo: String;
begin
  tNode := Root.AddChild('cac:PaymentMeans');
  blsXMLUtil.SetNodeValue('cbc:PaymentMeansCode', '31', tNode, False);  //31 = Faktura, 30 = Kreditnota
  blsXMLUtil.SetNodeValue('cbc:PaymentDueDate', FormatDateTime('yyyy-mm-dd', DueDate), tNode, False);
  blsXMLUtil.SetNodeValue('cbc:PaymentID', KID, tNode, False);

  tNode := tNode.AddChild('cac:PayeeFinancialAccount');
  tNode := tNode.AddChild('cbc:ID');
  tNode.Attributes['schemeID'] := 'BBAN'; //BBAN = Kontonr, IBAN = Swift kode

  ANo := StringReplace(AccountNo, '.', '', [rfReplaceAll]);
  ANo := StringReplace(ANo, ' ', '', [rfReplaceAll]);
  tNode.NodeValue := ANo;
end;

function SetTaxTotalInfo(Currency: String; Mva: Double; Root: IXMLNode): IXMLNode;
var
  tNode, aNode: IXMLNode;
  OldSep: Char;
begin
  OldSep := DecimalSeparator;
  DecimalSeparator := '.';

  tNode := Root.AddChild('cac:TaxTotal');

  aNode := tNode.AddChild('cbc:TaxAmount');
  aNode.Attributes['currencyID'] := Currency;
  aNode.NodeValue := FormatFloat('0.00', Mva);

  DecimalSeparator := OldSep;
  Result := tNode;
end;

procedure SetTaxSubTotal(Currency: String; MvaPercent,
  SubTotal, MvaSubTotal: Double; TaxNode: IXMLNode);
var
  tNode, aNode: IXMLNode;
  OldSep: Char;
begin
  OldSep := DecimalSeparator;
  DecimalSeparator := '.';

  tNode := TaxNode.AddChild('cac:TaxSubtotal');

  aNode := tNode.AddChild('cbc:TaxableAmount');
  aNode.Attributes['currencyID'] := Currency;
  aNode.NodeValue := FormatFloat('0.00', SubTotal);

  aNode := tNode.AddChild('cbc:TaxAmount');
  aNode.Attributes['currencyID'] := Currency;
  aNode.NodeValue := FormatFloat('0.00', MvaSubTotal);

  aNode := tNode.AddChild('cac:TaxCategory');
  blsXMLUtil.SetNodeValue('cbc:ID', GetTaxCode(MvaPercent), aNode, False);
  if MvaPercent = -1 then
    MvaPercent := 0;
  blsXMLUtil.SetNodeValue('cbc:Percent', FormatFloat('0.00', MvaPercent), aNode, False);
  SetTaxScheme(True, aNode);
//  blsXMLUtil.SetNodeValue('cac:TaxScheme\cbc:ID', 'VAT', aNode, False);

  DecimalSeparator := OldSep;
end;

procedure SetInvoiceTotals(Currency: String; SumEx, SumInc: Double; Root: IXMLNode);
var
  tNode, aNode: IXMLNode;
  OldSep: Char;
begin
  tNode := Root.AddChild('cac:LegalMonetaryTotal');

  OldSep := DecimalSeparator;
  DecimalSeparator := '.';

  aNode := tNode.AddChild('cbc:LineExtensionAmount');
  aNode.Attributes['currencyID'] := Currency;
  aNode.NodeValue := FormatFloat('0.00', SumEx);

  aNode := tNode.AddChild('cbc:TaxExclusiveAmount');
  aNode.Attributes['currencyID'] := Currency;
  aNode.NodeValue := FormatFloat('0.00', SumEx);

  aNode := tNode.AddChild('cbc:TaxInclusiveAmount');
  aNode.Attributes['currencyID'] := Currency;
  aNode.NodeValue := FormatFloat('0.00', SumInc);

  aNode := tNode.AddChild('cbc:PayableAmount');
  aNode.Attributes['currencyID'] := Currency;
  aNode.NodeValue := FormatFloat('0.00', SumInc);

  DecimalSeparator := OldSep;
end;

function MapUnitCodes(UnitCode: String): String;
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(Dir + 'EHF.ini');
  try
    Result := Ini.ReadString('UnitCodes', AnsiUpperCase(UnitCode), '');

    if Result = '' then
      Result := AnsiUpperCase(UnitCode)
    else
      Result := AnsiUpperCase(UnitCode);
  finally
    Ini.Free;
  end;
end;

procedure AddLine(LineNo: Integer; Currency, OrderNo, UnitCode, ItemNo,
  ItemText: String; Qty,ItemPrice, MvaPercent: Double; Root: IXMLNode);
var
  tNode, aNode: IXMLNode;
  OldSep: Char;
  Mva: Double;
begin
  tNode := Root.AddChild('cac:InvoiceLine');
  blsXMLUtil.SetNodeValue('cbc:ID', LineNo, tNode, False);

  OldSep := DecimalSeparator;
  DecimalSeparator := '.';

  aNode := tNode.AddChild('cbc:InvoicedQuantity');
  if UnitCode <> '' then
    aNode.Attributes['unitCode'] := MapUnitCodes(UnitCode);
  aNode.NodeValue := FormatFloat('0.00', Qty);

  aNode := tNode.AddChild('cbc:LineExtensionAmount');
  aNode.Attributes['currencyID'] := Currency;
  aNode.NodeValue := FormatFloat('0.00', (Qty * ItemPrice));

  blsXMLUtil.SetNodeValue('cac:OrderLineReference\cbc:LineID', OrderNo + '##1', tNode, False);

  //Tax
  aNode := tNode.AddChild('cac:TaxTotal');
  aNode := aNode.AddChild('cbc:TaxAmount');
  aNode.Attributes['currencyID'] := Currency;
  Mva := (Qty * ItemPrice) * MvaPercent;
  if Mva > 0 then
    Mva := (Mva / 100)
  else
    Mva := 0;
  aNode.NodeValue := FormatFloat('0.00', Mva);

  //Item details
  aNode := tNode.AddChild('cac:Item');
  blsXMLUtil.SetNodeValue('cbc:Name', ItemText, aNode, False);
  if ItemNo <> '' then
    blsXMLUtil.SetNodeValue('cac:SellersItemIdentification\cbc:ID', ItemNo, aNode, False);
  aNode := aNode.AddChild('cac:ClassifiedTaxCategory');
  blsXMLUtil.SetNodeValue('cbc:ID', GetTaxCode(MvaPercent), aNode, False);
  if MvaPercent = -1 then
    MvaPercent := 0;
  blsXMLUtil.SetNodeValue('cbc:Percent', FormatFloat('0.00', MvaPercent), aNode, False);
  SetTaxScheme(True, aNode);
//  blsXMLUtil.SetNodeValue('cac:TaxScheme\cbc:ID', 'VAT', aNode, False);

  //Price
  aNode := tNode.AddChild('cac:Price');
  aNode := aNode.AddChild('cbc:PriceAmount');
  aNode.Attributes['currencyID'] := Currency;
  aNode.NodeValue := FormatFloat('0.00', ItemPrice);

  DecimalSeparator := OldSep;
end;

end.
