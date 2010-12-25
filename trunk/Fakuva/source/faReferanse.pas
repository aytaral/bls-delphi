unit faReferanse;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ExtCtrls, DBCtrls, ToolWin, ComCtrls, IniFiles;

type
  TFrmReferanse = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton10: TToolButton;
    ToolButton9: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReferanse: TFrmReferanse;

implementation

uses DataModul;

{$R *.DFM}

procedure TFrmReferanse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TFrmReferanse.ToolButton9Click(Sender: TObject);
var Ini: TIniFile;
begin
  if MessageBox(Handle, PChar('Sett ' + Dm.ReferanseDBReferanse.Value +
    ' til standard referanse?'), 'Standard Referanse' , MB_YESNO + MB_ICONQUESTION) = IdYes then begin
    Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'FAKUVA.INI');
    try
      Ini.WriteString(Application.Title, 'StandardReferanse', Dm.ReferanseDBReferanse.Value);
    finally
      Ini.Free;
    end;
  end;
end;

end.
