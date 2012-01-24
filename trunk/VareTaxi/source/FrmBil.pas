unit FrmBil;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ToolWin, DataModul;

type
  TBilFrm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Bilnredit: TEdit;
    Regedit: TEdit;
    bilmerkeedit: TEdit;
    typeedit: TEdit;
    modelledit: TEdit;
    kmprisedit: TEdit;
    timeprisedit: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Status: TLabel;
    lokaledit: TEdit;
    Label8: TLabel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    TBNy: TToolButton;
    TBPrint: TToolButton;
    TBNr: TToolButton;
    ToolButton3: TToolButton;
    TBF: TToolButton;
    TBN: TToolButton;
    cbInaktiv: TCheckBox;
    procedure TBPrintClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TBNrClick(Sender: TObject);
    procedure TBNClick(Sender: TObject);
    procedure TBFClick(Sender: TObject);
    procedure TBNyClick(Sender: TObject);
    procedure kmpriseditKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure BilnreditKeyPress(Sender: TObject; var Key: Char);
    procedure BilnreditExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure modelleditKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure Registrer;
    procedure Blank;
  public
    { Public declarations }
    procedure EndreBil;

  end;

var
  BilFrm: TBilFrm;

implementation

{$R *.DFM}

procedure TBilFrm.TBPrintClick(Sender: TObject);
begin
 If MessageDlg('Ønsker du å skrive ut dette skjermbildet ?', mtConfirmation, [mbYes, MbNo], 0) = mrYes then
 Print;
end;

procedure TBilFrm.Registrer;
begin
 With DM Do
 begin
  If Status.Caption = 'Ny' then BilDB.Append else BilDB.Edit;
  BilDBBilnr.Value    := StrToFloat(BilnrEdit.Text);
  BilDBRegnr.Value    := Regedit.Text;
  BilDBBilmerke.Value := BilmerkeEdit.Text;
  BilDBModell.Value   := Modelledit.Text;
  BilDBType.Value     := Typeedit.Text;
  BilDBKmpris.Value   := StrToCurr(Kmprisedit.Text);
  BilDBTimepris.Value := StrToCurr(Timeprisedit.Text);
  BilDBLokalPris.Value:= StrToCurr(Lokaledit.Text);
  BilDBInAktiv.Value  := cbInAktiv.Checked;
  BilDB.Post;
 end;
end;

procedure TBilFrm.EndreBil;
begin
 With DM Do
 begin
  BilnrEdit.Text     :=   FloatToStr(BilDBBilnr.Value);
  Regedit.Text       :=   BilDBRegnr.Value;
  BilmerkeEdit.Text  :=   BilDBBilmerke.Value;
  Modelledit.Text    :=   BilDBModell.Value;
  Typeedit.Text      :=   BilDBType.Value;
  Kmprisedit.Text    :=   CurrToStrF(BilDBKmpris.Value, ffFixed, 2);
  Timeprisedit.Text  :=   CurrToStrF(BilDBTimepris.Value, ffFixed, 2);
  Lokaledit.Text     :=   CurrToStrF(BilDBLokalpris.Value, ffFixed, 2);
  cbInAktiv.Checked  :=   BilDBInAktiv.Value;
 end;
end;

procedure TBilFrm.Button1Click(Sender: TObject);
begin
 Registrer;
end;

procedure TBilFrm.TBNrClick(Sender: TObject);
begin
 BilnrEdit.SetFocus;
 BilnrEdit.ReadOnly := False;
 BilnrEdit.Color := clWhite;
 TBNr.Enabled := False;
end;

procedure TBilFrm.TBNClick(Sender: TObject);
begin
 Registrer;
 DM.BilDB.Next;
 Status.Caption := 'Endre';
 EndreBil;
 TBF.Enabled := True;
 If DM.BilDB.EOF then
 TBN.Enabled  := False;
end;

procedure TBilFrm.TBFClick(Sender: TObject);
begin
 Registrer;
 DM.BilDB.Prior;
 Status.Caption := 'Endre';
 EndreBil;
 TBN.Enabled := True;
 If DM.BilDB.BOF then
 TBF.Enabled  := False;
end;

procedure TBilFrm.Blank;
begin
 BilnrEdit.Text     := '';
 RegEdit.Text       := '';
 BilmerkeEdit.Text  := '';
 Modelledit.Text    := '';
 Typeedit.Text      := '';
 Kmprisedit.Text    := '0,00';
 Timeprisedit.Text  := '0,00';
 Lokaledit.Text     := '0,00';
 cbInAktiv.Checked  := False;
end;

procedure TBilFrm.TBNyClick(Sender: TObject);
begin
 Registrer;
 Status.Caption := 'Ny';
 Blank;
 FormActivate(Sender);
end;

procedure TBilFrm.kmpriseditKeyPress(Sender: TObject; var Key: Char);
begin
If not (key in['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', #8, #13])
 then key := #0;
end;

procedure TBilFrm.FormActivate(Sender: TObject);
begin
 If Status.Caption = 'Ny' then begin
 With DM Do
  begin
  BilDB.Last;
  BilnrEDIT.Text := FloatToStr(BilDBBilnr.Value + 1);
  end;
 end;
 RegEdit.SetFocus;
end;

procedure TBilFrm.BilnreditKeyPress(Sender: TObject; var Key: Char);
begin
 If not (key in['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '.', #8, #13])
 then key := #0;
 If TBNr.enabled = false then begin
 If Key = #13 then begin
 If DM.BilDB.Locate('Bilnr', Bilnredit.text, []) then
 MessageDlg('Bilnummeret eksisterer fra før!', mtInformation, [mbOK], 0)
 else
 begin
 BilnrEdit.Color := clSilver;
 BilnrEdit.ReadOnly := True;
 BilnrEdit.SetFocus;
 TBNr.Enabled := True;
 end;
 end;
 end;
end;

procedure TBilFrm.BilnreditExit(Sender: TObject);
begin
 If TBNr.Enabled = False then begin
 If DM.BilDB.Locate('Bilnr', Bilnredit.text, []) then
 begin
 MessageDlg('Bilnummeret eksisterer fra før!', mtInformation, [mbOK], 0);
 BilnrEdit.SetFocus;
 end
 else
 begin
 Bilnredit.Color := clSilver;
 Bilnredit.ReadOnly := True;
 Bilnredit.SetFocus;
 TBNr.Enabled := True;
 end;
 end;
end;

procedure TBilFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Blank;
end;

procedure TBilFrm.modelleditKeyPress(Sender: TObject; var Key: Char);
begin
 If not (key in['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', #8, #13])
 then key := #0;
end;

end.
