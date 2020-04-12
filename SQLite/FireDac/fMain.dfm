object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'frmMain'
  ClientHeight = 359
  ClientWidth = 753
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
  object panTop: TPanel
    Left = 0
    Top = 0
    Width = 753
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 547
    object Label2: TLabel
      Left = 1
      Top = 1
      Width = 751
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'Connexion '#224' une BdD SQLite en utilisant FireDAC'
      ExplicitWidth = 234
    end
    object Label1: TLabel
      Left = 1
      Top = 27
      Width = 751
      Height = 13
      Align = alBottom
      Caption = 
        'http://docwiki.embarcadero.com/RADStudio/Rio/fr/Tutoriel_:_Conne' +
        'xion_%C3%A0_une_base_de_donn%C3%A9es_SQLite_en_utilisant_FireDAC'
      ExplicitWidth = 706
    end
  end
  object panBottom: TPanel
    Left = 0
    Top = 318
    Width = 753
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 176
    ExplicitTop = 184
    ExplicitWidth = 185
    object BitBtn1: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Action = actQuitter
      Caption = 'Quitter'
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 96
      Top = 8
      Width = 145
      Height = 21
      TabOrder = 1
      Text = 'ComboBox1'
      OnChange = ComboBox1Change
    end
  end
  object labEdtBdd: TLabeledEdit
    Left = 80
    Top = 47
    Width = 385
    Height = 21
    EditLabel.Width = 19
    EditLabel.Height = 13
    EditLabel.Caption = 'BdD'
    LabelPosition = lpLeft
    ReadOnly = True
    TabOrder = 2
    Text = 'C:\Users\Administrateur\Database\test1.db'
  end
  object btnConnect: TButton
    Left = 471
    Top = 45
    Width = 75
    Height = 25
    Action = actConnect
    TabOrder = 3
  end
  object btnExecute: TButton
    Left = 552
    Top = 45
    Width = 75
    Height = 25
    Action = actExecute
    TabOrder = 4
  end
  object Memo1: TMemo
    Left = 80
    Top = 74
    Width = 547
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 80
    Top = 176
    Width = 547
    Height = 97
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ActionManager1: TActionManager
    Left = 32
    Top = 264
    StyleName = 'Platform Default'
    object actQuitter: TAction
      Caption = 'Quitter'
      OnExecute = actQuitterExecute
    end
    object actConnect: TAction
      Caption = 'Connect'
      OnExecute = actConnectExecute
    end
    object actExecute: TAction
      Caption = 'Execute'
      OnExecute = actExecuteExecute
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    Left = 128
    Top = 264
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 208
    Top = 264
  end
  object DataSource1: TDataSource
    Left = 296
    Top = 264
  end
end
