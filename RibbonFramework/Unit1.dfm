object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'AXIODIS'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  StyleElements = [seFont, seClient]
  PixelsPerInch = 96
  TextHeight = 13
  object mainRibbon: TUIRibbon
    Left = 0
    Top = 0
    Width = 635
    Height = 125
    ResourceName = 'MyRibbon'
    RibbonSourceFile = 'Ribbon\MyRibbon.xml'
    ActionManager = ActionManager1
    OnCommandCreate = mainRibbonCommandCreate
    OnLoaded = mainRibbonLoaded
  end
  object Button1: TButton
    Left = 256
    Top = 160
    Width = 107
    Height = 25
    Caption = 'Visible / Invisible'
    TabOrder = 1
    StyleName = 'Silver'
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 400
    Top = 160
    Width = 129
    Height = 25
    Caption = 'Zonage On'
    TabOrder = 2
    StyleName = 'Sky'
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 40
    Top = 184
    Width = 185
    Height = 41
    Caption = 'Panel1'
    TabOrder = 3
    StyleName = 'Luna'
  end
  object Button3: TButton
    Left = 535
    Top = 160
    Width = 71
    Height = 25
    Caption = 'Zonage off'
    TabOrder = 4
    StyleName = 'Sky'
    OnClick = Button3Click
  end
  object BitBtn1: TBitBtn
    Left = 400
    Top = 240
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 481
    Top = 240
    Width = 75
    Height = 25
    Caption = 'BitBtn2'
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object ActionManager1: TActionManager
    Left = 464
    Top = 192
    StyleName = 'Platform Default'
    object actAbout: TAction
      Caption = 'A propos'
      OnExecute = actAboutExecute
    end
    object actProduits: TAction
      Caption = 'Produits'
      OnExecute = actProduitsExecute
    end
    object actSites: TAction
      Caption = 'Sites'
      OnExecute = actSitesExecute
    end
    object actVehicules: TAction
      Caption = 'V'#233'hicules'
      OnExecute = actVehiculesExecute
    end
    object actQuitter: TAction
      Caption = 'Quitter'
      OnExecute = actQuitterExecute
    end
  end
end
