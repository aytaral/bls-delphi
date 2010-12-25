unit faPakkenr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables;

type
  TFrmPakkeNr = class(TForm)
    BtnOK: TButton;
    BtnAvbryt: TButton;
    GroupBox1: TGroupBox;
    EditID: TEdit;
    EditNr: TEdit;
    EditNo: TEdit;
    BtnNr: TButton;
    TblPost: TTable;
    TblPostPakkeNr: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnNrClick(Sender: TObject);
    procedure EditNrKeyPress(Sender: TObject; var Key: Char);
    procedure BtnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPakkeNr: TFrmPakkeNr;

implementation

uses blsMisc, blsString;

{$R *.dfm}

procedure TFrmPakkeNr.FormCreate(Sender: TObject);
begin
  TblPost.Open;
end;

procedure TFrmPakkeNr.FormDestroy(Sender: TObject);
begin
  TblPost.Close;
end;

procedure TFrmPakkeNr.BtnNrClick(Sender: TObject);
var S: String;
begin
  if EditNr.Text <> '' then begin
    EditNr.Text := IntToStr(StrToInt(EditNr.Text) + 1);
    if Length(EditNr.Text) < 9 then begin
      S := EditNr.Text;
      EditNr.Text := blsString.FillWithChar(S, 9, '0');
   end;
  end;

end;

procedure TFrmPakkeNr.EditNrKeyPress(Sender: TObject; var Key: Char);
begin
  blsMisc.IntKontroll(Key);
end;

procedure TFrmPakkeNr.BtnOKClick(Sender: TObject);
begin
  if TblPost.FindKey([EditID.Text + EditNr.Text + EditNo.Text]) then begin
    ModalResult := mrNone;
    MessageBox(Handle, 'Pakkenummeret eksisterer fra før!', 'Feilmelding', MB_OK + MB_ICONERROR);
  end;
end;

end.
