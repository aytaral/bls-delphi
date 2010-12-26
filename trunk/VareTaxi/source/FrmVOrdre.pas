unit FrmVOrdre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DataModul,
  DBCtrls, StdCtrls, Grids, DBGrids, ExtCtrls, Mask;

type
  TV_Ordre = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Button2: TButton;
    Button1: TButton;
    Panel3: TPanel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    flytten: TButton;
    flyttalle: TButton;
    tilbakeen: TButton;
    tilbakealle: TButton;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    DBText1: TDBText;
    procedure tilbakeenClick(Sender: TObject);
    procedure flyttenClick(Sender: TObject);
    procedure flyttalleClick(Sender: TObject);
    procedure StartDatoKeyPress(Sender: TObject; var Key: Char);
    procedure SluttDatoKeyPress(Sender: TObject; var Key: Char);
    procedure tilbakealleClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  V_Ordre: TV_Ordre;

implementation

{$R *.DFM}

procedure TV_Ordre.tilbakeenClick(Sender: TObject);
begin
 If DM.FordreDBIdOrdre.IsNull = False then begin
 With DM.FOrdreDB do begin
 Edit;
 DM.FOrdreDBFakturaId.Value := 0;
 Post;
 end;
 end;
 DM.VordreDB.Refresh;
 Refresh;
end;

procedure TV_Ordre.flyttenClick(Sender: TObject);
begin
 If DM.VordreDBIdOrdre.IsNull = False then begin
 With DM.VordreDb do begin
 Edit;
 DM.VOrdreDBFakturaId.Value := DM.FakturaDBIdFaktura.Value;
 Post;
 Refresh;
 DM.FordreDB.Refresh;
 end;
 end;
end;

procedure TV_Ordre.flyttalleClick(Sender: TObject);
begin
 With DM.VOrdreDB do begin
 DisableControls;
 try
 First;
 While NOT EOF Do begin
  Edit;
  DM.VOrdreDBFakturaID.Value := DM.FakturaDBIdFaktura.Value;
  Post;
 end;
  finally
  EnableControls;
  end;
 DM.FOrdreDB.Refresh;
 Refresh;
 end;
end;

procedure TV_Ordre.StartDatoKeyPress(Sender: TObject; var Key: Char);
begin
 If not (key in['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', #8, #13])
 then key := #0;
end;

procedure TV_Ordre.SluttDatoKeyPress(Sender: TObject; var Key: Char);
begin
 If not (key in['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', #8, #13])
 then key := #0;
end;

procedure TV_Ordre.tilbakealleClick(Sender: TObject);
begin
 With DM.FOrdreDB do begin
 DisableControls;
 try
 First;
 While NOT EOF Do begin
  Edit;
  DM.FOrdreDBFakturaID.Value := 0;
  Post;
 end;
  finally
  EnableControls;
  end;
 Refresh;
 DM.VOrdreDb.Refresh;
 end;
end;

procedure TV_Ordre.FormActivate(Sender: TObject);
begin
 DM.VOrdreDb.Refresh;
 DM.FOrdreDB.Refresh;
end;

end.
