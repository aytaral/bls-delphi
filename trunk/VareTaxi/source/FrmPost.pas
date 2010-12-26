unit FrmPost;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, Grids, DBGrids, DBTables;

type
  TPostFrm = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Table2: TTable;
    GroupBox1: TGroupBox;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function VisPostForm: String; export;
implementation

{$R *.DFM}

function VisPostForm: String;
var
  PostFrm: TPostFrm;
begin
 Result := '';
 try
  PostFrm := TPostFrm.Create(nil);
  PostFrm.ShowModal;
  If PostFrm.ModalResult = mrOK then Result := PostFrm.Table2.FieldByName('Postnr').AsString;
  PostFrm.Free;
 except
  on E: Exception do
  MessageDlg('En feil oppstod i flmodul.dll', mtWarning, [mbOk],0);
 end;
end;

procedure TPostFrm.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 Table2.Locate(Combobox1.text, edit1.text, [loCaseInsensitive, loPartialKey]);
end;

procedure TPostFrm.DBGrid1Enter(Sender: TObject);
begin
 DBGrid1.Options := [dgEditing,dgTitles,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
end;

procedure TPostFrm.DBGrid1Exit(Sender: TObject);
begin
 DBGrid1.Options := [dgTitles,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
end;

procedure TPostFrm.RadioButton2Click(Sender: TObject);
begin
 Table2.IndexFieldNames := 'Poststed';
end;

procedure TPostFrm.RadioButton1Click(Sender: TObject);
begin
Table2.IndexFieldNames := 'Postnr';
end;

procedure TPostFrm.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 If key = #13 then Button1Click(Sender);
end;

procedure TPostFrm.Button1Click(Sender: TObject);
begin
 ModalResult := mrOK;
end;

end.
