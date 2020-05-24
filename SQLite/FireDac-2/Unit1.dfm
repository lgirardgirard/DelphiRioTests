object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 302
  ClientWidth = 573
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    573
    302)
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Cr'#233'ation table'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 136
    Width = 557
    Height = 158
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Memo1: TMemo
    Left = 8
    Top = 41
    Width = 249
    Height = 89
    Lines.Strings = (
      'Cr'#233'ation d'#39'une nouvelle table dans '
      'une base SQLite, en utilisant un TFDTable')
    TabOrder = 2
  end
  object Button2: TButton
    Left = 96
    Top = 8
    Width = 161
    Height = 25
    Caption = 'Ajout d'#39'enregistremens'
    TabOrder = 3
    OnClick = Button2Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Administrateur\Mes sources\SourcesDelphi\Delph' +
        'iRioTests\SQLite\FireDac-2\test.sqlite'
      'StringFormat=Unicode'
      'DateTimeFormat=DateTime'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 408
    Top = 16
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 488
    Top = 24
  end
  object FDTable1: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'OPERATIONS'
    TableName = 'OPERATIONS'
    Left = 312
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 304
    Top = 88
  end
  object FDScript1: TFDScript
    SQLScripts = <>
    Connection = FDConnection1
    Params = <>
    Macros = <>
    Left = 424
    Top = 104
  end
end
