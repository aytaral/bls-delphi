unit faImport;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, ComCtrls, ExtCtrls;

type
  TFrmImport = class(TForm)
    PageControl1: TPageControl;
    Importering: TTabSheet;
    BtnOk: TButton;
    BtnAvbryt: TButton;
    ImportDB: TTable;
    GroupBox1: TGroupBox;
    Bevel3: TBevel;
    LblStatus: TLabel;
    ImportPb: TProgressBar;
    BtnImport: TButton;
    BtnOpen: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    LblImport: TLabel;
    CbTildb: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    CbType: TComboBox;
    procedure BtnOpenClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnImportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImport: TFrmImport;

implementation

uses DataModul;

{$R *.DFM}

procedure TFrmImport.BtnOpenClick(Sender: TObject);
var O: TOpenDialog;
begin
 O := TOpenDialog.Create(Nil);

 try
  O.Options                   := [ofHideReadOnly,ofNoChangeDir,ofPathMustExist,ofFileMustExist,ofEnableSizing];
  O.DefaultExt                := '*.db';
  O.Filter                    := 'Databasefil (*.db)|*.db';


  Case CbTildb.ItemIndex of
   0: O.FileName := 'Kunder.db';
   1: O.FileName := 'Varer.db';
   2: O.FileName := 'Leverand.db';
   3: O.FileName := 'Kategori.db';
   4: O.FileName := 'Referanse.db';

  end;

  If O.Execute then
  begin
   try
   ImportDB.TableName := O.FileName;
   ImportDB.Active    := True;
   ImportDB.First;
   BtnImport.Enabled  := True;
   LblImport.Caption  := O.FileName;
   except
    MessageDlg('Filen er enten ikke en database-fil eller så er den skadet!', mtInformation, [mbOK], 0);
   end;
  end;

 finally
  O.Free;
 end;
end;

procedure TFrmImport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TFrmImport.FormShow(Sender: TObject);
begin
 CbTilDB.ItemIndex := 0;
 CbType.ItemIndex  := 1;
end;

