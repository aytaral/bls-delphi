unit faVareSok;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, DataModul, ExtCtrls, ComCtrls, DB,
  ToolWin, Menus, IniFiles;

type
  TFrmVareSok = class(TForm)
    ControlBar1: TControlBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    TbNy: TToolButton;
    ToolButton7: TToolButton;
    TbEndre: TToolButton;
    VareGrid: TDBGrid;
    Label1: TLabel;
    VarenrEdit: TEdit;
    Label2: TLabel;
    VareEdit: TEdit;
    Label3: TLabel;
    CbKategori: TComboBox;
    Label4: TLabel;
    CbLeverandor: TComboBox;
    Button1: TButton;
    BtnNullstill: TButton;
    Button2: TButton;
    ToolButton5: TToolButton;
    ReportDrop: TPopupMenu;
    StandardVareliste1: TMenuItem;
    Alf1: TMenuItem;
    procedure VareEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CbKategoriChange(Sender: TObject);
    procedure CbLeverandorChange(Sender: TObject);
    procedure BtnNullstillClick(Sender: TObject);
    procedure VareGridKeyPress(Sender: TObject; var Key: Char);
    procedure VareGridDblClick(Sender: TObject);
    procedure TbNyClick(Sender: TObject);
    procedure TbEndreClick(Sender: TObject);
    procedure Lukk1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure VareEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton5Click(Sender: TObject);
    procedure Alf1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure LesInnLeverandorer;
    procedure LesInnKategori;
    procedure Sok;
  end;

var
  FrmVareSok: TFrmVareSok;

implementation

uses faVare, unitReg, faRptVare, faRptGrpVare;

{$R *.DFM}

procedure TFrmVareSok.Sok;
begin
 With DM.VareDB do begin

  If (VarenrEdit.Text <> '' ) and (VareEdit.Text = '') and (CbKategori.Text = 'Alle') and (CbLeverandor.Text = 'Alle') then
     Filter := 'Varenr = ''' + VarenrEdit.Text + '*'''
  else
  If (VarenrEdit.Text = '' ) and (VareEdit.Text <> '') and (CbKategori.Text = 'Alle') and (CbLeverandor.Text = 'Alle') then
     Filter := 'Vare = ''' + VareEdit.Text + '*'''
  else
  If (VarenrEdit.Text = '' ) and (VareEdit.Text = '') and (CbKategori.Text <> 'Alle') and (CbLeverandor.Text = 'Alle') then
     Filter := 'IdKategori = ' + IntToStr(DM.KategoriDBIdKategori.Value)
  else
  If (VarenrEdit.Text = '' ) and (VareEdit.Text = '') and (CbKategori.Text = 'Alle') and (CbLeverandor.Text <> 'Alle') then
     Filter := 'IdLeverandor = ' + IntToStr(DM.LeverandorDBIdLeverandor.Value)
  else


  If (VarenrEdit.Text <> '' ) and (VareEdit.Text <> '') and (CbKategori.Text = 'Alle') and (CbLeverandor.Text = 'Alle') then
     Filter := 'Varenr = ''' + VarenrEdit.Text + '*'' and Vare = ''' + VareEdit.Text + '*'''
  else
  If (VarenrEdit.Text <> '' ) and (VareEdit.Text = '') and (CbKategori.Text <> 'Alle') and (CbLeverandor.Text = 'Alle') then
     Filter := 'Varenr = ''' + VarenrEdit.Text + '*'' and IdKategori = ' + IntToStr(DM.KategoriDBIdKategori.Value)
  else
  If (VarenrEdit.Text <> '' ) and (VareEdit.Text = '') and (CbKategori.Text = 'Alle') and (CbLeverandor.Text <> 'Alle') then
     Filter := 'Varenr = ''' + VarenrEdit.Text + '*'' and IdLeverandor = ' + IntToStr(DM.LeverandorDBIdLeverandor.Value)
  else

  If (VarenrEdit.Text = '' ) and (VareEdit.Text <> '') and (CbKategori.Text <> 'Alle') and (CbLeverandor.Text = 'Alle') then
     Filter := 'Vare = ''' + VareEdit.Text + '*'' and IdKategori = ' + IntToStr(DM.KategoriDBIdKategori.Value)
  else
  If (VarenrEdit.Text = '' ) and (VareEdit.Text <> '') and (CbKategori.Text = '') and (CbLeverandor.Text <> 'Alle') then
     Filter := 'Vare = ''' + VareEdit.Text + '*'' and IdLeverandor = ' + IntToStr(DM.LeverandorDBIdLeverandor.Value)
  else

  If (VarenrEdit.Text = '' ) and (VareEdit.Text = '') and (CbKategori.Text <> 'Alle') and (CbLeverandor.Text <> 'Alle') then
     Filter := 'IdKategori = ' + IntToStr(DM.KategoriDBIdKategori.Value) + ' and IdLeverandor = ' + IntToStr(DM.LeverandorDBIdLeverandor.Value)
  else



  If (VarenrEdit.Text <> '' ) and (VareEdit.Text <> '') and (CbKategori.Text <> 'Alle') and (CbLeverandor.Text = 'Alle') then
     Filter := 'Varenr = ''' + VarenrEdit.Text + '*'' and Vare = ''' + VareEdit.Text + '*'' and IdKategori = ' + IntToStr(DM.KategoriDBIdKategori.Value)
  else
  If (VarenrEdit.Text <> '' ) and (VareEdit.Text <> '') and (CbKategori.Text = 'Alle') and (CbLeverandor.Text <> 'Alle') then
     Filter := 'Vare = ''' + VareEdit.Text + '*'' and IdLeverandor = ' + IntToStr(DM.LeverandorDBIdLeverandor.Value) + 'and Varenr = ''' + VarenrEdit.Text + '*'''
  else
  If (VarenrEdit.Text <> '' ) and (VareEdit.Text = '') and (CbKategori.Text <> 'Alle') and (CbLeverandor.Text <> 'Alle') then
     Filter := 'IdKategori = ' + IntToStr(DM.KategoriDBIdKategori.Value) + ' and IdLeverandor = ' + IntToStr(DM.LeverandorDBIdLeverandor.Value) + 'and Varenr = ''' + VarenrEdit.Text + '*'''
  else
  If (VarenrEdit.Text = '' ) and (VareEdit.Text <> '') and (CbKategori.Text <> 'Alle') and (CbLeverandor.Text <> 'Alle') then
     Filter := 'IdKategori = ' + IntToStr(DM.KategoriDBIdKategori.Value) + ' and IdLeverandor = ' + IntToStr(DM.LeverandorDBIdLeverandor.Value) + ' and Vare = ''' + VareEdit.Text + '*'''
  else

  If (VarenrEdit.Text <> '' ) and (VareEdit.Text <> '') and (CbKategori.Text <> 'Alle') and (CbLeverandor.Text <> 'Alle') then
     Filter := 'IdKategori = ' + IntToStr(DM.KategoriDBIdKategori.Value) + ' and IdLeverandor = ' + IntToStr(DM.LeverandorDBIdLeverandor.Value) + ' and Vare = ''' + VareEdit.Text + '*'' and Varenr = ''' + VarenrEdit.Text + '*'''
  else
  If (VarenrEdit.Text = '' ) and (VareEdit.Text = '') and (CbKategori.Text = 'Alle') and (CbLeverandor.Text = 'Alle') then
     Filter := '';

 end;
