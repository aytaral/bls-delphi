unit vtEHFExport;

interface

uses SysUtils, Classes, Windows, Variants,
  XMLIntf, XmlDoc, blsFileUtil, blsXMLUtil;


function EHFExport(): IXMLDocument;
procedure SetInvoiceHeader(InvoiceNo, Currency, OrderNo, ContractNo: String;
  InvoiceDate: TDateTime; Node: IXMLNode);


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
  InvoiceDate: TDateTime; Node: IXMLNode);
var
  aNode: IXMLNode;
begin
  blsXMLUtil.SetNodeValue('cbc:ID', InvoiceNo, Node, False);
  blsXMLUtil.SetNodeValue('cbc:IssueDate', FormatDateTime('yyyy-mm-dd', InvoiceDate), Node, False);
  blsXMLUtil.SetNodeValue('cbc:DocumentCurrencyCode', Currency, Node, False);

  if OrderNo <> '' then begin
    aNode := Node.AddChild('cac:OrderReference');
    aNode.ChildValues['cbc:ID'] := OrderNo;
  end;

  if ContractNo <> '' then begin
    aNode := Node.AddChild('cac:ContractDocumentReference');
    aNode.ChildValues['cbc:ID'] := ContractNo;
  end;
end;



end.
