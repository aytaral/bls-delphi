unit rsData;

interface

uses
  SysUtils, Classes, DB, ADODB, DBClient, Provider, ImgList, Controls, blsMva,
  blsList, Variants, ComCtrls;

type
  TDm = class(TDataModule)
    adoConn: TADOConnection;
    adoKunde: TADODataSet;
    dspKunde: TDataSetProvider;
    cdsKunde: TClientDataSet;
    dsKunde: TDataSource;
    adoPostnr: TADODataSet;
    cdsKundeKONTAKTNR: TIntegerField;
    cdsKundeNAVN: TStringField;
    cdsKundeADRESSE: TStringField;
    cdsKundePOSTNR: TStringField;
    cdsKundeLAND: TStringField;
    cdsKundeTELEFON: TStringField;
    cdsKundeFAKS: TStringField;
    cdsKundeMOBIL: TStringField;
    cdsKundeEPOST: TStringField;
    cdsKundeWEB: TStringField;
    adoLev: TADODataSet;
    dspLev: TDataSetProvider;
    cdsLev: TClientDataSet;
    dsLev: TDataSource;
    dspPostnr: TDataSetProvider;
    cdsPostnr: TClientDataSet;
    cdsLevKONTAKTNR: TIntegerField;
    cdsLevNAVN: TStringField;
    cdsLevADRESSE: TStringField;
    cdsLevPOSTNR: TStringField;
    cdsLevLAND: TStringField;
    cdsLevTELEFON: TStringField;
    cdsLevFAKS: TStringField;
    cdsLevMOBIL: TStringField;
    cdsLevEPOST: TStringField;
    cdsLevWEB: TStringField;
    cdsKundePOSTSTED: TStringField;
    cdsLevPOSTSTED: TStringField;
    cdsKundeORGNR: TStringField;
    cdsLevORGNR: TStringField;
    ImageList24: TImageList;
    ImageListPC: TImageList;
    cdsKundeIDKLIENT: TIntegerField;
    cdsKundeIDSERIE: TStringField;
    cdsLevIDKLIENT: TIntegerField;
    cdsLevIDSERIE: TStringField;
    adoKundeIDKLIENT: TIntegerField;
    adoKundeIDSERIE: TStringField;
    adoKundeKONTAKTNR: TIntegerField;
    adoKundeNAVN: TStringField;
    adoKundeADRESSE: TStringField;
    adoKundePOSTNR: TStringField;
    adoKundeLAND: TStringField;
    adoKundeTELEFON: TStringField;
    adoKundeFAKS: TStringField;
    adoKundeMOBIL: TStringField;
    adoKundeEPOST: TStringField;
    adoKundeWEB: TStringField;
    adoKundeORGNR: TStringField;
    adoLevIDKLIENT: TIntegerField;
    adoLevIDSERIE: TStringField;
    adoLevKONTAKTNR: TIntegerField;
    adoLevNAVN: TStringField;
    adoLevADRESSE: TStringField;
    adoLevPOSTNR: TStringField;
    adoLevLAND: TStringField;
    adoLevTELEFON: TStringField;
    adoLevFAKS: TStringField;
    adoLevMOBIL: TStringField;
    adoLevEPOST: TStringField;
    adoLevWEB: TStringField;
    adoLevORGNR: TStringField;
    adoNummer: TADODataSet;
    adoKundeFORFALLSDAGER: TIntegerField;
    cdsKundeFORFALLSDAGER: TIntegerField;
    adoLevFORFALLSDAGER: TIntegerField;
    cdsLevFORFALLSDAGER: TIntegerField;
    dspProd: TDataSetProvider;
    cdsProd: TClientDataSet;
    dsProd: TDataSource;
    cdsProdIDKLIENT: TIntegerField;
    cdsProdPRODUKTNR: TStringField;
    cdsProdNAVN: TStringField;
    adoPostnrPOSTNR: TStringField;
    adoPostnrPOSTSTED: TStringField;
    adoKommune: TADODataSet;
    dspKommune: TDataSetProvider;
    cdsKommune: TClientDataSet;
    adoKlient: TADODataSet;
    adoKlientIDKLIENT: TIntegerField;
    adoKlientNAVN: TStringField;
    adoKlientORGNR: TStringField;
    adoKlientADRESSE: TStringField;
    adoKlientPOSTNR: TStringField;
    adoKlientEPOST: TStringField;
    adoKlientTELEFON: TStringField;
    adoKlientFAKS: TStringField;
    adoKlientMOBIL: TStringField;
    adoKlientBANKKONTO: TStringField;
    adoKlientNESTEPRODNR: TIntegerField;
    adoProdnr: TADODataSet;
    cdsProdENHET: TStringField;
    cdsProdMVA: TFloatField;
    cdsProdINNPRIS: TFloatField;
    cdsProdPRIS: TFloatField;
    cdsProdORGPRODNR: TStringField;
    cdsProdKATEGORINR: TIntegerField;
    cdsProdLEVERANDORNR: TIntegerField;
    cdsProdPRISINK: TFloatField;
    cdsProdAVANSEP: TFloatField;
    cdsProdFORTJENESTE: TFloatField;
    adoKonto: TADODataSet;
    dspKonto: TDataSetProvider;
    cdsKonto: TClientDataSet;
    dsKonto: TDataSource;
    cdsKontoIDKLIENT: TIntegerField;
    cdsKontoKONTONR: TIntegerField;
    cdsKontoNAVN: TStringField;
    cdsKontoMVAKODE: TIntegerField;
    cdsKontoIDSERIE: TStringField;
    adoKontoIDKLIENT: TIntegerField;
    adoKontoKONTONR: TIntegerField;
    adoKontoNAVN: TStringField;
    adoKontoMVAKODE: TIntegerField;
    adoKontoIDSERIE: TStringField;
    adoMva: TADODataSet;
    dspMva: TDataSetProvider;
    cdsMva: TClientDataSet;
    cdsKontoMva: TStringField;
    cdsProdAKTIV: TSmallintField;
    adoKatOrg: TADODataSet;
    adoHovedKat: TADODataSet;
    dsHovedKat: TDataSource;
    adoUnderKat: TADODataSet;
    adoHovedKatKATEGORINR: TIntegerField;
    adoHovedKatKATEGORI: TStringField;
    adoUnderKatKATEGORINR: TIntegerField;
    adoUnderKatKATEGORI: TStringField;
    adoUnderKatEIERNR: TIntegerField;
    cdsUnderKat: TClientDataSet;
    dspUnderKat: TDataSetProvider;
    cdsUnderKatKATEGORINR: TIntegerField;
    cdsUnderKatKATEGORI: TStringField;
    cdsUnderKatEIERNR: TIntegerField;
    blsProdSQL: TblsList;
    adoProd: TADOQuery;
    adoProdIDKLIENT: TIntegerField;
    adoProdPRODUKTNR: TStringField;
    adoProdNAVN: TStringField;
    adoProdENHET: TStringField;
    adoProdMVA: TFloatField;
    adoProdINNPRIS: TFloatField;
    adoProdPRIS: TFloatField;
    adoProdORGPRODNR: TStringField;
    adoProdKATEGORINR: TIntegerField;
    adoProdLEVERANDORNR: TIntegerField;
    adoProdAKTIV: TSmallintField;
    adoFaktura: TADODataSet;
    dspFaktura: TDataSetProvider;
    cdsFaktura: TClientDataSet;
    dsFaktura: TDataSource;
    adoSerie: TADODataSet;
    adoFakturaIDKLIENT: TIntegerField;
    adoFakturaIDFAKTURA: TIntegerField;
    adoFakturaFAKTURANR: TIntegerField;
    adoFakturaORDRENR: TIntegerField;
    adoFakturaKUNDENR: TIntegerField;
    adoFakturaFAKTURADATO: TDateField;
    adoFakturaFORFALLDATO: TDateField;
    adoFakturaBETALTDATO: TDateField;
    cdsFakturaIDKLIENT: TIntegerField;
    cdsFakturaIDFAKTURA: TIntegerField;
    cdsFakturaFAKTURANR: TIntegerField;
    cdsFakturaORDRENR: TIntegerField;
    cdsFakturaKUNDENR: TIntegerField;
    cdsFakturaFAKTURADATO: TDateField;
    cdsFakturaFORFALLDATO: TDateField;
    cdsFakturaBETALTDATO: TDateField;
    adoKontoIDTYPE: TIntegerField;
    cdsKontoIDTYPE: TIntegerField;
    adoKontoType: TADODataSet;
    dspKontoType: TDataSetProvider;
    cdsKontoType: TClientDataSet;
    cdsKontoKONTOTYPE: TStringField;
    adoKontoAKTIV: TSmallintField;
    cdsKontoAKTIV: TSmallintField;
    adoKlientURL: TStringField;
    adoKlientSELSKAPKODE: TStringField;
    adoFakturaSUMEKS: TFloatField;
    adoFakturaSUMMVA: TFloatField;
    adoFakturaSUMTOT: TFloatField;
    adoFakturaSUMRAB: TFloatField;
    cdsFakturaSUMEKS: TFloatField;
    cdsFakturaSUMMVA: TFloatField;
    cdsFakturaSUMTOT: TFloatField;
    cdsFakturaSUMRAB: TFloatField;
    adoSQL: TADOCommand;
    adoFakturaREFNR: TStringField;
    cdsFakturaREFNR: TStringField;
    adoKlientLOGO: TStringField;
    adoKlientIMPORTNR: TIntegerField;
    adoData: TADODataSet;
    adoFakturaIDSTATUS: TIntegerField;
    cdsFakturaIDSTATUS: TIntegerField;
    adoKlientPOSTSTED: TStringField;
    adoProdLev: TADODataSet;
    dspProdLev: TDataSetProvider;
    cdsProdLev: TClientDataSet;
    cdsProdLevKONTAKTNR: TIntegerField;
    cdsProdLevNAVN: TStringField;
    cdsProdLEVERANDOR: TStringField;
    adoPurring: TADODataSet;
    dspPurring: TDataSetProvider;
    cdsPurring: TClientDataSet;
    dsPurring: TDataSource;
    cdsPurringFAKTURANR: TIntegerField;
    cdsPurringFAKTURADATO: TDateField;
    cdsPurringFORFALLDATO: TDateField;
    cdsPurringSTATUS: TStringField;
    cdsPurringPURREDATO: TDateField;
    cdsPurringPURRETEKST: TMemoField;
    cdsPurringPURREGEBYR: TFloatField;
    cdsPurringPURRERENTER: TFloatField;
    cdsPurringSUMEKS: TFloatField;
    cdsPurringSUMMVA: TFloatField;
    cdsPurringSUMTOT: TFloatField;
    cdsPurringKUNDENR: TIntegerField;
    adoFakturaIDFAKTURAART: TIntegerField;
    cdsFakturaIDFAKTURAART: TIntegerField;
    cdsPurringIDFAKTURA: TIntegerField;
    cdsPurringBETALTDATO: TDateField;
    adoFakturaSTATUS: TStringField;
    cdsFakturaSTATUS: TStringField;
    cdsPurringORDRENR: TIntegerField;
    adoPurringIDFAKTURA: TIntegerField;
    adoPurringFAKTURANR: TIntegerField;
    adoPurringFAKTURADATO: TDateField;
    adoPurringFORFALLDATO: TDateField;
    adoPurringSTATUS: TStringField;
    adoPurringPURREDATO: TDateField;
    adoPurringPURRETEKST: TMemoField;
    adoPurringPURREGEBYR: TFloatField;
    adoPurringPURRERENTER: TFloatField;
    adoPurringSUMEKS: TFloatField;
    adoPurringSUMMVA: TFloatField;
    adoPurringSUMTOT: TFloatField;
    adoPurringKUNDENR: TIntegerField;
    adoPurringBETALTDATO: TDateField;
    adoPurringORDRENR: TIntegerField;
    adoFakturaNAVN: TStringField;
    cdsFakturaNAVN: TStringField;
    adoPurringNAVN: TStringField;
    cdsPurringNAVN: TStringField;
    adoProdIDPRODTYPE: TIntegerField;
    cdsProdIDPRODTYPE: TIntegerField;
    adoFakturaIDBETSTATUS: TIntegerField;
    cdsFakturaIDBETSTATUS: TIntegerField;
    adoPurringIDSTATUS: TIntegerField;
    cdsPurringIDSTATUS: TIntegerField;
    cdsPurringPURRETOTAL: TFloatField;
    adoFakturaFAKTURAART: TStringField;
    cdsFakturaFAKTURAART: TStringField;
    adoBilag: TADODataSet;
    adoBilagIDBILAG: TIntegerField;
    adoBilagIDKLIENT: TIntegerField;
    adoBilagBILAGNR: TIntegerField;
    adoBilagAAR: TSmallintField;
    adoBilagPERIODENR: TSmallintField;
    adoBilagGODKJENT: TSmallintField;
    adoBilagBRUKER: TStringField;
    adoBilagREGDATO: TDateTimeField;
    dspBilag: TDataSetProvider;
    cdsBilag: TClientDataSet;
    dsBilag: TDataSource;
    cdsBilagIDBILAG: TIntegerField;
    cdsBilagIDKLIENT: TIntegerField;
    cdsBilagBILAGNR: TIntegerField;
    cdsBilagAAR: TSmallintField;
    cdsBilagPERIODENR: TSmallintField;
    cdsBilagGODKJENT: TSmallintField;
    cdsBilagBRUKER: TStringField;
    cdsBilagREGDATO: TDateTimeField;
    adoKlientKREDITNOTATEKST: TMemoField;
    adoKlientPURREFORFALL: TIntegerField;
    cdsKontoX: TStringField;
    cdsProdX: TStringField;
    cdsFakturaX: TStringField;
    cdsPurringX: TStringField;
    spFakturaID: TADOStoredProc;
    spFakturaIDIDFAKTURA: TIntegerField;
    spFakturanr: TADOStoredProc;
    spFakturanrFAKTURANR: TIntegerField;
    spBilagID: TADOStoredProc;
    spBilagIDIDBILAG: TIntegerField;
    cdsMvaMVAKODE: TIntegerField;
    cdsMvaBESKRIVELSE: TStringField;
    cdsMvaSATS: TFloatField;
    adoKlientKONTOKUNDE: TIntegerField;
    adoKlientKONTOLEVERANDOR: TIntegerField;
    spPostID: TADOStoredProc;
    spPostIDIDPOSTERING: TIntegerField;
    adoBilagDATO: TDateField;
    cdsBilagDATO: TDateField;
    cdsKontoSATS: TFloatField;
    dspPost: TDataSetProvider;
    cdsPost: TClientDataSet;
    cdsBilagKONTAKTNR: TIntegerField;
    cdsPostIDBILAG: TIntegerField;
    cdsPostIDTEKST: TIntegerField;
    cdsPostTEKST: TStringField;
    cdsPostFAKTURANR: TStringField;
    cdsPostKONTAKTNR: TIntegerField;
    cdsPostNAVN: TStringField;
    cdsBilagKONTAKT: TStringField;
    cdsBilagTEKST: TStringField;
    cdsBilagTEKSTKODE: TIntegerField;
    cdsBilagBELOP: TFloatField;
    cdsPostBELOP: TBCDField;
    cdsBilagX: TStringField;
    adoPeriode: TADODataSet;
    dspPeriode: TDataSetProvider;
    adoPeriodeIDKLIENT: TIntegerField;
    adoPeriodeAAR: TIntegerField;
    adoPeriodePERIODENR: TIntegerField;
    adoPeriodeLUKKET: TSmallintField;
    adoPeriodeLUKKETDATO: TDateTimeField;
    adoPeriodeBRUKER: TStringField;
    cdsPeriode: TClientDataSet;
    cdsPeriodeIDKLIENT: TIntegerField;
    cdsPeriodeAAR: TIntegerField;
    cdsPeriodePERIODENR: TIntegerField;
    cdsPeriodeLUKKET: TSmallintField;
    cdsPeriodeLUKKETDATO: TDateTimeField;
    cdsPeriodeBRUKER: TStringField;
    adoBilagSYSID: TIntegerField;
    cdsBilagSYSID: TIntegerField;
    adoKlientKONTOMVA: TIntegerField;
    adoKlientKONTOAVRUNDING: TIntegerField;
    cdsPostIDPOSTERING: TIntegerField;
    spNyKontakt: TADOStoredProc;
    spNyKontaktKONTAKTNR: TIntegerField;
    adoLevAKTIV: TSmallintField;
    cdsLevAKTIV: TSmallintField;
    adoKundeAKTIV: TSmallintField;
    cdsKundeAKTIV: TSmallintField;
    adoBilagIDAUTOBILAG: TIntegerField;
    cdsBilagIDAUTOBILAG: TIntegerField;
    adoFakturaIDBILAG: TIntegerField;
    cdsFakturaIDBILAG: TIntegerField;
    adoKlientKONTOSALG: TIntegerField;
    adoInnbetaling: TADODataSet;
    dspInnbetaling: TDataSetProvider;
    cdsInnbetaling: TClientDataSet;
    cdsInnbetalingIDINNBETALING: TIntegerField;
    cdsInnbetalingIDFAKTURA: TIntegerField;
    cdsInnbetalingDATO: TDateField;
    cdsInnbetalingBELOP: TFloatField;
    cdsInnbetalingIDBILAG: TIntegerField;
    adoKlientKONTOKONTANT: TIntegerField;
    adoKlientKONTOBANK: TIntegerField;
    adoInnbetalingIDINNBETALING: TIntegerField;
    adoInnbetalingIDFAKTURA: TIntegerField;
    adoInnbetalingDATO: TDateField;
    adoInnbetalingBELOP: TFloatField;
    adoInnbetalingIDBILAG: TIntegerField;
    adoOrdre: TADODataSet;
    dspOrdre: TDataSetProvider;
    cdsOrdre: TClientDataSet;
    dsOrdre: TDataSource;
    adoOrdreIDKLIENT: TIntegerField;
    adoOrdreIDORDRE: TIntegerField;
    adoOrdreORDRENR: TIntegerField;
    adoOrdreKUNDENR: TIntegerField;
    adoOrdreNAVN: TStringField;
    cdsOrdreIDKLIENT: TIntegerField;
    cdsOrdreIDORDRE: TIntegerField;
    cdsOrdreORDRENR: TIntegerField;
    cdsOrdreKUNDENR: TIntegerField;
    cdsOrdreNAVN: TStringField;
    spOrdreID: TADOStoredProc;
    spOrdrenr: TADOStoredProc;
    spOrdreIDIDORDRE: TIntegerField;
    spOrdrenrORDRENR: TIntegerField;
    adoOrdreORDREDATO: TDateField;
    adoOrdreEKSTERNREF: TStringField;
    adoOrdreINTERNREF: TStringField;
    adoOrdreREFNR: TStringField;
    adoOrdreSUMEKS: TFloatField;
    adoOrdreSUMRAB: TFloatField;
    adoOrdreSUMMVA: TFloatField;
    adoOrdreSUMTOT: TFloatField;
    cdsOrdreORDREDATO: TDateField;
    cdsOrdreEKSTERNREF: TStringField;
    cdsOrdreINTERNREF: TStringField;
    cdsOrdreREFNR: TStringField;
    cdsOrdreSUMEKS: TFloatField;
    cdsOrdreSUMRAB: TFloatField;
    cdsOrdreSUMMVA: TFloatField;
    cdsOrdreSUMTOT: TFloatField;
    adoKlientBILAGSERIER: TSmallintField;
    spBilagSerienr: TADOStoredProc;
    spBilagSerienrBILAGNR: TIntegerField;
    adoBilagIDBILAGSERIE: TIntegerField;
    cdsBilagIDBILAGSERIE: TIntegerField;
    spBrukerLoggID: TADOStoredProc;
    spBrukerLoggIDID: TIntegerField;
    adoPost: TADODataSet;
    adoBetalingType: TADODataSet;
    dspBetalingType: TDataSetProvider;
    adoBetalingTypeIDBETALINGTYPE: TIntegerField;
    adoBetalingTypeBETALING: TStringField;
    cdsBetalingType: TClientDataSet;
    cdsBetalingTypeIDBETALINGTYPE: TIntegerField;
    cdsBetalingTypeBETALING: TStringField;
    dsBetalingType: TDataSource;
    adoFakturaAAR: TIntegerField;
    cdsFakturaAAR: TIntegerField;
    adoAbo: TADODataSet;
    dspAbo: TDataSetProvider;
    cdsAbo: TClientDataSet;
    dsAbo: TDataSource;
    spAboID: TADOStoredProc;
    adoAboIDABO: TIntegerField;
    adoAboIDKLIENT: TIntegerField;
    adoAboKUNDENR: TIntegerField;
    adoAboIDINTERVALL: TIntegerField;
    adoAboGJENTAGELSE: TIntegerField;
    adoAboBRUKER: TStringField;
    cdsAboIDABO: TIntegerField;
    cdsAboIDKLIENT: TIntegerField;
    cdsAboKUNDENR: TIntegerField;
    cdsAboIDINTERVALL: TIntegerField;
    cdsAboGJENTAGELSE: TIntegerField;
    cdsAboBRUKER: TStringField;
    spAboIDIDABO: TIntegerField;
    adoAboNAVN: TStringField;
    adoAboBESKRIVELSE: TStringField;
    cdsAboNAVN: TStringField;
    cdsAboBESKRIVELSE: TStringField;
    adoAboFORFALL: TDateField;
    cdsAboFORFALL: TDateField;
    adoAboTITTEL: TStringField;
    adoAboSUMEKS: TFloatField;
    adoAboSUMMVA: TFloatField;
    adoAboSUMRAB: TFloatField;
    adoAboSUMAVG: TFloatField;
    adoAboSUMTOT: TFloatField;
    adoAboAKTIV: TSmallintField;
    cdsAboTITTEL: TStringField;
    cdsAboSUMEKS: TFloatField;
    cdsAboSUMMVA: TFloatField;
    cdsAboSUMRAB: TFloatField;
    cdsAboSUMAVG: TFloatField;
    cdsAboSUMTOT: TFloatField;
    cdsAboAKTIV: TSmallintField;
    adoAboFAKTURADAGER: TIntegerField;
    cdsAboFAKTURADAGER: TIntegerField;
    dsMva: TDataSource;
    adoMvaMVAKODE: TIntegerField;
    adoMvaBESKRIVELSE: TStringField;
    adoMvaSATS: TFloatField;
    adoMvaGRUPPE: TStringField;
    adoMvaAKTIV: TSmallintField;
    cdsMvaGRUPPE: TStringField;
    cdsMvaAKTIV: TSmallintField;
    adoOrdreBRUKER: TStringField;
    cdsOrdreBRUKER: TStringField;
    adoFakturaBRUKER: TStringField;
    cdsFakturaBRUKER: TStringField;
    adoOrdreSTATUSTEKST: TStringField;
    cdsOrdreSTATUSTEKST: TStringField;
    adoKlientORDRETEKST: TMemoField;
    adoAboINTERNREF: TStringField;
    cdsAboINTERNREF: TStringField;
    adoOrdreIDORDRESTATUS: TIntegerField;
    cdsOrdreIDORDRESTATUS: TIntegerField;
    adoTekst: TADODataSet;
    adoBilagDOKUMENT: TStringField;
    cdsBilagDOKUMENT: TStringField;
    cdsBilagDOKUMENTCALC: TStringField;
    adoInnbetalingIDBETALINGTYPE: TIntegerField;
    cdsInnbetalingIDBETALINGTYPE: TIntegerField;
    ilBilagSerie: TImageList;
    adoBilagSerie: TADODataSet;
    dspBilagSerie: TDataSetProvider;
    cdsBilagSerie: TClientDataSet;
    adoBilagSerieIDKLIENT: TIntegerField;
    adoBilagSerieIDBILAGSERIE: TIntegerField;
    adoBilagSerieBILAGSERIE: TStringField;
    adoBilagSerieSTARTNR: TIntegerField;
    adoBilagSerieFARGE: TIntegerField;
    adoBilagSerieBILDEINDEX: TIntegerField;
    cdsBilagFARGE: TIntegerField;
    cdsBilagSerieIDKLIENT: TIntegerField;
    cdsBilagSerieIDBILAGSERIE: TIntegerField;
    cdsBilagSerieBILAGSERIE: TStringField;
    cdsBilagSerieSTARTNR: TIntegerField;
    cdsBilagSerieFARGE: TIntegerField;
    cdsBilagSerieBILDEINDEX: TIntegerField;
    cdsBilagBILDEINDEX: TIntegerField;
    spPersonID: TADOStoredProc;
    spPersonIDIDPERSON: TIntegerField;
    adoPerson: TADODataSet;
    dspPerson: TDataSetProvider;
    cdsPerson: TClientDataSet;
    dsPerson: TDataSource;
    adoPersonIDPERSON: TIntegerField;
    adoPersonNAVN: TStringField;
    adoPersonEPOST: TStringField;
    adoPersonTELEFON: TStringField;
    adoPersonMOBIL: TStringField;
    adoPersonINFO: TStringField;
    adoPersonBESKRIVELSE: TStringField;
    adoPersonKONTAKTNR: TIntegerField;
    adoPersonFIRMA: TStringField;
    cdsPersonIDPERSON: TIntegerField;
    cdsPersonNAVN: TStringField;
    cdsPersonEPOST: TStringField;
    cdsPersonTELEFON: TStringField;
    cdsPersonMOBIL: TStringField;
    cdsPersonINFO: TStringField;
    cdsPersonBESKRIVELSE: TStringField;
    cdsPersonKONTAKTNR: TIntegerField;
    cdsPersonFIRMA: TStringField;
    adoKlientPROGTYPE: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsKundeNewRecord(DataSet: TDataSet);
    procedure cdsLevNewRecord(DataSet: TDataSet);
    procedure cdsProdNewRecord(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cdsProdCalcFields(DataSet: TDataSet);
    procedure cdsKontoNewRecord(DataSet: TDataSet);
    procedure cdsFakturaNewRecord(DataSet: TDataSet);
    procedure cdsProdBeforeOpen(DataSet: TDataSet);
    procedure cdsProdAfterClose(DataSet: TDataSet);
    procedure adoConnBeforeConnect(Sender: TObject);
    procedure cdsPurringCalcFields(DataSet: TDataSet);
    procedure cdsBilagNewRecord(DataSet: TDataSet);
    procedure cdsKundeBeforeOpen(DataSet: TDataSet);
    procedure cdsKundeBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsKundeAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspKundeBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspKundeAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure spFakturanrBeforeOpen(DataSet: TDataSet);
    procedure cdsFakturaBeforeOpen(DataSet: TDataSet);
    procedure cdsFakturaBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsFakturaAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspFakturaAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspFakturaBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspBilagAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspBilagBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsBilagAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsBilagBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsBilagBeforeOpen(DataSet: TDataSet);
    procedure adoKlientBeforeOpen(DataSet: TDataSet);
    procedure cdsLevAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsLevBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsLevBeforeOpen(DataSet: TDataSet);
    procedure cdsProdBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsProdAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspProdAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspProdBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsKontoBeforeOpen(DataSet: TDataSet);
    procedure cdsKontoBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsKontoAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspKontoBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspKontoAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsBilagCalcFields(DataSet: TDataSet);
    procedure cdsPeriodeBeforeOpen(DataSet: TDataSet);
    procedure cdsPeriodeNewRecord(DataSet: TDataSet);
    procedure spNyKontaktBeforeOpen(DataSet: TDataSet);
    procedure cdsOrdreAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsOrdreBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsOrdreBeforeOpen(DataSet: TDataSet);
    procedure dspOrdreAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure dspOrdreBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsOrdreNewRecord(DataSet: TDataSet);
    procedure cdsPurringBeforeOpen(DataSet: TDataSet);
    procedure cdsPostBeforeOpen(DataSet: TDataSet);
    procedure cdsAboNewRecord(DataSet: TDataSet);
    procedure cdsAboBeforeOpen(DataSet: TDataSet);
    procedure spOrdrenrBeforeOpen(DataSet: TDataSet);
    procedure adoBilagSerieBeforeOpen(DataSet: TDataSet);
    procedure cdsPersonBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    //Stateless Datasnap
    FKundeID: OleVariant;
    FFakturaID: OleVariant;
    FBilagID: OleVariant;
    FLevID: OleVariant;
    FProdID: OleVariant;
    FKontoID: OleVariant;
    FOrdreID: OleVariant;

    CalledCreate: Boolean;
//    function NyttNummer(Serie: String): Integer;
    function NyttProdnr: Integer;
    procedure LesMvaSatser;
    procedure dspAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant; FieldName: String);
    procedure dspBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant; FieldName: String);
    procedure GodkjennBilag(Periodenr, Aar: Integer);
    function NyttKontaktnr(Serie: String): Integer;
  public
    { Public declarations }
    //Lastes på nytt ved innlogging
    g_Bruker: String;
    g_Tilgang: Integer;
    g_AktivModul: Integer;
    g_KlientID: Integer;
    g_KlientNavn: String;
    g_AktivTab: array[0..3] of Integer;
    g_BilagAar: Integer;
    g_BrukerLoggID: Integer;
    g_ProgType: Integer;

    g_DataImgDir: String;
    g_DocDir: String;

    //Lastes ved OnCreate
    MvaListe: TblsMvaList;
    g_ReportDir: String;
    g_ImgDir: String;
    g_DataDir: String;
    g_LogoDir: String;
    g_LogDir: String;
    g_TemplateDir: String;

    function Connect: Boolean;
    procedure Disconnect;
    procedure NullStillGlobaler;
    procedure AvbryttNyttNr(Nr: Integer);
    function FinnKatalog(Navn: String): String;
    procedure LastProdKategorier(TreeView: TTreeView; Full: Boolean = True);
    procedure FreeProdKategorier(TreeView: TTreeView);
    function HarAdminTilgang: Boolean;
    procedure SettFakturaStatus(IDStatus: Integer);
    function HentKlientAdresse: String;
    function HentKundeKontonr(Kontaktnr: Integer): String;
    procedure OpenWebHelp(Id: String);
    function ErTerminLukket(Termin, Aar: Integer): Boolean;
    procedure LukkTermin(Termin, Aar: Integer);
    function ErPeriodeLukket(Periode, Aar: Integer): Boolean;
    procedure HentSisteLukketPeriode(var Aar, Termin: Integer);
    function NyttBilagSeriennr(Aar: Integer; IdSerie: Variant): Integer;
    function RenskOrgNr(Orgnr: String): String;
    function RegistrerInnlogging: Integer;
    procedure RegistrertUtlogging;
    function HentOnlineServiceUrl: String;
    function HentKontoNavn(Kontonr: Integer): String;

  end;

  TNummer = class (TObject)
    Nr: Integer;
    constructor Create(No: Integer);
    function AsString: String;
  end;

  TKode = class (TObject)
    Kode: String;
    constructor Create(Code: String);
  end;

