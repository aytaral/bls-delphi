unit FrmAvtaleWzd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DataModul,
  DBCtrls, StdCtrls, ComCtrls, Mask, Buttons, Grids, DBGrids,
  ExtCtrls ;

type
  TAvtaleWzd = class(TForm)
    AvtaleArk: TPageControl;
    Ark1: TTabSheet;
    Ark2: TTabSheet;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Enkel: TRadioButton;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText2: TDBText;
    Button3: TButton;
    Button4: TButton;
    Ark3: TTabSheet;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBText3: TDBText;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    prisedit: TEdit;
    BeskrivEdit: TEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Datoedit: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure priseditKeyPress(Sender: TObject; var Key: Char);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    procedure Registrer;
    procedure Avslutt;
  public
    { Public declarations }
  end;

var
  AvtaleWzd: TAvtaleWzd;

implementation

{$R *.DFM}

procedure TAvtaleWzd.Avslutt;
begin
 AvtaleArk.ActivePage := Ark1;
 PrisEdit.Text := '0,00';
 BeskrivEdit.Text := '';
 Close;
end;

procedure TAvtaleWzd.Button1Click(Sender: TObject);
begin
 Avslutt;
end;

procedure TAvtaleWzd.Button7Click(Sender: TObject);
begin
  AvtaleArk.ActivePage := Ark1;
end;

procedure TAvtaleWzd.Button8Click(Sender: TObject);
begin
  AvtaleArk.ActivePage := Ark1;
end;

procedure TAvtaleWzd.Button2Click(Sender: TObject);
begin
 If Enkel.Checked = True then  begin
 AvtaleArk.ActivePage := Ark2;
 DatoEdit.Date        := Date;
 end
 else
 AvtaleArk.ActivePage := Ark3;
end;

procedure TAvtalewzd.Registrer;
begin
 With DM do begin
  AvtaleDb.Append;
  AvtaleDBDato.Value        := Datoedit.Date;
  AvtaleDBBeskrivelse.Value := Beskrivedit.Text;
  AvtaleDBAvtalepris.Value  := StrToCurr(Prisedit.Text);
  AvtaleDB.Post;
 end;
end;


procedure TAvtaleWzd.Button4Click(Sender: TObject);
begin
 Registrer;
 Avslutt;
end;

procedure TAvtaleWzd.priseditKeyPress(Sender: TObject; var Key: Char);
begin
 If not (key in['1', '-', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', #8, #13])
 then key := #0;
end;

procedure TAvtaleWzd.Button5Click(Sender: TObject);
begin
 Dm.PakkeAvtale.Cancel;
 Avslutt;
end;

procedure TAvtaleWzd.Button6Click(Sender: TObject);
begin
 DM.PakkeAvtale.Edit;
 DM.PakkeAvtale.Post;
 Avslutt;
end;

end.
