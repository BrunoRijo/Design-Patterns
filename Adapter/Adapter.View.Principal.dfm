object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Adapter Client'
  ClientHeight = 300
  ClientWidth = 460
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtValor: TEdit
    Left = 14
    Top = 35
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
    TextHint = 'Valor'
  end
  object btnAdd: TButton
    Left = 43
    Top = 62
    Width = 92
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 1
    OnClick = btnAddClick
  end
  object edtProduto: TEdit
    Left = 14
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'Produto'
  end
  object mmoProdutos: TMemo
    Left = 160
    Top = 8
    Width = 292
    Height = 284
    Lines.Strings = (
      '')
    TabOrder = 3
  end
end
