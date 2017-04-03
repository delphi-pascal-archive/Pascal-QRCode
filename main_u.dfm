object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 337
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    635
    337)
  PixelsPerInch = 96
  TextHeight = 13
  object imgBarcode: TImage
    Left = 248
    Top = 24
    Width = 379
    Height = 305
    Anchors = [akLeft, akTop, akRight, akBottom]
  end
  object mmoText: TMemo
    Left = 32
    Top = 48
    Width = 185
    Height = 89
    Lines.Strings = (
      'mmoText')
    TabOrder = 0
  end
  object btnMakeQR: TButton
    Left = 32
    Top = 152
    Width = 75
    Height = 25
    Caption = 'btnMakeQR'
    TabOrder = 1
    OnClick = btnMakeQRClick
  end
end
