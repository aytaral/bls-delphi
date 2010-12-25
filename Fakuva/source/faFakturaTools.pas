unit faFakturaTools;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, blsAlignEdit, StdCtrls, IniFiles;

type
  TFrmTools = class(TForm)
    GroupBox1: TGroupBox;
    BtnOk: TButton;
    BtnAvbryt: TButton;
    Label1: TLabel;
    EditVare: TEdit;
    BtnSok: TButton;
    Label2: TLabel;
    EditProsent: TblsAlignEdit;
    EditVarenr: TEdit;
    procedure BtnSokClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTools: TFrmTools;

implementation

uses faVareSok, Datamodul, blsFileUtil;

{$R *.dfm}

procedure TFrmTools.BtnSokClick(Sender: TObject);
begin
  Application.CreateForm(TFrmVareSok, FrmVareSok);
  if FrmVareSok.ShowModal = mrOK then begin
    EditVarenr.Text := Dm.VareDBVarenr.Value;
    EditVare.Text := Dm.VareDBVare.Value;
  end;
  FrmVareSok.Release;
  DM.VareDB.Filter := '';
end;

procedure TFrmTools.FormCreate(Sender: TObject);
var Ini: TIniFile;
    //Tmp: String;
begin
  Ini := TIniFile.Create(Dir + 'Fakuva.INI');
  try
    EditVarenr.Text := Ini.ReadString(Application.Title, 'ForsikringVarenr', '');
    EditVare.Text := Ini.ReadString(Application.Title, 'ForsikringTekst', '');
    EditProsent.AsFloat := Ini.ReadFloat(Application.Title, 'ForsikringProsent', 0);
  finally
    Ini.Free;
  end;
end;

procedure TFrmTools.BtnOkClick(Sender: TObject);
var Ini: TIniFile;
begin
  Ini := TIniFile.Create(Dir + 'Fakuva.INI');
  try
    Ini.WriteString(Application.Title, 'ForsikringVarenr', EditVarenr.Text);
    Ini.WriteString(Application.Title, 'ForsikringTekst', EditVare.Text);
    Ini.WriteFloat(Application.Title, 'ForsikringProsent', EditProsent.AsFloat);
    Ini.UpdateFile;
  finally
    Ini.Free;
  end;
end;

end.
