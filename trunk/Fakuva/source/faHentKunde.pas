unit faHentKunde;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, DB, ComCtrls, ToolWin, ExtCtrls, ActnList,
  DBClient, Provider, DBTables;

type
  TFrmHentKunde = class(TForm)
    Label1: TLabel;
    CBK: TComboBox;
    Label2: TLabel;
    SokEditK: TEdit;
    DBGrid4: TDBGrid;
    ActionList1: TActionList;
    AcNyKunde: TAction;
    AcEndreKunde: TAction;
    CoolBar2: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton8: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    Button1: TButton;
    Button2: TButton;
    DsKunde: TDataSource;
    QryKunde: TQuery;
    QryKundeIdKunde: TIntegerField;
    QryKundeKundenr: TFloatField;
    QryKundeKunde: TStringField;
    QryKundeAdresse: TStringField;
    QryKundePostadresse: TStringField;
    QryKundeKontaktperson: TStringField;
    procedure SokEditKKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure AcNyKundeExecute(Sender: TObject);
    procedure AcEndreKundeExecute(Sender: TObject);
    procedure SokEditKKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHentKunde: TFrmHentKunde;

implementation

uses DataModul, faKunde;

{$R *.DFM}

procedure TFrmHentKunde.SokEditKKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 case Key of
   VK_UP, VK_DOWN, VK_NEXT, VK_PRIOR: Exit;
 end;

 try
   DM.KundeDB.Locate(CBK.Text, SokEditK.Text, [loCaseInsensitive, loPartialKey]);
 except
   //********** Ikke gjør noe som helst **************
 end;
end;

procedure TFrmHentKunde.DBGrid4DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TFrmHentKunde.AcNyKundeExecute(Sender: TObject);
begin
   Application.CreateForm(TFrmKunde, FrmKunde);
   FrmKunde.LagNyKunde;
   FrmKunde.ShowModal;
end;

procedure TFrmHentKunde.AcEndreKundeExecute(Sender: TObject);
begin
 // if Dm.KundeDB.FindKey([QryKundeIdKunde.Value]) then begin
   Application.CreateForm(TFrmKunde, FrmKunde);
   FrmKunde.ShowModal;
 // end;
end;

procedure TFrmHentKunde.SokEditKKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP: Dm.KundeDB.Prior;
    VK_DOWN: Dm.KundeDB.Next;
    VK_NEXT: Dm.KundeDB.MoveBy(10);
    VK_PRIOR: Dm.KundeDB.MoveBy(-10);
  end;
  Key := 0;
end;

end.
