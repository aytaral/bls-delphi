unit faInnstillinger;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, ExtCtrls, Mask, Registry, DBCtrls, DB, Spin;

type
  TFrmInnstillinger = class(TForm)
    Tre: TTreeView;
    Ark: TPageControl;
    Generelt: TTabSheet;
    Sortering: TTabSheet;
    Nummerering: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BtnLukk: TButton;
    Rapporter: TTabSheet;
    Logg: TTabSheet;
    GroupBox3: TGroupBox;
    LoggMemo: TMemo;
    Button2: TButton;
    GroupBox4: TGroupBox;
    ChkLogging: TCheckBox;
    EditLoggfil: TEdit;
    Label1: TLabel;
    GroupBox5: TGroupBox;
    ChkSkopi: TCheckBox;
    RgSorterFaktura: TRadioGroup;
    RgSorterKunde: TRadioGroup;
    RgSorterVare: TRadioGroup;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    ChkLogo: TCheckBox;
    RgForfallsdato: TRadioGroup;
    RgPurregebyr: TRadioGroup;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    Image1: TImage;
    TittelLbl: TLabel;
    RgSorterLeverandor: TRadioGroup;
    GroupBox10: TGroupBox;
    Label6: TLabel;
    RgVisning: TRadioGroup;
    DBFakturanr: TDBEdit;
    DBKundenr: TDBEdit;
    DBVarenr: TDBEdit;
    DBLeverandornr: TDBEdit;
    Utskrift: TTabSheet;
    GroupBox11: TGroupBox;
    RgUtskriftKopi: TRadioGroup;
    GroupBox12: TGroupBox;
    ToppEdit: TEdit;
    BunnEdit: TEdit;
    HoyreEdit: TEdit;
    VenstreEdit: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Faktura: TTabSheet;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    Label13: TLabel;
    CbAvrunding: TComboBox;
    GroupBox16: TGroupBox;
    CbKontant: TCheckBox;
    DBEdit1: TDBEdit;
    Sikkerhet: TTabSheet;
    GroupBox15: TGroupBox;
    GroupBox17: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBEdit2: TDBEdit;
    Label14: TLabel;
    Button1: TButton;
    CbKid: TCheckBox;
    GroupBox18: TGroupBox;
    CbInnpris: TCheckBox;
    GroupBox19: TGroupBox;
    CbOrdre: TCheckBox;
    GroupBox20: TGroupBox;
    CbVisInk: TCheckBox;
    GroupBox21: TGroupBox;
    CbSperre: TCheckBox;
    EditMoms: TEdit;
    cbGiro: TCheckBox;
    procedure TreClick(Sender: TObject);
    procedure BtnLukkClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TreChange(Sender: TObject; Node: TTreeNode);
    procedure ToppEditKeyPress(Sender: TObject; var Key: Char);
    procedure RgSorterVareClick(Sender: TObject);
    procedure RgSorterKundeClick(Sender: TObject);
    procedure RgSorterLeverandorClick(Sender: TObject);
    procedure RgVisningClick(Sender: TObject);
    procedure RgSorterFakturaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EditMomsKeyPress(Sender: TObject; var Key: Char);
    procedure EditMomsExit(Sender: TObject);
  private
    { Private declarations }
    procedure Lagre;
  public
    { Public declarations }
    procedure Oppstart;
  end;

var
  FrmInnstillinger: TFrmInnstillinger;

implementation

uses DataModul, faPassord, unitReg, blsMisc, blsFileUtil, unitIni;

{$R *.DFM}

