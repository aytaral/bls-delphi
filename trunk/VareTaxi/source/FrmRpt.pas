unit FrmRpt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, CheckLst, ImgList, ActnList;

type
  TRptFrm = class(TForm)
    Button2: TButton;
    Image1: TImage;
    RptListe: TTreeView;
    Label2: TLabel;
    Label3: TLabel;
    PreviewBtn: TButton;
    Printbtn: TButton;
    FraDato: TDateTimePicker;
    TilDato: TDateTimePicker;
    Nestebtn: TButton;
    TilbakeBtn: TButton;
    Label1: TLabel;
    Label4: TLabel;
    procedure PreviewBtnClick(Sender: TObject);
    procedure PrintbtnClick(Sender: TObject);
    procedure RptListeDblClick(Sender: TObject);
    procedure RptListeChange(Sender: TObject; Node: TTreeNode);
    procedure NestebtnClick(Sender: TObject);
    procedure TilbakeBtnClick(Sender: TObject);
  private
    { Private declarations }
    procedure RapportValg;
   public
    { Public declarations }
  end;

var
  RptFrm: TRptFrm;

implementation

uses RptSjofor, DataModul, RptBil, RptOrdre, RptA4, RptEtikett, RptKunde;

{$R *.DFM}

procedure TRptFrm.RapportValg;
var Filter: String;
begin
 Case Rptliste.Selected.AbsoluteIndex of

 // Rapporter om kunder
  1: begin
   Application.CreateForm(TA4Rpt, A4Rpt);
   If PreviewBtn.Enabled = False then
   A4Rpt.Preview
   else
   A4Rpt.Print;
   A4Rpt.Free;
   PreviewBtn.Enabled := True;
   PrintBtn.Enabled   := True;
  end;

  2: begin
   Application.CreateForm(TEtikettRpt, EtikettRpt);
   If PreviewBtn.Enabled = False then
   EtikettRpt.Preview
   else
   EtikettRpt.Print;
   EtikettRpt.Free;
   PreviewBtn.Enabled := True;
   PrintBtn.Enabled   := True;
  end;

  3: begin
   Application.CreateForm(TKundeRpt, KundeRpt);
   If PreviewBtn.Enabled = False then
   KundeRpt.Preview
   else
   KundeRpt.Print;
   KundeRpt.Free;
   PreviewBtn.Enabled := True;
   PrintBtn.Enabled   := True;
  end;

// Rapporter om ordre

  5: begin
   Application.CreateForm(TOrdreRpt, OrdreRpt);
   DM.QOrdreRpt.Filtered := False;
   If PreviewBtn.Enabled = False then
   OrdreRpt.Preview
   else
   OrdreRpt.Print;
   OrdreRpt.Free;
   PreviewBtn.Enabled := True;
   PrintBtn.Enabled   := True;
  end;

  6: begin
   Application.CreateForm(TOrdreRpt, OrdreRpt);
   Filter := 'Dato >= ''' + DateToStr(FraDato.Date) + ''' and Dato <= ''' + DateToStr(TilDato.Date) + '''';
   DM.QOrdreRpt.Filter := Filter;
   DM.QOrdreRpt.Filtered := True;
   If PreviewBtn.Enabled = False then
   OrdreRpt.Preview
   else
   OrdreRpt.Print;
   OrdreRpt.Free;
   PreviewBtn.Enabled := True;
   PrintBtn.Enabled   := True;
  end;

// Rapporter om sjåfører
  8: begin
   Application.CreateForm(TSjoforRpt, SjoforRpt);
   DM.QSjoforRpt.Filtered := False;
   If PreviewBtn.Enabled = False then
   SjoforRpt.Preview
   else
   SjoforRpt.Print;
   SjoforRpt.Free;
   PreviewBtn.Enabled := True;
   PrintBtn.Enabled   := True;
  end;

  9: begin
   Application.CreateForm(TSjoforRpt, SjoforRpt);
   Filter := 'Dato >= ''' + DateToStr(FraDato.Date) + ''' and Dato <= ''' + DateToStr(TilDato.Date) + '''';
   DM.QSjoforRpt.Filter := Filter;
   DM.QSjoforRpt.Filtered := True;
   If PreviewBtn.Enabled = False then
   SjoforRpt.Preview
   else
   SjoforRpt.Print;
   SjoforRpt.Free;
   PreviewBtn.Enabled := True;
   PrintBtn.Enabled   := True;
  end;

// Rapporter om biler
  11: begin
   Application.CreateForm(TBilRpt, BilRpt);
   DM.QBilRpt.Filtered := False;
   If PreviewBtn.Enabled = False then
   BilRpt.Preview
   else
   BilRpt.Print;
   BilRpt.Free;
   PreviewBtn.Enabled := True;
   PrintBtn.Enabled   := True;
  end;

  12: begin
   Application.CreateForm(TBilRpt, BilRpt);
   Filter := 'Dato >= ''' + DateToStr(FraDato.Date) + ''' and Dato <= ''' + DateToStr(TilDato.Date) + '''';
   DM.QBilRpt.Filter := Filter;
   DM.QBilRpt.Filtered := True;
   If PreviewBtn.Enabled = False then
   BilRpt.Preview
   else
   BilRpt.Print;
   BilRpt.Free;
   PreviewBtn.Enabled := True;
   PrintBtn.Enabled   := True;
  end;

  else
   PreviewBtn.Enabled := True;
   PrintBtn.Enabled   := True;
 end;
end;

procedure TRptFrm.PreviewBtnClick(Sender: TObject);
begin
 PreviewBtn.Enabled := False;
 PrintBtn.Enabled   := False;
 RapportValg;
end;

procedure TRptFrm.PrintbtnClick(Sender: TObject);
begin
 RapportValg;
end;

procedure TRptFrm.RptListeDblClick(Sender: TObject);
begin
 If PreviewBtn.Visible = True then begin
   If PreviewBtn.Enabled = True then PreviewBtnClick(Sender);
 end
 else
 NestebtnClick(Sender);
end;

procedure TRptFrm.RptListeChange(Sender: TObject; Node: TTreeNode);
begin
 Case RptListe.Selected.AbsoluteIndex of
  6,9,12 : begin
    NesteBtn.Visible      := True;
    PrintBtn.Enabled      := False;
    PreviewBtn.Visible    := False;
  end
  else
    NesteBtn.Visible      := False;
    PrintBtn.Enabled      := True;
    PreviewBtn.Visible    := True;
 end;
end;

procedure TRptFrm.NestebtnClick(Sender: TObject);
begin
 RptListe.Visible     := False;
 NesteBtn.Visible     := False;
 PreviewBtn.Visible   := True;
 PreviewBtn.SetFocus;
 PrintBtn.Enabled     := True;
 FraDato.Date         := StrToDate('01.' + FormatDateTime('MM', Date) + '.' + FormatDateTime('YY', Date));
 TilDato.Date         := Date;
end;

procedure TRptFrm.TilbakeBtnClick(Sender: TObject);
begin
 RptListe.Visible     := True;
 NesteBtn.Visible     := True;
 PrintBtn.Enabled     := False;
 PreviewBtn.Visible   := False;
 NesteBtn.SetFocus;
end;

end.
