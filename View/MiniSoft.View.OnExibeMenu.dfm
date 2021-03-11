object frmOnExibeMenu: TfrmOnExibeMenu
  Left = 0
  Top = 0
  BorderIcons = [biMaximize, biHelp]
  BorderStyle = bsSizeToolWin
  Caption = 'TEF...'
  ClientHeight = 373
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Configura'#231#227'o TEF'
    Color = clGray
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = -82
    ExplicitWidth = 717
    object codigo: TLabel
      Left = 579
      Top = 18
      Width = 4
      Height = 14
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 322
    Width = 635
    Height = 51
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 248
    object Button1: TButton
      Left = 191
      Top = 16
      Width = 75
      Height = 25
      Caption = '&OK'
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 272
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
    object Button3: TButton
      Left = 353
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Retornar'
      ModalResult = 4
      TabOrder = 2
    end
  end
  object ListBox1: TListBox
    Left = 0
    Top = 49
    Width = 635
    Height = 273
    Align = alClient
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ItemHeight = 37
    ParentFont = False
    TabOrder = 2
    OnKeyDown = ListBox1KeyDown
  end
end
