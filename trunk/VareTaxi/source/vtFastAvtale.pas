unit vtFastAvtale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, adpDBDateTimePicker, ToolWin;

type
  TfrmFastAvtale = class(TForm)
    btnOK: TButton;
    btnCancel: TButton;
    adpDBDateTimePicker1: TadpDBDateTimePicker;
    dbeAvtale: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    TBNy: TToolButton;
    TBPrint: TToolButton;
    ToolButton3: TToolButton;
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure TBNyClick(Sender: TObject);
    procedure TBPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    New: Boolean;
  end;

var
  frmFastAvtale: TfrmFastAvtale;

implementation

uses DataModul;

{$R *.dfm}

procedure TfrmFastAvtale.btnOKClick(Sender: TObject);
begin
  Dm.tblAvtale.Post;
end;

procedure TfrmFastAvtale.btnCancelClick(Sender: TObject);
begin
  if New then
    Dm.tblAvtale.Delete
  else
    Dm.tblAvtale.Cancel;
end;

procedure TfrmFastAvtale.TBNyClick(Sender: TObject);
begin
  New := True;
  Dm.tblAvtale.Append;
  dbeAvtale.SetFocus;
end;

procedure TfrmFastAvtale.TBPrintClick(Sender: TObject);
begin
 If MessageDlg('Ønsker du å skrive ut dette skjermbildet ?', mtConfirmation, [mbYes, MbNo], 0) = mrYes then
   Print;
end;

end.
