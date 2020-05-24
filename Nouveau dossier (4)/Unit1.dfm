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
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 635
    Height = 29
    Caption = 'ToolBar1'
    Images = VirtualImageList1
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 0
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 1
    end
    object ToolButton3: TToolButton
      Left = 46
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 2
    end
  end
  object Button1: TButton
    Left = 248
    Top = 200
    Width = 75
    Height = 65
    ImageIndex = 0
    Images = VirtualImageList2
    Style = bsSplitButton
    TabOrder = 1
  end
  object ToolBar2: TToolBar
    Left = 0
    Top = 29
    Width = 635
    Height = 76
    ButtonHeight = 54
    ButtonWidth = 55
    Caption = 'ToolBar2'
    Images = VirtualImageList2
    TabOrder = 2
    object ToolButton4: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton4'
      ImageIndex = 0
    end
  end
  object VirtualImageList1: TVirtualImageList
    DisabledGrayscale = False
    DisabledSuffix = '_Disabled'
    Images = <
      item
        CollectionIndex = 0
        CollectionName = 'application-exit'
        Disabled = False
        Name = 'application-exit'
      end>
    ImageCollection = DataModule2.ImageCollection1
    Left = 184
    Top = 112
  end
  object VirtualImageList2: TVirtualImageList
    AutoFill = True
    DisabledGrayscale = False
    DisabledSuffix = '_Disabled'
    Images = <
      item
        CollectionIndex = 0
        CollectionName = 'application-exit'
        Disabled = False
        Name = 'application-exit'
      end>
    ImageCollection = DataModule2.ImageCollection1
    Width = 48
    Height = 48
    Left = 360
    Top = 104
  end
  object MainMenu1: TMainMenu
    Left = 528
    Top = 216
  end
end
