unit rsFakturaStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, DBCtrls;

type
  TfrmFakturaStatus = class(TForm)
    GroupBox1: TGroupBox;
    btnOK: TButton;
    btnAvbryt: TButton;
    dblStatus: TDBLookupComboBox;
    adoStatus: TADODataSet;
    dsStatus: TDataSource;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFakturaStatus: TfrmFakturaStatus;

implementation

uses rsData;

{$R *.dfm}

procedure TfrmFakturaStatus.FormCreate(Sender: TObject);
begin
  adoStatus.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
  adoStatus.Open;
end;

procedure TfrmFakturaStatus.FormDestroy(Sender: TObject);
begin
  adoStatus.Close;
end;

end.
