unit rsEksport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, mxExport, scDataList;

type
  TfrmEksport = class(TForm)
    scData: TscDataList;
    //mxExport: TmxDataSetExport;
    adoEksport: TADODataSet;
    SaveDialog: TSaveDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnLukk: TButton;
    Bevel1: TBevel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    cbData: TComboBox;
    btnStart: TButton;
    Label2: TLabel;
    cbFormat: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    cbTil: TComboBox;
    procedure cbDataChange(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure mxExportGetExtension(Sender: TObject; var Extension: String);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Ext: String;
    TmpDir: String;
  public
    { Public declarations }
  end;

var
  frmEksport: TfrmEksport;

implementation

uses rsData, JclSysInfo, blsDialogs, blsFileUtil, JclFileUtils;

{$R *.dfm}

procedure TfrmEksport.cbDataChange(Sender: TObject);
begin
  btnStart.Enabled := cbData.ItemIndex > -1;
end;

procedure TfrmEksport.btnStartClick(Sender: TObject);
var Par: TParameter;
begin
//  mxExport.ExportStyle := TmxExportStyle(cbTil.ItemIndex);
//  case cbFormat.ItemIndex of
//    0: mxExport.ExportType := xtExcel;
//    1: mxExport.ExportType := xtRTF;
//    2: mxExport.ExportType := xtCSV;
//    3: mxExport.ExportType := xtHTML;
//    4: mxExport.ExportType := xtTXT;
//    5: mxExport.ExportType := xtDIF;
//  end;

  TmpDir := AddBackSlash(JclSysInfo.GetWindowsTempFolder) + 'BlsExport\';
  ForceDirectories(TmpDir);
//  mxExport.TempDir := TmpDir;

  adoEksport.Close;
  adoEksport.CommandText := scData.Data[cbData.ItemIndex].Text1.Text;
  Par := adoEksport.Parameters.FindParam('IdKlient');
  if Par <> nil then
    Par.Value := Dm.g_KlientID;
  adoEksport.Open;

  if cbTil.ItemIndex = 0 then begin
    SaveDialog.Filter := cbFormat.Text;
    if SaveDialog.Execute then begin
//      mxExport.FileName := SaveDialog.FileName;
//      mxExport.Execute;

      InfoDialog('Eksport', 'Dataene ble lagret til følgende fil ' +
        QuotedStr(ChangeFileExt(SaveDialog.FileName, '.' + Ext)));
    end;
  end
  else begin
//    mxExport.Execute;
  end;

  adoEksport.Close;
//  if Par <> nil then
//    Par := nil;
end;

procedure TfrmEksport.mxExportGetExtension(Sender: TObject;
  var Extension: String);
begin
  Ext := Extension;
end;

procedure TfrmEksport.FormCreate(Sender: TObject);
begin
  TmpDir := '';
end;

procedure TfrmEksport.FormDestroy(Sender: TObject);
begin
  if TmpDir <> '' then begin
  if DirectoryExists(TmpDir) then
    JclFileUtils.DeleteDirectory(TmpDir, False);
  end;
end;

end.
