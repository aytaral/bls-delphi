�
 TRPTVAREGRP 0-  TPF0TRptVareGrp
RptVareGrpLeft Top WidthSHeightJFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRight
AfterPrintQuickRepAfterPrintBeforePrintVareGrpRptBeforePrintDataSetQryVareDescription.StringsVareliste :- Sortert etter varenavn%- Gruppert etter forbokstaven i varen   - Forhåndsvisning og utskrift$- Liste over alle varene i databasen Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' OptionsFirstPageHeaderLastPageFooter Page.ColumnsPage.Orientation
poPortraitPage.PaperSizeA4Page.Values       �@      ��
@       �@      @�
@       �@       �@           PrinterSettings.CopiesPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.OutputBinFirstPrintIfEmptyReportTitleAlfabetisk vareliste
SnapToGrid	UnitsMMZoomK TQRBandDetailBand1LeftTop� WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values�q�q��@ �8��8>�	@ BandTyperbDetail 	TQRDBText	QRDBText1LeftTopWidthNHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUUU�@ x�q��@ x�q��@ ��8��H�	@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetQryVare	DataFieldVareFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  	TQRDBText	QRDBText2Left�TopWidth7HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesVUUUUUU�@�q�q�	@�q�q��@�q�q�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetQryVare	DataFieldVarenrFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  	TQRDBText	QRDBText3Left�TopWidth7HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUUU�@ �������	@ x�q��@ x�q�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetQryVare	DataFieldPrisInkFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize	  	TQRDBText	QRDBText4LeftVTopWidthMHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesVUUUUUU�@      Ж	@�q�q��@r�q�ч@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetQryVare	DataFieldKategoriFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	   TQRGroupQRGroup1LeftTopnWidthHeightFrame.ColorclSilverFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values      ��@ �8��8>�	@ 
Expressioncopy(UPPER(vare),1,1)MasterOwnerReprintOnNewPage TQRExprQRExpr1LeftTopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values @��8���@ x�q��@ XUUUUU�@ ������@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.StylefsBold ColorclWhite
ParentFontResetAfterPrintTransparent	WordWrap	
ExpressionUPPER(copy(vare,1,1))FontSize  TQRShapeQRShape1Left TopWidthHeightFrame.ColorclSilverFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values x�q��@           XUUUUU�@ �8��8>�	@ 	Pen.ColorclSilverShape
qrsHorLine   TQRBandColumnHeaderBand1LeftTopTWidthHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColor��� ForceNewColumnForceNewPageSize.Values �����*�@ �8��8>�	@ BandTyperbColumnHeader TQRLabelQRLabel4LeftVTopWidthMHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �8��8��@      Ж	@ �q�q�@  �q�ч@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchCaptionKategoriColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabelQRLabel7Left�TopWidth;HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �8��8��@ XUUUU�	@ �q�q�@ @��8�#�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaptionPris inkColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabelQRLabel3LeftTopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �8��8��@ x�q��@ �q�q�@  �qǡ�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchCaptionVareColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabelQRLabel2Left�TopWidth/HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �8��8��@ p�q�	@ �q�q�@ �8��8Υ@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchCaptionVarenrColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
   TQRBandQRBand1LeftTopWidthHeight8Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values �8��8��@ �8��8>�	@ BandTyperbTitle TQRLabelQRLabel1Left� Top
Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values @��8�c�@ ������@ �q�q�@ �8��8N�@ 	AlignmenttaCenterAlignToBand	AutoSizeAutoStretchCaption	VarelisteColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBoldfsItalic 
ParentFontTransparentWordWrap	FontSize  	TQRDBText
QRDBText10Left Top Width!HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@                     PUUUU��@ 	AlignmenttaLeftJustifyAlignToBand	AutoSize	AutoStretchColorclWhiteDataSet
Dm.FirmaDB	DataFieldFirmaFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize  
TQRSysData
QRSysData1Left�Top WidthAHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ��8��8�@ �q�q��	@           �8��8N�@ 	AlignmenttaRightJustifyAlignToBand	AutoSize	ColorclWhiteDataqrsDateFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsItalic 
ParentFontTextSkrevet ut: TransparentFontSize  	TQRDBText
QRDBText13Left TopWidth HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �8��8��@            �q�q�@ x�q��@ 	AlignmenttaLeftJustifyAlignToBand	AutoSize	AutoStretchColorclWhiteDataSet
Dm.FirmaDB	DataFieldAdresseFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  	TQRDBText
QRDBText14Left TopWidth)HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �8��8��@           x�qG�@ 8��8���@ 	AlignmenttaLeftJustifyAlignToBand	AutoSize	AutoStretchColorclWhiteDataSet
Dm.FirmaDB	DataField
PostNrStedFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  	TQRDBText
QRDBText15Left Top Width#HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ��8��8�@           x�q��@  �q���@ 	AlignmenttaLeftJustifyAlignToBand	AutoSize	AutoStretchColorclWhiteDataSet
Dm.FirmaDB	DataField	TelefonnrFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize   TQRBandQRBand4LeftTop� WidthHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values x�q��@ �8��8>�	@ BandTyperbPageFooter 
TQRSysData
QRSysData2Left�TopWidth1HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ��8��8�@ �������	@ �q�q�@ �q�qܬ@ 	AlignmenttaRightJustifyAlignToBand	AutoSize	ColorclWhiteDataqrsPageNumberFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsItalic 
ParentFontTextSide TransparentFontSize  TQRLabelQRLabel9Left TopWidth-HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ��8��8�@           �q�q�@      ��@ 	AlignmenttaLeftJustifyAlignToBand	AutoSizeAutoStretchCaption	 Fakuva 5ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize   TQRChildBand
ChildBand1LeftTopiWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values �q�q�@ �8��8>�	@ 
ParentBandColumnHeaderBand1  TQRChildBand
ChildBand2LeftTop� WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values XUUUUU�@ �8��8>�	@ 
ParentBandQRGroup1  TQueryQryVareOnCalcFieldsQryVareCalcFieldsDatabaseName	FakuvaDirSQL.Strings.SELECT Vare, Kategori, Varenr, Pris, MvaKlasse!FROM "Vare.DB" A, "Kategori.DB" B!WHERE A.IdKategori = B.IdKategoriORDER BY A.Vare Left Top�  TStringFieldQryVareVare	FieldNameVareOriginFAKUVADIR."Vare.DB".VareSize�   TStringFieldQryVareKategori	FieldNameKategoriOrigin FAKUVADIR."Kategori.DB".KategoriSize2  TStringFieldQryVareVarenr	FieldNameVarenrOriginFAKUVADIR."Vare.DB".VarenrSize  TCurrencyFieldQryVarePris	FieldNamePrisOriginFAKUVADIR."Vare.DB".Pris  TFloatFieldQryVareMvaKlasse	FieldName	MvaKlasseOriginFAKUVADIR."Vare.DB".MvaKlasse  TCurrencyFieldQryVarePrisInk	FieldKindfkCalculated	FieldNamePrisInkDisplayFormat#,##0.00currency
Calculated	    