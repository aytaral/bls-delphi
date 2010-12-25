unit faPassord;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls;

type
  TFrmPassord = class(TForm)
    BtnOk: TButton;
    BtnAvbryt: TButton;
    EditGammel: TEdit;
    Label1: TLabel;
    EditNytt: TEdit;
    Label2: TLabel;
    EditGjenta: TEdit;
    Label3: TLabel;
    Bevel1: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPassord: TFrmPassord;

implementation

uses DataModul;

{$R *.DFM}

procedure TFrmPassord.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TFrmPassord.BtnOkClick(Sender: TObject);
begin
 If (EditGammel.Text = DM.FirmaDBPassord.Value) and
    (EditNytt.Text = EditGjenta.Text) then
    begin
     DM.FirmaDB.Edit;
     DM.FirmaDBPassord.Value := EditNytt.Text;
     DM.FirmaDB.Post;
     MessageBox(Handle, 'Passordet er endret! Husk å noter passordet.', 'Nytt passord', MB_ICONINFORMATION + MB_OK);
     Close;
    end
 else
     begin
      If (EditGammel.Text <> DM.FirmaDBPassord.Value) then
         MessageBox(Handle, 'Det gamle passordet du oppga er ikke riktig!', 'Feil passord', MB_ICONINFORMATION + MB_OK)
      else
      If (EditNytt.Text <> EditGjenta.Text) then
         MessageBox(Handle, 'Det nye passordet stemmer ikke!', 'Feil passord', MB_ICONINFORMATION + MB_OK)
     end;
end;

end.
