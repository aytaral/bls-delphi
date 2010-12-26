unit FrmBestilling;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Buttons, Mask, Spin, ComCtrls, ToolWin;

type
  TBestillingFrm = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    SpeedButton4: TSpeedButton;
    Oppdragedit: TEdit;
    Label4: TLabel;
    OkBtn: TButton;
    LukkBtn: TButton;
    Infocheck: TCheckBox;
    Tlfedit: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Kontaktedit: TEdit;
    Label8: TLabel;
    Tlfoppdragedit: TEdit;
    Label9: TLabel;
    Prisedit: TEdit;
    Label10: TLabel;
    TidEdit: TMaskEdit;
    Label11: TLabel;
    Antalledit: TSpinEdit;
    Status: TLabel;
    Label2: TLabel;
    Label12: TLabel;
    Kundedbe: TEdit;
    Adrdbe: TEdit;
    Postnrdbe: TEdit;
    Poststeddbe: TEdit;
    DatoEdit: TDateTimePicker;
    UtDatoEdit: TDateTimePicker;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    TBNy: TToolButton;
    TBPrint: TToolButton;
    ToolButton3: TToolButton;
    TBF: TToolButton;
    TBN: TToolButton;
    CbBilType: TComboBox;
    Label13: TLabel;
    SbBilType: TSpeedButton;
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TBPrintClick(Sender: TObject);
    procedure InfocheckClick(Sender: TObject);
    procedure OkBtnClick(Sender: TObject);
    procedure TBNyClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TidEditKeyPress(Sender: TObject; var Key: Char);
    procedure TlfoppdrageditKeyPress(Sender: TObject; var Key: Char);
    procedure PriseditKeyPress(Sender: TObject; var Key: Char);
    procedure TBNClick(Sender: TObject);
    procedure TBFClick(Sender: TObject);
    procedure SbBilTypeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Registrer;
    procedure Blank;
    procedure LoadBilTypeListe;
  public
    { Public declarations }
    procedure EndreBestilling;
  end;

var
  BestillingFrm: TBestillingFrm;

implementation

uses DataModul, FrmVelg, blsFileUtil, FrmBilType;

{$R *.DFM}

procedure TBestillingFrm.SpeedButton4Click(Sender: TObject);
begin
 Application.CreateForm(TVelgFrm, VelgFrm);
 VelgFrm.Caption             := 'Velg kunde';
 VelgFrm.Kunde.Visible       := True;
 VelgFrm.SokEditK.Text       := '';
 VelgFrm.SokEditK.Taborder   := 0;
 If VelgFrm.ShowModal = mrOK then begin
  Kundedbe.Text              := DM.KundeDBFirma.Value;
  Adrdbe.Text                := DM.KundeDBAdresse.Value;
  Postnrdbe.Text             := DM.KundeDBPostnr.Value;
  Poststeddbe.Text           := DM.KundeDBPoststed.Value;
 end;
   VelgFrm.Kunde.Visible     := False;
 VelgFrm.Free;
end;

procedure TBestillingFrm.FormActivate(Sender: TObject);
begin
 If Status.Caption   = 'Ny' then begin
 DatoEdit.Date       := Date;
 UtDatoEdit.Date     := Date + 1;
end;
end;

procedure TBestillingFrm.TBPrintClick(Sender: TObject);
begin
 If MessageDlg('Ønsker du å skrive ut dette skjermbildet ?', mtConfirmation, [mbYes, MbNo], 0) = mrYes then
 Print;
end;

procedure TBestillingFrm.EndreBestilling;
begin
  With DM do begin
{   If BestillingDbBilType.Value = 'Lastebil' then LasteBil.Checked := True
   else
   If BestillingDbBilType.Value = 'Budbil' then BudBil.Checked   := True
   else
   If BestillingDbBilType.Value = 'Varebil' then VareBil.Checked  := True
   else
  if BestillingDbBilType.Value = 'Kranbil' then KranBil.Checked  := True;}

   CbBilType.Text            := BestillingDbBilType.Value;
   DatoEdit.Date             := BestillingDBMottatt.Value;
   Kundedbe.Text             := DM.BestillingDBKunde.Value;
   Adrdbe.Text               := DM.BestillingDBAdresse.Value;
   Postnrdbe.Text            := DM.BestillingDBPostnr.Value;
   Poststeddbe.Text          := DM.BestillingDBPoststed.Value;
   TlfEdit.Text              := BestillingDbTelefon.Value;
   KontaktEdit.Text          := BestillingDbKontaktperson.Value;
   If (BestillingDbKontaktperson.Value = KundeDBKontaktperson.Value) and
      (BestillingDBTelefon.Value = KundeDBTelefon.Value) then
   Infocheck.Checked := True;
   OppdragEdit.Text          := BestillingDbOppdrag.Value;
   TlfoppdragEdit.Text       := BestillingDBtlfoppdrag.Value;
   PrisEdit.Text             := CurrToStrF(BestillingDBPris.Value, ffFixed, 2);
   UtdatoEdit.Date           := BestillingDBUtforelse.Value;
   TidEdit.Text              := TimeToStr(BestillingDBTid.Value);
   AntallEdit.Value          := BestillingDBAntpers.Value;
  end;
