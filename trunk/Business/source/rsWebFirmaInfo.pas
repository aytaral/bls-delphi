unit rsWebFirmaInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, StdCtrls, ExtCtrls, ActiveX;

type
  TfrmWebFirmaInfo = class(TForm)
    Panel1: TPanel;
    btnLukk: TButton;
    Panel2: TPanel;
    wbInfo: TWebBrowser;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnLukkClick(Sender: TObject);
  private
    { Private declarations }
    FUrl: String;
    FText: String;
  public
    { Public declarations }
    property Url: String read FUrl write FUrl;
    property SokText: String read FText write FText;
    procedure Navigate;
  end;

var
  frmWebFirmaInfo: TfrmWebFirmaInfo;

implementation

uses blsWebUtil, blsDialogs, HTTPApp;

{$R *.dfm}

procedure TfrmWebFirmaInfo.FormShow(Sender: TObject);
//var Str: String;
begin
{  if (Url = '') or (SokText = '') then begin
    InfoDialog('Adresse', 'Ugyldig webadresse!');
    Exit;
  end;

  Str := StringReplace(Url, '$X', HttpEncode(SokText), [rfReplaceAll]);
  if not blswebUtil.IsConnectedToInternet then
    if not blsWebUtil.InternetDial then begin
      InfoDialog('Forbindelse', 'Ingen forbindelse til internett funnet!');
      Exit;
    end;
  wbInfo.Navigate(Str);}
end;

procedure TfrmWebFirmaInfo.Navigate();
var Str: String;
begin
  wbInfo.Navigate('about:blank');
  wbInfo.Update;

  if (Url = '') or (SokText = '') then begin
    InfoDialog('Adresse', 'Ugyldig webadresse!');
    Exit;
  end;

  Str := StringReplace(Url, '$X', HttpEncode(SokText), [rfReplaceAll]);
  if not blswebUtil.IsConnectedToInternet then
    if not blsWebUtil.InternetDial then begin
      InfoDialog('Forbindelse', 'Ingen forbindelse til internett funnet!');
      Exit;
    end;

  wbInfo.Navigate(Str);
  Show;
end;

procedure TfrmWebFirmaInfo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmWebFirmaInfo.btnLukkClick(Sender: TObject);
begin
  Close;
end;

initialization
  OleInitialize(nil);

finalization
  OleUninitialize;
end.

