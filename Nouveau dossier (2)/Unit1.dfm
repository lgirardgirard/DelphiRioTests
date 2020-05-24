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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 72
    Width = 635
    Height = 208
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Open table'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object Button1: TButton
    Left = 112
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Insert 100000'
    Enabled = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 280
    Width = 635
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object Button2: TButton
    Left = 216
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Empty table'
    Enabled = False
    TabOrder = 4
    OnClick = Button2Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=SQLite'
      
        'Database=C:\Opensource\SQLiteDatabaseBrowserPortable\Data\Axiodi' +
        's.db')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 128
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from PARAMSQL')
    Left = 144
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 256
    Top = 128
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    DriverID = 'SQLite'
    Left = 400
    Top = 136
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 528
    Top = 136
  end
end
