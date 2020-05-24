object splashScreen: TsplashScreen
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'splashScreen'
  ClientHeight = 82
  ClientWidth = 294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 288
    Height = 76
    Align = alClient
    Alignment = taCenter
    Caption = 'Mon SplashScreen'
    ExplicitWidth = 438
    ExplicitHeight = 230
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 32
    Top = 40
  end
end
