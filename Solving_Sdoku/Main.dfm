object FormMain: TFormMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Solving Sdoku'
  ClientHeight = 560
  ClientWidth = 797
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
  object ___pnBase: TPanel
    Left = 0
    Top = 124
    Width = 797
    Height = 436
    Align = alClient
    BevelOuter = bvNone
    Color = 2500134
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 104
    ExplicitTop = 192
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
  object MainRibbonMenu: TdxRibbon
    Left = 0
    Top = 0
    Width = 797
    Height = 124
    BarManager = BarMgr
    ColorSchemeName = 'DevExpressDarkStyle'
    Contexts = <>
    TabOrder = 1
    TabStop = False
    ExplicitWidth = 645
    object MainRibbonMenuTab1: TdxRibbonTab
      Active = True
      Caption = 'MainRibbonMenuTab1'
      Groups = <>
      Index = 0
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
  end
end
