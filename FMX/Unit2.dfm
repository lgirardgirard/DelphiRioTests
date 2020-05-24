object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
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
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 50
    Height = 13
    Caption = 'Projet VCL'
  end
  object Button1: TButton
    Left = 88
    Top = 67
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 88
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object ListBox1: TListBox
    Left = 225
    Top = 88
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 2
  end
  object ToggleSwitch1: TToggleSwitch
    Left = 432
    Top = 72
    Width = 103
    Height = 20
    TabOrder = 3
  end
  object ActivityIndicator1: TActivityIndicator
    Left = 296
    Top = 40
  end
  object Calendar1: TCalendar
    Left = 352
    Top = 136
    Width = 320
    Height = 120
    StartOfWeek = 0
    TabOrder = 5
  end
  object MonthCalendar1: TMonthCalendar
    Left = 11
    Top = 128
    Width = 225
    Height = 160
    Date = 43966.000000000000000000
    TabOrder = 6
  end
end
