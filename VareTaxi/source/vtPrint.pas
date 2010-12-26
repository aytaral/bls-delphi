unit vtPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, IniFiles;

type
  TfrmPrint = class(TForm)
    BtnLukk: TButton;
    BtnOK: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BtnPrint1: TButton;
    BtnPrint2: TButton;
    Label1: TLabel;
    EditAnt1: TSpinEdit;
    Label2: TLabel;
    EditAnt2: TSpinEdit;
    LblPrimPrinter: TLabel;
    LblSekPrinter: TLabel;
    DlgPrinter: TPrinterSetupDialog;
    Label5: TLabel;
    Label3: TLabel;
    cbAltPrinter: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure BtnPrint1Click(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure BtnPrint2Click(Sender: TObject);
    procedure cbAltPrinterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PrimPrinter, SekPrinter: Integer;
  end;

var
  frmPrint: TfrmPrint;

implementation

uses Printers, blsFileUtil;

{$R *.dfm}

procedure TfrmPrint.FormCreate(Sender: TObject);
var Ini: TIniFile;
begin
  Ini := TInifile.Create(Dir + 'RVT.INI');
  try
    PrimPrinter := Ini.ReadInteger('Printer', 'PrimIndex', -1);
    SekPrinter := Ini.ReadInteger('Printer', 'AltIndex', -1);
    EditAnt1.Value := Ini.ReadInteger('Printer', 'PrimKopi', 1);
    EditAnt2.Value := Ini.ReadInteger('Printer', 'AltKopi', 1);

    LblPrimPrinter.Caption := Printer.Printers[PrimPrinter];    
    if PrimPrinter > 0 then begin
      if PrimPrinter < Printer.Printers.Count then
        LblPrimPrinter.Caption := Printer.Printers[PrimPrinter]
      else begin
        PrimPrinter := Printer.PrinterIndex;
        LblPrimPrinter.Caption := Printer.Printers[Printer.PrinterIndex];
      end;
    end
    else
      PrimPrinter := Printer.PrinterIndex;

    if SekPrinter > 0 then begin
      if SekPrinter < Printer.Printers.Count then begin
        LblSekPrinter.Caption := Printer.Printers[SekPrinter];
        LblSekPrinter.Font.Color := clWindowText;
        EditAnt2.Enabled := True;
      end;
    end;

    cbAltPrinter.Checked := Ini.ReadBool('Printer', 'BrukAltPrinter', False);
    cbAltPrinterClick(Sender);
  finally
    Ini.Free;
  end;


end;

procedure TfrmPrint.BtnPrint1Click(Sender: TObject);
begin
  Printer.PrinterIndex := PrimPrinter;
  if DlgPrinter.Execute then begin
    LblPrimPrinter.Caption := Printer.Printers[Printer.PrinterIndex];
    PrimPrinter := Printer.PrinterIndex;
  end;
end;

procedure TfrmPrint.BtnOKClick(Sender: TObject);
var Ini: TIniFile;
begin
  Ini := TInifile.Create(Dir + 'RVT.INI');
  try
    Ini.WriteInteger('Printer', 'PrimIndex', PrimPrinter);
    Ini.WriteInteger('Printer', 'PrimKopi', EditAnt1.Value);
    Ini.WriteInteger('Printer', 'AltIndex', SekPrinter);
    Ini.WriteInteger('Printer', 'AltKopi', EditAnt2.Value);
    Ini.WriteBool('Printer', 'BrukAltPrinter', cbAltPrinter.Checked);
  finally
    Ini.Free;
  end;
end;

procedure TfrmPrint.BtnPrint2Click(Sender: TObject);
begin
  Printer.PrinterIndex := SekPrinter;
  if DlgPrinter.Execute then begin
    LblSekPrinter.Caption := Printer.Printers[Printer.PrinterIndex];
    SekPrinter := Printer.PrinterIndex;
    LblSekPrinter.Font.Color := clWindowText;
    EditAnt2.Enabled := True;
  end;
end;

procedure TfrmPrint.cbAltPrinterClick(Sender: TObject);
begin
  if not cbAltPrinter.Checked then begin
    BtnPrint2.Enabled := False;
    LblSekPrinter.Font.Color := clGray;
    EditAnt2.Enabled := False;
  end
  else begin
    BtnPrint2.Enabled := True;
    LblSekPrinter.Font.Color := clWindowText;
    EditAnt2.Enabled := True;
  end;

end;

end.
