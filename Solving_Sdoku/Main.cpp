//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Main.h"
#include "Dlg_Version.h"
#include "libxl_functions.h"
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
    memset(m_SolveBoard, 0, sizeof(m_SolveBoard));
    memset(m_SolveBuffer, 0, sizeof(m_SolveBuffer));

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
    //*(_pMemIdx + _Idx) = rand() % 9 + 1;
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

	// Test Board
	for(int i = 0 ; i < 9 * 9 ; i++) {
    	grid->Cells[i % 9][i / 9] = *(m_MainBoard[0] + i);
    }

    // Solve Board
    for(int i = 0 ; i < 9 * 9 ; i++) {
    	grid_Solver->Cells[i % 9][i / 9] = *(m_SolveBoard[0] + i);
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

void __fastcall TFormMain::MenuBtn_LoadClick(TObject *Sender)
{
	LoadSheet();
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::LoadSheet() {

	// Common
    UnicodeString tempStr = L"";
    libxl::Sheet* t_Sheet = NULL;
    int t_RowOffset = 2; // DO NOT MODIFY
    int t_ColOffset = 2; // DO NOT MODIFY
    int t_MemIdx = 0;

    // Clear Routine
    memset(m_SolveBoard, 0, sizeof(m_SolveBoard));
    grid_Solver->ClearAll();

    // Get Sheet
    t_Sheet = getSheetByName(m_Book, L"Solver");

    // Read Contents from the Sheet
    if(t_Sheet) {
    	for(int i = 0 ; i < 9 ; i++) {
            for(int j = 0 ; j < 9 ; j++) {
            	tempStr = getCellValue(t_Sheet, t_RowOffset + i, t_ColOffset + j);
                grid_Solver->Cells[t_ColOffset + j - 2][t_RowOffset + i - 2] = tempStr;
                if(tempStr != L"") {
                	grid_Solver->Colors[t_ColOffset + j - 2][t_RowOffset + i - 2] = clAqua;
                }
            }
        }
    } else {
        PrintMsg(L"Cannot Load Sheet");
        return false;
    }

    // Load into Memory
    for(int row = 0 ; row < 9 ; row++) {
        for(int col = 0 ; col < 9 ; col++) {
        	tempStr = grid_Solver->Cells[col][row];
            if(tempStr == L"") {
            	*(m_SolveBoard[0] + t_MemIdx) = 0;
            } else {
            	*(m_SolveBoard[0] + t_MemIdx) = StrToInt(tempStr);
            }
            t_MemIdx++;
        }
    }

    // Print Test
    for(int row = 0 ; row < 9 ; row++) {
        tempStr.sprintf(L"%02d %02d %02d  |  %02d %02d %02d  |  %02d %02d %02d",
                        m_SolveBoard[row][0],
                        m_SolveBoard[row][1],
                        m_SolveBoard[row][2],
                        m_SolveBoard[row][3],
                        m_SolveBoard[row][4],
                        m_SolveBoard[row][5],
                        m_SolveBoard[row][6],
                        m_SolveBoard[row][7],
                        m_SolveBoard[row][8]);
        PrintMsg(tempStr);
    }

    PrintMsg(L"Load Sheet Complete");

	return true;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::MenuBtn_SolveClick(TObject *Sender)
{
	//Solve();
	Solve_Recursive();
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::Solve() {

	// Print Start Message
	PrintMsg(L"Solving Start");

	// Common
    UnicodeString tempStr = L"";
    DWORD t_StartTime = 0;
    DWORD t_EndTime = 0;
    int t_RetryCount = 0;
    __int64 t_Statistic[9] = {0, };
    int t_TargetValue = 0;

    // Default Setting
	m_CurrentIdx = 0;
    m_CheckCount = 0;
    memset(m_SolveBuffer, 0, sizeof(m_SolveBuffer));
    memcpy(m_SolveBuffer, m_SolveBoard, 81);

    // Get Start Time
	t_StartTime = GetTickCount();

    // Solving Routine
    while(m_CurrentIdx < 81) {
    	if(m_CheckCount > DF_TRY_COUNT) {
        	if(t_RetryCount % 50000 == 0) {
            	tempStr.sprintf(L"Retry... (Try : %d, Idx : %d)", t_RetryCount, m_CurrentIdx);
        		PrintMsg(tempStr);

                // Statistics Print Out
                for(int i = 0 ; i < 9 ; i++) {
                    tempStr.sprintf(L"%d : %d", i + 1, t_Statistic[i]);
                    PrintMsg(tempStr);
                }
            }
            t_RetryCount++;

            // For Statistics
            t_TargetValue = m_SolveBuffer[0][0];
            t_Statistic[t_TargetValue - 1]++;

            // Restart Routine
            m_CurrentIdx = 0;
            m_CheckCount = 0;
            memset(m_SolveBuffer, 0, sizeof(m_SolveBuffer));
            memcpy(m_SolveBuffer, m_SolveBoard, 81);
        }
    	if(SolveInput(m_CurrentIdx)) {
            m_CurrentIdx++;
            m_CheckCount = 0;
        } else {
         	*(m_SolveBuffer[0] + m_CurrentIdx) = 0;
        }
    }


    // Copy Result Memory into m_SolveBoard
    memcpy(m_SolveBoard, m_SolveBuffer, 81);

    Show();

    // Get Finish Time
	t_EndTime = GetTickCount();

    // Display Result Message
    tempStr.sprintf(L"Complete (%.4f sec)", ((double)t_EndTime - t_StartTime) / 1000);
    PrintMsg(tempStr);
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::SolveInput(int _Idx) {
	if(*(m_SolveBuffer[0] + _Idx) != 0) {
    	return true;
    }
	*(m_SolveBuffer[0] + _Idx) = rand() % 9 + 1;
    //return SolveCheck();
    return true;
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::SolveCheck(int _Idx) {

	// Common
    UnicodeString tempStr = L"";

    // Increase Check Count
    m_CheckCount++;

	//// Square Check
    // Get Start Index
    int t_RowOffset = 0;
    int t_ColOffset = 0;

    t_RowOffset = (_Idx / 9) / 3;
    t_ColOffset = (_Idx % 9) / 3;

    BYTE t_SquareBuffer[9] = {0, };

    t_SquareBuffer[0] = m_SolveBuffer[t_RowOffset * 3 + 0][t_ColOffset * 3 + 0];
    t_SquareBuffer[1] = m_SolveBuffer[t_RowOffset * 3 + 0][t_ColOffset * 3 + 1];
    t_SquareBuffer[2] = m_SolveBuffer[t_RowOffset * 3 + 0][t_ColOffset * 3 + 2];
    t_SquareBuffer[3] = m_SolveBuffer[t_RowOffset * 3 + 1][t_ColOffset * 3 + 0];
    t_SquareBuffer[4] = m_SolveBuffer[t_RowOffset * 3 + 1][t_ColOffset * 3 + 1];
    t_SquareBuffer[5] = m_SolveBuffer[t_RowOffset * 3 + 1][t_ColOffset * 3 + 2];
    t_SquareBuffer[6] = m_SolveBuffer[t_RowOffset * 3 + 2][t_ColOffset * 3 + 0];
    t_SquareBuffer[7] = m_SolveBuffer[t_RowOffset * 3 + 2][t_ColOffset * 3 + 1];
    t_SquareBuffer[8] = m_SolveBuffer[t_RowOffset * 3 + 2][t_ColOffset * 3 + 2];

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
    memcpy(t_SquareBuffer, &(m_SolveBuffer[_Idx / 9][0]), 9);
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
    t_SquareBuffer[0] = m_SolveBuffer[0][_Idx % 9];
    t_SquareBuffer[1] = m_SolveBuffer[1][_Idx % 9];
    t_SquareBuffer[2] = m_SolveBuffer[2][_Idx % 9];
    t_SquareBuffer[3] = m_SolveBuffer[3][_Idx % 9];
    t_SquareBuffer[4] = m_SolveBuffer[4][_Idx % 9];
    t_SquareBuffer[5] = m_SolveBuffer[5][_Idx % 9];
    t_SquareBuffer[6] = m_SolveBuffer[6][_Idx % 9];
    t_SquareBuffer[7] = m_SolveBuffer[7][_Idx % 9];
    t_SquareBuffer[8] = m_SolveBuffer[8][_Idx % 9];

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

bool __fastcall TFormMain::Solve_Recursive() {

	// Common
    UnicodeString tempStr = L"";

	// Default Setting
	m_CurrentIdx = 0;
    m_CheckCount = 0;
    memset(m_SolveBuffer, 0, sizeof(m_SolveBuffer));
    memcpy(m_SolveBuffer, m_SolveBoard, 81);

    if(Recursive_Input(m_CurrentIdx)) {
        PrintMsg(L"Success");
    } else {
    	PrintMsg(L"Fail");
    }

    memcpy(m_SolveBoard, m_SolveBuffer, 81);

    tempStr.sprintf(L"Call Count : %d", m_CheckCount);
    PrintMsg(tempStr);
    Show();
    return true;
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::Recursive_Input(int _Idx) {

	//m_CurrentIdx = _Idx;

	// Common
    UnicodeString tempStr = L"";

	// Print Call Counting
    if(m_CheckCount++ % 500 == 0) {
    	tempStr.sprintf(L"Check Count : %d, Idx : %d", m_CheckCount, _Idx);
    	PrintMsg(tempStr);
    }

	// Pre Return
    if(_Idx == 81) {
    	//if(SolveCheck(_Idx)) {
            return true;
        //}
    }

	BYTE t_OriginValue = *(m_SolveBoard[0] + _Idx);
    if(t_OriginValue != 0) {
    	return Recursive_Input(++_Idx);
    }

    for(int i = 1 ; i < 10 ; i++) {
    	*(m_SolveBuffer[0] + _Idx) = i;
        if(SolveCheck(_Idx)) {
        	if(Recursive_Input(++_Idx)) {
            	return true;
            }
        }
        *(m_SolveBuffer[0] + _Idx) = 0;
    }

    return false;

#if 0
	// Final Return ? (Not Pre Return)
    if(m_CurrentIdx == 81) return true;

    // Print Call Counting
    m_CheckCount++;
    if(m_CheckCount % 10000 == 0) PrintMsg(m_CheckCount);

    // Check Whether Current Value is Origin Value
    BYTE t_OriginValue = *(m_SolveBoard[0] + m_CurrentIdx);
    if(t_OriginValue != 0) {
        return Recursive_Input(++m_CurrentIdx);
    }

    for(int i = 1 ; i < 10 ; i++) {
    	*(m_SolveBuffer[0] + m_CurrentIdx) = i;
        if(SolveCheck()) {
            Recursive_Input(++m_CurrentIdx);
        } else {
        	*(m_SolveBuffer[0] + m_CurrentIdx) = 0;
        }
    }

    *(m_SolveBuffer[0] + m_CurrentIdx - 1) = 0;
    return Recursive_Input(--m_CurrentIdx);

#endif
}
//---------------------------------------------------------------------------