procedure TFrmImport.BtnImportClick(Sender: TObject);
begin

   ImportPb.Max        := ImportDB.RecordCount;
   LblStatus.Caption   := 'Importerer til ' + CbTilDb.Text + ' ...';
   LblStatus.Visible   := True;
   LblStatus.Update;

 Case CbTildb.ItemIndex of
 0: begin
      With DM do
        begin
         While NOT ImportDB.EOF do
           begin
            If (CbType.ItemIndex = 1) and (KundeDB.Locate('Kundenr', ImportDB.FieldByName('Kundenr').AsFloat, [])) then
               begin
               ImportPb.StepIt;
               ImportDB.Next;
               end
            else
              begin
                KundeDB.Append;
                KundeDBKundenr.Value            := ImportDB.FieldByName('Kundenr').AsFloat;
                KundeDBKunde.Value              := ImportDB.FieldByName('Firma').AsString;
                KundeDBAdresse.Value            := ImportDB.FieldByName('Adresse').AsString;
                KundeDBPostnr.Value             := ImportDB.FieldByName('Postnr').AsString;
                KundeDBKontaktperson.Value      := ImportDB.FieldByName('Kontaktperson').AsString;
                KundeDBTelefon.Value            := ImportDB.FieldByName('Telefon').AsString;
                KundeDBTelefax.Value            := ImportDB.FieldByName('Telefax').AsString;
                KundeDBMobil.Value              := ImportDB.FieldByName('Mobil').AsString;
                KundeDBEpost.Value              := ImportDB.FieldByName('E-post').AsString;
                KundeDBUrl.Value                := ImportDB.FieldByName('Webadresse').AsString;
                KundeDBOrgnr.Value              := ImportDB.FieldByName('Organisasjonsnr').AsString;
                KundeDBKundeinfo.Value          := ImportDB.FieldByName('Kundeinfo').AsString;
                KundeDBForfallsdager.Value      := ImportDB.FieldByName('Forfallsdager').AsInteger;
                KundeDB.Post;
                ImportPb.StepIt;

                ImportDB.Next;
              end;
           end;
        end;
    end;

 1: begin
     MessageDlg('Du må selv manuelt angi kategori og leverandør for de varene du importere!', mtInformation, [mbOK], 0);

       With DM do
        begin
         While NOT ImportDB.EOF do
           begin
            If (CbType.ItemIndex = 1) and (VareDB.Locate('Varenr', ImportDB.FieldByName('Varenr').AsString, [])) then
             begin
               ImportPb.StepIt;
               ImportDB.Next;
             end
            else
              begin
                try
                  VareDB.Append;
                  VareDBVarenr.Value       := ImportDB.FieldByName('Varenr').AsString;
                  VareDBVare.Value         := ImportDB.FieldByName('Vare').AsString;
                  VareDBInnpris.Value      := ImportDB.FieldByName('Inpris').AsCurrency;
                  VareDBPris.Value         := ImportDB.FieldByName('Pris').AsCurrency;
                  VareDBMerknader.Value    := ImportDB.FieldByName('Merknader').AsString;
                  VareDB.Post;
                except
                  MessageDlg('Varenummeret for varen "' + ImportDB.FieldByName('Vare').AsString + '" finnes fra før. Varen vil ikke bli importert!', mtInformation, [mbOK], 0);
                end;

                ImportPb.StepIt;
                ImportDB.Next;
              end;
           end;
        end;


    end;

 2: begin

      With DM do
        begin
         While NOT ImportDB.EOF do
           begin
            If (CbType.ItemIndex = 1) and (LeverandorDB.Locate('Leverandornr', ImportDB.FieldByName('Levrandnr').AsFloat, [])) then
             begin
               ImportPb.StepIt;
               ImportDB.Next;
             end
            else
              begin
              LeverandorDB.Append;
              LeverandorDBLeverandornr.Value       := ImportDB.FieldByName('Levrandnr').AsFloat;
              LeverandorDBLeverandor.Value         := ImportDB.FieldByName('Levrand').AsString;
              LeverandorDBAdresse.Value            := ImportDB.FieldByName('Adresse').AsString;
              LeverandorDBPostnr.Value             := ImportDB.FieldByName('Postnr').AsString;
              LeverandorDBKontaktperson.Value      := ImportDB.FieldByName('Kontaktperson').AsString;
              LeverandorDBTelefon.Value            := ImportDB.FieldByName('Telefon').AsString;
              LeverandorDBTelefax.Value            := ImportDB.FieldByName('Telefax').AsString;
              LeverandorDBMobil.Value              := ImportDB.FieldByName('Mobil').AsString;
              LeverandorDBEpost.Value              := ImportDB.FieldByName('E-post').AsString;
              LeverandorDBUrl.Value                := ImportDB.FieldByName('Webadresse').AsString;
              LeverandorDBOrgnr.Value              := ImportDB.FieldByName('Organisasjonsnr').AsString;
              LeverandorDBLeverandorinfo.Value     := ImportDB.FieldByName('Levrandinfo').AsString;
              LeverandorDB.Post;

              ImportPb.StepIt;
              ImportDB.Next;
              end;
           end;
        end;

    end;

 3: begin
      With DM do
        begin
         While NOT ImportDB.EOF do
           begin
            If (CbType.ItemIndex = 1) and (KategoriDB.Locate('Kategori', ImportDB.FieldByName('Kategori').AsString, [])) then
              begin
               ImportPb.StepIt;
               ImportDB.Next;
              end
            else
              begin
              KategoriDB.Append;
              KategoriDBKategori.Value   := ImportDB.FieldByName('Kategori').AsString;
              KategoriDB.Post;

              ImportPb.StepIt;
              ImportDB.Next;
              end;
           end;
        end;
    end;

 4: begin
      With DM do
        begin
         While NOT ImportDB.EOF do
           begin
           If (CbType.ItemIndex = 1) and (ReferanseDB.Locate('Referanse', ImportDB.FieldByName('Referanse').AsString, [])) then
             begin
              ImportPb.StepIt;
              ImportDB.Next;
             end
           else
             begin
              ReferanseDB.Append;
              ReferanseDBReferanse.Value   := ImportDB.FieldByName('Referanse').AsString;
              ReferanseDB.Post;

              ImportPb.StepIt;
              ImportDB.Next;
             end;
           end;
        end;
    end;


 end;
 ImportDB.Close;

 LblStatus.Caption        := 'Importering ferdig';
 DM.SkrivTilLogg('Importering fra tidligere versjoner utført!');
end;

end.
