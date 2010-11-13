unit rsVelgKategori;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TfrmVelgKat = class(TForm)
    tvKat: TTreeView;
    Panel2: TPanel;
    btnOK: TButton;
    btnAvbryt: TButton;
    procedure tvKatChange(Sender: TObject; Node: TTreeNode);
    procedure tvKatEditing(Sender: TObject; Node: TTreeNode;
      var AllowEdit: Boolean);
    procedure FormShow(Sender: TObject);
    procedure tvKatDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVelgKat: TfrmVelgKat;

implementation

{$R *.dfm}

procedure TfrmVelgKat.tvKatChange(Sender: TObject; Node: TTreeNode);
begin
  btnOk.Enabled := Node.Data <> nil;
end;

procedure TfrmVelgKat.tvKatEditing(Sender: TObject; Node: TTreeNode;
  var AllowEdit: Boolean);
begin
  AllowEdit := False;
end;

procedure TfrmVelgKat.FormShow(Sender: TObject);
begin
  tvKat.Items[1].Selected := True;
end;

procedure TfrmVelgKat.tvKatDblClick(Sender: TObject);
begin
  if tvKat.Selected.Data <> nil then
    ModalResult := mrOK;
end;

end.
