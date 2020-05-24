object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 545
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object CategoryPanelGroup1: TCategoryPanelGroup
    Left = 0
    Top = 0
    Width = 554
    Height = 545
    VertScrollBar.Tracking = True
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    Color = clBtnFace
    Ctl3D = False
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    HeaderStyle = hsThemed
    ParentCtl3D = False
    TabOrder = 0
    ExplicitHeight = 290
    object CategoryPanel1: TCategoryPanel
      Top = 0
      Height = 97
      Caption = 'CategoryPanel1'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object CheckBox1: TCheckBox
        Left = 16
        Top = 4
        Width = 97
        Height = 17
        Caption = 'CheckBox1'
        TabOrder = 0
      end
    end
    object CategoryPanel2: TCategoryPanel
      Top = 97
      Height = 352
      Caption = 'CategoryPanel2'
      TabOrder = 1
      object ValueListEditor1: TValueListEditor
        Left = 16
        Top = 8
        Width = 513
        Height = 116
        DrawingStyle = gdsClassic
        TabOrder = 0
        ColWidths = (
          150
          359)
      end
      object ButtonGroup1: TButtonGroup
        Left = 144
        Top = 184
        Height = 41
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        ButtonOptions = [gboAllowReorder, gboGroupStyle, gboShowCaptions]
        Items = <
          item
            Action = Action1
            Hint = 'action1'
          end
          item
            Action = Action2
          end>
        TabOrder = 1
      end
    end
  end
  object ActionList1: TActionList
    Left = 280
    Top = 488
    object Action1: TAction
      Caption = 'Action1'
      OnExecute = Action1Execute
      OnUpdate = Action1Update
    end
    object Action2: TAction
      Caption = 'Action2'
      OnExecute = Action2Execute
    end
  end
end
