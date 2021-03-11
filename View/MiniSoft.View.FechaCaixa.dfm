object frmAbreFechaCaixa: TfrmAbreFechaCaixa
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSizeToolWin
  Caption = 'Fechamento de Caixa'
  ClientHeight = 510
  ClientWidth = 256
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 256
    Height = 510
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label4: TLabel
      Left = 7
      Top = 87
      Width = 236
      Height = 13
      Caption = 'Informe o valor em Dinheiro da Gaveta :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 7
      Top = 129
      Width = 234
      Height = 13
      Caption = 'Confirme o valor em Dinheiro da Gaveta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object label6: TLabel
      Left = 7
      Top = 249
      Width = 57
      Height = 13
      Caption = 'Dinheiro :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 7
      Top = 268
      Width = 51
      Height = 13
      Caption = 'Cr'#233'dito :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 7
      Top = 287
      Width = 46
      Height = 13
      Caption = 'D'#233'bito :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 7
      Top = 306
      Width = 62
      Height = 13
      Caption = 'Credi'#225'rio :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 7
      Top = 325
      Width = 53
      Height = 13
      Caption = 'Cheque :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Dinheiro: TLabel
      Left = 92
      Top = 249
      Width = 28
      Height = 13
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Credito: TLabel
      Left = 92
      Top = 268
      Width = 28
      Height = 13
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Debito: TLabel
      Left = 92
      Top = 287
      Width = 28
      Height = 13
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Crediario: TLabel
      Left = 92
      Top = 306
      Width = 28
      Height = 13
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Cheque: TLabel
      Left = 92
      Top = 325
      Width = 28
      Height = 13
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object codigoid: TLabel
      Left = 40
      Top = 455
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object Label11: TLabel
      Left = 7
      Top = 390
      Width = 53
      Height = 13
      Caption = 'Entrada :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 7
      Top = 409
      Width = 41
      Height = 13
      Caption = 'Saida :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object entrada: TLabel
      Left = 92
      Top = 390
      Width = 28
      Height = 13
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object saida: TLabel
      Left = 92
      Top = 409
      Width = 28
      Height = 13
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 7
      Top = 428
      Width = 73
      Height = 13
      Caption = 'Total Caixa :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Caixa: TLabel
      Left = 92
      Top = 428
      Width = 28
      Height = 13
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CodigoId2: TLabel
      Left = 15
      Top = 455
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object GroupBox1: TGroupBox
      Left = 7
      Top = 8
      Width = 241
      Height = 73
      Caption = ' Operador  '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 13
        Top = 19
        Width = 42
        Height = 13
        Caption = 'Nome :'
      end
      object Label2: TLabel
        Left = 13
        Top = 38
        Width = 49
        Height = 13
        Caption = 'C'#243'digo :'
      end
      object Label3: TLabel
        Left = 13
        Top = 57
        Width = 36
        Height = 13
        Caption = 'Data :'
      end
    end
    object Edit1: TEdit
      Left = 7
      Top = 106
      Width = 121
      Height = 21
      Alignment = taRightJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0,00'
      OnExit = Edit1Exit
    end
    object Edit2: TEdit
      Left = 7
      Top = 146
      Width = 121
      Height = 21
      Alignment = taRightJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '0,00'
      OnExit = Edit2Exit
    end
    object Button1: TButton
      Left = 7
      Top = 173
      Width = 121
      Height = 25
      Caption = 'Fechar Caixa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object Panel2: TPanel
      Left = 0
      Top = 204
      Width = 256
      Height = 41
      BevelOuter = bvNone
      Caption = 'Totais '
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
    end
    object Button2: TButton
      Left = 92
      Top = 472
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 5
    end
    object Button3: TButton
      Left = 173
      Top = 472
      Width = 75
      Height = 25
      Caption = 'Retornar'
      TabOrder = 6
      OnClick = Button3Click
    end
    object Panel3: TPanel
      Left = 0
      Top = 343
      Width = 256
      Height = 41
      BevelOuter = bvNone
      Caption = 'Caixa'
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 7
    end
  end
  object FDQuery1: TFDQuery
    AutoCalcFields = False
    Left = 183
    Top = 410
  end
end
