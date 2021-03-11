object FrmDeletaProduto: TFrmDeletaProduto
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Entre com o Item'
  ClientHeight = 46
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 0
    Top = 0
    Width = 635
    Height = 46
    Align = alClient
    Alignment = taCenter
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    NumbersOnly = True
    ParentFont = False
    TabOrder = 0
    OnKeyDown = Edit1KeyDown
    ExplicitWidth = 645
    ExplicitHeight = 41
  end
end
