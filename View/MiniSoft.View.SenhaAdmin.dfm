object frmSenhaAdmin: TfrmSenhaAdmin
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Senha Administrador'
  ClientHeight = 126
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 426
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Entre com a Senha do Administrador'
    Color = clGray
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 168
    ExplicitTop = 32
    ExplicitWidth = 185
  end
  object Edit1: TEdit
    Left = 8
    Top = 56
    Width = 410
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
    TextHint = 'Senha'
  end
  object Button1: TButton
    Left = 320
    Top = 83
    Width = 98
    Height = 35
    Caption = 'Confirmar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
end
