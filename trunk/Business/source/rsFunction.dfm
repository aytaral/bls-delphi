object dmFunction: TdmFunction
  OldCreateOrder = False
  Height = 388
  Width = 496
  object SaveDialog: TSaveDialog
    DefaultExt = '*.pdf'
    Filter = 'Adobe Acrobat (*.pdf)|*.pdf'
    Left = 32
    Top = 16
  end
  object slMvaPost: TblsList
    Lines.Strings = (
      
        'insert into POSTERING (IDBILAG, IDPOSTERING, IDKLIENT, KONTONR, ' +
        'TEKST, BELOP)'
      'values (:IdBilag, NULL, :IdKlient, :Kontonr, :Tekst, :Belop);')
    Left = 104
    Top = 16
  end
  object adoFakturaPost: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select P.KONTONR, K.MVAKODE, L.MVA, sum((L.ANTALL * L.PRIS) - ((' +
      'COALESCE(L.RABATT, 0) * L.ANTALL * L.PRIS) / 100))'#13#10'from FAKTURA' +
      ' F'#13#10'join FAKTURALINJE L on (F.IDFAKTURA = L.IDFAKTURA)'#13#10'left joi' +
      'n PRODUKT P on (L.PRODNR = P.PRODUKTNR and F.IDKLIENT = P.IDKLIE' +
      'NT)'#13#10'left join KONTO K on (P.KONTONR = K.KONTONR and F.IDKLIENT ' +
      '= K.IDKLIENT)'#13#10'where F.IDFAKTURA = :IdFaktura'#13#10'and F.IDKLIENT = ' +
      ':IdKlient'#13#10'group by P.KONTONR, K.MVAKODE, L.MVA'
    Parameters = <
      item
        Name = 'IdFaktura'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 32
    Top = 80
    object adoFakturaPostKONTONR: TIntegerField
      FieldName = 'KONTONR'
    end
    object adoFakturaPostMVAKODE: TIntegerField
      FieldName = 'MVAKODE'
    end
    object adoFakturaPostSUM: TFloatField
      FieldName = 'SUM'
    end
    object adoFakturaPostMVA: TFloatField
      FieldName = 'MVA'
    end
  end
  object slPostering: TblsList
    Lines.Strings = (
      
        'insert into POSTERING (IDBILAG, IDPOSTERING, IDKLIENT, KONTONR, ' +
        'MVAKODE, IDTEKST, TEKST, FAKTURANR, FORFALL, BELOP, KONTAKTNR)'
      
        'values (:IdBilag, NULL, :IdKlient, :Kontonr, :MvaKode, :IdTekst,' +
        ' :Tekst, :Fakturanr, :Forfall, :Belop, :Kontaktnr);')
    Left = 104
    Top = 80
  end
  object adoBilagText: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 'select * from BILAGTEKST'
    Parameters = <>
    Left = 32
    Top = 264
    object adoBilagTextIDTEKST: TIntegerField
      FieldName = 'IDTEKST'
    end
    object adoBilagTextTEKST: TStringField
      FieldName = 'TEKST'
      Size = 25
    end
  end
  object adoMvaKonto: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    BeforeOpen = adoMvaKontoBeforeOpen
    CommandText = 'select * from MVAKONTO'#13#10'where IDKLIENT = :IdKlient;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 32
    Top = 320
    object adoMvaKontoIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object adoMvaKontoMVAKODE: TIntegerField
      FieldName = 'MVAKODE'
    end
    object adoMvaKontoKONTONR: TIntegerField
      FieldName = 'KONTONR'
    end
  end
  object adoLisens: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    BeforeOpen = adoLisensBeforeOpen
    CommandText = 
      'select NAVN, ORGNR, LISENSKODE, GYLDIGHET, REGDATO, PROGTYPE '#13#10'f' +
      'rom KLIENT'#13#10'where IDKLIENT = :IdKlient'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 184
    Top = 16
    object adoLisensNAVN: TStringField
      FieldName = 'NAVN'
      Size = 50
    end
    object adoLisensORGNR: TStringField
      FieldName = 'ORGNR'
      Size = 18
    end
    object adoLisensLISENSKODE: TStringField
      FieldName = 'LISENSKODE'
      Size = 32
    end
    object adoLisensGYLDIGHET: TIntegerField
      FieldName = 'GYLDIGHET'
    end
    object adoLisensREGDATO: TDateField
      FieldName = 'REGDATO'
    end
    object adoLisensPROGTYPE: TIntegerField
      FieldName = 'PROGTYPE'
    end
  end
  object adoProd: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select IDKLIENT, PRODUKTNR, NAVN, SPES, ENHET, MVA, INNPRIS, PRI' +
      'S, AVGIFT from PRODUKT'#13#10'where IDKLIENT = :IdKlient'#13#10'and PRODUKTN' +
      'R = :Pnr;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Pnr'
        DataType = ftString
        Precision = 30
        Size = 30
        Value = Null
      end>
    Left = 32
    Top = 160
    object adoProdIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object adoProdPRODUKTNR: TStringField
      FieldName = 'PRODUKTNR'
      Size = 30
    end
    object adoProdNAVN: TStringField
      FieldName = 'NAVN'
      Size = 60
    end
    object adoProdSPES: TStringField
      FieldName = 'SPES'
      Size = 80
    end
    object adoProdENHET: TStringField
      FieldName = 'ENHET'
      Size = 15
    end
    object adoProdMVA: TFloatField
      FieldName = 'MVA'
    end
    object adoProdINNPRIS: TFloatField
      FieldName = 'INNPRIS'
    end
    object adoProdPRIS: TFloatField
      FieldName = 'PRIS'
    end
    object adoProdAVGIFT: TFloatField
      FieldName = 'AVGIFT'
    end
  end
  object adoProdLev: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select IDKLIENT, PRODUKTNR, NAVN, SPES, ENHET, MVA, INNPRIS, PRI' +
      'S, AVGIFT from PRODUKT'#13#10'where IDKLIENT = :IdKlient'#13#10'and LPRODNR ' +
      '= :LPnr;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'LPnr'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 30
        Size = 30
        Value = Null
      end>
    Left = 32
    Top = 208
    object adoProdLevIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object adoProdLevPRODUKTNR: TStringField
      FieldName = 'PRODUKTNR'
      Size = 30
    end
    object adoProdLevNAVN: TStringField
      FieldName = 'NAVN'
      Size = 60
    end
    object adoProdLevSPES: TStringField
      FieldName = 'SPES'
      Size = 80
    end
    object adoProdLevENHET: TStringField
      FieldName = 'ENHET'
      Size = 15
    end
    object adoProdLevMVA: TFloatField
      FieldName = 'MVA'
    end
    object adoProdLevINNPRIS: TFloatField
      FieldName = 'INNPRIS'
    end
    object adoProdLevPRIS: TFloatField
      FieldName = 'PRIS'
    end
    object adoProdLevAVGIFT: TFloatField
      FieldName = 'AVGIFT'
    end
  end
  object adoKunde: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    CommandText = 
      'select KONTAKTNR, NAVN, POSTADR1, POSTADR2, K.POSTNR, BESOKADR1,' +
      ' BESOKADR2, BESOKPOSTNR, LAND, KONTAKT, FORFALLSDAGER, RABATT, K' +
      'REDITT, P.POSTSTED, B.POSTSTED AS BESOKPSTED'#13#10'from KONTAKT K'#13#10'le' +
      'ft join POSTNR P'#13#10'  on K.POSTNR = P.POSTNR'#13#10'left join POSTNR B'#13#10 +
      '  on K.POSTNR = B.POSTNR'#13#10'where IDKLIENT = :IdKlient'#13#10'and KONTAK' +
      'TNR = :Knr;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Knr'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 304
    Top = 160
    object adoKundeKONTAKTNR: TIntegerField
      FieldName = 'KONTAKTNR'
    end
    object adoKundeNAVN: TStringField
      FieldName = 'NAVN'
      Size = 80
    end
    object adoKundePOSTADR1: TStringField
      FieldName = 'POSTADR1'
      Size = 60
    end
    object adoKundePOSTADR2: TStringField
      FieldName = 'POSTADR2'
      Size = 60
    end
    object adoKundePOSTNR: TStringField
      FieldName = 'POSTNR'
      Size = 6
    end
    object adoKundeBESOKADR1: TStringField
      FieldName = 'BESOKADR1'
      Size = 60
    end
    object adoKundeBESOKADR2: TStringField
      FieldName = 'BESOKADR2'
      Size = 60
    end
    object adoKundeBESOKPOSTNR: TStringField
      FieldName = 'BESOKPOSTNR'
      Size = 6
    end
    object adoKundeLAND: TStringField
      FieldName = 'LAND'
      Size = 25
    end
    object adoKundeKONTAKT: TStringField
      FieldName = 'KONTAKT'
      Size = 30
    end
    object adoKundeFORFALLSDAGER: TIntegerField
      FieldName = 'FORFALLSDAGER'
    end
    object adoKundeRABATT: TFloatField
      FieldName = 'RABATT'
    end
    object adoKundePOSTSTED: TStringField
      FieldName = 'POSTSTED'
      Size = 30
    end
    object adoKundeBESOKPSTED: TStringField
      FieldName = 'BESOKPSTED'
      Size = 30
    end
    object adoKundeKREDITT: TFloatField
      FieldName = 'KREDITT'
    end
  end
  object adoOrderUpdate: TADOCommand
    CommandText = 
      'update ORDRE'#13#10'set FAKTURAADR = :FaktAdr, '#13#10'LEVERINGADR = :LevAdr' +
      ', '#13#10'LEVERINGSDATO = :LevDato,'#13#10'TEKST = :Tekst, '#13#10'LOGOFIL = :Logo' +
      #13#10'where IDORDRE = :IdOrdre'
    Connection = Dm.adoConn
    Parameters = <
      item
        Name = 'FaktAdr'
        DataType = ftMemo
        Size = -1
        Value = Null
      end
      item
        Name = 'LevAdr'
        DataType = ftMemo
        Size = -1
        Value = Null
      end
      item
        Name = 'LevDato'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'Tekst'
        DataType = ftMemo
        Size = -1
        Value = Null
      end
      item
        Name = 'Logo'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'IdOrdre'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 304
    Top = 208
  end
  object slOrdreLinje: TblsList
    Lines.Strings = (
      
        'insert into ORDRELINJE (IDORDRE, IDLINJE, SORTID, PRODNR, TEKST,' +
        ' ANTALL, ENHET, INNPRIS, PRIS, AVGIFT, RABATT, MVA)'
      
        'values (:IdOrdre, NULL, :SortID, :Prodnr, :Tekst, :Antall, :Enhe' +
        't, :Innpris, :Pris, :Avgift, :Rabatt, :Mva);')
    Left = 304
    Top = 256
  end
  object adoAboLinje: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    OnCalcFields = adoAboLinjeCalcFields
    CommandText = 'select *'#13#10'from ABOLINJE'#13#10'where IDABO = :IdAbo'#13#10'order by SORTID'
    Parameters = <
      item
        Name = 'IdAbo'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 304
    Top = 304
    object adoAboLinjeIDABO: TIntegerField
      FieldName = 'IDABO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoAboLinjeIDLINJE: TIntegerField
      FieldName = 'IDLINJE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoAboLinjeSORTID: TFloatField
      FieldName = 'SORTID'
    end
    object adoAboLinjePRODNR: TStringField
      FieldName = 'PRODNR'
      Size = 30
    end
    object adoAboLinjeTEKST: TStringField
      FieldName = 'TEKST'
      Size = 140
    end
    object adoAboLinjeANTALL: TBCDField
      DisplayWidth = 18
      FieldName = 'ANTALL'
      Precision = 18
    end
    object adoAboLinjeENHET: TStringField
      FieldName = 'ENHET'
      Size = 15
    end
    object adoAboLinjePRIS: TFloatField
      FieldName = 'PRIS'
    end
    object adoAboLinjeRABATT: TFloatField
      FieldName = 'RABATT'
    end
    object adoAboLinjeMVA: TFloatField
      FieldName = 'MVA'
    end
    object adoAboLinjeINNPRIS: TFloatField
      FieldName = 'INNPRIS'
    end
    object adoAboLinjeAVGIFT: TFloatField
      FieldName = 'AVGIFT'
    end
    object adoAboLinjeSUMEKS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SUMEKS'
      Calculated = True
    end
    object adoAboLinjeSUMINK: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SUMINK'
      Calculated = True
    end
  end
  object adoFakturaUpdate: TADOCommand
    CommandText = 
      'update FAKTURA'#13#10'set KLIENTADR = :KlientAdr, '#13#10'KUNDEADR = :KundeA' +
      'dr, '#13#10'TEKST = :Tekst, '#13#10'INTERNREF = :InternRef, '#13#10'EKSTERNREF = :' +
      'EksternRef, '#13#10'LOGOFIL = :Logo'#13#10'where IDFAKTURA = :IdFaktura'
    Connection = Dm.adoConn
    Parameters = <
      item
        Name = 'KlientAdr'
        DataType = ftMemo
        Size = -1
        Value = Null
      end
      item
        Name = 'KundeAdr'
        DataType = ftMemo
        Size = -1
        Value = Null
      end
      item
        Name = 'Tekst'
        DataType = ftMemo
        Size = -1
        Value = Null
      end
      item
        Name = 'InternRef'
        Size = -1
        Value = Null
      end
      item
        Name = 'EksternRef'
        Size = -1
        Value = Null
      end
      item
        Name = 'Logo'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'IdFaktura'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 400
    Top = 208
  end
  object slFakturaLinje: TblsList
    Lines.Strings = (
      
        'insert into FAKTURALINJE (IDFAKTURA, IDLINJE, SORTID, PRODNR, TE' +
        'KST, ANTALL, ENHET, INNPRIS, PRIS, AVGIFT, RABATT, MVA)'
      
        'values (:IdFaktura, NULL, :SortID, :Prodnr, :Tekst, :Antall, :En' +
        'het, :Innpris, :Pris, :Avgift, :Rabatt, :Mva);')
    Left = 400
    Top = 256
  end
  object adoOrdreLinje: TADODataSet
    Connection = Dm.adoConn
    CursorType = ctStatic
    OnCalcFields = adoOrdreLinjeCalcFields
    CommandText = 
      'select *'#13#10'from ORDRELINJE'#13#10'where IDORDRE = :IdOrdre'#13#10'order by SO' +
      'RTID'
    Parameters = <
      item
        Name = 'IdOrdre'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 400
    Top = 304
    object adoOrdreLinjeIDORDRE: TIntegerField
      FieldName = 'IDORDRE'
    end
    object adoOrdreLinjeIDLINJE: TIntegerField
      FieldName = 'IDLINJE'
    end
    object adoOrdreLinjeSORTID: TFloatField
      FieldName = 'SORTID'
    end
    object adoOrdreLinjePRODNR: TStringField
      FieldName = 'PRODNR'
      Size = 30
    end
    object adoOrdreLinjeTEKST: TStringField
      FieldName = 'TEKST'
      Size = 140
    end
    object adoOrdreLinjeANTALL: TBCDField
      FieldName = 'ANTALL'
      Precision = 18
    end
    object adoOrdreLinjeENHET: TStringField
      FieldName = 'ENHET'
      Size = 15
    end
    object adoOrdreLinjeINNPRIS: TFloatField
      FieldName = 'INNPRIS'
    end
    object adoOrdreLinjePRIS: TFloatField
      FieldName = 'PRIS'
    end
    object adoOrdreLinjeAVGIFT: TFloatField
      FieldName = 'AVGIFT'
    end
    object adoOrdreLinjeRABATT: TFloatField
      FieldName = 'RABATT'
    end
    object adoOrdreLinjeMVA: TFloatField
      FieldName = 'MVA'
    end
    object adoOrdreLinjeLEVERT: TFloatField
      FieldName = 'LEVERT'
    end
    object adoOrdreLinjeIDLEVERING: TIntegerField
      FieldName = 'IDLEVERING'
    end
    object adoOrdreLinjeSUMEKS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SUMEKS'
      Calculated = True
    end
    object adoOrdreLinjeSUMINK: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SUMINK'
      Calculated = True
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.*'
    Filter = 
      'Alle filer (*.*)|*.*|Acrobat Reader (*.pdf)|*.pdf|Internett doku' +
      'menter (*.html)|*.html'
    Left = 256
    Top = 16
  end
end
