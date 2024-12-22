object Singleton: TSingleton
  Left = 0
  Top = 0
  Caption = 'Singleton'
  ClientHeight = 62
  ClientWidth = 209
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
  object btnRegistraLog: TButton
    Left = 8
    Top = 24
    Width = 186
    Height = 25
    Caption = 'Registra Log'
    TabOrder = 0
    OnClick = btnRegistraLogClick
  end
end
