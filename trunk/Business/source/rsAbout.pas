unit rsAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmAbout = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Bevel1: TBevel;
    lblWindows: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblMem: TLabel;
    lblVersion: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbout: TfrmAbout;

implementation

uses JclSysInfo, rsMeny;

{$R *.dfm}

procedure TfrmAbout.FormCreate(Sender: TObject);
begin
  lblWindows.Caption := JclSysInfo.GetOSVersionString;
  lblMem.Caption := FormatFloat('###,###,###', GetTotalPhysicalMemory / 1024) + ' kB';
  lblVersion.Caption := IntToStr(frmCRM.Ver.FileVerMajor) + '.' +
    IntToStr(frmCRM.Ver.FileVerMinor) + IntToStr(frmCRM.Ver.FileVerBuild) +
    ' (Build ' + IntToStr(frmCRM.Ver.FileVerRelease) + ')';
end;

end.
