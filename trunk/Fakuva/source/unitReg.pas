unit unitReg;

interface

uses Registry, Quickrpt, Dialogs;

procedure SettRegisterBane(Firma: String);
function HentMoms: Double;
procedure SettMoms(Mva: Double = 1.24);
function HentVip: Boolean;
procedure SettVip(Vip: Boolean = True);
function HentVisInk: Boolean;
procedure SettVisInk(VisInk: Boolean = True);
function HentBrukKid: Boolean;

function HentFakturaSperre: Boolean;
procedure SettFakturaSperre(Sperre: Boolean = True);
function HentOrdrebekreftelse: Boolean;
procedure SettOrdrebekreftelse(Bekreft: Boolean = True);
function HentLagerMelding: Boolean;

procedure HentMarger(Out H, V, T, B: Integer);
procedure SettMarger(H: Integer = 10; V: Integer = 10; T: Integer = 10; B: Integer = 10);
procedure LesMarger(Rpt: TQuickRep);
procedure LagreStandard(Logging:Boolean = True; Loggfil:String = '.\Logg\fakuva_log.txt';
                        Backup:Boolean = True; Mva:Double = 24.00; Logo:Boolean = False;
                        Forfallsdato:Integer = 0; Purregebyr:Integer = 0; Visning:Integer =0;
                        Utskriftkopi:Integer = 0; Avrunding:Integer = 1; Kontant:Boolean = False;
                        GiroDel: Boolean = True;
                        VisSok:Boolean = True; Kid:Boolean = False; Faktura:Integer = 0;
                        Kunde:Integer = 0; Vare:Integer = 0; Leverandor:Integer = 0;
                        Topp:Integer = 10; Bunn:Integer = 10; Hoyre:Integer =10;
                        Venstre:Integer = 10; VisInnPris: Boolean = True);

procedure SettSokeFelt(Vis: Boolean = True);
function LesSokeFelt: Boolean;

var RegBane: String;

implementation

//Denne blir satt når firmatabellen åpnes
procedure SettRegisterBane(Firma: String);
begin
  if Firma = '' then
    Firma := 'Demo'; // Støtte for Win98
  RegBane := '\Software\Bls\Fakuva5\' + Firma + '\';
end;

procedure LagreStandard(Logging:Boolean = True; Loggfil: String = '.\Logg\fakuva_log.txt';
                        Backup:Boolean = True; Mva:Double = 24.00; Logo:Boolean = False;
                        Forfallsdato:Integer = 0; Purregebyr:Integer = 0; Visning:Integer =0;
                        Utskriftkopi:Integer = 0; Avrunding:Integer = 1; Kontant:Boolean = False;
                        GiroDel: Boolean = True;
                        VisSok:Boolean = True; Kid:Boolean = False; Faktura:Integer = 0;
                        Kunde:Integer = 0; Vare:Integer = 0; Leverandor:Integer = 0;
                        Topp:Integer = 10; Bunn:Integer = 10; Hoyre:Integer =10;
                        Venstre:Integer = 10; VisInnPris: Boolean = True);
