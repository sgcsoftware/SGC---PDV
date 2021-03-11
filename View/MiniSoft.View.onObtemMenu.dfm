object frmOnObtemMenu: TfrmOnObtemMenu
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSizeToolWin
  Caption = 'TEF...'
  ClientHeight = 140
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
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
    Caption = 'Escolha a Op'#231#227'o Desejada'
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
    Top = 89
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
  object Edit1: TEdit
    Left = 0
    Top = 49
    Width = 635
    Height = 40
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyDown = Edit1KeyDown
    ExplicitHeight = 38
  end
end
