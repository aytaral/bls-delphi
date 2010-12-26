unit FrmBilType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TBilTypeFrm = class(TForm)
    Lb: TListBox;
    BtnNy: TButton;
    BtnSlett: TButton;
    BtnLukk: TButton;
    BtnOpp: TButton;
    BtnNed: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnLukkClick(Sender: TObject);
    procedure BtnSlettClick(Sender: TObject);
    procedure BtnNyClick(Sender: TObject);
    procedure BtnOppClick(Sender: TObject);
    procedure BtnNedClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BilTypeFrm: TBilTypeFrm;

implementation

uses blsFileUtil, vtNyVerdi;

{$R *.dfm}

procedure TBilTypeFrm.FormCreate(Sender: TObject);
begin
  if FileExists(Dir + 'btliste.dat') then begin
    Lb.Items.LoadFromFile(Dir + 'btliste.dat');
  end;
end;

procedure TBilTypeFrm.BtnLukkClick(Sender: TObject);
begin
  Lb.Items.SaveToFile(Dir + 'btliste.dat');
end;

procedure TBilTypeFrm.BtnSlettClick(Sender: TObject);
begin
  if MessageBox(Handle, 'Slett valgt biltype?', 'Slett', MB_YESNO + MB_ICONQUESTION) = idYes then
    Lb.DeleteSelected;
end;

procedure TBilTypeFrm.BtnNyClick(Sender: TObject);
begin
  frmNyVerdi := TfrmNyVerdi.Create(Application);
  if frmNyVerdi.ShowModal = mrOK then begin
    Lb.ItemIndex := Lb.Items.Add(frmNyVerdi.EditVerdi.Text);
  end;
  frmNyVerdi.Release;
end;

procedure TBilTypeFrm.BtnOppClick(Sender: TObject);
var Str, Tmp: String;
begin
  if Lb.ItemIndex > 0 then begin
    Str := Lb.Items[Lb.ItemIndex - 1];
    Lb.Items[Lb.ItemIndex - 1] := Lb.Items[Lb.ItemIndex];
    Lb.Items[Lb.ItemIndex] := Str;
    Lb.ItemIndex := Lb.ItemIndex - 1;
  end;
end;

procedure TBilTypeFrm.BtnNedClick(Sender: TObject);
var Str: String;
begin
  if Lb.ItemIndex < Lb.Count -1 then begin
    Str := Lb.Items[Lb.ItemIndex + 1];
    Lb.Items[Lb.ItemIndex + 1] := Lb.Items[Lb.ItemIndex];
    Lb.Items[Lb.ItemIndex] := Str;
    Lb.ItemIndex := Lb.ItemIndex + 1;
  end;

end;

end.
