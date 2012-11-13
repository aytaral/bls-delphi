unit vtEHFExport;

interface

uses SysUtils, Classes, Windows, Variants,
  XMLIntf, XmlDoc, blsFileUtil, blsXMLUtil;


function EHFExport(): IXMLDocument;
procedure SetInvoiceHeader(InvoiceNo, Currency, OrderNo, ContractNo: String;
  InvoiceDate: TDateTime; Root: IXMLNode);
procedure SetCompanyInfo(Name, Postbox, Street, City, PostCode, CountryCode,
  OrgNo, OurRef: String; Root: IXMLNode);
procedure SetCustomerInfo(Id, Name, Street, City, PostCode, CountryCode, OrgNo,
  YourRef: String; Root: IXMLNode);

implementation

function EHFExport(): IXMLDocument;
var
  xDoc: IXMLDocument;
  aNode: IXMLNode;
begin
  xDoc := blsXMLUtil.CreateXMLDocument('Invoice', 'UTF-8');

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

  blsXMLUtil.SetNodeValue('cac:PartyName\cbc:Name', Name, tNode, False);

  aNode := tNode.AddChild('cac:PostalAddress');
  blsXMLUtil.SetNodeValue('cbc:Postbox', Postbox, aNode, False);
  blsXMLUtil.SetNodeValue('cbc:StreetName', Street, aNode, False);
  //blsXMLUtil.SetNodeValue('cbc:BuildingNumber', '', aNode, False);
  blsXMLUtil.SetNodeValue('cbc:CityName', City, aNode, False);
  blsXMLUtil.SetNodeValue('cbc:PostalZone', PostCode, aNode, False);
  blsXMLUtil.SetNodeValue('cac:Country\cbc:IdentificationCode', CountryCode, aNode, False);

  aNode := tNode.AddChild('cac:PartyTaxScheme');
  blsXMLUtil.SetNodeValue('cbc:CompanyID', FullOrgNo, aNode, False);

  //Hardkodet TAX-Scheme tagger
  aNode := aNode.AddChild('cac:TaxScheme');
  aNode := aNode.AddChild('cbc:ID');
  aNode.Attributes['schemeID'] := 'UN/ECE 5153';
  aNode.Attributes['schemeAgencyID'] := '6';
  aNode.NodeValue := 'VAT';

  blsXMLUtil.SetNodeValue('cac:PartyLegalEntity\cbc:CompanyID', CompNo, tNode, False);
  blsXMLUtil.SetNodeValue('cac:Contact\cbc:ID', OurRef, tNode, False);
end;

procedure SetCustomerInfo(Id, Name, Street, City, PostCode, CountryCode, OrgNo,
  YourRef: String; Root: IXMLNode);
var
  aNode, tNode: IXMLNode;
  CompNo: String;
begin
  tNode := Root.AddChild('cac:AccountingCustomerParty');
  tNode := tNode.AddChild('cac:Party');

  blsXMLUtil.SetNodeValue('cac:PartyIdentification\cbc:ID', Id, tNode, False);
  blsXMLUtil.SetNodeValue('cac:PartyName\cbc:Name', Name, tNode, False);

  aNode := tNode.AddChild('cac:PostalAddress');
  blsXMLUtil.SetNodeValue('cbc:StreetName', Street, aNode, False);
  //blsXMLUtil.SetNodeValue('cbc:BuildingNumber', '', aNode, False);
  blsXMLUtil.SetNodeValue('cbc:CityName', City, aNode, False);
  blsXMLUtil.SetNodeValue('cbc:PostalZone', PostCode, aNode, False);
  blsXMLUtil.SetNodeValue('cac:Country\cbc:IdentificationCode', CountryCode, aNode, False);

  //Fjerner uønskede elementer fra org no.
  CompNo := AnsiUpperCase(OrgNo);
  CompNo := StringReplace(CompNo, '.', '', [rfReplaceAll]);
  CompNo := StringReplace(CompNo, ' ', '', [rfReplaceAll]);
  CompNo := StringReplace(CompNo, 'NO', '', []);
  CompNo := StringReplace(CompNo, 'MVA', '', []);

  blsXMLUtil.SetNodeValue('cac:PartyLegalEntity\cbc:CompanyID', CompNo, tNode, False);
  blsXMLUtil.SetNodeValue('cac:Contact\cbc:ID', YourRef, tNode, False);
end;



end.
