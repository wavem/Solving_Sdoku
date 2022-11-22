//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Main.h"
#include "Dlg_Version.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxClasses"
#pragma link "cxControls"
#pragma link "cxGraphics"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "dxBar"
#pragma link "dxRibbon"
#pragma link "dxRibbonCustomizationForm"
#pragma link "dxRibbonSkins"
#pragma link "dxSkinBlack"
#pragma link "dxSkinBlue"
#pragma link "dxSkinBlueprint"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinCoffee"
#pragma link "dxSkinDarkRoom"
#pragma link "dxSkinDarkSide"
#pragma link "dxSkinDevExpressDarkStyle"
#pragma link "dxSkinDevExpressStyle"
#pragma link "dxSkinFoggy"
#pragma link "dxSkinGlassOceans"
#pragma link "dxSkinHighContrast"
#pragma link "dxSkiniMaginary"
#pragma link "dxSkinLilian"
#pragma link "dxSkinLiquidSky"
#pragma link "dxSkinLondonLiquidSky"
#pragma link "dxSkinMcSkin"
#pragma link "dxSkinMetropolis"
#pragma link "dxSkinMetropolisDark"
#pragma link "dxSkinMoneyTwins"
#pragma link "dxSkinOffice2007Black"
#pragma link "dxSkinOffice2007Blue"
#pragma link "dxSkinOffice2007Green"
#pragma link "dxSkinOffice2007Pink"
#pragma link "dxSkinOffice2007Silver"
#pragma link "dxSkinOffice2010Black"
#pragma link "dxSkinOffice2010Blue"
#pragma link "dxSkinOffice2010Silver"
#pragma link "dxSkinOffice2013DarkGray"
#pragma link "dxSkinOffice2013LightGray"
#pragma link "dxSkinOffice2013White"
#pragma link "dxSkinPumpkin"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsDefaultPainters"
#pragma link "dxSkinsdxBarPainter"
#pragma link "dxSkinsdxRibbonPainter"
#pragma link "dxSkinSeven"
#pragma link "dxSkinSevenClassic"
#pragma link "dxSkinSharp"
#pragma link "dxSkinSharpPlus"
#pragma link "dxSkinSilver"
#pragma link "dxSkinSpringTime"
#pragma link "dxSkinStardust"
#pragma link "dxSkinSummer2008"
#pragma link "dxSkinTheAsphaltWorld"
#pragma link "dxSkinValentine"
#pragma link "dxSkinVisualStudio2013Blue"
#pragma link "dxSkinVisualStudio2013Dark"
#pragma link "dxSkinVisualStudio2013Light"
#pragma link "dxSkinVS2010"
#pragma link "dxSkinWhiteprint"
#pragma link "dxSkinXmas2008Blue"
#pragma link "cxContainer"
#pragma link "cxEdit"
#pragma link "cxMemo"
#pragma link "cxTextEdit"
#pragma link "AdvGrid"
#pragma link "AdvObj"
#pragma link "BaseGrid"
#pragma resource "*.dfm"
#pragma link "libxl.lib"
TFormMain *FormMain;
//---------------------------------------------------------------------------
__fastcall TFormMain::TFormMain(TComponent* Owner)
	: TForm(Owner)
{
	InitProgram();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::InitProgram() {

	// Notebook Default Page Setting
    Notebook_Main->PageIndex = 0;

	// Random Generator Setting
    srand((unsigned int)GetTickCount());

    // Default Variables Setting
    m_CurrentIdx = 0;
    m_CheckCount = 0;
    memset(m_MainBoard, 0, sizeof(m_MainBoard));

	// Init Config
    InitConfigExcelFile();


	for(int i = 0 ; i < grid->RowCount * grid->ColCount ; i++) {
        grid->Cells[i % 9][i / 9] = i + 1;
    }
	PrintMsg(L"Program Init Complete");
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintMsg(UnicodeString _str) {
	memo->Lines->Add(_str);
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::InitConfigExcelFile() {

	m_Book = xlCreateXMLBook();
    if(m_Book) {
    	m_Book->setKey(L"ÁØÈ£ ¾ç", L"windows-2d20200d03c0ed046aba6867a7n0m2j0");
        if(m_Book->load(L"Config\\Config.xlsx")) {
            // Load Real-Time Protocol List & Printout on the Grid
            //LoadRealTimeProtocolList();

            // Load Real-Time Protocol Map Infomation
            //if(LoadRTimeProtocolMapInfo()) {
            //	PrintMsg(L"Success to Open RealTime Map Info");
            //} else {
            //    PrintMsg(L"Fail to Open RealTime Map Info");
            //    return;
            //}

            // Load Trace Data(Opdata) Protocol
            //LoadTraceDataProtocol();

            // Load RTime Parsing Info
            //LoadRTimeParsingInfoFromConfig();

            PrintMsg(L"Load Complete");
		} else {
			PrintMsg(L"Fail to Load Excel File");
		}
    } else {
    	PrintMsg(L"Fail to Create XML BOOK");
        return false;
    }

	PrintMsg(L"Init Config Complete");
	return true;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::gridGetAlignment(TObject *Sender, int ARow, int ACol, TAlignment &HAlign,
          TVAlignment &VAlign)
{
    VAlign = vtaCenter;
    HAlign = taCenter;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::MenuBtn_TestClick(TObject *Sender)
{
	Making();
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::Making() {

	// Print Start Message
	PrintMsg(L"Making Start");

	// Common
    UnicodeString tempStr = L"";
    DWORD t_StartTime = 0;
    DWORD t_EndTime = 0;
    int t_RetryCount = 0;

    // Default Setting
	m_CurrentIdx = 0;
    m_CheckCount = 0;
    memset(m_MainBoard, 0, sizeof(m_MainBoard));

    // Get Start Time
	t_StartTime = GetTickCount();

    while(m_CurrentIdx < 81) {
    	if(m_CheckCount > DF_TRY_COUNT) {
        	tempStr.sprintf(L"Retry... (Try Count : %d)", t_RetryCount++);
        	PrintMsg(tempStr);

            // Restart Routine
            m_CurrentIdx = 0;
            m_CheckCount = 0;
            memset(m_MainBoard, 0, sizeof(m_MainBoard));
        }
    	if(Input(m_CurrentIdx)) {
            m_CurrentIdx++;
            m_CheckCount = 0;
        }
    }

    Show();

    // Get Finish Time
	t_EndTime = GetTickCount();

    // Display Result Message
    tempStr.sprintf(L"Complete (%.4f sec)", ((double)t_EndTime - t_StartTime) / 1000);
    PrintMsg(tempStr);
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::Input(int _Idx) {
    *(m_MainBoard[0] + _Idx) = rand() % 9 + 1;
    return Check();
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::Check() {

	// Common
    UnicodeString tempStr = L"";

    // Increase Check Count
    m_CheckCount++;

	//// Square Check
    // Get Start Index
    int t_RowOffset = 0;
    int t_ColOffset = 0;

    t_RowOffset = (m_CurrentIdx / 9) / 3;
    t_ColOffset = (m_CurrentIdx % 9) / 3;

    BYTE t_SquareBuffer[9] = {0, };

    t_SquareBuffer[0] = m_MainBoard[t_RowOffset * 3 + 0][t_ColOffset * 3 + 0];
    t_SquareBuffer[1] = m_MainBoard[t_RowOffset * 3 + 0][t_ColOffset * 3 + 1];
    t_SquareBuffer[2] = m_MainBoard[t_RowOffset * 3 + 0][t_ColOffset * 3 + 2];
    t_SquareBuffer[3] = m_MainBoard[t_RowOffset * 3 + 1][t_ColOffset * 3 + 0];
    t_SquareBuffer[4] = m_MainBoard[t_RowOffset * 3 + 1][t_ColOffset * 3 + 1];
    t_SquareBuffer[5] = m_MainBoard[t_RowOffset * 3 + 1][t_ColOffset * 3 + 2];
    t_SquareBuffer[6] = m_MainBoard[t_RowOffset * 3 + 2][t_ColOffset * 3 + 0];
    t_SquareBuffer[7] = m_MainBoard[t_RowOffset * 3 + 2][t_ColOffset * 3 + 1];
    t_SquareBuffer[8] = m_MainBoard[t_RowOffset * 3 + 2][t_ColOffset * 3 + 2];

    for(int i = 0 ; i < 9 ; i++) {
        for(int j = 0 ; j < 9 ; j++) {
        	if(i == j) continue;
            if(t_SquareBuffer[i] == 0 || t_SquareBuffer[j] == 0) continue;
            if(t_SquareBuffer[i] == t_SquareBuffer[j]) {
            	return false;
            }
        }
    }

    //// Horizontal Line Check
    memcpy(t_SquareBuffer, &(m_MainBoard[m_CurrentIdx / 9][0]), 9);
    for(int i = 0 ; i < 9 ; i++) {
    	for(int j = 0 ; j < 9 ; j++) {
        	if(i == j) continue;
            if(t_SquareBuffer[i] == 0 || t_SquareBuffer[j] == 0) continue;
            if(t_SquareBuffer[i] == t_SquareBuffer[j]) {
            	return false;
            }
        }
    }

    //// Vertical Line Check
    t_SquareBuffer[0] = m_MainBoard[0][m_CurrentIdx % 9];
    t_SquareBuffer[1] = m_MainBoard[1][m_CurrentIdx % 9];
    t_SquareBuffer[2] = m_MainBoard[2][m_CurrentIdx % 9];
    t_SquareBuffer[3] = m_MainBoard[3][m_CurrentIdx % 9];
    t_SquareBuffer[4] = m_MainBoard[4][m_CurrentIdx % 9];
    t_SquareBuffer[5] = m_MainBoard[5][m_CurrentIdx % 9];
    t_SquareBuffer[6] = m_MainBoard[6][m_CurrentIdx % 9];
    t_SquareBuffer[7] = m_MainBoard[7][m_CurrentIdx % 9];
    t_SquareBuffer[8] = m_MainBoard[8][m_CurrentIdx % 9];

    for(int i = 0 ; i < 9 ; i++) {
    	for(int j = 0 ; j < 9 ; j++) {
        	if(i == j) continue;
            if(t_SquareBuffer[i] == 0 || t_SquareBuffer[j] == 0) continue;
            if(t_SquareBuffer[i] == t_SquareBuffer[j]) {
            	return false;
            }
        }
    }

    // If All Check Success, Return True.
    return true;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::Show() {
	for(int i = 0 ; i < 9 * 9 ; i++) {
    	grid->Cells[i % 9][i / 9] = *(m_MainBoard[0] + i);
    }
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::MenuBtn_VersionClick(TObject *Sender)
{
	TFormVersion *p_Dlg = new TFormVersion(NULL);
    p_Dlg->ShowModal();
    delete p_Dlg;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::MenuBtn_Click(TObject *Sender)
{
	TdxBarLargeButton* p_Btn = (TdxBarLargeButton*)Sender;
    int t_Tag = p_Btn->Tag;
    Notebook_Main->PageIndex = t_Tag;
}
//---------------------------------------------------------------------------

