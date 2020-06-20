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
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Populate'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 62
    Width = 75
    Height = 25
    Caption = 'List'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 120
    Top = 64
    Width = 185
    Height = 193
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Button3: TButton
    Left = 24
    Top = 266
    Width = 75
    Height = 25
    Caption = 'Destroy'
    TabOrder = 3
    OnClick = Button3Click
  end
end