var
  Dm: TDm;
  WebHelp: String = 'webhelp.php?hid=';
  LisensReg: String = 'reg_form_processing.php?AutoReg=1&';

implementation

{$R *.dfm}

uses blsFirebird, blsFileUtil, IniFiles, blsDialogs, Dialogs, blsMisc,
  blsRegistry, DateUtils, JclSysInfo;

function TDm.FinnKatalog(Navn: String): String;
var Ini: TIniFile;
begin
  Ini := TIniFile.Create(Dir + 'config.ini');
  try
    Result := Ini.ReadString('Innstillinger', Navn, '');
    if Result = '' then begin
      if UpperCase(Navn) = 'IMPORTDIR' then
        Result := Dir + 'Import'
      else if UpperCase(Navn) = 'EXPORTDIR' then
        Result := Dir + 'Export';
    end;

    ForceDirectories(Result);
  finally
    Ini.Free;
  end;
end;

function TDm.Connect: Boolean;
begin
  Result := blsFireBird.ConnectToFireBird(AdoConn, Dir + 'config.ini', 'sysdba', 'masterkey', 'ISO8859_1');
end;

function TDm.HarAdminTilgang: Boolean;
begin
  if g_Tilgang = 0 then
    Result := True
  else begin
    InfoDialog('Tilgang', 'Du har ikke tilgang til denne funksjonen.' + #13#10 + ' Kontakt din systemadministrator!');
    Result := False;
  end;
end;

procedure TDm.Disconnect;
begin
  AdoConn.Close;
end;

procedure TDm.NullStillGlobaler;
var I: Integer;
begin
  for I := 0 to 3 do
    g_AktivTab[I] := -1;

  g_AktivModul := -1;
  g_Tilgang := -1;
  g_Bruker := '';
  g_KlientID := -1;
  g_KlientNavn := '';
  g_DataImgDir := '';
  g_DocDir := '';
  g_ProgType := -1;
end;

procedure TDm.LesMvaSatser;
var Ini: TIniFile;
    Mva: Double;
    I: Integer;
begin
  I := 0;
  Mva := 0;

  Ini := TIniFile.Create(Dir + 'config.ini');
  try
    while Mva <> -1 do begin
      Mva := Ini.ReadFloat('Mva', 'Sats' + IntToStr(I), -1);
      if Mva <> -1 then 
        MvaListe.Add(Mva, I = 0);
      Inc(I);
    end;
  finally
    Ini.Free;
  end;
end;

procedure TDm.LastProdKategorier(TreeView: TTreeView; Full: Boolean = True);
var
  HNode, UNode: TTreeNode;
  IsOpen: Boolean;
begin
  TreeView.Items.Clear;
  HNode := TreeView.Items.Add(nil, 'Alle Kategorier');
  if Full then
    TreeView.Items.AddChild(HNode, 'De 500 nyeste');

  IsOpen := adoHovedKat.Active;

  if not IsOpen then begin
    adoHovedKat.Parameters.ParamValues['IdKlient'] := g_KlientID;
    adoHovedKat.Open;
    cdsUnderKat.Open;
  end;

  adoHovedKat.First;
  while not adoHovedKat.Eof do begin
    HNode := TreeView.Items.AddChild(TreeView.Items.Item[0], adoHovedKatKATEGORI.Value);
    HNode.Data := TNummer.Create(adoHovedKatKATEGORINR.Value);

    cdsUnderKat.CancelRange;
    cdsUnderKat.SetRange([adoHovedKatKATEGORINR.Value], [adoHovedKatKATEGORINR.Value]);
    while not cdsUnderKat.Eof do begin
      UNode := TreeView.Items.AddChild(HNode, cdsUnderKatKATEGORI.Value);
      UNode.Data := TNummer.Create(cdsUnderKatKATEGORINR.Value);
      cdsUnderKat.Next;
    end;
    adoHovedKat.Next;
  end;

  if not IsOpen then begin
    cdsUnderKat.Close;
    adoHovedKat.Close;
  end;
  TreeView.Items.Item[0].Expand(False);
end;

procedure TDm.FreeProdKategorier(TreeView: TTreeView);
var I: Integer;
begin
  for I := 0 to TreeView.Items.Count - 1 do
    TNummer(TreeView.Items.Item[I].Data).Free;
  TreeView.Items.Clear;
end;

function TDm.HentKundeKontonr(Kontaktnr: Integer): String;
begin
  adoData.Close;
  adoData.CommandText := 'select BANKKONTO from KONTAKT ' +
    'where IDKLIENT = ' + IntToStr(g_KlientID) + ' and KONTAKTNR = ' + IntToStr(Kontaktnr);
  adoData.Open;
  Result := adoData.Fields[0].AsString;
  adoData.Close;
end;

function TDm.HentKontoNavn(Kontonr: Integer): String;
begin
  adoData.Close;
  adoData.CommandText := 'select NAVN from KONTO ' +
    'where IDKLIENT = ' + IntToStr(g_KlientID) + ' and KONTONR = ' + IntToStr(Kontonr);
  adoData.Open;
  Result := adoData.FieldByName('NAVN').AsString;
  adoData.Close;
end;

function TDm.HentOnlineServiceUrl: String;
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(Dir + 'config.ini');
  try
    Result := Ini.ReadString('Innstillinger', 'OnlineServices', '');
  finally
    Ini.Free;
  end;
end;

procedure TDm.OpenWebHelp(Id: String);
var
  Url: String;
begin
  Url := HentOnlineServiceUrl;
  if Url = '' then begin
    AlertDialog('Help', 'Tjeneste for hjelp via internett ikke angitt!');
    Exit;
  end
  else
    blsMisc.StartWeb(Url + WebHelp + Id);
end;


procedure TDm.DataModuleCreate(Sender: TObject);
begin
  //Sjekker at den ikke connecter til databasen før settingene er lest.
  CalledCreate := True;
  //blsRegistry.RegisterApplication;
  NullStillGlobaler;
  MvaListe := TblsMvaList.Create;
  LesMvaSatser;

  g_ReportDir := Dir + 'Reports\';
  g_ImgDir := Dir + 'Images\';
  g_DataDir := Dir + 'Data\';
  g_LogoDir := Dir + 'DataLogo\';
  g_LogDir := Dir + 'Logs\';
  g_TemplateDir := Dir + 'Templates\';

  ForceDirectories(g_ReportDir);
  ForceDirectories(g_ImgDir);
  ForceDirectories(g_DataDir);
  ForceDirectories(g_LogoDir);
  ForceDirectories(g_LogDir);
  ForceDirectories(g_TemplateDir);
end;

function TDm.NyttKontaktnr(Serie: String): Integer;
begin
  spNyKontakt.Parameters.ParamValues['IDSERIE'] := AnsiUpperCase(Serie);
  spNyKontakt.Open;
  Result := spNyKontaktKONTAKTNR.Value;
  spNyKontakt.Close;
end;

procedure TDm.cdsKundeNewRecord(DataSet: TDataSet);
begin
  cdsKundeKONTAKTNR.Value := NyttKontaktnr('KS');
  cdsKundeIDKLIENT.Value := g_KlientID;
  cdsKundeIDSERIE.Value := 'KS';
  cdsKundeLAND.Value := 'Norge';
  cdsKundeFORFALLSDAGER.Value := 14;
end;

function TDm.NyttProdnr: Integer;
var I: Integer;
begin
  adoKlient.Open;
  Result := adoKlientNESTEPRODNR.Value + 1;
  I := Result;

  adoProdnr.Parameters.ParamValues['IdKlient'] := g_KlientID;
  adoProdnr.Parameters.ParamValues['Pnr'] := IntToStr(Result);
  adoProdnr.Parameters.ParamValues['PnrEnd'] := IntToStr(Result + 500);
  adoProdnr.Open;

  while ((I <= (Result + 500)) and
    (adoProdnr.Locate('PRODUKTNR', IntToStr(I), []))) do
    Inc(I);

  if I = Result + 500 then begin
    Result := Result * -1;
  end
  else
    Result := I;

  adoKlient.Edit;
  adoKlientNESTEPRODNR.Value := I;
  adoKlient.Post;

  adoProdnr.Close;
  adoKlient.Close;
end;

procedure TDm.AvbryttNyttNr(Nr: Integer);
begin
  adoKlient.Open;
  if adoKlientNESTEPRODNR.Value = Nr then begin
    adoKlient.Edit;
    adoKlientNESTEPRODNR.Value := adoKlientNESTEPRODNR.Value - 1;
    adoKlient.Post;
  end;
  adoKlient.Close;
end;

procedure TDm.SettFakturaStatus(IDStatus: Integer);
begin
  //Brukes for å endre status ved utskrift/export etc.
  cdsFaktura.Edit;
  cdsFakturaIDStatus.Value := IDStatus;
  cdsFaktura.Post;
  cdsFaktura.ApplyUpdates(-1);
  cdsFaktura.RefreshRecord;
end;

procedure TDm.cdsLevNewRecord(DataSet: TDataSet);
begin
  cdsLevKONTAKTNR.Value := NyttKontaktnr('LS');
  cdsLevIDKLIENT.Value := g_KlientID;
  cdsLevIDSERIE.Value := 'LS';
  cdsLevLAND.Value := 'Norge';
  cdsLevFORFALLSDAGER.Value := 0;
end;

procedure TDm.cdsProdNewRecord(DataSet: TDataSet);
begin
  cdsProdIDKLIENT.Value := g_KlientID;
  cdsProdPRODUKTNR.Value := IntToStr(NyttProdnr);
  cdsProdMVA.Value := MvaListe.DefaultMva;
  cdsProdENHET.Value := 'Stk';
  cdsProdIDPRODTYPE.Value := 10;
end;

procedure TDm.DataModuleDestroy(Sender: TObject);
begin
  MvaListe.Free;
end;

procedure TDm.cdsProdCalcFields(DataSet: TDataSet);
begin
  if cdsProdMVA.Value > 0 then
    cdsProdPRISINK.Value := cdsProdPRIS.Value + ((cdsProdPRIS.Value * cdsProdMVA.Value) / 100)
  else
    cdsProdPRISINK.Value := cdsProdPRIS.Value;

  cdsProdFORTJENESTE.Value := cdsProdPRIS.Value - cdsProdINNPRIS.Value;
  if (cdsProdFORTJENESTE.Value = 0) or (cdsProdINNPRIS.Value = 0) then
    cdsProdAVANSEP.Value := 0
  else
    cdsProdAVANSEP.Value := (cdsProdFORTJENESTE.Value / cdsProdINNPRIS.Value) * 100;
end;

procedure TDm.cdsKontoNewRecord(DataSet: TDataSet);
begin
  cdsKontoIDKLIENT.Value := g_KlientID;
  cdsKontoAKTIV.Value := 1;
end;

{ TNummer }

function TNummer.AsString: String;
begin
  Result := IntToStr(Nr);
end;

constructor TNummer.Create(No: Integer);
begin
  Nr := No;
end;

function TDm.HentKlientAdresse: String;
var WasOpen: Boolean;
    S: TStringList;
begin
  WasOpen := True;
  if not adoKlient.Active then begin
    adoKlient.Open;
    WasOpen := False;
  end;

  S := TStringList.Create;
  try
    S.Add(adoKlientNAVN.Value);
    S.Add(adoKlientADRESSE.Value);
    S.Add(adoKlientPOSTNR.Value + ' ' + adoKlientPOSTSTED.Value);

    Result := S.Text;
  finally
    S.Free;
  end;

  if WasOpen = False then
    adoKlient.Close;
end;

procedure TDm.cdsFakturaNewRecord(DataSet: TDataSet);
begin
  cdsFakturaIDKLIENT.Value := g_KlientID;

  spFakturaID.Open;
  cdsFakturaIDFAKTURA.Value := spFakturaIdIDFAKTURA.Value;
  spFakturaID.Close;
  spFakturanr.Open;
  cdsFakturaFAKTURANR.Value := spFakturanrFAKTURANR.Value;
  spFakturanr.Close;

  cdsFakturaIDFAKTURAART.Value := 10; //Faktura
  cdsFakturaIDSTATUS.Value := 10; // -
  cdsFakturaIDBETSTATUS.Value := 30;  //Ubetalt.
  cdsFakturaFAKTURADATO.Value := Date;
  cdsFakturaAAR.Value := YearOf(Date);
  cdsFakturaFORFALLDATO.Value := Date + 14;
  cdsFakturaBRUKER.Value := g_Bruker;  
end;

{ TKode }

constructor TKode.Create(Code: String);
begin
  Kode := Code;
end;

procedure TDm.cdsProdBeforeOpen(DataSet: TDataSet);
begin
  VarClear(FProdID); //Stateless Datasnap

  //cdsProdLev brukes via LookUp-felter
  adoProdLev.Parameters.ParamValues['IdKlient'] := g_KlientID;
  cdsProdLev.FetchParams;

  adoProd.Parameters.ParamValues['IdKlient'] := g_KlientID;
  cdsProd.FetchParams;
end;

procedure TDm.cdsProdAfterClose(DataSet: TDataSet);
begin
  cdsProdLev.Close;
end;

procedure TDm.adoBilagSerieBeforeOpen(DataSet: TDataSet);
begin
  adoBilagSerie.Parameters.ParamValues['IdKlient'] := Dm.g_KlientID;
end;

procedure TDm.adoConnBeforeConnect(Sender: TObject);
begin
  //Sjekker at den ikke connecter til databasen før settingene er lest.
  if not CalledCreate then
    Abort;
end;

procedure TDm.cdsPurringBeforeOpen(DataSet: TDataSet);
begin
  adoPurring.Parameters.ParamValues['IdKlient'] := g_KlientID;
  adoPurring.Parameters.ParamValues['Dato'] := Date;
  cdsPurring.FetchParams;
end;

procedure TDm.cdsPurringCalcFields(DataSet: TDataSet);
begin
  if cdsPurringPURREDATO.Value > 0 then
    cdsPurringPURRETOTAL.Value := cdsPurringSUMTOT.Value + cdsPurringPURREGEBYR.Value
      + cdsPurringPURRERENTER.Value;
end;

procedure TDm.cdsBilagNewRecord(DataSet: TDataSet);
begin
  cdsBilagIDKLIENT.Value := g_KlientID;
  cdsBilagBRUKER.Value := g_Bruker;

  spBilagID.Open;
  cdsBilagIDBILAG.Value := spBilagIDIDBILAG.Value;
  spBilagID.Close;

  if g_BilagAar = YearOf(Date) then
    cdsBilagPERIODENR.Value := MonthOf(Date)
  else
    cdsBilagPERIODENR.Value := 12;

  cdsBilagAAR.Value := g_BilagAar;
  cdsBilagBILAGNR.Value := NyttBilagSeriennr(cdsBilagAAR.Value, null);
end;

procedure TDm.cdsKundeBeforeOpen(DataSet: TDataSet);
begin
  VarClear(FKundeID); //Stateless Datasnap

  adoKunde.Parameters.ParamValues['IdKlient'] := g_KlientID;
  cdsKunde.FetchParams;
end;

procedure TDm.cdsKundeBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  OwnerData := FKundeId; //Stateless Datasnap
end;

procedure TDm.cdsKundeAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  FKundeID := OwnerData; //Stateless Datasnap
end;

procedure TDm.dspKundeBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dspBeforeGetRecords(Sender, OwnerData, 'KONTAKTNR'); //Stateless Datasnap
end;

procedure TDm.dspKundeAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dspAfterGetRecords(Sender, OwnerData, 'KONTAKTNR'); //Stateless Datasnap
end;

procedure TDm.dspBeforeGetRecords(Sender: TObject; var OwnerData: OleVariant;
  FieldName: String);
begin
  with (Sender as TDataSetProvider).DataSet do begin
    Open;
    if VarIsEmpty(OwnerData) then
      First
    else if VarIsNull(OwnerData) then
      Last
    else
      if not Locate(FieldName, OwnerData, []) then begin
        Close;
        //raise Exception.Create('Feil ved henting av data fra databaseserver.');
      end;
  end;
end;

procedure TDm.dspAfterGetRecords(Sender: TObject; var OwnerData: OleVariant;
  FieldName: String);
begin
  with (Sender as TDataSetProvider).DataSet do begin
    if Eof then
      OwnerData := null
    else
      OwnerData := FieldByName(FieldName).Value;
    Close;
  end;
end;

procedure TDm.spFakturanrBeforeOpen(DataSet: TDataSet);
begin
  spFakturanr.Parameters.ParamValues['IdKlient'] := g_KlientID;
end;

procedure TDm.cdsFakturaBeforeOpen(DataSet: TDataSet);
begin
  VarClear(FFakturaID); //Stateless Datasnap

  adoFaktura.Parameters.ParamValues['IdKlient'] := g_KlientID;
  adoFaktura.Parameters.ParamValues['FDato'] := Date - (365 * 10);
  cdsFaktura.FetchParams;
end;

procedure TDm.cdsFakturaBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  OwnerData := FFakturaId; //Stateless Datasnap
end;

procedure TDm.cdsFakturaAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  FFakturaID := OwnerData; //Stateless Datasnap
end;

procedure TDm.dspFakturaAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dspAfterGetRecords(Sender, OwnerData, 'IDFAKTURA'); //Stateless Datasnap
end;

procedure TDm.dspFakturaBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dspBeforeGetRecords(Sender, OwnerData, 'IDFAKTURA'); //Stateless Datasnap
end;

procedure TDm.dspBilagAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dspAfterGetRecords(Sender, OwnerData, 'IDBILAG');
end;

procedure TDm.dspBilagBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dspBeforeGetRecords(Sender, OwnerData, 'IDBILAG');
end;

procedure TDm.cdsAboBeforeOpen(DataSet: TDataSet);
begin
  adoAbo.Parameters.ParamValues['IdKlient'] := g_KlientID;
  cdsAbo.FetchParams;
end;

procedure TDm.cdsAboNewRecord(DataSet: TDataSet);
begin
  cdsAboIDKLIENT.Value := g_KlientID;
  cdsAboGJENTAGELSE.Value := 1;
  cdsAboIDINTERVALL.Value := 40; //Årlig
  cdsAboBRUKER.Value := g_Bruker;
  cdsAboSUMEKS.Value := 0;
  cdsAboSUMMVA.Value := 0;
  cdsAboSUMRAB.Value := 0;
  cdsAboSUMTOT.Value := 0;
  cdsAboAKTIV.Value := 1;
  cdsAboFORFALL.Value := Date + 14;

  spAboID.Open;
  cdsAboIDABO.Value := spAboIdIDABO.Value;
  spAboID.Close;
end;

procedure TDm.cdsBilagAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  FBilagID := OwnerData; //Stateless Datasnap
end;

procedure TDm.cdsBilagBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  OwnerData := FBilagId; //Stateless Datasnap
end;

procedure TDm.cdsBilagBeforeOpen(DataSet: TDataSet);
begin
  VarClear(FBilagID); //Stateless Datasnap

  adoBilag.Parameters.ParamValues['IdKlient'] := g_KlientID;
  cdsBilag.FetchParams;   
end;

procedure TDm.adoKlientBeforeOpen(DataSet: TDataSet);
begin
  adoKlient.Parameters.ParamValues['IdKlient'] := g_KlientID;
end;

procedure TDm.cdsLevAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  FLevID := OwnerData; //Stateless Datasnap
end;

procedure TDm.cdsLevBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  OwnerData := FLevId; //Stateless Datasnap
end;

procedure TDm.cdsLevBeforeOpen(DataSet: TDataSet);
begin
  VarClear(FLevID); //Stateless Datasnap

  adoLev.Parameters.ParamValues['IdKlient'] := g_KlientID;
  cdsLev.FetchParams;
end;

procedure TDm.cdsProdBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  OwnerData := FProdId; //Stateless Datasnap
end;

procedure TDm.cdsProdAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  FProdID := OwnerData; //Stateless Datasnap
end;

procedure TDm.dspProdAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dspAfterGetRecords(Sender, OwnerData, 'PRODUKTNR'); //Stateless Datasnap
end;

procedure TDm.dspProdBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dspBeforeGetRecords(Sender, OwnerData, 'PRODUKTNR'); //Stateless Datasnap
end;

procedure TDm.cdsKontoBeforeOpen(DataSet: TDataSet);
begin
  VarClear(FKontoID); //Stateless Datasnap

  adoKonto.Parameters.ParamValues['IdKlient'] := g_KlientID;
  cdsKonto.FetchParams;
end;

procedure TDm.cdsKontoBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  OwnerData := FKontoId; //Stateless Datasnap
end;

procedure TDm.cdsKontoAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  FKontoID := OwnerData; //Stateless Datasnap
end;

procedure TDm.dspKontoBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dspBeforeGetRecords(Sender, OwnerData, 'KONTONR');
end;

procedure TDm.dspKontoAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dspAfterGetRecords(Sender, OwnerData, 'KONTONR');
end;

procedure TDm.cdsBilagCalcFields(DataSet: TDataSet);
var IsSet: Boolean;
begin
  IsSet := False;
  cdsPost.SetRange([cdsBilagIDBILAG.Value], [cdsBilagIDBILAG.Value]);
  while not cdsPost.Eof do begin
    if not cdsPostKONTAKTNR.IsNull then begin
      cdsBilagKONTAKTNR.Value := cdsPostKONTAKTNR.Value;
      cdsBilagKONTAKT.Value := cdsPostNAVN.Value;
      cdsBilagTEKST.Value := cdsPostTEKST.Value;
      if cdsPostFAKTURANR.Value <> '' then
        cdsBilagTEKST.Value := cdsBilagTEKST.Value + ', ' + cdsPostFAKTURANR.Value;
      if not cdsPostIDTEKST.IsNull then
        cdsBilagTEKSTKODE.Value := cdsPostIDTEKST.Value;
      cdsBilagBELOP.Value := cdsPostBELOP.Value;
      IsSet := True;
    end;
    cdsPost.Next;
  end;
  if (not IsSet) and cdsPost.Eof then begin
    if not cdsPostIDTEKST.IsNull then
      cdsBilagTEKSTKODE.Value := cdsPostIDTEKST.Value;
    cdsBilagTEKST.Value := cdsPostTEKST.Value;
    if cdsPostFAKTURANR.Value <> '' then
      cdsBilagTEKST.Value := cdsBilagTEKST.Value + ', ' + cdsPostFAKTURANR.Value;
    cdsBilagBELOP.Value := cdsPostBELOP.Value;
  end;

  if cdsBilagSerie.Active then begin
    if cdsBilagSerie.FindKey([cdsBilagIDBILAGSERIE.Value]) then begin
      cdsBilagFARGE.Value := cdsBilagSerieFARGE.Value;
      cdsBilagBILDEINDEX.Value := cdsBilagSerieBILDEINDEX.Value;
    end;
  end;

  if cdsBilagDOKUMENT.AsString <> '' then
    cdsBilagDOKUMENTCALC.AsString := Copy(cdsBilagDOKUMENT.AsString, Pos('_', cdsBilagDOKUMENT.AsString) + 1, 50);

  cdsPost.CancelRange;
end;

procedure TDm.cdsPeriodeBeforeOpen(DataSet: TDataSet);
begin
  adoPeriode.Parameters.ParamValues['IdKlient'] := g_KlientID;
end;

procedure TDm.HentSisteLukketPeriode(var Aar, Termin: Integer);
var Aktiv: Boolean;
begin
  Aktiv := True;
  if not cdsPeriode.Active then begin
    Aktiv := False;
    cdsPeriode.Open;
  end;

  cdsPeriode.Last;
  while (not cdsPeriode.Bof) and (not cdsPeriodeLUKKET.Value = 1) do
    cdsPeriode.Prior;

  if (cdsPeriodeLUKKET.Value <> 1) and (cdsPeriode.Bof) then begin
    Aar := YearOf(Date);
    Termin := (MonthOf(Date) -1) div 2;
  end
  else begin
    if cdsPeriodePERIODENR.Value > 11 then begin
      Aar := cdsPeriodeAAR.Value + 1;
      Termin := 0;
    end
    else begin
      Aar := cdsPeriodeAAR.Value;
      Termin := (cdsPeriodePERIODENR.Value) div 2;
    end;
  end;

  if not Aktiv then
    cdsPeriode.Close;
end;

function TDm.ErTerminLukket(Termin, Aar: Integer): Boolean;
var Aktiv: Boolean;
    P: Integer;
begin
  Result := False;
  Aktiv := True;
  if not cdsPeriode.Active then begin
    Aktiv := False;
    cdsPeriode.Open;
  end;

  P := Termin * 2 - 1; //Henter ut første måned i perioden...
  if cdsPeriode.FindKey([Aar, P]) then
    Result := cdsPeriodeLUKKET.Value = 1;

  if not Aktiv then
    cdsPeriode.Close;
end;

function TDm.ErPeriodeLukket(Periode, Aar: Integer): Boolean;
var Aktiv: Boolean;
begin
  Result := False;
  Aktiv := True;
  if not cdsPeriode.Active then begin
    Aktiv := False;
    cdsPeriode.Open;
  end;
  if cdsPeriode.FindKey([Aar, Periode]) then
    Result := cdsPeriodeLUKKET.Value = 1;
  if not Aktiv then
    cdsPeriode.Close;
end;



procedure TDm.GodkjennBilag(Periodenr, Aar: Integer);
var Sql: String;
begin
  Sql := 'update BILAG set GODKJENT = 1 where IDKLIENT = ' + IntToStr(g_KlientID) +
         ' and AAR = ' + IntToStr(Aar) +
         ' and PERIODENR = ' + IntToStr(Periodenr) + ';';
  adoSQL.CommandText := SQL;
  adoSQL.Execute;
end;

procedure TDm.LukkTermin(Termin, Aar: Integer);
var Aktiv: Boolean;
    P: Integer;
begin
  Aktiv := True;
  if not cdsPeriode.Active then begin
    Aktiv := False;
    cdsPeriode.Open;
  end;

  P := Termin * 2 - 1; //Henter ut første måned i perioden...
  if cdsPeriode.FindKey([Aar, P]) then begin
    cdsPeriode.Edit;
    cdsPeriodeLUKKET.Value := 1;
    cdsPeriodeLUKKETDATO.Value := Now;
    cdsPeriodeBRUKER.Value := g_Bruker;
    cdsPeriode.Post;
  end
  else begin
    cdsPeriode.Append;
    cdsPeriodeAAR.Value := Aar;
    cdsPeriodePERIODENR.Value := P;
    cdsPeriodeLUKKET.Value := 1;
    cdsPeriodeLUKKETDATO.Value := Now;
    cdsPeriodeBRUKER.Value := g_Bruker;
    cdsPeriode.Post;
  end;
  GodkjennBilag(P, Aar);

  if P < 13 then begin
    Inc(P);
    if cdsPeriode.FindKey([Aar, P]) then begin
      cdsPeriode.Edit;
      cdsPeriodeLUKKET.Value := 1;
      cdsPeriodeLUKKETDATO.Value := Now;
      cdsPeriodeBRUKER.Value := g_Bruker;
      cdsPeriode.Post;
    end
    else begin
      cdsPeriode.Append;
      cdsPeriodeAAR.Value := Aar;
      cdsPeriodePERIODENR.Value := P;
      cdsPeriodeLUKKET.Value := 1;
      cdsPeriodeLUKKETDATO.Value := Now;
      cdsPeriodeBRUKER.Value := g_Bruker;
      cdsPeriode.Post;
    end;
    GodkjennBilag(P, Aar);
  end;
  cdsPeriode.ApplyUpdates(-1);

  if not Aktiv then
    cdsPeriode.Close;
end;

procedure TDm.cdsPeriodeNewRecord(DataSet: TDataSet);
begin
  cdsPeriodeIDKLIENT.Value := g_KlientID;
end;

procedure TDm.cdsPersonBeforeOpen(DataSet: TDataSet);
begin
  adoPerson.Parameters.ParamValues['IdKlient'] := g_KlientID;
  cdsPerson.FetchParams;
end;

procedure TDm.cdsPostBeforeOpen(DataSet: TDataSet);
begin
  adoPost.Parameters.ParamValues['IdKlient'] := g_KlientID;
  cdsPost.FetchParams;
end;

procedure TDm.spNyKontaktBeforeOpen(DataSet: TDataSet);
begin
  spNyKontakt.Parameters.ParamValues['IDKLIENT'] := g_KlientID;
end;

procedure TDm.spOrdrenrBeforeOpen(DataSet: TDataSet);
begin
  spOrdrenr.Parameters.ParamValues['IdKlient'] := g_KlientID;
end;

procedure TDm.cdsOrdreAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  FOrdreID := OwnerData; //Stateless Datasnap
end;

procedure TDm.cdsOrdreBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  OwnerData := FOrdreID; //Stateless Datasnap
end;

procedure TDm.cdsOrdreBeforeOpen(DataSet: TDataSet);
begin
  VarClear(FOrdreID); //Stateless Datasnap

  adoOrdre.Parameters.ParamValues['IdKlient'] := g_KlientID;
  cdsOrdre.FetchParams;
end;

procedure TDm.dspOrdreAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dspAfterGetRecords(Sender, OwnerData, 'IDORDRE'); //Stateless Datasnap
end;

procedure TDm.dspOrdreBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dspBeforeGetRecords(Sender, OwnerData, 'IDORDRE'); //Stateless Datasnap
end;

procedure TDm.cdsOrdreNewRecord(DataSet: TDataSet);
begin
  cdsOrdreIDKLIENT.Value := g_KlientID;

  spOrdreID.Open;
  cdsOrdreIDORDRE.Value := spOrdreIDIDORDRE.Value;
  spOrdreID.Close;
  spOrdrenr.Open;
  cdsOrdreORDRENR.Value := spOrdrenrORDRENR.Value;
  spOrdrenr.Close;

  cdsOrdreORDREDATO.Value := Date;
  cdsOrdreBRUKER.Value := g_Bruker;
  cdsOrdreIDORDRESTATUS.Value := 10;
end;

function TDm.NyttBilagSeriennr(Aar: Integer; IdSerie: Variant): Integer;
begin
  spBilagSerienr.Parameters.ParamValues['IDKLIENT'] := g_KlientID;
  spBilagSerienr.Parameters.ParamValues['AAR'] := Aar;
  spBilagSerienr.Parameters.ParamValues['IDBILAGSERIE'] := IdSerie;
  spBilagSerienr.Open;
  Result := spBilagSerienrBILAGNR.Value;
  spBilagSerienr.Close;
end;

function TDm.RenskOrgNr(Orgnr: String): String;
var I: Integer;
begin
  Result := '';
  for I := 1 to Length(Orgnr) do
    if Orgnr[I] in ['0'..'9'] then
      Result := Result + Orgnr[I];
end;

function TDm.RegistrerInnlogging: Integer;
var
  S: String;
begin
  spBrukerLoggID.Open;
  Result := spBrukerLoggIdID.Value;
  g_BrukerLoggID := Result;
  spBrukerLoggID.Close;

  S := 'insert into BRUKERLOGG (IDBRUKERLOGG, BRUKERNAVN, IDKLIENT, INNLOGGET, PCNAVN) '
     + ' values ('
     + IntToStr(Result) + ','
     + QuotedStr(g_Bruker) + ','
     + IntToStr(g_KlientID) + ','
     + QuotedStr('NOW') + ','
     + QuotedStr(JclSysInfo.GetLocalComputerName)
     + ')';

  adoSQL.CommandText := S;
  adoSQL.Execute;
end;

procedure TDm.RegistrertUtlogging;
var
  S: String;
begin
  if g_BrukerLoggID = 0 then
    Exit;

  S := 'update BRUKERLOGG set UTLOGGET = ' + QuotedStr('NOW') + ' where IDBRUKERLOGG = '
     + IntToStr(g_BrukerLoggID);

  adoSQL.CommandText := S;
  adoSQL.Execute;
  g_BrukerLoggID := 0;
end;


end.
