�
 TBESTILLINGFRM 0O  TPF0TBestillingFrmBestillingFrmLeft�TopBorderStylebsDialogCaption$Rui's VareTaxi - TransportbestillingClientHeightyClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoMainFormCenter
OnActivateFormActivateOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TLabelLabel1LeftTop&WidthHeightCaptionDatoFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont  TLabelLabel3LeftTopDWidthHeightCaptionKunde  TSpeedButtonSpeedButton4Left�Top@WidthHeightCaption...OnClickSpeedButton4Click  TLabelLabel4LeftTop� Width,HeightCaptionOppdrag:  TLabelLabel5LeftTopdWidth)HeightCaptionAdresse:  TLabelLabel6LeftTop� Width'HeightCaptionTelefon:  TLabelLabel7Left� Top� WidthHHeightCaptionKontaktperson:  TLabelLabel8LeftTop� Width� HeightCaption!   Telefon til person på oppdraget:  TLabelLabel9LeftTopWidth� HeightCaption"Avtalt pris eks Mva/ferje/bom etc.  TLabelLabel10LeftTop<Width� HeightCaption   Oppdrag ønskes utført den:Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont  TLabelLabel11LeftTop]WidthHeightCaptionAntall personer ved flytting:  TLabelStatusLeft�Top� WidthHeightCaptionNyFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontVisible  TLabelLabel2LeftTop� Width!HeightCaptionPostnr:  TLabelLabel12Left� Top� Width,HeightCaption	Poststed:  TLabelLabel13Left� Top&Width"HeightCaptionBiltype:  TSpeedButton	SbBilTypeLeft�Top"WidthHeightCaption...OnClickSbBilTypeClick  TEditOppdrageditLeftHTop� WidthYHeightTabOrder  TButtonOkBtnLeftXTop;WidthIHeightCaption&OKDefault	Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ModalResult
ParentFontTabOrderOnClick
OkBtnClick  TButtonLukkBtnLeftXTop[WidthIHeightCaption&LukkFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ModalResult
ParentFontTabOrder	  	TCheckBox	InfocheckLeftHTop� WidthQHeightCaption?Hent informasjon om telefon og kontaktperson fra kunderegistretTabOrderOnClickInfocheckClick  TEditTlfeditLeftHTop� WidthYHeightTabOrder 
OnKeyPressTlfoppdrageditKeyPress  TEditKontakteditLeft Top� Width� HeightTabOrder  TEditTlfoppdrageditLeft� Top� WidthyHeightTabOrder
OnKeyPressTlfoppdrageditKeyPress  TEditPriseditLeft� TopWidthyHeightTabOrderText0,00
OnKeyPressPriseditKeyPress  	TMaskEditTidEditLeftTop8Width)HeightEditMask
!90:00;1;_	MaxLengthTabOrderText12:00
OnKeyPressTidEditKeyPress  	TSpinEdit
AntalleditLeft� TopXWidthyHeightMaxValuedMinValueTabOrderValue  TEditKundedbeLeftHTop@Width9HeightTabOrder
  TEditAdrdbeLeftHTop`WidthYHeightTabOrder  TEdit	PostnrdbeLeftHTop� WidthYHeightTabOrder  TEditPoststeddbeLeft Top� Width� HeightTabOrder  TDateTimePickerDatoEditLeftHTop"WidthYHeightDate B �J�@Time B �J�@TabOrder  TDateTimePicker
UtDatoEditLeft� Top8WidthIHeightDate V|t�J�@Time V|t�J�@TabOrder  TCoolBarCoolBar1Left Top Width�HeightAutoSize	BandsControlToolBar1
ImageIndex�	MinHeightWidth�   TToolBarToolBar1Left	Top Width�HeightAutoSize	BorderWidthCaptionToolBar1EdgeBorders 	EdgeOuteresNoneFlat	Images
DM.TBilderTabOrder  TToolButtonTBNyLeft Top HintLegg til ny postCaptionTBNy
ImageIndex ParentShowHintShowHint	OnClick	TBNyClick  TToolButtonTBPrintLeftTop HintSkriv ut skjermbildeCaptionTBPrint
ImageIndexParentShowHintShowHint	OnClickTBPrintClick  TToolButtonToolButton3Left.Top WidthCaptionToolButton3
ImageIndexStyletbsSeparator  TToolButtonTBFLeft6Top HintVis forrige postCaptionTBF
ImageIndexOnClickTBFClick  TToolButtonTBNLeftMTop HintVis neste postCaptionTBN
ImageIndexOnClickTBNClick    	TComboBox	CbBilTypeLeft� Top"Width� HeightStylecsDropDownList
ItemHeightTabOrderItems.StringsBudbilVarebilLastebilKranbil	Flyttebil    