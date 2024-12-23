object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'Prototype Design Pattern'
  ClientHeight = 126
  ClientWidth = 294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rg1: TRadioGroup
    Left = 8
    Top = 8
    Width = 153
    Height = 105
    Caption = 'Tipo de Documento'
    TabOrder = 0
  end
  object rbCurriculo: TRadioButton
    Left = 24
    Top = 40
    Width = 113
    Height = 17
    Caption = 'Curriculo'
    Checked = True
    TabOrder = 1
    TabStop = True
  end
  object rbContrato: TRadioButton
    Left = 24
    Top = 72
    Width = 113
    Height = 17
    Caption = 'Contrato'
    TabOrder = 2
  end
  object btnCriaDocumento: TButton
    Left = 173
    Top = 93
    Width = 113
    Height = 25
    Caption = 'Criar Documento'
    TabOrder = 3
    OnClick = btnCriaDocumentoClick
  end
end
