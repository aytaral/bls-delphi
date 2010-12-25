unit faRapporter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, XPMan, ComCtrls, StdCtrls, ExtCtrls, QuickRpt;

type
  TFrmRapporter = class(TForm)
    TvRapporter: TTreeView;
    XPManifest1: TXPManifest;
    ImageList1: TImageList;
    Pc: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    LvKunder: TListView;
    LvProdukter: TListView;
    GroupBox1: TGroupBox;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    GroupBox2: TGroupBox;
    BtnPreview: TButton;
    BtnPrint: TButton;
    BtnAvbryt: TButton;
    LvLev: TListView;
    LvOmsett: TListView;
    GroupBox4: TGroupBox;
    GroupBox3: TGroupBox;
    LblHeading: TLabel;
    Image1: TImage;
    PStart: TDateTimePicker;
    PSlutt: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    pnlKunde: TPanel;
    Label3: TLabel;
    editKunde: TEdit;
    Button1: TButton;
    cbDet: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure TvRapporterChange(Sender: TObject; Node: TTreeNode);
    procedure BtnAvbrytClick(Sender: TObject);
    procedure BtnPreviewClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure LvOmsettSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure Button1Click(Sender: TObject);
  private
    procedure PrintKundeRapport(GruppeIx, RapportIx: Integer; ToPreview: Boolean);
    procedure PrintRapport(ToPreview: Boolean = False);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRapporter: TFrmRapporter;

implementation

uses faRptKunde, faRptEtikett, faRptKundeTlf, faRptLeverandor, faRptLeverandorTlf,
  faRptVare, faRptGrpVare, faRptVareKat, faRptVareInnkjop, faRptVareLev,
  faRptKundeOmsetning, faRptOmsetning, faRptVareOmset,
  DataModul, faSalgstall, faRptGruppeOmsetning, faRptKundeGruppe, faRptSalg, DateUtils,
  faRptKundeLevUt, faHentKunde;

{$R *.dfm}

procedure TFrmRapporter.FormCreate(Sender: TObject);
var I: Integer;
begin
  for I := 0 to Pc.PageCount - 1 do begin
    Pc.Pages[I].TabVisible := False;
    Pc.Pages[I].Visible := True;
  end;
  Pc.ActivePageIndex := 0;

  PStart.Date := StartOfTheYear(Date);
  PSlutt.Date := EndOfTheYear(Date);
end;

procedure TFrmRapporter.TvRapporterChange(Sender: TObject; Node: TTreeNode);
begin
  Pc.ActivePageIndex := Node.Index;
  LblHeading.Caption := 'Rapporter - ' + Node.Text;
end;

procedure TFrmRapporter.BtnAvbrytClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmRapporter.PrintKundeRapport(GruppeIx, RapportIx: Integer; ToPreview: Boolean);
var MyReport: TQuickRep;
begin
  MyReport := nil;

  case GruppeIx of
    0: begin //Kunderapporter
      case RapportIx of
        0: MyReport := TRptKunde.Create(Application);
        1: MyReport := TRptKundeTlf.Create(Application);
        2: MyReport := TRptEtikett.Create(Application);
        3: MyReport := TRptKundeGruppe.Create(Application);
      end;
    end;

    1: begin //Produktrapporter
      case RapportIx of
        0: MyReport := TRptVare.Create(Application);
        1: MyReport := TRptVareGrp.Create(Application);
        2: MyReport := TRptVareKat.Create(Application);
        3: MyReport := TRptVareInnkjop.Create(Application);
        4: MyReport := TRptVareLev.Create(Application);
      end;
    end;

    2: begin //Leverandørrapporter
      case RapportIx of
        0: MyReport := TRptLeverandor.Create(Application);
        1: MyReport := TRptLeverandorTlf.Create(Application);
      end;
    end;

    3: begin //Omsettningsrapporter
      case RapportIx of
        0: begin
          Application.CreateForm(TRptOmsetning, RptOmsetning);
          MyReport := RptOmsetning;
          FrmSalgstall := TFrmSalgstall.Create(Application);
          FrmSalgstall.RegnUt(PStart.Date, PSlutt.Date);
          FrmSalgstall.SettRapportTall;
          FrmSalgstall.Release;
        end;
        1: begin
          MyReport := TRptKundeOmsetning.Create(Application);
          TRptKundeOmsetning(MyReport).SetPeriode(PStart.Date, PSlutt.Date);
        end;
        2: begin
          MyReport := TRptGruppeOmsetning.Create(Application);
          TRptGruppeOmsetning(MyReport).SetPeriode(PStart.Date, PSlutt.Date);
        end;
        3: begin
          MyReport := TRptVareOmsetning.Create(Application);
          TRptVareOmsetning(MyReport).SetPeriode(PStart.Date, PSlutt.Date);
        end;
        4: begin
          MyReport := TRptSalg.Create(Application);
          TRptSalg(MyReport).SetPeriode(PStart.Date, PSlutt.Date);
        end;
        5: begin
          MyReport := TrptKundeUtLev.Create(Application);
          if editKunde.Text <> '' then
            TrptKundeUtLev(MyReport).SetPeriode(Dm.KundeDBIdKunde.Value, editKunde.Text, PStart.Date, PSlutt.Date, cbDet.Checked)
          else
            TrptKundeUtLev(MyReport).SetPeriode(-1, '', PStart.Date, PSlutt.Date)
        end;

      end;
    end;
  end;

  if MyReport <> nil then begin
    // Printer eller Previewer rapportern...
    try
      if ToPreview then
        MyReport.PreviewModal
      else begin
        MyReport.PrinterSetup;
        if MyReport.Tag = 0 then
          MyReport.Print;
      end;

    finally
      MyReport.Free;
    end;
  end;
end;

procedure TFrmRapporter.PrintRapport(ToPreview: Boolean = False);
begin
  case Pc.ActivePageIndex of
    0: begin
      if LvKunder.Selected = nil then Exit;
      PrintKundeRapport(TvRapporter.Selected.Index, LvKunder.ItemIndex, ToPreview);
    end;

    1: begin
      if LvProdukter.Selected = nil then Exit;
      PrintKundeRapport(TvRapporter.Selected.Index, LvProdukter.ItemIndex, ToPreview);
    end;

    2: begin
      if LvLev.Selected = nil then Exit;
      PrintKundeRapport(TvRapporter.Selected.Index, LvLev.ItemIndex, ToPreview);
    end;

    3: begin
      if LvOmsett.Selected = nil then Exit;
      PrintKundeRapport(TvRapporter.Selected.Index, LvOmsett.ItemIndex, ToPreview);
    end;
  end;
end;


procedure TFrmRapporter.BtnPreviewClick(Sender: TObject);
begin
  PrintRapport(True);
end;

procedure TFrmRapporter.BtnPrintClick(Sender: TObject);
begin
  PrintRapport;
end;

procedure TFrmRapporter.LvOmsettSelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
begin
  if Selected then begin
    pnlKunde.Visible := Item.Index = 5;

    if Item.Index = 4 then begin
      PStart.Date := StartOfTheMonth(Date);
      PSlutt.Date := EndOfAMonth(YearOf(Date), MonthOf(Date));
    end
    else begin
      PStart.Date := StartOfTheYear(Date);
      PSlutt.Date := EndOfTheYear(Date);
    end;
  end;
end;

procedure TFrmRapporter.Button1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmHentKunde, FrmHentKunde);
  if FrmHentKunde.ShowModal = mrOk then begin
    editKunde.Text := Dm.KundeDBKunde.Value;
  end
  else
    editKunde.Text := '';

end;

end.
