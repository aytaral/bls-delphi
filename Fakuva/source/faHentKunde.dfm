�
 TFRMHENTKUNDE 0C  TPF0TFrmHentKundeFrmHentKundeLeftnTopKActiveControlSokEditKBorderStylebsDialogCaption	   KundesøkClientHeight�ClientWidthColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style OldCreateOrderPositionpoMainFormCenter
DesignSize� PixelsPerInch`
TextHeight TLabelLabel1LeftTop#Width*HeightCaption
   Søkefelt:  TLabelLabel2Left� Top#Width2HeightCaption   Søketekst:  	TComboBoxCBKLeftTop3WidthqHeight
ItemHeightTabOrderTextKundeItems.StringsKundenrKundeAdresseKontaktperson   TEditSokEditKLeft� Top3WidthqHeightTabOrder 	OnKeyDownSokEditKKeyDownOnKeyUpSokEditKKeyUp  TDBGridDBGrid4LeftTopPWidth�HeightColor��� 
DataSource
Dm.KundeDSFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style OptionsdgTitlesdgColumnResize
dgColLinesdgTabsdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit 
ParentFontTabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style 
OnDblClickDBGrid4DblClickColumnsExpanded	FieldNameKundenrWidth9Visible	 Expanded	FieldNameKundeWidth� Visible	 Expanded	FieldNameAdresseWidth� Visible	 Expanded	FieldNamePostadresseWidthdVisible	 Expanded	FieldNameKontaktpersonWidth� Visible	    TCoolBarCoolBar2Left Top WidthHeightAutoSize	BandsBorderStylebsSingleControlToolBar1
ImageIndex�	MinHeightWidth	  	EdgeOuteresNone TToolBarToolBar1Left	TopWidth�HeightAutoSize	ButtonHeightCaptionToolBar1EdgeBorders Flat	Images
Dm.TBilderTabOrder  TToolButtonToolButton1Left Top Action	AcNyKundeParentShowHintShowHint	  TToolButtonToolButton2LeftTop ActionAcEndreKundeParentShowHintShowHint	  TToolButtonToolButton8Left.Top WidthCaptionToolButton8
ImageIndexStyletbsSeparator  TToolButtonToolButton3Left6Top ActionDm.KundeFirstParentShowHintShowHint	  TToolButtonToolButton4LeftMTop ActionDm.KundePriorParentShowHintShowHint	  TToolButtonToolButton5LeftdTop ActionDm.KundeNextParentShowHintShowHint	  TToolButtonToolButton6Left{Top ActionDm.KundeLastParentShowHintShowHint	    TButtonButton1LeftYToplWidthSHeightAnchorsakRightakBottom Caption&OKDefault	ModalResultTabOrder  TButtonButton2Left�ToplWidthSHeightAnchorsakRightakBottom Cancel	Caption&LukkModalResultTabOrder  TActionListActionList1Images
Dm.TBilderLeft�Top TAction	AcNyKundeCategoryFilCaptionNy kundeHintNy kunde|Legg til ny kunde
ImageIndex ShortCut-@	OnExecuteAcNyKundeExecute  TActionAcEndreKundeCategoryFilCaptionEndre kundeHintEndre kunde|Endre valgt kunde
ImageIndexShortCutE@	OnExecuteAcEndreKundeExecute   TDataSourceDsKundeDataSetQryKundeLeft(Topl  TQueryQryKundeDatabaseName	FakuvaDirSQL.StringsCSELECT IdKunde, Kundenr, Kunde, Adresse, Postadresse, KontaktpersonFROM "Kunde.DB"WHERE Kunde LIKE "%%"OR Adresse LIKE "%%"OR Postadresse LIKE "%%"OR Kontaktperson LIKE "%%"ORDER BY Kunde; LeftTopl TIntegerFieldQryKundeIdKunde	FieldNameIdKundeOriginFAKUVADIR."Kunde.DB".IdKunde  TFloatFieldQryKundeKundenr	FieldNameKundenrOriginFAKUVADIR."Kunde.DB".Kundenr  TStringFieldQryKundeKunde	FieldNameKundeOriginFAKUVADIR."Kunde.DB".KundeSized  TStringFieldQryKundeAdresse	FieldNameAdresseOriginFAKUVADIR."Kunde.DB".AdresseSize�   TStringFieldQryKundePostadresse	FieldNamePostadresseOrigin FAKUVADIR."Kunde.DB".PostadresseSize�   TStringFieldQryKundeKontaktperson	FieldNameKontaktpersonOrigin"FAKUVADIR."Kunde.DB".KontaktpersonSize2    