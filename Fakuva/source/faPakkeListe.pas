unit faPakkeListe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBTables, StdCtrls;

type
  TFrmPakkeListe = class(TForm)
    TblPost: TTable;
    DBGrid1: TDBGrid;
    DsPost: TDataSource;
    TblPostPakkeNr: TStringField;
    TblPostDato: TDateField;
    TblPostKunde: TStringField;
    TblPostPostboks: TStringField;
    TblPostFPostnr: TStringField;
    TblPostFPoststed: TStringField;
    TblPostPostnr: TStringField;
    TblPostAdresse: TStringField;
    TblPostTelefon: TStringField;
    TblPostPakketype: TIntegerField;
    TblPostSone: TIntegerField;
    TblPostHoyde: TFloatField;
    TblPostBredde: TFloatField;
    TblPostDybde: TFloatField;
    TblPostVolum: TFloatField;
    TblPostVekt: TFloatField;
    TblPostVolumVekt: TFloatField;
    TblPostPris: TFloatField;
    TblPostInfo: TStringField;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPakkeListe: TFrmPakkeListe;

implementation

{$R *.dfm}

procedure TFrmPakkeListe.FormCreate(Sender: TObject);
begin
  TblPost.Open;
end;

procedure TFrmPakkeListe.FormDestroy(Sender: TObject);
begin
  TblPost.Close;
end;

end.
