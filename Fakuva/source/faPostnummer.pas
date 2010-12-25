unit faPostnummer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, ComCtrls, ToolWin, StdCtrls,
  DBActns, ActnList, blsDbGridScroll;

type
  TFrmPostnummer = class(TForm)
    BtnOk: TButton;
    BtnAvbryt: TButton;
    CbSortering: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    EditSok: TEdit;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    DbgPost: TDBGrid;
    TblPost: TTable;
    DsPost: TDataSource;
    ActionList1: TActionList;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    AcDelete: TAction;
    TblPostPostnr: TStringField;
    TblPostPoststed: TStringField;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    AcEdit: TAction;
    AcSettInn: TAction;
    blsDbGridScroll1: TblsDbGridScroll;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CbSorteringChange(Sender: TObject);
    procedure AcDeleteExecute(Sender: TObject);
    procedure EditSokKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AcEditExecute(Sender: TObject);
    procedure AcSettInnExecute(Sender: TObject);
    procedure DbgPostDblClick(Sender: TObject);
    procedure EditSokKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    function IsNumber(Text: String): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPostnummer: TFrmPostnummer;

implementation

uses Datamodul;

{$R *.dfm}

procedure TFrmPostnummer.FormCreate(Sender: TObject);
begin
  TblPost.Open;
  AcSettInn.Enabled := False;
  AcDelete.Enabled := False;
end;

procedure TFrmPostnummer.FormDestroy(Sender: TObject);
begin
  if TblPost.State in [dsEdit, dsInsert] then begin
    if TblPostPostnr.Value <> '' then
      TblPost.Post
    else
      TblPost.Cancel;
  end;
  TblPost.Close;
end;

procedure TFrmPostnummer.CbSorteringChange(Sender: TObject);
begin
  Case CbSortering.ItemIndex of
    0: TblPost.IndexName := '';
    1: TblPost.IndexName := 'IxPoststed';
  end;
end;

procedure TFrmPostnummer.AcDeleteExecute(Sender: TObject);
begin
 if MessageBox(Handle, 'Slett valgt postnummer?', 'Sletting', MB_YESNO + MB_ICONQUESTION) = IDYes then
   TblPost.Delete;
end;

function TFrmPostnummer.IsNumber(Text: String): Boolean;
begin
  Result := (StrToIntDef(Text, -1) <> -1)
end;

procedure TFrmPostnummer.EditSokKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP, VK_DOWN, VK_NEXT, VK_PRIOR: Exit;
  end;


  if IsNumber(EditSok.Text) then
    TblPost.Locate('Postnr', EditSok.Text, [loPartialKey])
  else
    TblPost.Locate('Poststed', EditSok.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure TFrmPostnummer.AcEditExecute(Sender: TObject);
begin
  AcDelete.Enabled := AcEdit.Checked;
  AcSettInn.Enabled := AcEdit.Checked;
  if AcEdit.Checked then
    DbgPost.Options := DbgPost.Options - [dgRowSelect] + [dgEditing]
  else
    DbgPost.Options := DbgPost.Options + [dgRowSelect];
end;

procedure TFrmPostnummer.AcSettInnExecute(Sender: TObject);
begin
  TblPost.Insert;
end;

procedure TFrmPostnummer.DbgPostDblClick(Sender: TObject);
begin
  if dgRowSelect in DbgPost.Options then
    ModalResult := mrOK;  
end;

procedure TFrmPostnummer.EditSokKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP: TblPost.Prior;
    VK_DOWN: TblPost.Next;
    VK_PRIOR: TblPost.MoveBy(-10);
    VK_NEXT: TblPost.MoveBy(10);
  end;
  Key := 0;
end;

end.
