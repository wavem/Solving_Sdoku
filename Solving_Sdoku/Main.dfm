object FormMain: TFormMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Solving Sdoku'
  ClientHeight = 619
  ClientWidth = 751
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainRibbonMenu: TdxRibbon
    Left = 0
    Top = 0
    Width = 751
    Height = 124
    BarManager = BarMgr
    ColorSchemeName = 'DevExpressDarkStyle'
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object Menu: TdxRibbonTab
      Active = True
      Caption = 'Menu'
      Groups = <
        item
          ToolbarName = 'BarMgrBar1'
        end
        item
          ToolbarName = 'BarMgrBar2'
        end>
      Index = 0
    end
  end
  object ___pnBase: TPanel
    Left = 0
    Top = 124
    Width = 751
    Height = 495
    Align = alClient
    BevelOuter = bvNone
    Color = 2500134
    ParentBackground = False
    TabOrder = 5
    object Notebook_Main: TNotebook
      Left = 0
      Top = 0
      Width = 441
      Height = 495
      Align = alLeft
      PageIndex = 4
      TabOrder = 0
      object TPage
        Left = 0
        Top = 0
        Caption = 'Main'
        ExplicitWidth = 150
        ExplicitHeight = 150
        object __pnBase_Page_0_Welcome: TPanel
          Left = 0
          Top = 0
          Width = 441
          Height = 495
          Align = alClient
          BevelOuter = bvNone
          Color = 2500134
          ParentBackground = False
          TabOrder = 0
          ExplicitTop = 6
          ExplicitWidth = 585
          ExplicitHeight = 436
          object lb_Welcome: TLabel
            Left = 104
            Top = 193
            Width = 272
            Height = 71
            Caption = 'Welcome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -59
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        HelpContext = 1
        Caption = 'Tester'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object __pnBase_Page_1_Tester: TPanel
          Left = 0
          Top = 0
          Width = 441
          Height = 495
          Align = alClient
          BevelOuter = bvNone
          Color = 2500134
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = 64
          ExplicitTop = 48
          ExplicitWidth = 185
          ExplicitHeight = 41
          object lb_Tester: TLabel
            Left = 177
            Top = 15
            Width = 111
            Height = 35
            Caption = 'TESTER'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -29
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object grid: TAdvStringGrid
            Left = 33
            Top = 65
            Width = 400
            Height = 400
            Cursor = crDefault
            ColCount = 9
            DefaultColWidth = 44
            DefaultRowHeight = 44
            DrawingStyle = gdsClassic
            FixedCols = 0
            RowCount = 9
            FixedRows = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 0
            HoverRowCells = [hcNormal, hcSelected]
            OnGetAlignment = gridGetAlignment
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ControlLook.FixedGradientHoverFrom = clGray
            ControlLook.FixedGradientHoverTo = clWhite
            ControlLook.FixedGradientDownFrom = clGray
            ControlLook.FixedGradientDownTo = clSilver
            ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownHeader.Font.Color = clWindowText
            ControlLook.DropDownHeader.Font.Height = -11
            ControlLook.DropDownHeader.Font.Name = 'Tahoma'
            ControlLook.DropDownHeader.Font.Style = []
            ControlLook.DropDownHeader.Visible = True
            ControlLook.DropDownHeader.Buttons = <>
            ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownFooter.Font.Color = clWindowText
            ControlLook.DropDownFooter.Font.Height = -11
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            DefaultAlignment = taCenter
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
            FilterDropDown.Font.Style = []
            FilterDropDown.TextChecked = 'Checked'
            FilterDropDown.TextUnChecked = 'Unchecked'
            FilterDropDownClear = '(All)'
            FilterEdit.TypeNames.Strings = (
              'Starts with'
              'Ends with'
              'Contains'
              'Not contains'
              'Equal'
              'Not equal'
              'Larger than'
              'Smaller than'
              'Clear')
            FixedColWidth = 44
            FixedRowHeight = 44
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            HoverButtons.Buttons = <>
            HoverButtons.Position = hbLeftFromColumnLeft
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            IntelliZoom = False
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurrence'
            SearchFooter.HintFindPrev = 'Find previous occurrence'
            SearchFooter.HintHighlight = 'Highlight occurrences'
            SearchFooter.MatchCaseCaption = 'Match case'
            ShowSelection = False
            SortSettings.DefaultFormat = ssAutomatic
            Version = '7.8.0.1'
            WordWrap = False
            object Shape_Tester_1: TShape
              Left = 0
              Top = 129
              Width = 397
              Height = 3
              Pen.Width = 2
            end
            object Shape_Tester_2: TShape
              Left = -1
              Top = 261
              Width = 397
              Height = 3
              Pen.Width = 2
            end
            object Shape_Tester_3: TShape
              Left = 129
              Top = -1
              Width = 3
              Height = 397
              Pen.Width = 2
            end
            object Shape_Tester_4: TShape
              Left = 261
              Top = -2
              Width = 3
              Height = 397
              Pen.Width = 2
            end
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        HelpContext = 2
        Caption = 'Maker'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object __pnBase_Page_2_Maker: TPanel
          Left = 0
          Top = 0
          Width = 441
          Height = 495
          Align = alClient
          BevelOuter = bvNone
          Color = 2500134
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = 56
          ExplicitTop = 64
          ExplicitWidth = 185
          ExplicitHeight = 41
          object lb_Maker: TLabel
            Left = 176
            Top = 16
            Width = 105
            Height = 35
            Caption = 'MAKER'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -29
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        HelpContext = 3
        Caption = 'Player'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object __pnBase_Page_3_Player: TPanel
          Left = 0
          Top = 0
          Width = 441
          Height = 495
          Align = alClient
          BevelOuter = bvNone
          Color = 2500134
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = 160
          ExplicitTop = 64
          ExplicitWidth = 185
          ExplicitHeight = 41
          object lb_Player: TLabel
            Left = 168
            Top = 16
            Width = 114
            Height = 35
            Caption = 'PLAYER'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -29
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        HelpContext = 4
        Caption = 'Solver'
        object __pnBase_Page_4_Solver: TPanel
          Left = 0
          Top = 0
          Width = 441
          Height = 495
          Align = alClient
          BevelOuter = bvNone
          Color = 2500134
          ParentBackground = False
          TabOrder = 0
          object lb_Solver: TLabel
            Left = 176
            Top = 16
            Width = 116
            Height = 35
            Caption = 'SOLVER'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -29
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object grid_Solver: TAdvStringGrid
            Left = 33
            Top = 73
            Width = 400
            Height = 400
            Cursor = crDefault
            ColCount = 9
            DefaultColWidth = 44
            DefaultRowHeight = 44
            DrawingStyle = gdsClassic
            FixedCols = 0
            RowCount = 9
            FixedRows = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 0
            HoverRowCells = [hcNormal, hcSelected]
            OnGetAlignment = gridGetAlignment
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ControlLook.FixedGradientHoverFrom = clGray
            ControlLook.FixedGradientHoverTo = clWhite
            ControlLook.FixedGradientDownFrom = clGray
            ControlLook.FixedGradientDownTo = clSilver
            ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownHeader.Font.Color = clWindowText
            ControlLook.DropDownHeader.Font.Height = -11
            ControlLook.DropDownHeader.Font.Name = 'Tahoma'
            ControlLook.DropDownHeader.Font.Style = []
            ControlLook.DropDownHeader.Visible = True
            ControlLook.DropDownHeader.Buttons = <>
            ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownFooter.Font.Color = clWindowText
            ControlLook.DropDownFooter.Font.Height = -11
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            DefaultAlignment = taCenter
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
            FilterDropDown.Font.Style = []
            FilterDropDown.TextChecked = 'Checked'
            FilterDropDown.TextUnChecked = 'Unchecked'
            FilterDropDownClear = '(All)'
            FilterEdit.TypeNames.Strings = (
              'Starts with'
              'Ends with'
              'Contains'
              'Not contains'
              'Equal'
              'Not equal'
              'Larger than'
              'Smaller than'
              'Clear')
            FixedColWidth = 44
            FixedRowHeight = 44
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            HoverButtons.Buttons = <>
            HoverButtons.Position = hbLeftFromColumnLeft
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            IntelliZoom = False
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurrence'
            SearchFooter.HintFindPrev = 'Find previous occurrence'
            SearchFooter.HintHighlight = 'Highlight occurrences'
            SearchFooter.MatchCaseCaption = 'Match case'
            ShowSelection = False
            SortSettings.DefaultFormat = ssAutomatic
            Version = '7.8.0.1'
            WordWrap = False
            object Shape1: TShape
              Left = 0
              Top = 129
              Width = 397
              Height = 3
              Pen.Width = 2
            end
            object Shape2: TShape
              Left = -1
              Top = 261
              Width = 397
              Height = 3
              Pen.Width = 2
            end
            object Shape3: TShape
              Left = 129
              Top = -1
              Width = 3
              Height = 397
              Pen.Width = 2
            end
            object Shape4: TShape
              Left = 261
              Top = -2
              Width = 3
              Height = 397
              Pen.Width = 2
            end
          end
        end
      end
    end
    object memo: TcxMemo
      Left = 472
      Top = 0
      Align = alRight
      TabOrder = 1
      Height = 495
      Width = 279
    end
  end
  object BarMgr: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    LookAndFeel.SkinName = ''
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 328
    DockControlHeights = (
      0
      0
      0
      0)
    object BarMgrBar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 775
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'MenuBtn_Tester'
        end
        item
          Visible = True
          ItemName = 'MenuBtn_Maker'
        end
        item
          Visible = True
          ItemName = 'MenuBtn_Player'
        end
        item
          Visible = True
          ItemName = 'MenuBtn_Solver'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object BarMgrBar2: TdxBar
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedLeft = 250
      DockedTop = 0
      FloatLeft = 775
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'MenuBtn_Test'
        end
        item
          Visible = True
          ItemName = 'MenuBtn_Load'
        end
        item
          Visible = True
          ItemName = 'MenuBtn_Solve'
        end
        item
          Visible = True
          ItemName = 'MenuBtn_Version'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object MenuBtn_Test: TdxBarLargeButton
      Caption = 'Test'
      Category = 0
      Hint = 'Test'
      Visible = ivAlways
      OnClick = MenuBtn_TestClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0001000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000020000
        0004000000040000000200000001000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000070000
        000D0000000E0000000A00000005000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000001000000040000000EA55E
        37FF5E321BA91008053300000011000000090000000400000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000500000013A662
        38FFC9996DFF9F5C36F9502A1896070402240000000F00000008000000040000
        0001000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000500000014AA65
        3BFFE7C99CFFE1BC8AFFC18D61FF93522FEC3E22137A020101190000000D0000
        0007000000030000000100000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000400000013AB6A
        3FFFE9CEA3FFDFB67FFFE1BD89FFDFB88AFFBB8359FF864929DC2C180E5F0000
        00140000000C0000000500000002000000010000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000400000011AF6E
        44FFEBD1ACFFE1BA83FFE1B983FFE1BA85FFE4C190FFDAB486FFB3784FFF7542
        25C51E110948000000120000000A000000050000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000400000010B273
        48FFEED7B3FFE3BE8AFFE2BD89FFE2BC88FFE2BC87FFE2BC8AFFE6C394FFD5AA
        7EFFAF7048FF633820AB0F090530000000100000000900000004000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000040000000FB478
        4DFFF1DABBFFE5C290FFE5C28FFFE4C08EFFE4C08DFFE3BE8BFFE3BD89FFE4BF
        8CFFE7C596FFCD9F73FFA5663FF954301D95080402230000000E000000080000
        0003000000010000000100000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000030000000EB77B
        53FFF3E0C4FFE8C696FFE7C695FFE7C595FFE6C493FFE5C291FFE4C08EFFE3BF
        8BFFE2BD88FFE4C08DFFE4C294FFC7966AFF9A5E39EC40261677020101180000
        000B000000040000000100000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000030000000DBA82
        59FFF5E4CAFFEACB9DFFEACA9CFFE9C99BFFE9C999FFE7C697FFE7C494FFE5C2
        90FFE4BF8DFFE2BD89FFE1BB86FFE4BF8DFFDFBB8EFFBF895EFF8C5533DB2F1C
        1159000000090000000200000001000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000030000000CBD86
        5DFFF7E8D1FFEDD0A3FFECCFA2FFECCEA2FFEBCDA0FFEACB9DFFE9C999FFE8C6
        96FFE6C392FFE4C08EFFE2BD89FFE1B984FFE2BC8AFFE8CCA0FFDCB890FFAC6C
        42FF0000000C0000000300000001000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000030000000BC18D
        64FFF8EBD7FFF1D8AFFFF2DBB2FFF3DCB3FFF2DBB2FFF1D9AFFFEFD5AAFFECD1
        A4FFEACA9BFFE6C493FFE5C291FFEACEA6FFE5C9A6FFC39169FF855535C82115
        0D40000000080000000200000001000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000020000000AC491
        6AFFFBF2DBFFF6E4BEFFF6E4BEFFF5E2BCFFF5E0BAFFF4DFB7FFF2DCB3FFF0D9
        AFFFEFD7ACFFF1DDB6FFEFDBBCFFD0A581FF9D6A46E139261962000000100000
        0008000000030000000100000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000200000009C697
        6FFFFCF5DEFFF8E9C4FFF8E8C3FFF7E7C2FFF7E5C0FFF5E3BDFFF4E0B9FFF5E4
        BFFFF6EBCDFFDEBF9EFFB4805AF35238257F0403021600000009000000050000
        0002000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000200000008C99B
        75FFFDF7E0FFFAEDC9FFFAECC8FFF9EBC6FFF9E9C5FFF8E9C6FFFAEFD3FFECD7
        BAFFC69972FD6F4F369F0D090620000000090000000500000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000200000007CBA0
        79FFFEF8E1FFFBEFCDFFFCEFCCFFFBEFCDFFFCF3D7FFF4E7CCFFD4AF8BFF916B
        4CC5221911390000000900000005000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000100000006CDA4
        7EFFFEFAE1FFFDF2D1FFFEF5D9FFFBF2D8FFDFC2A1FFAC8360DF3E2F225B0000
        0009000000050000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000100000005D0A8
        83FFFFFAE2FFFDF8DFFFE9D4B5FFC29A76F2594533790504030E000000050000
        0002000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000100000004D2AC
        87FFF1E2C6FFD2B08AFC785F479A0E0B09190000000500000003000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000100000002D4B0
        8BFF95785BB9221B152F00000004000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0002000000020000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
    object MenuBtn_Version: TdxBarLargeButton
      Caption = 'Info'
      Category = 0
      Hint = 'Info'
      Visible = ivAlways
      OnClick = MenuBtn_VersionClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000004000000050000000700000007000000070000
        0007000000050000000400000002000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0003000000070000000C0000001100000016000000190000001B0000001B0000
        001900000016000000120000000C000000070000000400000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000003000000070000
        000E000000181B12104D442D289668463DD16C483FD985594EFF84584EFF6C48
        3EDA66453CD1432C27971A120F500000001A0000001000000008000000040000
        0001000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000100000001000000040000000B000000162D1E
        1B6B764F44E2966E64FFB19187FFC9AFA6FFCEB5ADFFDECAC2FFDECAC2FFCEB5
        ACFFC8AEA5FFB08F86FF936A60FF724C43E22C1D196E000000190000000D0000
        0005000000010000000100000000000000000000000000000000000000000000
        0000000000000000000100000001000000050000000E100B0A376C4A40D0A37E
        75FFCCB4ACFFDFCCC4FFDFCCC5FFDFCCC5FFDFCBC4FFDFCCC4FFDFCBC4FFDECB
        C3FFDFCBC3FFDFCBC3FFDECBC3FFCBB1A9FF9C766CFF68463DD1100B093A0000
        0011000000060000000100000001000000000000000000000000000000000000
        00000000000000000001000000050000000F23181556875E53F0C5ACA3FFE1CE
        C6FFE0CDC6FFDDC6BCFFC99F8BFFB98063FFB47555FFA9623CFFAA613CFFB475
        55FFB97F63FFC89E8AFFDCC4BAFFE0CCC4FFDFCCC5FFBEA197FF81594EF12217
        145A000000120000000600000001000000000000000000000000000000000000
        000000000001000000040000000D23191554946D61FAD2BDB5FFE2D0C9FFE0CB
        C4FFC69A85FFAE6A45FFAC643EFFAD663EFFAD663FFFAD653FFFAD653FFFAC64
        3FFFAD643DFFAB633DFFAD6843FFC69983FFDECAC1FFE0CEC6FFCBB2AAFF8D64
        5AFA221714590000001000000005000000010000000000000000000000000000
        00000000000200000009150F0D398A655AEEDBC9C4FFE3D2CBFFDCC5BAFFB77A
        5AFFAE653FFFAF6641FFAF6741FFAF6841FFAF6842FFB06842FFB06842FFAF67
        41FFAE673FFFAE663FFFAD653FFFAC643EFFB6785AFFDAC2B7FFE1CFC8FFCFB7
        B0FF855D53EF140D0C3E0000000C000000030000000100000000000000000000
        00010000000500000011725147CBD2BEB8FFE4D4CDFFDEC8BEFFB3714DFFAF67
        40FFB06942FFB16943FFB06A42FFAE673FFFAB633CFFAA623BFFA9613BFFAA64
        3CFFAE663FFFAF6941FFAF6841FFAF6740FFAD653EFFB16E4BFFDDC5BAFFE3D1
        C9FFC0A59CFF6D4B43D000000016000000070000000100000000000000000000
        00020000000A32242065AD8A80FFECE0DCFFE4D3CCFFB87C5BFFB16942FFB26A
        44FFB36C45FFB26C45FFB06842FFD0AA96FFF2E8E4FFFFFFFFFFFFFFFFFFF0E5
        DFFFCFA894FFAE6640FFB06A43FFB16A43FFAF6741FFAE6640FFB67959FFE2CF
        C7FFE4D2CCFFA17C72FF2F211D6A0000000D0000000300000001000000010000
        00050000000F835E54DDE3D6D2FFE7D8D3FFCCA28CFFB26942FFB36C44FFB46E
        46FFB46E46FFB56E46FFB06941FFE4D0C2FFF7F0E9FFF7F0E9FFF8F3ECFFFBF8
        F5FFF6EFEBFFAF673FFFB36B45FFB16B44FFB26A43FFB06841FFAE663FFFCA9E
        89FFE4D4CEFFD0B9B2FF7B574CDF000000150000000600000001000000020000
        0007271D194FB08D83FFF4ECE9FFE5D3CCFFB4704AFFB46C46FFB56F46FFB770
        48FFB77047FFB67048FFB56E46FFB57856FFF7F1EAFFF8F1EAFFF7F1EBFFF8F2
        EDFFBE896DFFB26A43FFB56E46FFB46E46FFB36C45FFB26B43FFB16843FFB16D
        47FFE2CFC7FFE6D6D0FFA78177FF261B18570000000A00000002000000020000
        0009553E3892D2BDB7FFEFE5E2FFD4B1A0FFB46C44FFB77048FFB87149FFB871
        49FFB97249FFBB774DFFBF7C52FFB6754AFFEFE2D9FFF8F2EBFFF7F2ECFFFDFB
        FAFFB7764FFFBA774CFFB9734AFFB66F48FFB56E47FFB46E46FFB36B44FFAF68
        41FFCFA896FFE7D8D2FFC4AAA2FF503933970000000D00000003000000020000
        000B7B5B52C6E7DDD9FFEEE2DEFFC38D70FFB66F47FFB9724AFFB9734AFFBF7C
        52FFC5895CFFC88C5FFFC88C5FFFBC7F52FFECDFD5FFF8F2EDFFF9F3ECFFFFFE
        FEFFB8774DFFC28359FFC18358FFBE7E53FFBA764CFFB56F47FFB56E46FFB26B
        44FFC0896DFFE9DAD4FFD5C1BBFF74544BC90000001000000004000000030000
        000C997367ECF6F1F0FFEDE2DDFFBD7F5CFFB87249FFBD784FFFC78A5EFFCA91
        63FFCA9164FFCA9164FFCB9263FFBF8156FFEDE0D6FFF8F4EEFFF9F3EEFFFFFF
        FFFFBB7B51FFC6895CFFC4875BFFC28559FFC18257FFBD7C53FFB87149FFB46D
        46FFB97B57FFEADCD7FFE2D2CCFF8F695DED0000001200000004000000030000
        000CA57D71FAFDFCFCFFEDE4DFFFB97650FFBE7B51FFCB9266FFCD9668FFCE96
        68FFCE9668FFCE9768FFCC9466FFBC7F53FFF5EDE6FFF9F4EEFFFAF4EFFFFFFF
        FFFFBD7F54FFC88D61FFC88B5FFFC6895CFFC4865BFFC38459FFC07F54FFB871
        4AFFB5704AFFEBDED9FFE9DDD7FF9B7467FA0000001200000005000000030000
        000BA88075FAFDFCFCFFF1E8E3FFBE7F57FFCC9568FFCF996CFFD19A6CFFD09B
        6DFFD19B6EFFD09B6CFFC99164FFDBBEAAFFFAF5EFFFFAF5F0FFFAF5EFFFFFFF
        FFFFBF8258FFCB9265FFCA8F63FFC88D61FFC78A5FFFC5885CFFC38558FFBF7F
        54FFB67149FFECE0DCFFECE1DCFF9E776AFA0000001100000005000000020000
        0009A17D71ECF7F2F1FFF5EDEBFFCF9F7DFFCF9A6DFFD29D70FFD3A072FFD4A0
        72FFD3A072FFD49F72FFCA9467FFEBDACFFFFAF6F1FFFAF6F1FFFAF5F1FFFFFF
        FFFFC1865BFFCE9669FFCD9467FFCA9165FFC98F62FFC78B60FFC5885DFFC282
        59FFC18560FFEEE4DEFFEADEDAFF977266ED0000000F00000004000000020000
        000887695FC4EBE1DEFFFAF7F6FFD9B59AFFCF9C6FFFD4A175FFD5A377FFD6A5
        77FFD6A677FFD6A578FFD3A173FFC9956AFFD2AC92FFE6D4C7FFFBF6F1FFFDFB
        FAFFC88E61FFD09B6DFFCF986BFFCD9569FFCC9267FFC88E63FFC78C60FFC284
        5AFFCEA084FFF1E7E4FFE3D4CEFF7E6057C70000000D00000003000000010000
        0005604C448EDBC9C2FFFEFDFDFFEADACDFFD09D70FFD6A678FFD8A97CFFD9AA
        7CFFDAAA7DFFD9AA7DFFD6A679FFCD996DFFBF885CFFBB8057FFBD8259FFCA98
        71FFCF9A6FFFD49E71FFD29C70FFD19A6DFFCE966BFFCC9367FFC88E63FFC385
        5BFFDEC2B0FFF3EAE7FFD5C1BBFF5A453E920000000900000002000000010000
        00042D242147C5A79BFFFFFFFFFFF9F5F2FFD3A47DFFD6A77BFFDAAC81FFDCAD
        81FFDCAF82FFDCAF82FFD4A376FFD8B8A1FFFAF6F3FFEBDCD4FFD7B9A6FFC08A
        61FFD19E73FFD6A277FFD4A074FFD29D72FFD1996EFFCD966AFFC98F64FFC68D
        67FFF2E7E3FFF7F1EFFFBD9E93FF2B221E4D0000000600000001000000000000
        0002000000079F7F73DAEDE4E0FFFEFDFDFFEAD5C5FFD5A67CFFDAAF84FFDEB2
        86FFDDB386FFDFB487FFD4A67BFFF5ECE6FFFDF9F7FFFDFBFAFFFFFFFFFFEADA
        D0FFD09C70FFD8A77BFFD6A479FFD49F75FFD29D73FFCE976EFFC98F64FFDFC3
        B0FFF5EFECFFEADFDBFF97746ADC0000000C0000000400000001000000000000
        0001000000043E322E5ACAADA2FFFFFFFFFFFCFAF9FFDDBB9DFFDBAE84FFDFB4
        8AFFE0B88CFFE0B78CFFDDB387FFEDDBCBFFFCF9F6FFFBF9F5FFFDFBF8FFFCF9
        F7FFD4A379FFDAAB7FFFD8A77DFFD5A47AFFD39E73FFCE976CFFD2A686FFF6EF
        EDFFFAF7F5FFC5A59BFF3C2F2A5F000000070000000200000000000000000000
        0000000000020000000593786DC6E6D7D2FFFFFFFFFFFAF6F4FFDCB593FFDCB2
        89FFE0B98EFFE2BB90FFE2BB90FFE1B78EFFE9D2B9FFF6EEE5FFF9F3EEFFEBD5
        C1FFDCAF84FFDDAF83FFDAAA80FFD6A57AFFD29D74FFD1A07DFFF3EBE6FFF9F6
        F4FFE3D4CFFF8C7066C70000000A000000030000000100000000000000000000
        0000000000010000000219151326B5968AECF2EAE8FFFFFFFFFFFBF8F6FFE1C1
        A5FFDCB38AFFE1BA91FFE3BC94FFE3BD94FFE3BD93FFE3BB91FFE1B98FFFE0B6
        8DFFDFB389FFDCAF85FFD8A980FFD3A076FFD8B091FFF5EEEAFFFAF7F6FFF1E8
        E5FFB08F83ED1813122B00000005000000010000000000000000000000000000
        000000000000000000010000000331282544C4A598F9F0E8E5FFFFFFFFFFFDFC
        FBFFEFDFD2FFDDB792FFDFB68FFFE1B991FFE2BA92FFE1BA92FFE0B88FFFDFB3
        8BFFDBAF87FFD8A980FFD5A883FFE9D4C3FFF9F4F3FFFCFAF9FFEFE6E3FFBF9D
        91F92F2623480000000500000002000000000000000000000000000000000000
        00000000000000000000000000010000000331292544BA9B8EEEE7D8D3FFFFFF
        FFFFFFFEFEFFFCFAF9FFF2E4DAFFE7CEB7FFE3C4A8FFDAB18AFFD9B087FFE1C0
        A2FFE4C7AEFFEEDDD1FFFAF4F2FFFCFAFAFFFEFEFEFFE6D6D0FFB49589EE3027
        2447000000050000000200000000000000000000000000000000000000000000
        00000000000000000000000000000000000100000002181412229C8177C8D6BC
        B2FFF2E9E6FFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFCFFFDFCFBFFFDFBFAFFFDFC
        FBFFFEFCFBFFFEFDFDFFFFFFFFFFF1E9E6FFD3BAB0FF997D73C9171311250000
        0004000000020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000034136
        3154AC9083D9D1B4A8FFE3D1CBFFF2E9E5FFF4EEEBFFFEFEFEFFFEFEFEFFF4EE
        EBFFF1E8E5FFE2D0C9FFCFB2A5FFA88D81DA4236325900000005000000030000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000200000003241E1C3065544D819C8378C5A3887DCDCAA89BFCC9A99AFCA289
        7DCE9B8277C564544D82231E1B32000000040000000300000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000002000000020000000300000003000000030000
        0003000000030000000200000002000000010000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object MenuBtn_Solver: TdxBarLargeButton
      Tag = 4
      Caption = 'Solver'
      Category = 0
      Hint = 'Solver'
      Visible = ivAlways
      OnClick = MenuBtn_Click
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000001000000060000000F0000
        0016000000180000000F00000004000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000060000001B000000300000003600000036000000360000
        0036000000360000003700000037000000370000003A091A31B50D2850FF0C25
        4DFF0A2349FF030C1BA100000044000000370000003700000037000000370000
        0037000000310000001C00000006000000000000000000000000000000000000
        000000000005000000263F3F3FBB787878FF2E3063FF0D1263FF0D1262FF0D11
        62FF0D1160FF0D115FFF0D115FFF0D105CFF0D105AFF112F56FFFFFFFFFF5DB8
        EDFF499BD3FF0A2349FF090D47FF0A0F53FF0B0E52FF0B0F51FF0A0E51FF3032
        4EFF5A5A5AFF2E2E2EBD00000028000000050000000000000000000000000000
        000000000015353535A29C9A99FFBBB7B3FF9293B2FF131668FF282AA4FF2223
        9EFF1E1F99FF1D1D96FF1B1B93FF19198EFF1A1987FF13325BFFF7F8F9FF6CC0
        EFFF56A9DDFF22507CFF091249FF0A0959FF09095FFF0A0A62FF060747FF9495
        A5FFBBB9B7FF807F7FFF242424A6000000160000000000000000000000000000
        000000000025858585FBEBEBEBFFE7E7E7FFBFC1D0FF141774FF3738BBFF2A2C
        B3FF2527AFFF2323ABFF2121A6FF1F1FA2FF1D1D9DFF1A2282FF556B8AFFD0E7
        F5FF6DC0EFFF57A9DDFF23507CFF0A2349FF0A124DFF0A0A68FF050746FFBBBB
        C2FFC6C5C3FFB8B5B3FF5B5B5BFB000000280000000000000000000000000000
        00000000001C545454C9C7C7C7FFECECECFFD8D8DEFF121777FF403FBEFF2E2F
        B6FF2728B2FF2525AEFF2222AAFF2020A6FF21209FFF1D1D9AFF17207EFF556B
        8AFFD1E8F5FF6FC2EFFF61BAEDFF4D9DD3FF0A2349FF0D0B61FF02063CFFD2D2
        D5FFD5D5D5FF959493FF373737CF0000001F0000000000000000000000000000
        00000000001034343496B3B3B3FFF2F2F2FFE8E8E9FF131877FF4747C2FF3132
        B8FF2A29B4FF2727B0FF2525ABFF2223A7FF2020A2FF0F0F4EFF0E0E49FF171F
        7DFF556B8AFFD1E8F5FF70C2F0FF58ABDEFF23507DFF09124DFF00022AFFBBBB
        BBFFB2B2B1FF6F6E6DFF1F1F1FA6000000170000000000000000000000000000
        000000000007101010529D9D9DFFF6F6F6FFE0E0E7FF161B79FF5152C7FF3535
        BCFF2A2BB5FF2829B3FF2524A0FF2424ABFF111153FF818181FF636363FF0F0E
        4BFF19207BFF556B88FFD1E8F5FF71C3F0FF5AACDEFF24517DFF0A2349FF1126
        48FF0F2344FF15233CFF070D1BBC0000002D0000000600000000000000000000
        00000000000100000025747474E5E2E2E2FFC9CBDCFF1C2079FF5A5CCBFF3939
        BEFF2B2CB7FF232483FF24242EFF121249FF818181FFFFFFFFFF8E8E8EFF8181
        81FF0E0E40FF161F32FF556B88FFD2E8F5FF73C4F1FF65BCEEFF5AB5EBFF4AA2
        D8FF509FD5FF3777A8FF2A4E76FF030D20B70000002300000003000000000000
        000000000000000000123F3F3F9EC0C0C0FFA7A9CBFF2F337EFF6263CEFF3A3B
        C1FF2D2DB6FF242432FFC1C1C1FF393939FFD4D4D4FFFFFFFFFF8E8E8EFFD6D5
        D5FF343535FF9B9B9AFF10192DFF556B88FFD4EBF7FF72C3F0FF65BDEEFF5DB8
        ECFF53B2EBFF4BAEEAFF3F9CD9FF184674FF0209168E0000000E000000000000
        0000000000000000000507070738919191F57E80B0FF56599AFF6365D0FF3B3C
        C2FF2C2D82FF767676FFE8E8E8FFCCCCCCFF434343FFD4D4D4FFA6A6A6FF4748
        47FFB4B4B4FFB8B8B8FF4B4B4BFF142D5BFFC7CFD8FF9AD5F5FF70C3F0FF67BD
        EFFF5EB9EDFF55B3EBFF4AA8E2FF2B6DA2FF04122ACB00000016000000000000
        00000000000000000001000000124444449E53558EFF9090D2FF6162CFFF3D3E
        C3FF32324CFFD5D5D5FFF6F6F6FFDDDDDDFF434343FF818281FF858585FF4746
        47FFC4C4C4FFC3C3C3FF979797FF17355AFFE8EBEFFF91D4F4FF73BDE7FF457D
        ACFF365B89FF9CB2CCFF9DD3F1FF3F8DC4FF071B3DEE00000015000000000000
        0000000000000000000000000003000000200D1154D36163B7FF6162D0FF4A4B
        AFFF5D5D5DFFFFFFFFFFF0F0F0FF535253FF5C5D67FF6E6E70FF646472FF4C4C
        68FF45464AFFC5C5C5FFC3C3C3FF1B3B5FFFE8EBEFFF9BD9F6FF75B6DDFF284C
        7EFF060D177442618DFFE8F3FAFF4691C5FF081D40EB0000000E000000000000
        0000000000000000000000000000000000060101042B0B0E49C1222689FF3F40
        73FFA5A5A5FFFDFDFDFF616A72FF678BAAFF6B9BC3FF679FCAFF588EBCFF4673
        A0FF3B5B7FFF4B5059FFD2D2D2FF374E6AFFB3BFCCFFBBE6F9FF87C8EBFF4F82
        AEFF305180FF93A7C0FFA3D2EDFF3C79A8FF071731B300000005000000000000
        00000000000000000000000000000000000000000005000000160405195F3031
        47DAADADADFFA5A5A5FF3C5E84FF89BEE2FF76ACD3FF5F92BEFF4A7AA8FF3D6C
        9BFF346091FF273B61FF868686FF5C6978FF6D849EFFDDF3FCFF9ADBF7FF91D6
        F5FF89D1F4FF80CCF2FF6BB5E0FF2A5680FF040D1C6200000002000000000000
        0000000000000000000000000000000000000000000000000002000000070101
        0113353535AE505150F4355E8DFF5A86AEFF2C4F7DFF133160FF0F2C5CFF1738
        68FF204575FF223B68FF2D2D2DF5141414B21021358D68809BFF9BB4C8FFA9D3
        E8FF89C1E0FF6193B7FF3E6286FF08172A830000000300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000101010718181B6F264978FF425D84FF5B7FA5FF5B8EB8FF4D83B3FF3464
        94FF1C3F6FFF142D5DFF0A0B0D7800000009000000010A17265C132A45AB1734
        5AE6163358E60E243FAB0712205D000000020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000100E1C3198576F92FF8FB2CFFF85BBE2FF72B1DCFF63A2D1FF5593
        C5FF3F78AAFF214576FF041027A7000000180000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000708111F61374F73EAA0B8D0FF9DCCECFF85BFE6FF7CB9E3FF75B4E1FF68A9
        D9FF5596C6FF3C71A3FF16325CF00308125E0000000900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000F0D2D5DE0697FA0FFC1E0F4FF99CBECFF8AC3E8FF84BEE5FF7CB9E3FF74B4
        E1FF67A7D6FF528FC0FF2D5786FF08162CA40000001200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000004040F
        215D113671FFA3B5CAFFBADDF2FF9BCDEDFF91C7EAFF8AC2E8FF83BEE5FF7CB9
        E3FF75B4E0FF5E9DCCFF4070A0FF0E2246D10000002200000004000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001010305151032
        66E50F346FFFC7D5E2FFB8DDF3FF9FD0EEFF97CBECFF91C8EAFF8BC3E8FF83BE
        E5FF7CB9E3FF6BA9D5FF4F85B3FF162F58F00410289E0000000F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000020519367B3E64
        96FF143B75FFB6C5D7FFBCDFF4FFA3D2F0FF9CCFEEFF98CBEDFF91C7EAFF8BC3
        E8FF84BEE6FF78B5DFFF5C95C1FF183663FD081B44E500000018000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002092857C26188
        B2FF1B4D88FF4C6790FFC7E4F6FFA7D4F0FFA0D1EFFF9CCEEEFF98CBEDFF91C7
        EAFF8BC3E8FF83BDE5FF6293BBFF102A58FA09204EF900000019000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000020B3168E578A1
        C8FF215A96FF12417DFF3F5C88FF5678A1FF658DB3FF87B5D6FF9CCEEEFF97CB
        ECFF91C8EAFF88BEE4FF345784FF07245CFF092252FB00000016000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000010D3571F688B4
        D7FF3B79B2FF1A5191FF10407DFF0D3570FF0A2E68FF0A295DFF446892FF97C8
        E9FF98CBECFF4C74A0FF0C316EFF072967FF08204EEA00000010000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000A2D63D27BA7
        CDFF679FCEFF2B6DADFF1F5A9EFF185093FF134888FF104484FF0F3975FF3254
        82FF7EA8CCFF103772FF154D93FF0B306DFF06193CB400000009000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000061A38754F79
        A8FF8CBBDEFF4287C0FF3276B5FF2B6CAFFF2566AAFF205EA0FF1A5492FF194D
        87FF234476FF184681FF1D5695FF0D326CFF030C1C5600000003000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000001050A151841
        7DF496BFE0FF7FB4DAFF4589C4FF3C83BFFF387DBCFF367ABAFF3276B2FF2A67
        A0FF265E94FF0B2D67FB082454D3041026660000000400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000411
        264E3D669BFD9DC9E7FF90C0E1FF77AED8FF66A4D2FF599BCDFF5A9BCFFF66A0
        CDFF365D8DFF04132B6700000002000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000005173269214B88FF517CAAFF6E97BFFF83ADD0FF81ACCFFF6892BAFF2F57
        8BFF071D40930000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000020810210619377208244EA50A2B5ECC0A2B5ECC0722489F030E
        1E42000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
    object MenuBtn_Maker: TdxBarLargeButton
      Tag = 2
      Caption = 'Maker'
      Category = 0
      Hint = 'Maker'
      Visible = ivAlways
      OnClick = MenuBtn_Click
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        000000000000000000060000001C000000300000003700000037000000370000
        0037000000370000003700000037000000370000003700000037000000370000
        0037000000370000003700000037000000370000003700000037000000370000
        0037000000310000001C00000006000000000000000000000000000000000000
        0000000000050000002742372EBC7F6A59FF7D6957FF7A6655FF796352FF755F
        4EFF725D4CFF6F5A49FF6D5745FF6A5543FF675240FF634E3DFF5F4A39FF5D48
        37FF594433FF564030FF533E2DFF513B2BFF4F3A2AFF4C3727FF4A3526FF4833
        24FF453122FF221811BD00000028000000050000000000000000000000000000
        000000000015332B25A4AFA197FFC2BBB4FFB7B0A8FFAA7051FFC98F6CFFC288
        63FFBC805BFFB57854FFAE714CFFA86A45FFA1623FFF9A5C3AFF955634FF9051
        30FF8A4D2CFF864929FF814726FF7E4324FF7C4223FF794022FF6D3C1FFF867D
        71FF867D71FF5E4E40FF1A120CA6000000160000000000000000000000000000
        000000000026705E50F0E8E5E1FFEAE8E6FFE4E0DBFFAC7153FFECC3A7FFE1A5
        7EFFDD9E77FFD89770FFD39069FFCD885FFFC7815AFFC27A51FFBC734BFFB56A
        44FFAF653CFFA95E36FFA35932FF9F522DFF9A4E2AFF7B4123FF6E3D21FF9B95
        8AFF8E867BFF7C7265FF3A2A1CF1000000280000000000000000000000000000
        000000000025635447E5DDD7D2FFEFECEAFFE4E1DDFFA06A4FFFEEC9B1FFE8BA
        9BFFC89270FFBF8967FFB67F5CFFD18D66FFCC865EFFC67E57FFBF774FFFBA70
        48FFB46941FFAE623BFF95532FFF8D4B2BFF854525FF7D4324FF653A1FFF9B95
        8AFF989186FF766A5DFF342419E8000000280000000000000000000000000000
        00000000001D4D4137CBCAC1B9FFF4F2F0FFE7E2DFFFAD9C92FFAD7252FFEEC8
        AEFF995031FF7C3216FFBE8764FFD5946CFFCF8C64FFCA845BFFC47E55FFBE76
        4EFFB86F46FFB56D47FF703D28FF56230FFF8C4A2AFF744125FF776659FF9B95
        8AFF968F84FF6C5F51FF291D14CF0000001F0000000000000000000000000000
        0000000000112E272198AEA095FFF9F8F7FFE7E3E0FFE5E1DFFFAE7355FFF0CE
        B7FFB06E51FF994F31FFC68E6BFFD99871FFD39069FFCE8961FFC8825AFFC37B
        53FFBD734AFFBB7853FF8A5C49FF703C28FF94502EFF754327FFA29A8FFF9F97
        8DFF928B7FFF5F4E40FF1A120C9F000000130000000000000000000000000000
        0000000000070E0C0A5391806FFFFBFAF9FFECE9E6FFE7E3E0FFA26B50FFF4D8
        C4FFF0CCB5FFEDC6ABFFE9BCA1FFE5B699FFE0AF90FFDCA786FFD69F7EFFD197
        76FFCA8D6CFFCB9477FFC28564FFB87753FFB57453FF6D3F26FFA39B94FFA098
        8FFF8D857BFF533F31FF0705045B000000080000000000000000000000000000
        00000000000100000026675749E6E0DBD6FFF3F1EFFFE7E3E0FFAE9E93FF8F5F
        46FFAA7051FFA76C4EFFA3694AFF9E6647FF9B6244FF975F41FF935C3EFF8E58
        3BFF8B5538FF865134FF834E32FF7F4B2FFF663B24FF7F6E60FFA6A095FFA39A
        92FF7E7164FF3B2A1EEB0000002D000000010000000000000000000000000000
        00000000000000000013362E27A0B5A89EFFFAF9F8FFEAE6E3FFE7E2E0FF9C65
        47FFD09D80FF8C583CFFA29A90FFDAD6CFFFD7D0CCFFD1CDC6FFCFC7C2FFCBC3
        BCFFC4BEB8FFC0B9B1FF7B482CFF9E6849FF6D3B20FF82786CFFA8A297FFA095
        8EFF6B5A4CFF201711AB00000017000000000000000000000000000000000000
        000000000000000000050605043B7F6D5EF6F1EFECFFF3F0EFFFE8E3E0FFA26B
        4DFFD7A489FF905C3FFFAEA69EFFDBD7D2FFD8D4CFFFD6CFCBFFD0CBC4FFCCC6
        BEFFC7C2B9FFC3BBB4FF855033FFA67052FF744125FF867C70FFABA39AFF9289
        7DFF4F3D2EF90403024600000007000000000000000000000000000000000000
        0000000000000000000100000013393129A1B8ACA1FFFBFAF9FFEFECEAFFA96F
        52FFDDAB91FF956143FFBBB3ACFFDFD8D4FFDAD6D0FFD7D1CCFFD2CDC7FFCFC8
        C2FFCBC3BEFFC6C0B8FF8F583BFFAE795BFF7C482CFF8B8276FFACA499FF7E6E
        62FF241B13B00000001900000001000000000000000000000000000000000000
        0000000000000000000000000003000000225E4F44D5CEC6BFFFFBFAF9FFAF75
        56FFE3B197FF9C6648FFACA49BFF9F948BFF8B7F74FF7C6F64FF7E7367FF887E
        72FF998E86FFADA59DFF986042FFB78265FF854F33FF92897EFFACA399FF3D2F
        23DF0000002F0000000500000000000000000000000000000000000000000000
        0000000000000000000000000000000000070504032E52453AC49D8C7FFF9E75
        5DFFCDA38BFF9E6C50FF7A797AFF7192ADFF6C9BC2FF679FCAFF588EBCFF4673
        9FFF415E7FFF5B5655FF9B6649FFA87B62FF79533BFF7C6B5DFF392C21D00302
        023D0000000A0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000005000000191C181463443A
        31AF605145D96F5E4FEF416084FF89BEE2FF76ACD3FF5F92BEFF4A7AA8FF3D6C
        9BFF346091FF2E3F62FF5B493AF34B3C2FE1332920BC14100C73000000230000
        0008000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000080000
        00110000001A00000040355E8DFF5984ADFF2A4C7AFF102D5EFF0D2A5AFF1736
        66FF204575FF223B68FF0000005000000022000000180000000C000000030000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000401020436244776FF3F5A81FF5A7EA4FF5B8EB8FF4D83B3FF3364
        94FF1C3F6FFF142E5EFF00010344000000060000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0002000000120C192E9C546D8FFF8EB1CFFF85BBE2FF72B1DCFF63A2D1FF5593
        C5FF3F78AAFF214676FF051127AB000000190000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0008070C1656354B6FEC9FB7CFFF9DCCECFF85BFE6FF7CB9E3FF75B4E1FF68A9
        D9FF5596C6FF3A6EA0FF16335CF1030912610000000A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0013111F349D788CA7FFC1E0F4FF99CBECFF8AC3E8FF84BEE5FF7CB9E3FF6CAA
        D7FF548EBDFF4178A9FF264E7DFF09172DA70000001300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000060000
        00201C2F50C9ACBCCEFFBADDF2FF9BCDEDFF91C7EAFF82B8DFFF5F93BDFF4D80
        ADFF497DACFF3C70A0FF2C5687FF102445D40000002500000004000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000010000000C0000
        0028263F66E9D2DFEAFFB8DDF3FF9CCCEBFF6A99BFFF47739EFF426F9BFF3F6D
        9AFF3C6B99FF346493FF2A5485FF17315BF10000004A00000011000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000003000000110002
        0326265283FD85B7D8FF3C87BBFF186CA9FF1165A4FF0D5B9BFF0C508EFF0E46
        82FF123F78FF163E72FF173D6FFF193665FE000001650000001A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000004000000100739
        5B913790C3FF4FA9D3FF57BCE1FF56C8ECFF49CDF3FF39CDF8FF29C6F7FF21B6
        EDFF21A4DDFF238CC5FF2370A5FF1C4C7FFF04122CB30000001C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000030000000B0F6C
        A5F73890C3FF5AABD3FF76C2E2FF8DD4EDFF9BE0F5FFA3E8FBFFA0E5FAFF92D7
        F1FF7FC1E1FF66A3C9FF4B7FA9FF2C5483FF0A295BF900000019000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000071269
        9BEE92B8D3FF2A72A5FF1166A0FF0F69A7FF0E6CACFF0C67A8FF0C5E9EFF0C51
        90FF0B4882FF0A3F77FF0B396FFF0A376CFF0C3463F200000014000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000040E56
        7FC1ADD8E9FF96EDFDFF4ADDFBFF40D7FBFF37D3FBFF2ECDFAFF25BFEFFF1CAE
        E4FF169CD7FF108AC6FF0B73B1FF0B3D71FF0A2D52CB0000000B000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010A3A
        56817DB7D4FFC6F6FEFF65E4FCFF49DDFCFF40D7FBFF37D3FAFF2CC4F1FF23B3
        E5FF1AA1D7FF138EC6FF0D6BA6FF144678FF0720398B00000005000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000418
        23343E84ABE5CDEAF4FFABF2FDFF60E3FCFF49DCFBFF3FD7FBFF34C9F1FF29B9
        E5FF1FA5D8FF1791C7FF196498FF1C4974E6030D183900000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000082F45676BA9CAFAD4EEF6FFC8F6FEFF88EAFDFF58DFFBFF3BCDF2FF2FBC
        E6FF37B1DCFF4DA1C7FF3E7198FA061E33680000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000082F45673E86AEEB95C5DDFFCBEAF4FFDFF9FEFFD7F5FCFFB6DE
        EDFF7CAFCCFF306993EB06223767000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000041823340B45669A106292E0126DA3FF11699FFF0F59
        87E00A3B5B9A03131E3400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
    object MenuBtn_Player: TdxBarLargeButton
      Tag = 3
      Caption = 'Player'
      Category = 0
      Hint = 'Player'
      Visible = ivAlways
      OnClick = MenuBtn_Click
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        000000000000000000060000001C000000300000003700000037000000370000
        0037000000370000003700000037000000370000003700000037000000370000
        0037000000370000003700000037000000370000003700000037000000370000
        0037000000310000001C00000006000000000000000000000000000000000000
        00000000000500000027191615BC332823FF312721FF2E251EFF2B231CFF2920
        1AFF271E18FF251B16FF211914FF1F1712FF1D1410FF1A120EFF17100DFF140E
        0BFF120C09FF110A08FF0D0907FF0C0705FF090604FF060503FF050302FF0302
        01FF020101FF010101BD00000028000000050000000000000000000000000000
        000000000015151311A4473E39FF49423EFF39312CFF342B26FF332924FF2F27
        23FF2D2521FF2C221FFF28211CFF171514FF2D2521FF0F0F0FFF0F0F0FFF3128
        24FF111111FF111110FF161411FF1B1612FF1D1612FF1B1511FF1B1411FF1B14
        11FF1A1410FF0C0908FF010101A6000000160000000000000000000000000000
        000000000026302825F07E7671FF6C615BFF544942FF4D413AFF4B3F37FF473B
        34FF453931FF423630FF2A2421FF3D3430FF453932FF19181BFF19181BFF463A
        33FF433932FF171717FF1B1917FF231D1AFF271F1AFF281F19FF271E19FF261E
        18FF1F1814FF191311FF020101F1000000280000000000000000000000000000
        0000000000252B2622E579726CFF746964FF5C5048FF51453EFF4D4139FF4B3F
        38FF473C34FF362E29FF302C2AFF51423BFF342E2CFF0D0D3FFF0D0D3CFF4139
        33FF463A32FF3A332FFF171616FF1C1918FF241E19FF271E19FF271E19FF271D
        19FF241C17FF181311FF020101E8000000280000000000000000000000000000
        00000000001D221E1CCB706761FF7F7570FF61564FFF554943FF52443FFF4D41
        3AFF433832FF262523FF5A4B46FF54473FFF1C1B1BFF010167FF010163FF1F1D
        1CFF483D35FF483B34FF2B2725FF171716FF1D1A18FF241D1AFF271E19FF271E
        19FF231B17FF15120FFF010101CF0000001F0000000000000000000000000000
        000000000011141212985D534EFF88807BFF695D57FF5A4F46FF554943FF4F42
        3DFF242120FF5D524CFF62544BFF463F39FF1C192CFF000071FF00006DFF1917
        27FF4C403AFF4A3F38FF4A3E37FF1D1B1BFF191817FF201B18FF271F18FF271E
        19FF221B17FF0F0D0CFF0101019F000000130000000000000000000000000000
        00000000000706060653483D37FF918985FF736963FF60554EFF594D47FF2F2A
        27FF574F4AFF6B5F57FF685951FF262423FF313182FF000079FF000074FF2222
        72FF312C29FF4E423BFF4C4039FF4B3F38FF181717FF221C19FF271F1AFF281E
        19FF231B18FF0A0807FF0000005B000000080000000000000000000000000000
        00000000000100000026302825E6847C76FF827975FF685E57FF5D514BFF3832
        2FFF4F4946FF71655DFF5B534CFF2A2725FF7F7FC0FF00007FFF00007CFF6E6E
        B3FF242221FF534841FF51453DFF4B413AFF1A1817FF231D19FF261F1BFF271F
        1AFF1E1816FF050403EB0000002D000000010000000000000000000000000000
        00000000000000000013181615A0655B56FF918884FF746A63FF635951FF5E52
        4BFF38322EFF4F4946FF393533FF848382FFC3C3E2FF000082FF000081FFBEBE
        DEFF838181FF463E3AFF514740FF161616FF191817FF1A1818FF1D1A18FF2621
        1CFF181311FF030202AB00000017000000000000000000000000000000000000
        000000000000000000050303033B3F342FF6928B86FF857C76FF242424FF1818
        18FF524D4BFF716661FF201F1EFFFCFCFCFFCECEE7FF000069FF00005DFFCECE
        E0FFFCFCFCFF1E1C1AFF5A4E47FF544743FF161616FF161616FF1D1B1AFF2822
        1EFF0D0907F90000004600000007000000000000000000000000000000000000
        00000000000000000001000000131A1716A1695F59FF968F8AFF3E3E3EFF897F
        7BFF857A74FF524E4BFF4A4543FFFFFFFFFF4242A2FF000082FF000075FF3F3F
        8EFFFFFFFFFF423F3DFF594E48FF5E524BFF5E524CFF1F1F1FFF2B2A28FF201B
        19FF050403B00000001900000001000000000000000000000000000000000000
        0000000000000000000000000003000000222B2621D57B726CFF5D5D5DFF9F97
        91FF948C87FF424040FFD7D6D6FFFFFFFFFF5151A9FF14148CFF14148CFF5151
        A9FFFFFFFFFFD8D8D7FF3D3B39FF736761FF756B65FF404040FF322F2DFF0A07
        06DF0000002F0000000500000000000000000000000000000000000000000000
        0000000000000000000000000000000000070202022E25201EC4463C37FF746B
        66FF7B7470FF6B6764FFD6DEE7FF8EB3D1FF73A3CBFF679FCBFF588EBDFF4F7D
        AAFF6786AAFFD2D7E0FF5E5A58FF726A65FF58504CFF241F1CFF0B0808D00000
        003D0000000A0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000005000000190B0B0A631C19
        17AF27221FD94C3F35EF416084FF89BEE2FF76ACD3FF5F92BEFF4A7AA8FF3D6C
        9BFF346091FF2E3F62FF392E25F3130F0DE10C0A09BC04040473000000230000
        0008000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000080000
        00110000001A00000040355E8DFF5A86AEFF2C4F7DFF133160FF0F2C5CFF1738
        68FF204575FF223B68FF0000005000000022000000180000000C000000030000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000401020436264978FF425D84FF5B7FA5FF5B8EB8FF4D83B3FF3464
        94FF1C3F6FFF142D5DFF00010344000000060000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0002000000120D1C319C576F92FF8FB2CFFF85BBE2FF72B1DCFF63A2D1FF5593
        C5FF3F78AAFF214576FF041126AB000000190000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0008070E1966384F71ECA0B8D0FF9DCCECFF85BFE6FF7CB9E3FF75B4E1FF68A9
        D9FF5596C6FF3C71A3FF16325DF1030812610000000A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0013081A31E2687B97FFC1E0F4FF99CBECFF8AC3E8FF84BEE5FF7CB9E3FF74B4
        E1FF67A7D6FF528FC0FF2D5786FF08162CA70000001300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000060107
        0F62051A34FFA3B3C7FFBADDF2FF9BCDEDFF91C7EAFF8AC2E8FF83BEE5FF7CB9
        E3FF75B4E0FF5E9DCCFF4070A0FF0E2345D40000002500000004000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000103170518
        31E7061935FFC7D3DFFFB8DDF3FF9FD0EEFF97CBECFF91C8EAFF8BC3E8FF83BE
        E5FF7CB9E3FF6BA9D5FF4F85B3FF152F57F2010813A100000011000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000003020C1A7E1C32
        4CFF0A1E3AFFB4C0CBFFBCDFF4FFA3D2F0FF9CCFEEFF98CBEDFF91C7EAFF8BC3
        E8FF84BEE6FF78B5DFFF5C95C1FF17325AFE020F22E70000001A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000403152DC42B43
        5FFF102643FF47586EFFC7E4F6FFA7D4F0FFA0D1EFFF9CCEEEFF98CBEDFF91C7
        EAFF8BC3E8FF83BDE5FF6293BBFF0B203EFA031329F90000001C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000003031A36E5334D
        6FFF132B4AFF031A37FF394F67FF52708AFF6186A3FF86B2CFFF9CCEEEFF97CB
        ECFF91C8EAFF88BEE4FF315071FF010F25FF02152DFB00000019000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002041D3DF63959
        7FFF1A395EFF051D3CFF021935FF041832FF041630FF031630FF3F5D79FF97C7
        E7FF98CBECFF4A6D8DFF01142DFF000B1FFF03142BEB00000014000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001031A36D33556
        7EFF264972FF0B2B51FF031D40FF021838FF01142EFF001129FF01132BFF2C46
        5FFF7CA5C3FF021C3AFF00132AFF011129FF021123B80000000B000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000020F1E762240
        66FF35587FFF173964FF06254CFF031E42FF021A3BFF011530FF001127FF0212
        2AFF1D3550FF031F3FFF011933FF031936FF0108115B00000005000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000306150A25
        47F43E6088FF2C4E76FF15365EFF0B284EFF082044FF041B3AFF031632FF0617
        2CFF0D1D34FF051F41FB031B38D4010C18690000000600000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000020A
        154E18375BFD406087FF345379FF274467FF1F3859FF19304EFF182C48FF1E2E
        47FF12243BFF0109136900000004000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000020E1C690D294CFF203E60FF2A4567FF304867FF2E4460FF253953FF1125
        40FF020D1E940000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000001040921020E1E72031329A5031831CC031630CC0211249F0107
        0E42000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
    object MenuBtn_Tester: TdxBarLargeButton
      Tag = 1
      Caption = 'Tester'
      Category = 0
      Hint = 'Tester'
      Visible = ivAlways
      OnClick = MenuBtn_Click
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000004000000050000000600000007000000070000
        0006000000050000000400000002000000010000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0003000000060000000B0000001000000015000000180000001A0000001A0000
        001800000016000000110000000C000000070000000400000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000003000000070000
        000E0000001707140E4D133324951D4E38D11D513BD9246448FF246448FF1E51
        3BD91C4E38D11233249607140F4F000000190000001000000008000000040000
        0001000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000100000001000000040000000B000000150C21
        176B1F563FE1257151FF278963FF299D72FF2AA176FF2BB07FFF2BAF80FF2AA2
        76FF2A9E72FF278964FF267151FF20573FE20C21186D000000180000000D0000
        0005000000010000000100000000000000000000000000000000000000000000
        0000000000000000000100000001000000050000000D040C09361C503ACF2678
        56FF2AA074FF2CB180FF2BB180FF2CB081FF2CB081FF2CB180FF2CB181FF2CB1
        80FF2CB080FF2CB081FF2CB180FF2AA074FF277957FF1D5039D1040C093A0000
        0010000000060000000100000001000000000000000000000000000000000000
        00000000000000000001000000050000000E09191255236248F029946BFF2CB1
        81FF2CB181FF2CB181FF2CB282FF2CB282FF2CB282FF2CB282FF2DB282FF2DB2
        82FF2CB182FF2CB281FF2CB181FF2CB181FF2CB181FF29956CFF246248F10919
        135A000000120000000600000001000000000000000000000000000000000000
        000000000000000000040000000C09191253256C4EFA2A9F74FF2CB181FF2DB1
        82FF2CB283FF2DB283FF2DB283FF2EB283FF2EB284FF2EB384FF2EB383FF2EB3
        84FF2EB384FF2EB283FF2EB383FF2EB383FF2DB282FF2DB182FF2A9F74FF256D
        4FFA091A12590000001000000005000000010000000000000000000000000000
        00000000000200000009050F0B38246549EE2EA47AFF2EB383FF2DB283FF2EB3
        83FF2EB384FF2EB385FF2EB484FF51C7A2FF60CFAEFF37B98DFF2EB485FF2FB5
        85FF2FB485FF2EB485FF2EB485FF2EB384FF2EB383FF2EB384FF2FB384FF2FA5
        7AFF23644AEF050F0B3E0000000C000000030000000100000000000000000000
        000100000005000000101D513BCB2E9770FF30B385FF2EB384FF2EB484FF2EB4
        85FF2FB586FF2FB586FF50C6A1FF32916EFF1E7652FF4AB995FF30B587FF31B6
        87FF30B686FF30B587FF30B587FF2FB586FF2EB486FF2EB485FF2EB485FF30B4
        86FF2E9871FF1D533CD000000016000000070000000100000000000000000000
        00020000000A0C231A652D7D5CFF34B689FF2EB384FF2EB485FF2FB586FF30B5
        86FF31B688FF4EC59FFF389774FF7CAE9AFFA2C4B6FF2F8C6AFF41BF95FF32B7
        89FF32B789FF31B688FF31B689FF31B688FF30B588FF30B686FF2FB486FF2EB4
        85FF34B68AFF2D7E5EFF0D241A6B0000000E0000000300000001000000010000
        00040000000F205B43DD32A67DFF30B587FF2FB586FF30B587FF31B688FF31B7
        88FF4BC49DFF3E9F7CFF6BA28BFFF9F5F1FFF5EFEAFF45896CFF4CB491FF35BB
        8DFF34B98BFF34B98AFF33B98AFF32B989FF32B789FF32B688FF31B688FF30B5
        87FF31B688FF33A77DFF215E44DF000000160000000700000001000000020000
        0007091B144E308061FF37B98BFF30B587FF30B688FF31B688FF33B78AFF48C4
        9BFF46A786FF5A967DFFF6F4F0FFF3E8DFFFF3E8DFFFC8D9D0FF247A58FF4FC5
        9EFF35BB8DFF35BB8DFF34BA8CFF34BA8BFF34BA8BFF33B98AFF32B989FF31B7
        88FF31B688FF37B98CFF308162FF0A1D15570000000B00000002000000020000
        0009153B2B923A9B78FF35B98BFF32B788FF32B989FF33B98BFF46C39AFF4CAF
        8EFF4A8A6FFFF4F4F1FFF4EAE2FFF4E9E0FFF3E8E0FFF7EDE7FF699D87FF409D
        7CFF3FC094FF37BC8FFF37BC8EFF36BB8EFF36BB8DFF35BA8DFF34BA8BFF34B9
        8BFF32B78AFF36BA8CFF3B9C79FF153C2C980000000E00000003000000020000
        000B1E553FC63DAC86FF35B88CFF33B78AFF33B98BFF45C398FF54B797FF4084
        67FFEAEFEAFFF5EBE3FFF2E6DEFFEDDFD6FFF4E9E1FFF4E9E0FFE3E8E1FF2570
        50FF56C19EFF39BE91FF39BE90FF38BD90FF37BC8FFF37BC8EFF35BB8DFF35BB
        8CFF33B98BFF35B98DFF3EAD87FF1E5640CA0000001100000004000000030000
        000C256A4EEC3EB88EFF34BA8CFF35B98CFF3FBF94FF57BD9DFF347B5CFFE5EC
        E8FFF6EDE6FFF1E6DDFFCAC3B6FF9DAA97FFEFE3DCFFF4EAE2FFF6EBE5FF9DBD
        AFFF318464FF4FC8A2FF3ABF94FF3ABF92FF39BE91FF38BD90FF37BD8FFF36BB
        8EFF35BB8CFF35BB8CFF3FB98FFF256D50ED0000001300000005000000030000
        000C287455FA43C096FF35BA8BFF36BB8DFF37B488FF1F704EFFC9D0C8FFF7ED
        E7FFF1E5DEFFBEBCB0FF2E7354FF246F4EFFB5B7A8FFF1E6DFFFF4EAE3FFF6F1
        ECFF548B72FF4EAD8DFF42C49AFF3CC195FF3BC094FF3BBF92FF39BE90FF39BD
        90FF37BC8EFF35BB8DFF44C197FF287657FA0000001300000005000000030000
        000B287656FA4CC49BFF35BC8DFF37BC8EFF37BC8EFF24805CFF608A72FFE4D5
        CCFFB2B5A7FF2C7757FF3CBD96FF3BBB93FF2B7151FFC8C3B6FFF4E9E2FFF5EB
        E4FFE1E8E2FF2D7355FF5FCAABFF40C59AFF3EC197FF3CC195FF3BC094FF3ABF
        92FF38BD90FF38BC8EFF4EC59DFF297859FA0000001200000005000000020000
        000A267052EC55C39FFF39BD91FF38BE90FF3ABE92FF3CC096FF257E5BFF4A7C
        61FF2B7F5EFF41CBA3FF45D3ACFF46D3ADFF39B28DFF3C7457FFDACFC5FFF5EB
        E4FFF7EDE8FFADC7BAFF2E8061FF5ED8B7FF43CDA4FF40C99FFF3DC399FF3CBF
        94FF3ABF92FF3BBF92FF56C5A0FF277256ED0000001100000004000000020000
        0008205D46C559BD9DFF3DC094FF3CC296FF43CDA6FF45D2ACFF44CEA8FF319D
        7AFF46D2ACFF48D5B0FF49D5B0FF49D5B0FF49D5B1FF34A481FF4C7B60FFE0D2
        CAFFF5ECE5FFF9F3EFFF699882FF459D7FFF57D6B3FF44CFA6FF43CDA4FF41C8
        A0FF3DC196FF3FC196FF5BBF9FFF205F47C80000000E00000003000000010000
        00061643328F58B194FF49CDA6FF47D2ACFF48D3AEFF49D5AFFF49D5B0FF4AD7
        B2FF4BD7B2FF4CD8B4FF4DD7B4FF4DD8B4FF4CD8B4FF4DD7B4FF329B78FF4B7B
        61FFDFD2C9FFF6EBE5FFEFF0ECFF468066FF58B699FF55D6B1FF45CFA7FF45CE
        A5FF43CAA3FF48C9A2FF58B295FF174433940000000B00000003000000010000
        00040B201848409E80FF63DEC0FF4BD4B1FF4CD7B2FF4DD7B3FF4ED7B4FF4FD8
        B4FF4FD9B7FF50DAB7FF50DAB7FF51DAB8FF51DAB7FF50DAB7FF51D9B7FF38A6
        84FF47795EFFDDD0C7FFF6ECE7FFF0F2EFFF478368FF61C1A5FF56D5B3FF47CF
        A8FF46CDA6FF62D8B8FF409C7DFF0B20184E0000000700000002000000000000
        0002000000072D7D62DA6CD4BBFF55D9B7FF51D8B5FF51D9B6FF53DAB8FF53DB
        BAFF54DCB9FF55DBBAFF55DCBBFF56DCBBFF55DCBAFF56DDBBFF56DDBAFF55DC
        BAFF40B090FF487A60FFD9CCC4FFF3E9E3FFEDF1EDFF4B876DFF67C7ACFF57D6
        B3FF4ED2ADFF6ECFB6FF29785DDC0000000E0000000400000001000000000000
        0001000000041231275B48A98CFF72E5CAFF56DBB9FF56DBBAFF58DCBCFF58DC
        BCFF59DDBDFF59DEBDFF5ADFBEFF5ADFBFFF5BDFBFFF5ADFBEFF5ADFBEFF59DE
        BDFF59DDBCFF47BB9AFF367559FFBAB9ADFFECDFD8FFDDDFDAFF237150FF45BA
        96FF70DFC3FF46A487FF10302561000000080000000200000000000000000000
        000000000002000000062B765EC66CCEB6FF6AE3C6FF5CDDBDFF5DDEBFFF5EDE
        C0FF5EDFC0FF5FE1C2FF60E1C2FF5FE1C2FF60E1C2FF5FE0C2FF5EE1C1FF5EE0
        C1FF5DDFBFFF5CDFBEFF55CFAFFF2E8464FF72937DFF8FA392FF2D8463FF63D8
        B9FF6DCBB1FF287259C80000000C000000040000000100000000000000000000
        00000000000100000003081410283B9679EC7EDFCBFF6FE4C9FF63E0C3FF63E0
        C3FF64E1C4FF65E2C4FF64E3C5FF64E3C5FF64E3C5FF65E3C5FF64E2C5FF63E2
        C4FF63E2C3FF61E0C1FF5FDFBFFF5EDEBDFF48B797FF2A8362FF61D2B5FF80DB
        C6FF379274ED07140F2D00000006000000020000000000000000000000000000
        00000000000000000001000000041028204644A689F982DFCBFF7EEAD3FF69E2
        C6FF69E3C7FF6AE4C7FF6AE4C8FF6AE5C9FF6AE4C8FF6AE4C8FF6AE4C8FF69E4
        C7FF68E3C6FF66E2C4FF64E0C2FF62DFC1FF61DDBEFF7AE5CDFF82DCC7FF40A2
        83FA0E271F4A0000000700000002000000000000000000000000000000000000
        000000000000000000000000000100000004102921453F9E81EE77D5BEFF93F1
        DFFF7BE9D1FF6FE5CAFF6FE6CBFF70E6CBFF70E6CBFF6FE7CCFF6EE6CBFF6DE6
        CAFF6CE4C8FF6BE3C6FF69E2C5FF75E5CBFF92EEDAFF75D2BAFF3B9B7CEE0F28
        204A000000070000000200000001000000000000000000000000000000000000
        000000000000000000000000000000000001000000030814102335856DC85ABF
        A3FF8BE4D2FF9DF4E5FF8DEFDCFF82EBD5FF7EEBD4FF75E8CFFF74E8CEFF7DEA
        D2FF7FEAD3FF8CEDDAFF9DF2E2FF8BE4D0FF58BEA1FF318469CA071410280000
        0006000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000051738
        2E563D987CDA54BD9EFF75D4BCFF8EE6D3FF94EAD9FFA7F5E8FFA7F5E8FF95EA
        D9FF8DE6D3FF73D3BAFF52BB9CFF399679DA16392E5B00000007000000040000
        0002000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0003000000040D201A32255A4A82388D73C53B957ACE49B896FC49BA98FC3A95
        7ACF378D74C6235A4A840C201A34000000060000000400000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000003000000040000000500000005000000050000
        0005000000040000000400000003000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000001000000010000
        0001000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
    object MenuBtn_Solve: TdxBarLargeButton
      Caption = 'Solve'
      Category = 0
      Hint = 'Solve'
      Visible = ivAlways
      OnClick = MenuBtn_SolveClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000001000000010000
        0001000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000001000000010000
        0001000000010000000000000000000000000000000000000000000000000000
        0000000000000000000100000002000000040000000600000007000000070000
        0006000000040000000200000001000000000000000000000000000000000000
        0000000000000000000100000002000000040000000600000008000000080000
        0007000000040000000200000001000000000000000000000000000000000000
        000000000001000000040000000900000011000000170000001B0000001C0000
        0018000000130000000B00000005000000020000000100000000000000000000
        000100000002000000050000000A000000130000001A0000001F000000200000
        001B000000140000000B00000005000000020000000100000000000000000000
        0001000000060000000E05040326392A2495584138D46F5246FF6F5145FF573F
        36D5372822970504032A00000011000000070000000200000001000000000000
        000200000007000000110504032A34262198513A32D664473DFF62463BFF4C36
        2ED630221D9A0403032D00000013000000080000000200000001000000010000
        0006000000111F17145D6B5147E5A1897EFFB9A498FFCCB8ACFFCBB7ABFFB7A2
        95FF9E8579FF664B42E71F171465000000150000000700000002000000020000
        0007000000131F171463654B42E79C8277FFB59E91FFC9B2A5FFC8B1A4FFB29B
        8DFF967C70FF594137E719120F65000000170000000800000002000000040000
        000D281E1A6991776BFFC5B1A4FFC8AE99FFBB966FFFB68B5DFFB68B5DFFBD97
        71FFC7AD97FFC0AB9FFF8A7065FF251B186F0000001200000005000000050000
        0010271E196C8F7568FFC1AB9EFFBFA590FFA88761FF9E794DFF9F7B4EFFAA8A
        63FFBEA58EFFBCA498FF7D6358FF1F1613720000001300000006000000070A08
        072A80655AF6CFBCB2FFC2A086FFB58457FFD9B789FFE9CFA3FFEAD1A5FFDBBC
        8EFFBC8E5FFFC4A387FFC9B6A9FF775C50F7080605310000000C0000000B0A08
        062E7E6458F6CCB7ACFFB4957BFF9E7647FFCEB079FFE4CC94FFE4CE96FFD1B5
        7EFFA57E4FFFB5987BFFC5B0A2FF674D42F7070504330000000B0000000B4234
        2C93AF998DFFCCB2A0FFB58157FFE3B987FFE8BF8DFFEAC292FFEAC99AFFEDCF
        A5FFE9C89EFFBF8F63FFCAB19DFFA68E82FF3C2D279800000014000000124234
        2D96AD9689FFC3AA96FFA07548FFDBB573FFE2BD7AFFE4C17FFFE5C788FFE8CE
        94FFE3C58DFFAA8253FFC1A994FF9B8377FF33241F9A000000120000000E6D58
        4CD6CAB8AFFFB28363FFCF9868FFE3B07DFFE4B585FFE7B989FFE8BA8BFFE7B9
        8CFFEBC39AFFD8AD84FFBF9071FFC2AEA3FF634C42DA00000019000000176C57
        4CD9C8B4A9FFA07858FFC39055FFDBAC68FFDEB270FFE0B774FFE2B876FFE1B7
        77FFE5C188FFCDA772FFAA8462FFBCA69AFF533D36D9000000170000000F856B
        5FF2D7C9C0FFA66A4BFFDCA06FFFE7B894FFF1D3C2FFEECAB1FFE7B38BFFE4AD
        81FFE5B287FFE6B891FFB8805FFFD3C1B6FF7B6153F90000001C00000019886E
        62F9D8C7BDFF91603FFFD29A59FFE0B582FFEDD1B7FFE9C8A3FFE1B177FFDDAA
        6BFFDFAE70FFE0B47CFF9F734DFFCCB8ACFF674D43F30000001A0000000F9177
        69FFE1D3CAFFA26448FFDA9767FFF7E4E0FFF6E1DBFFF2D4C7FFEDC3ACFFE2A4
        79FFE1A377FFE6B18BFFB87E60FFD9C9C0FF83675AFF0000001C000000198F75
        67FFDFCEC4FF8E5C3BFFD09052FFF5E3DBFFF4DFD5FFEED2BDFFE8C09DFFDA9F
        62FFD99E5FFFDEAD77FF9F704FFFD6C3B9FF73584CFF0000001A0000000E9078
        68FBE8DED7FFAC765FFFC67E56FFF9ECEEFFF9EBEDFFF5DFD9FFEFCBBBFFE19B
        70FFE09A6FFFD59977FFBF8A74FFE2D8D1FF816659FF0000001B000000188C73
        64FFE8DCD5FF9D6F55FFBA7843FFF8EBEBFFF8EAEAFFF3DDD3FFECC9B0FFD995
        58FFD89458FFC89163FFAB7F65FFDED1C9FF755A4FFB000000170000000B8069
        5CE0DFD5D0FFD4B9ADFFA25C40FFDEA384FFF6DFDBFFF3D8D0FFE3A583FFDF93
        67FFDC956CFFBA785DFFD5BBAEFFE4DCD8FF755C4DFF442F27C6564237C5866C
        5DFFE0D7D1FFCDB5A7FF915635FFD79D74FFF4DED6FFF1D6C9FFDC9F70FFD68C
        51FFD38E57FFA56C4CFFCDB4A5FFD1C4BDFF654E43E300000013000000074739
        3186A79387FFECE4DEFFC39B8CFF9F553CFFC57752FFD5865CFFD7875EFFCB7F
        5AFFB46C55FFCCA496FFE7DDD6FFA2938DFF63493BFFA18D82FFBBADA6FF7D62
        53FFAFA19BFFEBE2DBFFB99786FF8D4F32FFB96F40FFCB7D47FFCC7E49FFBD75
        47FF9C6145FFBF9C8BFFE5DAD2FF958178FF3327218D0000000E00000004110E
        0C2A957B6BFFEAE6E3FFEFE7E1FFD7BDB2FFB47F6EFFA86752FFAC6B57FFBC88
        76FFD8BFB4FFEBE1DBFFE5E0DEFF5C4239FF53382CFF7D6054FF967F71FF775B
        4BFF7D6559FFEFEBE8FFEFE5DFFFD2BAAEFFA67865FF945E47FF98614AFFAB7F
        6BFFD1B9ACFFEADFD7FFE8E3E0FF80685AFF0B08073300000008000000020000
        0008725D4ECA8E796DFFEBE8E5FFF7F4F1FFF1EAE5FFEBE3DCFFEBE3DBFFEFE8
        E2FFF6F2EEFFE5E1DEFF745D54FF61463DFF563B2EFF69483CFF846656FF785D
        4EFF8A7367FFB1A29BFFF7F5F4FFF8F3F0FFF1EAE4FFEBE2DBFFEBE2DAFFEFE7
        E1FFF5F1ECFFEAE5E3FF846D62FF554036CD0000000F00000004000000010000
        0004110E0C28947968FE917D70FFD1C8C3FFEFECEBFFFEFEFEFFFDFDFCFFE3DD
        DAFFAFA19BFF765F53FF796055FF6D5348FF5A4032FF6A493DFF856758FF7A5F
        4FFF998376FFC5B8B1FFD8D3D1FFDFDBD8FFE8E3E1FFFCFBFBFFFBFBFAFFDED8
        D5FFC0B2ABFF977F70FF876E5EFE0C0907300000000800000002000000000000
        000200000007675547B19B8577FFB9A79DFFC5B8B2FFD5CFCCFFBCADA7FFA289
        7EFF877066FF7E685FFF927C6FFF7A6157FF614537FF6A493DFF866858FF7C61
        51FFA18C81FFD4C9C3FFFDFDFCFFDED8D4FFAB968BFF897167FF6C564DFF9278
        6EFFA28A7DFF977D6EFF624F43B50000000D0000000400000001000000000000
        0001000000042C24204DA58C7CFFC1AEA3FFE0D5D0FFF8F6F5FFEAE3DFFFC5B1
        A6FFA18980FF877267FFAD988BFF897267FF674B3CFF604238FF7B5D50FF7E63
        52FFAA968AFFDBD1CBFFFFFFFFFFF0EBE8FFC0AA9EFF947C71FF7A6459FFBBA7
        99FFB59F91FF866D5DFF28211C53000000070000000200000000000000000000
        0000000000020202020A9A8475E6B5A69BFFDDD3CCFFF2EEEBFFF2EEECFFD1C2
        B8FFB29D96FF907B71FFBEADA0FFA9958BFF6B5141FF17100D4A1D1713477F64
        54FFB7A599FFE2D9D4FFFFFFFFFFEFE9E6FFBEA79CFF8F786FFF8B746BFFC6B6
        ACFFB7A293FF7C6452E702020110000000040000000100000000000000000000
        0000000000010000000463564D8FBCAB9FFFD8CBC2FFEEE9E6FFF7F5F4FFDCCF
        C8FFC0ABA2FF99877DFFBEABA1FFD1BFB6FF7D6252F80000000D0000000AA28B
        7CF8C9B7ACFFE6DFDAFFFFFFFFFFEDE6E3FFBBA59CFF8C776FFFA79488FFCCBC
        B0FFA48E7EFF4E3F359200000008000000020000000000000000000000000000
        00000000000000000002221E1B33C2AFA2FDD5C8BFFFEBE3DFFFFBF9F8FFE6DD
        D7FFCAB7B0FFA59288FFBCA8A1FFD7C8BFFF8B7161F20000000A00000007AC96
        87F1D0C3B8FFEBE3DFFFFFFFFFFFEBE3DFFFBAA59DFF8C7970FFC6B6A9FFD5C7
        BDFF977D6FFD1B16133700000004000000010000000000000000000000000000
        00000000000000000001000000049A8A81C5D1C6BEFFE9E1DCFFFAF8F6FFEBE4
        E1FFD9C9C1FFB19F95FFB8A69EFFD6C8BDFF756051C400000008000000068E7D
        71C2D9CBC3FFECE5E1FFFFFFFFFFE8DFDAFFB5A097FF947F75FFD5C7BDFFD8C9
        C0FF7A6558C70000000700000002000000000000000000000000000000000000
        0000000000000000000000000002332F2C43D2C3BAFDEDE5DFFFF8F5F4FFF3EE
        EBFFE2D8D0FFC5B4ADFFC8BBB5FFBDA79BFD261F1A4400000004000000032D28
        2540C8B6AAFDF3EFEDFFFFFFFFFFE7DDD8FFAD9B92FFB4A39AFFE6DDD6FFBEAA
        9DFD29231F470000000400000001000000000000000000000000000000000000
        000000000000000000000000000100000002645C587BD9CCC2FFECE6E1FFF5F1
        EFFFEEE6E2FFD7C9C2FFBFAA9EFF5548427D0000000500000002000000010000
        00025C524B7BCFBEB3FFECE5E1FFEBE1DDFFC8BAB3FFD4C6BEFFC6B2A5FF574B
        437D000000050000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000235312E4291857DB3B6A5
        9AE5B19F93E585766CB32E282544000000040000000200000000000000000000
        000100000002302B284287786FB3AC988BE5AA9589E5837268B32E2825440000
        0004000000020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000020000
        0003000000030000000300000002000000010000000000000000000000000000
        0000000000010000000100000002000000020000000300000003000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
    object MenuBtn_Load: TdxBarLargeButton
      Caption = 'Load'
      Category = 0
      Hint = 'Load'
      Visible = ivAlways
      OnClick = MenuBtn_LoadClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000000000000000000000000000000000000000000020000
        0004000000060000000600000006000000060000000600000006000000060000
        0006000000060000000600000006000000070000000700000007000000070000
        0007000000070000000700000007000000070000000700000007000000070000
        0006000000040000000200000001000000000000000000000000000000060000
        000E010101150101011701010118010101180101011801010118010101190101
        011901010119010101190101011901010119010101190101011A0101011A0101
        011A0101011A0101011A0101011A0101011A0101011B0101011B0101011A0101
        0117000000100000000700000002000000000000000000000000000000101C40
        7DCD2B5CA6FF2E5EA7FF2D5DA8FF2D5CA7FF2B5DA7FF2C5BA6FF2C5BA6FF2A5B
        A6FF2A5AA6FF2A5AA6FF2959A5FF2958A5FF2857A5FF2858A5FF2756A4FF2756
        A4FF2656A4FF2655A3FF2554A3FF2554A2FF2553A2FF2452A2FF2352A1FF2250
        9FFF1D448DEE050B163D0000000B000000020000000000000000010101152355
        A2FF2B5EA7FF5498D0FF68BDEDFF4CA9E8FF4BA6E7FF49A6E7FF47A5E6FF45A5
        E5FF44A4E5FF43A1E4FF41A1E4FF40A0E3FF3F9FE2FF3D9EE2FF3D9CE2FF3B9D
        E2FF3B9AE1FF3A9AE1FF399ADFFF3898E1FF3797DFFF3698DFFF3698DFFF3493
        DBFF2F81CBFF16366DBF00000011000000040000000000000000010101162759
        A6FF376AAFFF417FBEFF82CBF2FF54AFEAFF50ABE9FF4EACE9FF4CA9E7FF4AA8
        E7FF48A6E6FF48A6E5FF45A5E6FF45A3E5FF44A2E5FF42A2E4FF409FE4FF3FA0
        E3FF3E9FE3FF3C9EE2FF3C9DE3FF3B9CE2FF399BE2FF389AE0FF3799E0FF3699
        E0FF3898DFFF204F9BF80203061D000000050000000100000000010101142A60
        ABFF497EBCFF2E66AEFF8FD2F2FF68BEEEFF57B2ECFF56B1EBFF55B0EAFF52AF
        E9FF51ACE8FF4FAAE8FF4DAAE8FF4CA9E7FF4AA7E7FF48A6E7FF47A5E6FF46A4
        E5FF44A4E5FF42A2E5FF41A2E4FF40A1E4FF3FA0E3FF3E9FE2FF3C9DE2FF3C9B
        E1FF3D9EE2FF2967B3FF0A18305D000000080000000100000000010101132C65
        B1FF598DC6FF2E6AB0FF80BBE2FF85D0F3FF5EB7EDFF5CB7EDFF5CB5EDFF59B5
        EDFF58B3EBFF56B1EBFF56B0E9FF54AFE9FF52ADE9FF53AEE9FF51ACE9FF50AB
        E8FF4CA7E6FF49A7E7FF48A6E6FF46A6E6FF45A5E5FF44A4E4FF43A1E3FF41A2
        E3FF42A2E4FF357DC6FF122D58970000000A000000020000000000000012306B
        B3FF689ECFFF3876BAFF65A0D0FFA2DFF8FF63BCF0FF62BCEFFF62BBEEFF61BC
        EDFF66BDEEFF6CC0EFFF6EC0EFFF70C2EEFF6DBEEDFF6ABDEDFF67BBEDFF64BB
        EDFF62B8EDFF60B6ECFF5BB3EAFF56AEEAFF51ABE9FF4CA7E7FF4AA7E6FF48A6
        E6FF49A6E5FF469ADAFF1B4788D80000000D0000000300000001000000113370
        B7FF78ACD8FF478AC8FF4586C2FFB7E9FBFF75C8F3FF73C6F2FF7ACAF3FF7ECB
        F4FF7ECBF2FF7CCAF3FF7BC9F2FF77C8F1FF76C6F1FF74C4F0FF71C2EFFF6EC0
        EEFF6CBFEEFF69BCEEFF66BBEDFF63B9ECFF61B8ECFF5FB5EBFF59B2EAFF53AE
        E8FF4EABE7FF55AFE9FF2862ACFF040B142C0000000400000001000000103675
        B9FF87BBE0FF589CD4FF3F82C0FFAFDDF1FFA7E2F9FF89D2F6FF88D1F6FF86CF
        F6FF85CEF5FF83CEF3FF81CCF3FF80CCF3FF7ECBF2FF7DCAF2FF7AC8F1FF77C8
        F2FF74C6F0FF71C4F0FF70C3EFFF6CBFEEFF6ABEEDFF67BBEDFF64BAEDFF62B8
        ECFF5EB6EBFF5FB5EBFF3B80C3FF0F2645740000000700000002000000103779
        BCFF96C8E8FF65ADDEFF4A93CCFF90C2E1FFC4EDFCFF8ED6F7FF8DD6F7FF8CD4
        F6FF8AD3F6FF89D2F6FF88D2F5FF86D1F5FF84D0F4FF83CEF4FF82CEF3FF81CC
        F3FF7ECAF2FF7BCAF2FF78C8F0FF76C7F0FF74C5F0FF70C2F0FF6EC0EEFF6ABF
        EEFF68BDEDFF6ABEEDFF58A3D9FF1A4278BA00000009000000020000000F3A7F
        BFFFA4D4EEFF74BDE7FF5FAADCFF6AA7D3FFD8F6FDFF98DDF9FF93D9F8FF92D9
        F8FF90D8F8FF8FD6F8FF8ED6F7FF8BD4F6FF8BD4F6FF89D2F6FF88D2F4FF85D1
        F4FF84D0F4FF83CFF4FF81CDF4FF7FCCF3FF7CCAF1FF79C9F1FF76C8F1FF74C7
        F1FF71C3EFFF70C3EFFF77C3EDFF2761A6F702040614000000030000000E3B82
        C1FFB0E0F4FF82CBEFFF77C4EDFF519ACEFFCBECF7FFDFF8FEFFDFF8FEFFDEF8
        FEFFDDF8FEFFDDF8FEFFDCF7FEFFDAF6FEFFD8F5FCFFBFEDFBFF92D8F7FF8CD4
        F7FF8AD3F6FF88D4F6FF87D2F5FF85D1F5FF83CFF5FF82CEF4FF80CCF3FF7DCB
        F2FF7ACAF2FF77C8F1FF80CBF1FF3F82C1FF0B1E3355000000050000000D3C85
        C3FFBDE8F8FF90D9F5FF87D3F4FF6EBFE8FF56A4D4FF519CCDFF509BCDFF4E99
        CCFF4E98CBFF4B96CCFF4A94CBFF4993CAFF79B2D9FFD1F0F9FFD1F4FCFF9EDF
        F9FF90D8F8FF8FD7F7FF8DD5F7FF8BD6F7FF8AD4F7FF88D3F5FF86D2F5FF83D0
        F5FF82CEF3FF7FCCF3FF84CFF3FF60A6D6FF173C669D000000060000000C3E88
        C5FFC7F0FCFF9AE4FBFF96E2FAFF90DDFAFF8ADAF9FF86D8F9FF83D6F8FF80D2
        F8FF7DD2F8FF7BCFF6FF77CDF6FF72CAF5FF60B6E8FF5AA0D2FFAED7EDFFE1F9
        FEFFE0F9FEFFDFF9FEFFDFF8FEFFDEF7FEFFDEF7FEFFDCF7FEFFDBF6FEFFDBF6
        FEFFD9F5FDFFD7F5FDFFD6F4FDFFBFE3F2FF225B99E0000000070000000B408C
        C7FFCEF6FFFFA5EDFEFFA2EBFEFF9FE9FEFF9CE8FEFF99E7FDFF96E5FDFF93E2
        FDFF91E0FCFF8FDEFCFF8CDCFCFF87D9FBFF81D6FAFF73CBF5FF57A8DBFF4B96
        CBFF4A95CBFF4995CBFF4793CAFF4692CAFF4490C9FF438DC8FF428CC7FF408B
        C6FF286FB2FF286DB2FF276EB1FF2568A8F418446FA4000000050000000B418F
        C9FFD2F7FFFFA8EFFFFFA6EEFFFFA5EDFFFFA3ECFEFFA1EAFEFF9FE9FEFF9CE8
        FEFF9AE6FDFF98E4FDFF95E2FDFF92E1FCFF8DDEFCFF86DAFBFF81D5FAFF7BD2
        F9FF77D0F9FF74CDF9FF71C9F7FF6EC8F5FF6BC5F4FF66C0F1FF64BEEFFF7DC8
        F0FF4993CCFF0101011D000000110000000A00000007000000030000000A4292
        CAFFD5F9FFFFACF1FFFFAAF0FFFFA8EFFFFFA6EEFFFFA5EDFFFFA3ECFFFFA1EB
        FEFF9FE9FEFF9DE8FEFF9AE6FDFF98E4FDFF95E3FDFF92E0FCFF8FDEFCFF8CDA
        FBFF87D9FBFF83D7FAFF84D4F7FF89D2F4FF90D2EFFF93CEECFF97CDE8FFACD3
        E5FF94B9D4FF0000002600000016000000090000000300000001000000094394
        CCFFD7FAFFFFAFF3FFFFAEF2FFFFACF1FFFFAAF0FFFFA8EFFFFFA6EDFFFFA5ED
        FFFFA3ECFEFFA1EBFEFF9FEAFEFF9DE7FEFF9AE7FEFF98E5FDFF96E3FDFF93E1
        FCFF90DFFBFF8DDBFAFFBFE6F5FFABD3DFFF90B9BFFF709D9DFF5D8D88FF507F
        74FF306555FF215E44F611322495000000100000000400000001000000084597
        CEFFDBFAFFFFB2F5FFFFB1F4FFFFAFF3FFFFAEF2FFFFACF1FFFFAAF0FFFFA8EF
        FFFFA6EEFFFFADEFFEFFC2F6FEFFCFF8FEFFCEF8FEFFCEF8FEFFCEF8FEFFCDF8
        FEFFCCF7FDFFCAF5FBFFDAEFF2FF266C50FF397B63FF46927AFF50A188FF59B0
        96FF63C6ABFF79DAC0FF1F5E44F100000016000000050000000100000008479A
        CFFFDCFBFFFFB5F6FFFFB4F6FFFFB2F5FFFFB1F4FFFFAFF3FFFFAEF2FFFFACF1
        FFFFB0F2FEFF95D3EDFF4496CCFF4495CCFF4495CCFF4494CCFF4494CBFF4494
        CBFF4393CBFF4191C9FF99C0DAFF5B908FFF71B19CFF7DE4CAFF65DABAFF59D5
        B2FF4BD0A8FF77CBB3FF1C513BD200000016000000060000000100000007479C
        D0FFDEFCFFFFB7F7FFFFB6F7FFFFB5F6FFFFB3F6FFFFB2F5FFFFB1F4FFFFB5F4
        FFFF91D3EDFF2D6284A80000000B000000090000000900000009000000090000
        000A0000000B0000000D000000160204032E2A6E54F073CCB4FF5BDAB5FF47D2
        A9FF5AD6B4FF6FBCA6FF184433B2000000130000000500000001000000054290
        BEE8B4E4F3FFD6F9FEFFD5F9FEFFD5F9FEFFD5F9FEFFD4F9FEFFD4F9FEFFC7F0
        FAFF4C95C2EA050B0F1A00000004000000020000000300000004000000050000
        0006000000080000000D0206052421513EBE80C8B4FF84E7D0FF71E3C7FF8AE8
        D1FF78E2C6FF68B19AFF14382B930000000F0000000400000001000000031228
        3445397FA6CB49A0D3FF49A0D3FF49A0D3FF49A0D2FF49A0D2FF499FD2FF499F
        D2FF183445590000000400000001000000000000000200000006000000090000
        000C07140F3A112F24792D6E55EB8CCCBBFF95EEDAFF83EAD3FFA1EEDEFF9FD1
        C3FFB5F3E5FF65A58FFF102A20700000000B0000000300000001000000010000
        0003000000050000000500000005000000050000000500000006000000060000
        000500000003000000010000000000000001000000033D886FEA529F85FF3488
        6AFF438A71FF6BAA96FFB1EADEFFA5F2E3FFADF3E5FFCBF8EFFFA6D7C9FF3D8B
        6EF683BAA9FF54977FFF0A1B154A000000080000000200000000000000000000
        0001000000010000000100000001000000010000000100000001000000010000
        00010000000100000000000000000000000000000002040F0C1A257E60B165CA
        AAFFABE3D4FFCBF1E8FFE1FBF7FFCBF0E6FFAADECFFF66B59CFF23654EB6040C
        09291840318A308062FF0309071E000000040000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000051036
        2A51257C5FB2309B77E036AE86FF2F9472E0257157B3102F24550000000A0000
        0008000000080000000800000005000000020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0002000000040000000500000006000000060000000600000004000000030000
        0002000000020000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000001000000010000000100000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
  end
end