var Reg: TRegistry;
begin
   Reg := TRegistry.Create;
     try
      Reg.OpenKey(RegBane, True);

      Reg.WriteBool('Logging', Logging);
      Reg.WriteString('Loggfil', Loggfil);
      Reg.WriteBool('Sikkerhetskopi', Backup);
      Reg.WriteFloat('Moms', Mva);
      Reg.WriteBool('Logo', Logo);
      Reg.WriteInteger('Forfallsdato', Forfallsdato);
      Reg.WriteInteger('Purregebyr', Purregebyr);
      Reg.WriteInteger('Visning', Visning);
      Reg.WriteInteger('UtskriftKopi', Utskriftkopi);
      Reg.WriteInteger('Avrunding', Avrunding);
      Reg.WriteBool('KontantSerie', Kontant);
      Reg.WriteBool('GiroDel', GiroDel);
      Reg.WriteBool('VisSokeFelt', VisSok);
      Reg.WriteBool('Kid', Kid);
      Reg.WriteBool('Vip', VisInnPris);
      Reg.CloseKey;

      Reg.OpenKey(RegBane + 'Sortering\', True);
      Reg.WriteInteger('Faktura', Faktura);
      Reg.WriteInteger('Kunde', Kunde);
      Reg.WriteInteger('Vare', Vare);
      Reg.WriteInteger('Leverandor', Leverandor);
      Reg.CloseKey;

      Reg.OpenKey(RegBane + 'Marger\', True);
      Reg.WriteInteger('Topp', Topp);
      Reg.WriteInteger('Bunn', Bunn);
      Reg.WriteInteger('Hoyre', Hoyre);
      Reg.WriteInteger('Venstre', Venstre);

     finally
      Reg.Free;
     End;
 end;

procedure SettSokeFelt(Vis: Boolean = True);
var Reg: TRegistry;
begin
   Reg := TRegistry.Create;
     try
      Reg.OpenKey(RegBane, True);
      Reg.WriteBool('VisSokeFelt', Vis);
     finally
      Reg.Free;
     End;
end;

function LesSokeFelt: Boolean;
var Reg: TRegistry;
begin
   Reg := TRegistry.Create;
     try
      Reg.OpenKey(RegBane, True);
      If Reg.ValueExists('VisSokeFelt') then
       Result := Reg.ReadBool('VisSokeFelt')
      else
       Result := True;
     finally
      Reg.Free;
     End;
end;

procedure LesMarger(Rpt: TQuickRep);
var Reg: TRegistry;
begin
 Reg := TRegistry.Create;
   try
     Reg.OpenKey(RegBane + 'Marger\', True);
     If NOT Reg.ValueExists('Hoyre') then
      SettMarger;
     Rpt.Page.RightMargin  := Reg.ReadInteger('Hoyre');
     Rpt.Page.LeftMargin   := Reg.ReadInteger('Venstre');
     Rpt.Page.TopMargin    := Reg.ReadInteger('Topp');
     Rpt.Page.BottomMargin := Reg.ReadInteger('Bunn');
   finally
    Reg.Free;
   end;
end;

procedure SettMarger(H: Integer = 10; V: Integer = 10; T: Integer = 10; B: Integer = 10);
var Reg: TRegistry;
begin
 Reg := TRegistry.Create;
   try
     Reg.OpenKey(RegBane + 'Marger\', True);
     Reg.WriteInteger('Hoyre', H);
     Reg.WriteInteger('Venstre', V);
     Reg.WriteInteger('Topp', T);
     Reg.WriteInteger('Bunn', B);
   finally
    Reg.Free;
   end;
end;

//Alternativ prosedyre til LesMarger med utparametere...
procedure HentMarger(Out H, V, T, B: Integer);
var Reg: TRegistry;
begin
 Reg := TRegistry.Create;
   try
     Reg.OpenKey(RegBane + 'Marger\', True);
     If NOT Reg.ValueExists('Hoyre') then
      SettMarger;
     H := Reg.ReadInteger('Hoyre');
     V := Reg.ReadInteger('Venstre');
     T := Reg.ReadInteger('Topp');
     B := Reg.ReadInteger('Bunn');
   finally
     Reg.Free;
   end;
end;

procedure SettMoms(Mva: Double = 1.24);
var Reg: TRegistry;
begin
 Reg := TRegistry.Create;
   try
     Reg.OpenKey(RegBane, True);
     Reg.WriteFloat('Moms', Mva);
   finally
     Reg.Free;
   end;
end;

function HentMoms: Double;
var Reg: TRegistry;
begin
 Reg := TRegistry.Create;
   try
     Reg.OpenKey(RegBane, True);
     If NOT Reg.ValueExists('Moms') then
      SettMoms;
     HentMoms := (1 + (Reg.ReadFloat('Moms') / 100));
   finally
     Reg.Free;
   end;
end;

procedure SettVip(Vip: Boolean = True);
var Reg: TRegistry;
begin
 Reg := TRegistry.Create;
   try
     Reg.OpenKey(RegBane, True);
     Reg.WriteBool('Vip', Vip);
   finally
     Reg.Free;
   end;
end;

function HentVip: Boolean;
var Reg: TRegistry;
begin
 Reg := TRegistry.Create;
   try
     Reg.OpenKey(RegBane, True);

     If NOT Reg.ValueExists('Vip') then
      HentVip := True
     else
      HentVip := Reg.ReadBool('Vip');
   finally
     Reg.Free;
   end;
end;

procedure SettVisInk(VisInk: Boolean = True);
var Reg: TRegistry;
begin
 Reg := TRegistry.Create;
   try
     Reg.OpenKey(RegBane, True);
     Reg.WriteBool('VisInk', VisInk);
   finally
     Reg.Free;
   end;
end;

function HentVisInk: Boolean;
var Reg: TRegistry;
begin
 Reg := TRegistry.Create;
   try
     Reg.OpenKey(RegBane, True);
     If NOT Reg.ValueExists('VisInk') then
      HentVisInk := True
     else
      HentVisInk := Reg.ReadBool('VisInk');
   finally
     Reg.Free;
   end;
end;

procedure SettFakturaSperre(Sperre: Boolean = True);
var Reg: TRegistry;
begin
 Reg := TRegistry.Create;
   try
     Reg.OpenKey(RegBane, True);
     Reg.WriteBool('SperrFaktura', Sperre);
   finally
     Reg.Free;
   end;
end;

function HentFakturaSperre: Boolean;
var Reg: TRegistry;
begin
 Reg := TRegistry.Create;
   try
     Reg.OpenKey(RegBane, True);
     If NOT Reg.ValueExists('SperrFaktura') then
      HentFakturaSperre := True
     else
      HentFakturaSperre := Reg.ReadBool('SperrFaktura');
   finally
     Reg.Free;
   end;
end;

procedure SettOrdrebekreftelse(Bekreft: Boolean = True);
var Reg: TRegistry;
begin
 Reg := TRegistry.Create;
   try
     Reg.OpenKey(RegBane, True);
     Reg.WriteBool('Ordrebekreftelse', Bekreft);
   finally
     Reg.Free;
   end;
end;

function HentOrdreBekreftelse: Boolean;
var Reg: TRegistry;
begin
 Reg := TRegistry.Create;
   try
     Reg.OpenKey(RegBane, True);
     If NOT Reg.ValueExists('Ordrebekreftelse') then
      HentOrdreBekreftelse := False
     else
      HentOrdreBekreftelse := Reg.ReadBool('Ordrebekreftelse');
   finally
     Reg.Free;
   end;
end;

function HentBrukKid: Boolean;
var Reg: TRegistry;
begin
 Reg := TRegistry.Create;
   try
     Reg.OpenKey(RegBane, True);
     If NOT Reg.ValueExists('Kid') then
      HentBrukKid := False
     else
      HentBrukKid := Reg.ReadBool('Kid');
   finally
     Reg.Free;
   end;
end;

function HentLagerMelding: Boolean;
var Reg: TRegistry;
begin
 Reg := TRegistry.Create;
   try
     Reg.OpenKey(RegBane, True);
     If NOT Reg.ValueExists('LagerMelding') then
      HentLagerMelding := False
     else
      HentLagerMelding := Reg.ReadBool('LagerMelding');
   finally
     Reg.Free;
   end;
end;


end.
