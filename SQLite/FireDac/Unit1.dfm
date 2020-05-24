object fMain: TfMain
  Left = 0
  Top = 0
  Caption = 'Ceci est une application Delphi VCL 64bit'
  ClientHeight = 437
  ClientWidth = 840
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    840
    437)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 840
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 547
    object Label2: TLabel
      Left = 1
      Top = 1
      Width = 838
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'Connexion '#224' une base de donn'#233'es SQLite en utilisant FireDAC'
      ExplicitWidth = 297
    end
    object Label1: TLabel
      Left = 1
      Top = 27
      Width = 838
      Height = 13
      Align = alBottom
      Caption = 
        'http://docwiki.embarcadero.com/RADStudio/Rio/fr/Tutoriel_:_Conne' +
        'xion_%C3%A0_une_base_de_donn%C3%A9es_SQLite_en_utilisant_FireDAC'
      ExplicitWidth = 706
    end
  end
  object btnConnect: TButton
    Left = 383
    Top = 47
    Width = 75
    Height = 25
    Caption = 'Connect'
    TabOrder = 1
    OnClick = btnConnectClick
  end
  object Edit1: TEdit
    Left = 16
    Top = 50
    Width = 361
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
    Text = 'C:\Opensource\SQLiteDatabaseBrowserPortable\Data\test1.db'
  end
  object Memo1: TMemo
    Left = 16
    Top = 75
    Width = 814
    Height = 118
    Anchors = [akLeft, akTop, akRight]
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
    ExplicitWidth = 521
  end
  object btnExecute: TButton
    Left = 464
    Top = 47
    Width = 75
    Height = 25
    Caption = 'Execute'
    TabOrder = 4
    OnClick = btnExecuteClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 418
    Width = 840
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    ExplicitTop = 291
    ExplicitWidth = 547
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 199
    Width = 814
    Height = 213
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'DriverID=SQLite'
      
        'Database=C:\Opensource\SQLiteDatabaseBrowserPortable\Data\test1.' +
        'db')
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 88
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    DriverID = 'SQLite'
    Left = 320
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 104
    Top = 224
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection
    FormatOptions.AssignedValues = [fvStrsTrim, fvDefaultParamDataType, fvADOCompatibility]
    SQL.Strings = (
      'SELECT * FROM Table01')
    Left = 192
    Top = 88
  end
end