//************ Innstillingene leses fra registret før formen vises ********
procedure TFrmInnstillinger.Oppstart;
var Reg: TRegistry;
begin
   Reg := TRegistry.Create;
    try
       try
          Reg.OpenKey('\Software\Bls\Fakuva5\' + DM.FirmaDBFirma.Value, True);
            ChkLogging.Checked            := Reg.ReadBool('Logging');
            EditLoggfil.Text              := Reg.ReadString('Loggfil');  //FkvIni.ReadString(Application.Title, 'Loggfil', '');
            ChkSkopi.Checked              := Reg.ReadBool('Sikkerhetskopi');
            EditMoms.Text                 := FloatToStrF(Reg.ReadFloat('Moms'), ffFixed, 10, 2);
            ChkLogo.Checked               := Reg.ReadBool('Logo');
            RgForfallsdato.ItemIndex      := Reg.ReadInteger('Forfallsdato');
            RgPurregebyr.ItemIndex        := Reg.ReadInteger('Purregebyr');
            RgVisning.ItemIndex           := Reg.ReadInteger('Visning');
            RgUtskriftKopi.ItemIndex      := Reg.ReadInteger('UtskriftKopi');
            CbAvrunding.ItemIndex         := Reg.ReadInteger('Avrunding');
            CbKontant.Checked             := Reg.ReadBool('KontantSerie');
            if Reg.ValueExists('GiroDel') then
              CbGiro.Checked                := Reg.ReadBool('GiroDel');
            CbKid.Checked                 := Reg.ReadBool('Kid');
          Reg.CloseKey;

          Reg.OpenKey('\Software\Bls\Fakuva5\'  + DM.FirmaDBFirma.Value + '\Sortering', False);
            RgSorterFaktura.ItemIndex    := Reg.ReadInteger('Faktura');
            RgSorterKunde.ItemIndex      := Reg.ReadInteger('Kunde');
            RgSorterVare.ItemIndex       := Reg.ReadInteger('Vare');
            RgSorterLeverandor.ItemIndex := Reg.ReadInteger('Leverandor');
          Reg.CloseKey;

          Reg.OpenKey('\Software\Bls\Fakuva5\'  + DM.FirmaDBFirma.Value + '\Marger', False);
            ToppEdit.Text                := IntToStr(Reg.ReadInteger('Topp'));
            BunnEdit.Text                := IntToStr(Reg.ReadInteger('Bunn'));
            HoyreEdit.Text               := IntToStr(Reg.ReadInteger('Hoyre'));
            VenstreEdit.Text             := IntToStr(Reg.ReadInteger('Venstre'));
          Reg.CloseKey;
       except
        CbAvrunding.ItemIndex   := 1;
       end;

    finally
      Reg.Free;
    end;
 CbInnpris.Checked := HentVip;
 CbVisInk.Checked  := HentVisInk;
 CbSperre.Checked  := HentFakturaSperre;
 CbOrdre.Checked   := HentOrdrebekreftelse;
 ShowModal;
end;

procedure TFrmInnstillinger.TreClick(Sender: TObject);
begin
 Case Tre.Selected.AbsoluteIndex of
 0: Ark.ActivePage := Generelt;
 1: Ark.ActivePage := Faktura;
 2: Ark.ActivePage := Sortering;
 3: Ark.ActivePage := Nummerering;
 4: Ark.ActivePage := Utskrift;
 5: Ark.ActivePage := Rapporter;
 6: Ark.ActivePage := Logg;
 7: Ark.ActivePage := Sikkerhet;
 End;
end;

//*********************** Innstillingene lagres til registeret *************
procedure TFrmInnstillinger.Lagre;
//var Reg: TRegistry;
begin
 // SettVip(Dm.FirmaDBFirma.Value, CbInnpris.Checked);
  SettVisInk(CbVisInk.Checked);
  SettFakturaSperre(CbSperre.Checked);
  SettOrdrebekreftelse(CbOrdre.Checked);
  LagreStandard(ChkLogging.Checked, EditLoggfil.Text, ChkSkopi.Checked,
                   StrToFloat(EditMoms.Text), ChkLogo.Checked, RgForfallsdato.ItemIndex,
                   RgPurregebyr.ItemIndex, RgVisning.ItemIndex, RgUtskriftkopi.ItemIndex,
                   CbAvrunding.ItemIndex, CbKontant.Checked, cbGiro.Checked, LesSokeFelt,
                   CbKid.Checked, RgSorterFaktura.ItemIndex, RgSorterKunde.ItemIndex,
                   RgSorterVare.ItemIndex, RgSorterLeverandor.ItemIndex,
                   StrToInt(ToppEdit.Text), StrToInt(BunnEdit.Text),
                   StrToInt(HoyreEdit.Text), StrToInt(VenstreEdit.Text), CbInnpris.Checked);
{

// If ChkLagre.Checked = True then begin
     Reg := TRegistry.Create;
     try
      Reg.OpenKey('\Software\Bls\Fakuva5\' + DM.FirmaDBFirma.Value, True);
      Reg.WriteBool('Logging', ChkLogging.Checked);
      Reg.WriteString('Loggfil', EditLoggfil.Text);
      Reg.WriteBool('Sikkerhetskopi', ChkSkopi.Checked);
  //    Reg.WriteBool('Lagre', ChkLagre.Checked);
      Reg.WriteFloat('Moms', StrToFloat(EditMoms.Text));
      Reg.WriteBool('Logo', ChkLogo.Checked);
      Reg.WriteInteger('Forfallsdato', RgForfallsdato.ItemIndex);
      Reg.WriteInteger('Purregebyr', RgPurregebyr.ItemIndex);
      Reg.WriteInteger('Visning', RgVisning.ItemIndex);
      Reg.WriteInteger('UtskriftKopi', RgUtskriftKopi.ItemIndex);
      Reg.WriteInteger('Avrunding', CbAvrunding.ItemIndex);
      Reg.WriteBool('KontantSerie', CbKontant.Checked);
      Reg.WriteBool('Kid', CbKid.Checked);
      If NOT Reg.ValueExists('VisSokeFelt') then
       Reg.WriteBool('VisSokeFelt', True);
      Reg.CloseKey;

      Reg.OpenKey('\Software\Bls\Fakuva5\' + DM.FirmaDBFirma.Value + '\Sortering', True);
      Reg.WriteInteger('Faktura', RgSorterFaktura.ItemIndex);
      Reg.WriteInteger('Kunde', RgSorterKunde.ItemIndex);
      Reg.WriteInteger('Vare', RgSorterVare.ItemIndex);
      Reg.WriteInteger('Leverandor', RgSorterLeverandor.ItemIndex);
      Reg.CloseKey;

      Reg.OpenKey('Software\Bls\Fakuva5\' + DM.FirmaDBFirma.Value + '\Marger', True);
      Reg.WriteInteger('Topp', StrToInt(ToppEdit.Text));
      Reg.WriteInteger('Bunn', StrToInt(BunnEdit.Text));
      Reg.WriteInteger('Hoyre', StrToInt(HoyreEdit.Text));
      Reg.WriteInteger('Venstre', StrToInt(VenstreEdit.Text));
      Reg.CloseKey;

     finally
      Reg.Free;
      DM.SkrivTilLogg('Innstillinger endret!');
     End;
  If DM.FirmaDB.State = dsEdit then
     DM.FirmaDB.Post;
// end;       }
end;

procedure TFrmInnstillinger.BtnLukkClick(Sender: TObject);
begin
  Dm.FirmaDB.Post;
  Close;
end;

procedure TFrmInnstillinger.Button2Click(Sender: TObject);
begin
 LoggMemo.Clear;
 LoggMemo.Lines.SaveToFile(EditLoggfil.Text);
end;

procedure TFrmInnstillinger.FormShow(Sender: TObject);
begin
// CbAvrunding.ItemIndex := 1;
  if FileExists(Dir + EditLoggFil.Text) then
    LoggMemo.Lines.LoadFromFile(Dir + EditLoggFil.Text);
end;

procedure TFrmInnstillinger.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Lagre;
 Action := caFree;

 FkvIni.WriteString(Application.Title, 'Loggfil', EditLoggFil.Text);
 FkvIni.UpdateFile;
end;

procedure TFrmInnstillinger.TreChange(Sender: TObject; Node: TTreeNode);
begin
 TittelLbl.Caption := 'Alternativer - ' + Tre.Selected.Text;
 TreClick(Sender);
end;

procedure TFrmInnstillinger.ToppEditKeyPress(Sender: TObject;
  var Key: Char);
begin
 If Not (Key in['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', #8, #13])
 then Key := #0;
end;

procedure TFrmInnstillinger.RgSorterVareClick(Sender: TObject);
begin
 Case RgSorterVare.ItemIndex of
 0: DM.SorterVarer('Varenr');
 1: DM.SorterVarer('Vare');
 2: DM.SorterVarer('IdKategori');
 3: DM.SorterVarer('IdLeverandor');
 end;
end;

procedure TFrmInnstillinger.RgSorterKundeClick(Sender: TObject);
begin
 Case RgSorterKunde.ItemIndex of
 0: DM.SorterKunder('Kundenr');
 1: DM.SorterKunder('Kunde');
 end;
end;

procedure TFrmInnstillinger.RgSorterLeverandorClick(Sender: TObject);
begin
 Case RgSorterLeverandor.ItemIndex of
 0: DM.SorterLeverandorer('Leverandornr');
 1: DM.SorterLeverandorer('Leverandor');
 end;
end;

procedure TFrmInnstillinger.RgVisningClick(Sender: TObject);
begin
 With DM.FakturaDB do
 begin
   Case RgVisning.ItemIndex of
     0: Filter := '';
     1: Filter := 'Betalt = ''-''';
     2: Filter := 'Betalt = ''Ja''';
     3: Filter := 'Betalt = ''Kontant''';
     4: Filter := 'Betalt = ''Kredit''';
   end;
   Filtered := True;
 end;
end;

procedure TFrmInnstillinger.RgSorterFakturaClick(Sender: TObject);
begin
 Case RgSorterFaktura.ItemIndex of
 0: DM.SorterFakturaer('Fakturanr');
 1: DM.SorterFakturaer('Fakturadato');
 2: DM.SorterFakturaer('IdKunde');
 end;
end;

procedure TFrmInnstillinger.Button1Click(Sender: TObject);
begin
 Application.CreateForm(TFrmPassord, FrmPassord);
 FrmPassord.ShowModal;
end;

procedure TFrmInnstillinger.FormCreate(Sender: TObject);
begin
  //Sjekker at Firmanavn ikke er endret i det vi kommer inn i innstillingene
  If DM.FirmaDB.State = dsEdit then
     DM.FirmaDB.Post;
  Dm.FirmaDB.Edit;
end;

procedure TFrmInnstillinger.EditMomsKeyPress(Sender: TObject;
  var Key: Char);
begin
  FloatKontroll(Key);
end;

procedure TFrmInnstillinger.EditMomsExit(Sender: TObject);
begin
 EditMoms.Text := FloatToStrF(StrToFloat(EditMoms.Text), ffFixed, 10, 2);
end;

end.
