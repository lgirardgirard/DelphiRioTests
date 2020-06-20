object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  StyleName = 'Luna'
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 32
    Top = 151
    Width = 185
    Height = 41
    Caption = 'Panel1'
    TabOrder = 0
    StyleName = 'Luna'
  end
  object Button1: TButton
    Left = 416
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    StyleName = 'Glow'
  end
  object Button2: TButton
    Left = 272
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 2
    StyleName = 'Carbon'
  end
  object monribbon: TUIRibbon
    Left = 0
    Top = 0
    Width = 635
    Height = 117
    ResourceName = 'APPLICATION'
    RibbonSourceFile = 'Ribbon\monribbon.xml'
    ExplicitLeft = 8
    ExplicitTop = 112
  end
end
