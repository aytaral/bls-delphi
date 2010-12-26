unit vtFastAvtaleSok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, blsDbGridScroll, Grids, DBGrids,DB;

type
  TfrmFastAvtaleSok = class(TForm)
    Panel1: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Label41: TLabel;
    edSokAvtale: TEdit;
    DBGrid1: TDBGrid;
    blsDbGridScroll1: TblsDbGridScroll;
    rbKunde: TRadioButton;
    rbFelles: TRadioButton;
    rbAlle: TRadioButton;
    procedure edSokAvtaleKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure rbAlleClick(Sender: TObject);
    procedure rbFellesClick(Sender: TObject);
    procedure rbKundeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    KundeID: Integer;
  end;

var
  frmFastAvtaleSok: TfrmFastAvtaleSok;

implementation

uses DataModul;

{$R *.dfm}

procedure TfrmFastAvtaleSok.edSokAvtaleKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 If edSokAvtale.Text <> '' then begin
   try
     DM.tblAvtale.Locate('Beskrivelse', edSokAvtale.Text, [loCaseInsensitive, loPartialKey]);
   except
     MessageDlg('Du har tastet et ugyldig tegn!', mtInformation, [mbok], 0);
   end;
 end;
end;

procedure TfrmFastAvtaleSok.DBGrid1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmFastAvtaleSok.rbAlleClick(Sender: TObject);
begin
  Dm.tblAvtale.Filtered := False;
end;

procedure TfrmFastAvtaleSok.rbFellesClick(Sender: TObject);
begin
  Dm.tblAvtale.Filter := 'KundeID is null';
  Dm.tblAvtale.Filtered := True;
end;

procedure TfrmFastAvtaleSok.rbKundeClick(Sender: TObject);
begin
  Dm.tblAvtale.Filter := 'KundeID = ' + IntToStr(KundeID);
  Dm.tblAvtale.Filtered := True;
end;

procedure TfrmFastAvtaleSok.FormShow(Sender: TObject);
begin
  if KundeID = -1 then begin
    rbAlle.Checked := True;
    rbAlleClick(Self);
  end
  else begin
    rbKunde.Checked := True;
    rbKundeClick(Self);
  end;
end;

procedure TfrmFastAvtaleSok.FormDestroy(Sender: TObject);
begin
  Dm.tblAvtale.Filtered := False;
end;

end.
