unit rsPostnrInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, DB, ADODB;

type
  TfrmPostnrInfo = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    Image: TImage;
    adoPostnr: TADODataSet;
    dsPostnr: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Shape1: TShape;
    Label7: TLabel;
    adoPostnrPOSTNR: TStringField;
    adoPostnrPOSTSTED: TStringField;
    adoPostnrKOMMUNENR: TStringField;
    adoPostnrKOMMUNE: TStringField;
    adoPostnrFYLKE: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Postnr: String;
  end;

var
  frmPostnrInfo: TfrmPostnrInfo;

implementation

uses rsData, blsFileUtil;

{$R *.dfm}

procedure TfrmPostnrInfo.FormShow(Sender: TObject);
begin
  adoPostnr.Parameters.ParamValues['Postnr'] := Postnr;
  adoPostnr.Open;

  if adoPostnrKommunenr.Value <> '' then begin
    Image.Picture.LoadFromFile(Dm.g_ImgDir + Copy(adoPostnrKommunenr.Value, 1, 2) + '.png');
  end;

end;

end.
