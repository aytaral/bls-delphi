unit rsBilagSerierSymbol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TfrmBilagSerieSymbol = class(TForm)
    cbImg: TComboBoxEx;
    btnOK: TButton;
    btnLukk: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBilagSerieSymbol: TfrmBilagSerieSymbol;

implementation

uses rsData;

{$R *.dfm}

procedure TfrmBilagSerieSymbol.FormCreate(Sender: TObject);
var
  I: Integer;
  Item: TComboExItem;
begin
  for I := 0 to Dm.ilBilagSerie.Count -1 do begin
    Item := cbImg.ItemsEx.Add;
    Item.ImageIndex := I;
    Item.Caption := 'Symbol ' + IntToStr(I);
  end;
end;

end.
