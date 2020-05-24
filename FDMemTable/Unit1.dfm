object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 562
  ClientWidth = 1091
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
    Top = 0
    Width = 465
    Height = 562
    Align = alLeft
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 664
    Top = 0
    Width = 427
    Height = 562
    Align = alRight
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 520
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Struct Fields'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 520
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Donn'#233'es'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 520
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Add Index'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 520
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Index1'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 520
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Index2'
    TabOrder = 6
    OnClick = Button5Click
  end
  object DBGrid3: TDBGrid
    Left = 352
    Top = 432
    Width = 320
    Height = 120
    DataSource = DataSource3
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 360
    Top = 408
    Width = 240
    Height = 25
    DataSource = DataSource3
    TabOrder = 8
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=SQLite'
      'Database=C:\RIO\AXIODIS\CONFIGS\TRAVAIL\DATA\Axiodis.sqlite')
    LoginPrompt = False
    Left = 584
    Top = 16
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    DriverID = 'SQLite'
    Left = 440
    Top = 16
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from CALC_ANO')
    Left = 120
    Top = 120
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 896
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 120
    Top = 208
  end
  object DataSource2: TDataSource
    DataSet = FDMemTable1
    Left = 888
    Top = 112
  end
  object FDTable1: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'POSTES'
    TableName = 'POSTES'
    Left = 488
    Top = 376
  end
  object DataSource3: TDataSource
    DataSet = FDTable1
    Left = 544
    Top = 376
  end
end
