object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Factory Method'
  ClientHeight = 112
  ClientWidth = 293
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroup: TRadioGroup
    Left = 8
    Top = 8
    Width = 185
    Height = 97
    Caption = 'Tipo de Pagamento '
    TabOrder = 0
  end
  object btnCriar: TButton
    Left = 208
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Criar Objeto'
    TabOrder = 1
    OnClick = btnCriarClick
  end
  object rbBoletoBancario: TRadioButton
    Left = 24
    Top = 32
    Width = 113
    Height = 17
    Caption = 'Boleto Banc'#225'rio'
    Checked = True
    TabOrder = 2
    TabStop = True
  end
  object rbCartaoDeCredito: TRadioButton
    Left = 24
    Top = 55
    Width = 113
    Height = 17
    Caption = 'Cart'#227'o de Cr'#233'dito'
    TabOrder = 3
  end
  object rbEmEspecie: TRadioButton
    Left = 24
    Top = 78
    Width = 113
    Height = 17
    Caption = 'Em Esp'#233'cie'
    TabOrder = 4
  end
end