end;

procedure TFrmVareSok.VareEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP, VK_DOWN, VK_NEXT, VK_PRIOR: Exit;
  end;

  Sok;
end;

procedure TFrmVareSok.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TFrmVareSok.LesInnKategori;
begin
 With DM.KategoriDB do
 begin
  First;
  CbKategori.Clear;
  CbKategori.Items.Add('Alle');
  While NOT EOF do
     begin
     CbKategori.Items.Add(DM.KategoriDBKategori.Value);
     Next;
     end;
 end;
 CbKategori.ItemIndex := 0;
end;

procedure TFrmVareSok.LesInnLeverandorer;
begin
 With DM.LeverandorDB do
 begin
  First;
  CbLeverandor.Clear;
  CbLeverandor.Items.Add('Alle');
  While NOT EOF do
     begin
     CbLeverandor.Items.Add(DM.LeverandorDBLeverandor.Value);
     Next;
     end;
 end;
 CbLeverandor.ItemIndex := 0;
end;

procedure TFrmVareSok.CbKategoriChange(Sender: TObject);
begin
 DM.KategoriDB.Locate('Kategori', CbKategori.Text, []);
 Sok;
end;

procedure TFrmVareSok.CbLeverandorChange(Sender: TObject);
begin
 DM.LeverandorDB.Locate('Leverandor', CbLeverandor.Text, []);
 Sok;
end;

procedure TFrmVareSok.BtnNullstillClick(Sender: TObject);
begin
 VarenrEdit.Text          := '';
 VareEdit.Text            := '';
 CbKategori.Text          := '';
 CbLeverandor.Text        := '';
 DM.VareDB.Filter         := '';
end;

procedure TFrmVareSok.VareGridKeyPress(Sender: TObject; var Key: Char);
begin
 If key = #13 then ModalResult := mrOk;
end;

procedure TFrmVareSok.VareGridDblClick(Sender: TObject);
begin
ModalResult := mrOk;
end;

procedure TFrmVareSok.TbNyClick(Sender: TObject);
begin
   Application.CreateForm(TFrmVare, FrmVare);
   FrmVare.LagNyVare;
   FrmVare.ShowModal;
end;

procedure TFrmVareSok.TbEndreClick(Sender: TObject);
begin
   Application.CreateForm(TFrmVare, FrmVare);
   FrmVare.ShowModal;
end;

procedure TFrmVareSok.Lukk1Click(Sender: TObject);
begin
 ModalResult := mrCancel;
end;

procedure TFrmVareSok.FormShow(Sender: TObject);
var Ini: TIniFile;
    I: Integer;
begin
 LesInnLeverandorer;
 LesInnKategori;
 VareGrid.Columns.Items[3].Visible := HentVip;
 If VareGrid.Columns.Items[3].Visible = True then
  VareGrid.Columns.Items[1].Width := 261
 else
  VareGrid.Columns.Items[1].Width := 322;

 Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'FAKUVA.INI');
 try
   I := Ini.ReadInteger(Application.Title, 'StartEdit', 0);
   if I = 0 then
     VarenrEdit.SetFocus
   else if I = 1 then
     VareEdit.SetFocus;
 finally
   Ini.Free;
 end;
end;

procedure TFrmVareSok.VareEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    VK_UP: Dm.VareDB.Prior;
    VK_DOWN: Dm.VareDB.Next;
    VK_NEXT: Dm.VareDB.MoveBy(10);
    VK_PRIOR: Dm.VareDB.MoveBy(-10);
  end;
  Key := 0;
end;

procedure TFrmVareSok.ToolButton5Click(Sender: TObject);
begin
  Application.CreateForm(TRptVare, RptVare);
  RptVare.PreviewModal;
  RptVare.Free;
end;

procedure TFrmVareSok.Alf1Click(Sender: TObject);
begin
  Application.CreateForm(TRptVareGrp, RptVareGrp);
  RptVareGrp.PreviewModal;
  RptVareGrp.Free;
end;

end.
