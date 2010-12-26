unit FrmVelg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DataModul,
  StdCtrls, Grids, DBGrids, DB, ExtCtrls, blsDbGridScroll;

type
  TVelgFrm = class(TForm)
    Bil: TPanel;
    Label35: TLabel;
    Label36: TLabel;
    CBB: TComboBox;
    SokEditB: TEdit;
    DBGrid1: TDBGrid;
    Sjofor: TPanel;
    Label42: TLabel;
    Label41: TLabel;
    CBS: TComboBox;
    SokEditS: TEdit;
    DBGrid2: TDBGrid;
    Kunde: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid4: TDBGrid;
    CBK: TComboBox;
    SokEditK: TEdit;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    blsDbGridScroll1: TblsDbGridScroll;
    procedure SokEditBKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SokEditSKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SokEditKKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VelgFrm: TVelgFrm;

implementation

{$R *.DFM}

procedure TVelgFrm.SokEditBKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If SokEditB.Text <> '' then begin
 try
 DM.BilDB.Locate(CBB.Text, SokEditB.Text, [loCaseInsensitive, loPartialKey]);
 except
  MessageDlg('Du har tastet et ugyldig tegn!', mtInformation, [mbok],0);
  end;
  end;
end;

procedure TVelgFrm.SokEditSKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If SokEditS.Text <> '' then begin
 try
 DM.SjoforDB.Locate(CBS.Text, SokEditS.Text, [loCaseInsensitive, loPartialKey]);
 except
 MessageDlg('Du har tastet et ugyldig tegn!', mtInformation, [mbok],0);
 end;
 end;
end;

procedure TVelgFrm.SokEditKKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If SokEditK.Text <> '' then begin
 try
 DM.KundeDB.Locate(CBK.Text, SokEditK.Text, [loCaseInsensitive, loPartialKey]);
 except
  MessageDlg('Du har tastet et ugyldig tegn!', mtInformation, [mbok], 0);
  end;
  end;
end;

procedure TVelgFrm.DBGrid2DblClick(Sender: TObject);
begin
 ModalResult := MrOk;
end;

procedure TVelgFrm.FormCreate(Sender: TObject);
begin
 // Dm.KundeDB.IndexFieldNames := 'Firma';
end;

procedure TVelgFrm.FormDestroy(Sender: TObject);
begin
//  Dm.KundeDB.IndexFieldNames := 'Kundenr';  
end;

end.
