object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Builder - BrunoRijo'
  ClientHeight = 140
  ClientWidth = 242
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
  object lbl1: TLabel
    Left = 16
    Top = 16
    Width = 41
    Height = 13
    Caption = 'Modelo: '
  end
  object lbl2: TLabel
    Left = 16
    Top = 48
    Width = 23
    Height = 13
    Caption = 'Ano:'
  end
  object lbl3: TLabel
    Left = 18
    Top = 80
    Width = 21
    Height = 13
    Caption = 'Cor:'
  end
  object btnCriarCarro: TButton
    Left = 159
    Top = 107
    Width = 75
    Height = 25
    Caption = 'Criar Carro'
    TabOrder = 0
    OnClick = btnCriarCarroClick
  end
  object edtModeloCarro: TEdit
    Left = 56
    Top = 13
    Width = 179
    Height = 21
    TabOrder = 1
  end
  object edtAnoCarro: TEdit
    Left = 56
    Top = 45
    Width = 179
    Height = 21
    TabOrder = 2
  end
  object edtCorCarro: TEdit
    Left = 56
    Top = 77
    Width = 179
    Height = 21
    TabOrder = 3
  end
end
