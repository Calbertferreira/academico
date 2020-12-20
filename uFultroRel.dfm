object FultroRel: TFultroRel
  Left = 0
  Top = 0
  Caption = 'Filtro'
  ClientHeight = 137
  ClientWidth = 237
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 21
    Width = 113
    Height = 105
    Caption = 'Resultado'
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Aprovados'
      'Reprovados')
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 132
    Top = 72
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 132
    Top = 102
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
  end
end
