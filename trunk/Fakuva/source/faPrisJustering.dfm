�
 TFRMPRISJUSTERING 0�  TPF0TFrmPrisJusteringFrmPrisJusteringLeft{Top� BorderStylebsDialogCaptionPrisjusteringClientHeightaClientWidthBColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style OldCreateOrderPositionpoMainFormCenterOnClose	FormCloseOnCreate
FormCreate	OnDestroyFormDestroyOnShowFormShowPixelsPerInch`
TextHeight TButtonBtnOkLeft� Top@WidthIHeightCaption&OKDefault	Font.CharsetANSI_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style ModalResult
ParentFontTabOrder  TButton	BtnAvbrytLeft� Top@WidthIHeightCancel	Caption&LukkFont.CharsetANSI_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style ModalResult
ParentFontTabOrder  TPageControlPcLeftTopWidth1Height1
ActivePagePrisjusteringTabOrder  	TTabSheetPrisjusteringCaptionPrisjustering 	TGroupBox	GroupBox2LeftTopWidthHeightTabOrder  TLabelLabel6LeftTopWidth+HeightCaption	Kategori:  TLabelLabel7LeftTop@WidthYHeightCaptionType prisjustering:  TLabelLabel8LeftTophWidthHeightCaptionEnhet:  TLabelLabel9Left� TophWidthHeightCaptionVerdi:  TBevelBevel3LeftTop� Width� Height	Shape	bsTopLine  TLabelPrisLblLeftTop� WidthXHeightCaptionBeregner priser ...Visible  TEdit	EditVerdiLeft� TopxWidthiHeightTabOrderText10,0
OnKeyPressEditVerdiKeyPress  	TComboBox
CbTypePrisLeftTopPWidth� HeightStylecsDropDownList
ItemHeightTabOrderItems.Strings   PrisøkningPrisreduksjon   Fortjeneste på innpris   	TComboBoxCbEnhetLeftTopxWidth� HeightStylecsDropDownList
ItemHeightTabOrderItems.StringsProsentKroner   TProgressBarPrisPbLeftTop� Width� HeightSmooth	StepTabOrder  TButtonBtnPrisLeftTop� WidthyHeightCaption   &Utfør prisjusteringTabOrderOnClickBtnPrisClick  	TComboBox
CbKategoriLeftTop(Width� HeightStylecsDropDownList
ItemHeightSorted	TabOrder 
OnDropDownCbKategoriDropDownItems.StringsAlle     	TTabSheet	TabSheet1CaptionMva Justering
ImageIndex 	TGroupBox	GroupBox1LeftTopWidthHeightCaptionEndring av merverdiavgift:TabOrder  TLabelLabel1LeftTopWidth� HeightCaption   Varer med nåværende MVA  TLabelLabel2LeftTop4WidthVHeightCaptionendres til ny MVA  TBevelBevel1LeftTop� Width� Height	Shape	bsTopLine  TLabelLblMvaendringLeftTop� WidthtHeightCaptionEndrer merverdiavgift ...Visible  TblsAlignEditEditMvaLeft� TopWidthMHeightTabOrder Text24	AlignmenttaRightJustifyEditTypeetFloatDisplayMask#0.00  	TComboBoxcbMvaLeft� Top4WidthMHeightStylecsDropDownList
ItemHeight TabOrder  TProgressBarPbMvaLeftTop� Width� HeightSmooth	StepTabOrder  TButtonBtnMvaLeftTop� WidthyHeightCaption   Utfør &mva endringTabOrderOnClickBtnMvaClick     TTableVareDBDatabaseName	FakuvaDirFilterOptionsfoCaseInsensitive 	TableNameVare.DB	TableType	ttParadoxLeftTop@ TStringFieldVareDBVarenr	FieldNameVarenrRequired	Size  TStringField
VareDBVare	FieldNameVareRequired	Size�   TCurrencyFieldVareDBInnpris	FieldNameInnpris  TCurrencyField
VareDBPris	FieldNamePris  TIntegerFieldVareDBIdKategori	FieldName
IdKategori  TFloatFieldVareDBMvaKlasse	FieldName	MvaKlasse    