end;

procedure TBestillingFrm.InfocheckClick(Sender: TObject);
begin
 If Infocheck.Checked = True then begin
  TlfEdit.Text        := DM.KundeDBTelefon.Value;
  KontaktEdit.Text    := DM.KundeDBKontaktperson.Value;
 end
 else
 begin
  TlfEdit.Text        := '';
  KontaktEdit.Text    := '';
 end;
end;

procedure TBestillingFrm.Registrer;
begin
 With Dm do begin
 If Status.Caption = 'Ny' then BestillingDB.Append else BestillingDb.Edit;
  BestillingDBMottatt.Value            := Datoedit.Date;

  {If Budbil.Checked = True then
  BestillingDBBilType.Value            := 'Budbil';
  If Varebil.Checked = True then
  BestillingDBBilType.Value            := 'Varebil';
  If Lastebil.Checked = true then
  BestillingDBBilType.Value            := 'Lastebil';
  If kranbil.Checked = true then}

  BestillingDBBilType.Value            := CbBilType.Text;

  BestillingDBTelefon.Value            := TlfEdit.Text;
  BestillingDBKontaktperson.Value      := KontaktEdit.Text;
  BestillingDBOppdrag.Value            := OppdragEdit.Text;
  BestillingDBtlfoppdrag.Value         := TlfoppdragEdit.Text;
  BestillingDBPris.Value               := StrToCurr(PrisEdit.Text);
  BestillingDBUtforelse.Value          := UtdatoEdit.Date;
  BestillingDBTid.Value                := StrToTime(TidEdit.Text);
  BestillingDBAntpers.Value            := AntallEdit.Value;
  BestillingDBKunde.Value              := Kundedbe.Text;
  BestillingDBAdresse.Value            := Adrdbe.Text;
  BestillingDBPostnr.Value             := Postnrdbe.Text;
  BestillingDBPoststed.Value           := Poststeddbe.Text;
  BestillingDb.Post;
 end;
end;

procedure TBestillingFrm.OkBtnClick(Sender: TObject);
begin
 Registrer;
end;

procedure TBestillingFrm.TBNyClick(Sender: TObject);
begin
 Registrer;
 Status.Caption := 'Ny';
 Blank;
 FormActivate(Sender);
end;

procedure TBestillingFrm.Blank;
begin
 CbBilType.Text                := 'Budbil';
 Kundedbe.Text                 := '';
 Adrdbe.Text                   := '';
 Postnrdbe.Text                := '';
 Poststeddbe.Text              := '';
 TlfEdit.Text                  := '';
 KontaktEdit.Text              := '';
 InfoCheck.Checked             := False;
 OppdragEdit.Text              := '';
 TlfoppdragEdit.Text           := '';
 PrisEdit.Text                 := '0,00';
 UtdatoEdit.Date               := UtDatoEdit.Date + 1;
 TidEdit.Text                  := '12:00';
 AntallEdit.Value              := 1;
end;

procedure TBestillingFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Blank;
end;

procedure TBestillingFrm.TidEditKeyPress(Sender: TObject; var Key: Char);
begin
 If not (key in['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', #8, #13])
 then key := #0;
end;

procedure TBestillingFrm.TlfoppdrageditKeyPress(Sender: TObject;
  var Key: Char);
begin
 If not (key in['1', '2', '3', '4', '5', '6', '7', '+', '8', '9', '0', #8, #13])
 then key := #0;
end;

procedure TBestillingFrm.PriseditKeyPress(Sender: TObject; var Key: Char);
begin
 If not (key in['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', #8, #13])
 then key := #0;
end;

procedure TBestillingFrm.TBNClick(Sender: TObject);
begin
 Registrer;
 DM.BestillingDB.Next;
 Status.Caption       := 'Endre';
 EndreBestilling;
 TBF.Enabled          := True;
 If DM.BestillingDB.EOF then
 TBN.Enabled          := False;
end;

procedure TBestillingFrm.TBFClick(Sender: TObject);
begin
 Registrer;
 DM.BestillingDB.Prior;
 Status.Caption := 'Endre';
 EndreBestilling;
 TBN.Enabled  := True;
 If DM.BestillingDB.BOF then TBF.Enabled := False;
end;

procedure TBestillingFrm.SbBilTypeClick(Sender: TObject);
begin
  BilTypeFrm := TBilTypeFrm.Create(Application);
  BilTypeFrm.ShowModal;
  LoadBilTypeListe;
  BilTypeFrm.Release;
end;

procedure TBestillingFrm.LoadBilTypeListe;
begin
  if FileExists(Dir + 'btliste.dat') then begin
    cbBilType.Items.Clear;
    cbBilType.Items.LoadFromFile(Dir + 'btliste.dat');
  end;
end;

procedure TBestillingFrm.FormCreate(Sender: TObject);
begin
  LoadBilTypeListe;
end;

end.
