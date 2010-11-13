unit bsKmReg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, blsAlignEdit, ComCtrls,
  DB, ADODB, DBCtrls;

type
  TfrmKmstand = class(TForm)
    Panel2: TPanel;
    btnAvbryt: TButton;
    btnOK: TButton;
    Label1: TLabel;
    GroupBox1: TGroupBox;
//    dtDato: TadpDBDateTimePicker;
    edKm: TblsAlignEdit;
    Label2: TLabel;
    Label3: TLabel;
    lblBilinfo: TLabel;
    Label5: TLabel;
    adoKm: TADODataSet;
    dsKm: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    adoKmKMDATO: TDateField;
    adoKmKMSTAND: TIntegerField;
    dtDato: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IdBil: Integer;
    Bilinfo: String;
  end;

var
  frmKmstand: TfrmKmstand;

implementation

uses bsData, blsDialogs;

{$R *.dfm}

procedure TfrmKmstand.FormShow(Sender: TObject);
begin
  adoKm.Parameters.ParamValues['IdBil'] := IdBil;
  adoKm.Open;
  lblBilinfo.Caption := Bilinfo;
  dtDato.Date := Date;
end;

procedure TfrmKmstand.FormDestroy(Sender: TObject);
begin
  adoKm.Close;
end;

procedure TfrmKmstand.btnOKClick(Sender: TObject);
begin
  if edKm.AsInteger > 0 then begin
    dmData.RegNyKmStand(IdBil, edKm.AsInteger, dtDato.Date);
    ModalResult := mrOK;
  end
  else begin
    InfoDialog('Km. registrering', 'Vennligst angi en kilometerstand!');
    edKm.SetFocus;
  end;
end;

end.
