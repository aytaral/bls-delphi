unit faDBCheck;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, blsDBCheck, ComCtrls;

type
  TFrmDBCheck = class(TForm)
    BtnAvbryt: TButton;
    BtnOk: TButton;
    GroupBox1: TGroupBox;
    CbIndex: TCheckBox;
    PbIndex: TProgressBar;
    CbPack: TCheckBox;
    PbPack: TProgressBar;
    blsDBCheck: TblsDBCheck;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure blsDBCheckCheckIndexs(Sender: TObject; Status: String;
      PercentDone: Integer);
    procedure blsDBCheckPackDatabase(Sender: TObject; Status: String;
      PercentDone: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDBCheck: TFrmDBCheck;

implementation

uses DataModul, blsFileUtil;

{$R *.dfm}

procedure TFrmDBCheck.FormCreate(Sender: TObject);
begin
  blsDBCheck.DefFile := Dir + 'datadef.bls';
end;

procedure TFrmDBCheck.BtnOkClick(Sender: TObject);
begin
  if CbIndex.Checked then
    blsDbCheck.CheckIndexs(Dm.DBFakuva.Params.Values['Path']);
  if CbPack.Checked then
    blsDbCheck.PackDatabase(Dm.DBFakuva.Params.Values['Path']);
end;

procedure TFrmDBCheck.blsDBCheckCheckIndexs(Sender: TObject;
  Status: String; PercentDone: Integer);
begin
  PbIndex.Position := PercentDone;
end;

procedure TFrmDBCheck.blsDBCheckPackDatabase(Sender: TObject;
  Status: String; PercentDone: Integer);
begin
  PbPack.Position := PercentDone;
end;

end.
