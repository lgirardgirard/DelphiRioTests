object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 437
  ClientWidth = 797
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 797
    Height = 81
    Align = alTop
    Caption = 
      'Connexion '#224' une base de donn'#233'es SQLite depuis une application VC' +
      'L - Composants DBExpress'
    TabOrder = 0
    object LinkLabel1: TLinkLabel
      Left = 1
      Top = 63
      Width = 795
      Height = 17
      Align = alBottom
      Caption = 
        'http://docwiki.embarcadero.com/RADStudio/Rio/fr/Tutoriel_:_Conne' +
        'xion_%C3%A0_une_base_de_donn%C3%A9es_SQLite_depuis_une_applicati' +
        'on_VCL'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 0
      ExplicitWidth = 746
    end
  end
  object Edit1: TEdit
    Left = 8
    Top = 89
    Width = 617
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 1
    Text = 
      'C:\Users\Administrateur\Mes sources\SourcesDelphi\D10.3_Rio\Dive' +
      'rs\test1.db'
  end
  object btnConnection: TButton
    Left = 631
    Top = 86
    Width = 75
    Height = 25
    Hint = 'Connexion '#224' la base de donn'#233'es'
    Caption = 'Connect'
    TabOrder = 2
    OnClick = btnConnectionClick
  end
  object btnExecute: TButton
    Left = 714
    Top = 86
    Width = 75
    Height = 25
    Hint = 'Ex'#233'cute une requ'#234'te de s'#233'lection'
    Caption = 'Execute'
    TabOrder = 3
    OnClick = btnExecuteClick
  end
  object Memo1: TMemo
    Left = 8
    Top = 112
    Width = 617
    Height = 113
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 418
    Width = 797
    Height = 19
    Panels = <>
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 231
    Width = 781
    Height = 145
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ComboBox1: TComboBox
    Left = 631
    Top = 112
    Width = 158
    Height = 21
    TabOrder = 7
    Text = 'ComboBox1'
    OnChange = ComboBox1Change
  end
  object SQLConnection: TSQLConnection
    ConnectionName = 'SQLITECONNECTION'
    DriverName = 'Sqlite'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Sqlite'
      
        'Database=C:\Opensource\SQLiteDatabaseBrowserPortable\Data\test1.' +
        'db')
    Left = 80
    Top = 160
  end
  object SQLQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 200
    Top = 160
  end
end
