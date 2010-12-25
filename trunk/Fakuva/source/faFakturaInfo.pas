unit faFakturaInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DBCtrls;

type
  TFrmFakturaInfo = class(TForm)
    Button1: TButton;
    Button2: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFakturaInfo: TFrmFakturaInfo;

implementation

uses Datamodul;

{$R *.dfm}

end.
