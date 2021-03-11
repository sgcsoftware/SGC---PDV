object frmInutilizaNFCE: TfrmInutilizaNFCE
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Inutiliza NFC-e'
  ClientHeight = 232
  ClientWidth = 443
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton2: TSpeedButton
    Left = 340
    Top = 191
    Width = 97
    Height = 33
    Caption = 'Retornar'
  end
  object SpeedButton1: TSpeedButton
    Left = 237
    Top = 191
    Width = 97
    Height = 33
    Caption = 'Inutilizar'
    OnClick = SpeedButton1Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 431
    Height = 81
    Caption = ' Dados Para o Cancelamento '
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 19
      Width = 42
      Height = 13
      Caption = 'N'#186' Inicial'
    end
    object Label2: TLabel
      Left = 87
      Top = 19
      Width = 37
      Height = 13
      Caption = 'N'#186' Final'
    end
    object Label3: TLabel
      Left = 164
      Top = 19
      Width = 24
      Height = 13
      Caption = 'S'#233'rie'
    end
    object Label4: TLabel
      Left = 241
      Top = 19
      Width = 34
      Height = 13
      Caption = 'Modelo'
    end
    object Label5: TLabel
      Left = 318
      Top = 19
      Width = 19
      Height = 13
      Caption = 'Ano'
    end
    object edt_ninicial: TEdit
      Left = 10
      Top = 33
      Width = 71
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 0
    end
    object edt_nfinal: TEdit
      Left = 87
      Top = 33
      Width = 71
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 1
    end
    object edt_serie: TEdit
      Left = 164
      Top = 33
      Width = 71
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 2
    end
    object edt_modelo: TEdit
      Left = 241
      Top = 33
      Width = 71
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 3
    end
    object edt_ano: TEdit
      Left = 318
      Top = 33
      Width = 71
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 95
    Width = 431
    Height = 90
    Caption = '  Justificativa  '
    TabOrder = 1
    object Memo1: TMemo
      Left = 2
      Top = 15
      Width = 427
      Height = 73
      Align = alClient
      BevelKind = bkFlat
      BorderStyle = bsNone
      Lines.Strings = (
        'Memo1')
      TabOrder = 0
    end
  end
end
