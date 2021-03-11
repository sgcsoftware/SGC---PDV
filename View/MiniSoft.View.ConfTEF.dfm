object frmConfTEF: TfrmConfTEF
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'ConfigTEF'
  ClientHeight = 379
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
  object cmbTipoTEF: TComboBox
    Left = 0
    Top = 49
    Width = 635
    Height = 21
    Align = alTop
    TabOrder = 1
    Text = 'gpNenhum'
    OnChange = cmbTipoTEFChange
    Items.Strings = (
      'gpNenhum'
      'gpPayGo'
      'gpCliSiTef'
      'gpTefDial'
      'gpTefDisc')
  end
  object Panel4: TPanel
    Left = 0
    Top = 328
    Width = 635
    Height = 51
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 452
      Top = 8
      Width = 79
      Height = 35
      Caption = 'Salvar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000CDCDCD292929
        7171717272727171717171717171717171717171717171717171717171717272
        72717171292929CDCDCD2F2F2F404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4040402F2F2F2D2D2D414141
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF4141412D2D2D2F2F2F414141FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4141412F2F2F2F2F2F414141
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF4141412F2F2F2F2F2F414141FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4141412F2F2F2F2F2F424242
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF4242422F2F2F303030353535FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF353535303030333333303030
        1A1A1A1717171515151515151515151515151515151515151515151515151919
        191A1A1A30303033333333333333333330303034343442424240404040404040
        40404040404B4B4B4E4E4E434343282828323232333333333333333333333333
        1C1C1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7B7B7949494FFFFFF6767
        672B2B2B3333333333333333333333331B1B1BFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF4B4B4B090909FFFFFF6B6B6B2B2B2B333333323232333333333333
        1B1B1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF545454151515FFFFFF6A6A
        6A2B2B2B3232322E2E2E3131313333331B1B1BFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF4F4F4F0F0F0FFFFFFF6A6A6A2B2B2B1A1A1AA9A9A9333333303030
        1B1B1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080804D4D4DFFFFFF6E6E
        6E121212848484FFFFFFCECECE3333332A2A2A5F5F5F74747471717171717171
        7171717171808080858585797979292929A9A9A9FFFFFFFFFFFF}
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 533
      Top = 8
      Width = 81
      Height = 35
      Caption = 'Retornar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF191919000000E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1C1C1C000000000000171717FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1C
        1C1C000000000000141414FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF1C1C1C000000000000141414FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1C1C1C00000000
        0000141414FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF1C1C1C000000000000141414FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE131313000000000000262626FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF1C1C1C0000000000001C1C1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24242400000000000008
        0808FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF242424000000000000080808FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24242400
        0000000000080808FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF242424000000000000080808FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF232323000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF232323000000898989FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFA6A6A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      OnClick = SpeedButton2Click
    end
  end
  object grpConfiguracoes: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 73
    Width = 629
    Height = 252
    Align = alClient
    Caption = ' Configura'#231#245'es TEF '
    TabOrder = 3
    object grpboxSitef: TGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 141
      Width = 619
      Height = 106
      Align = alBottom
      Caption = ' Configura'#231#245'es Sitef'
      TabOrder = 0
      object edtSitefIP: TLabeledEdit
        Left = 24
        Top = 32
        Width = 121
        Height = 21
        EditLabel.Width = 17
        EditLabel.Height = 13
        EditLabel.Caption = 'IP :'
        TabOrder = 0
      end
      object edtSitefTerminal: TLabeledEdit
        Left = 24
        Top = 72
        Width = 121
        Height = 21
        EditLabel.Width = 47
        EditLabel.Height = 13
        EditLabel.Caption = 'Terminal :'
        TabOrder = 1
      end
      object edtSitefPorta: TLabeledEdit
        Left = 151
        Top = 32
        Width = 121
        Height = 21
        EditLabel.Width = 54
        EditLabel.Height = 13
        EditLabel.Caption = 'Porta TEF :'
        TabOrder = 2
      end
      object edtSitefLoja: TLabeledEdit
        Left = 151
        Top = 72
        Width = 121
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Loja :'
        TabOrder = 3
      end
      object Button1: TButton
        Left = 278
        Top = 68
        Width = 75
        Height = 25
        Caption = 'Inicializar'
        TabOrder = 4
        OnClick = Button1Click
      end
      object cmbParametros: TComboBox
        Left = 278
        Top = 32
        Width = 145
        Height = 21
        ItemIndex = 0
        TabOrder = 5
        Text = '[MultiplosCupons=1]'
        Items.Strings = (
          '[MultiplosCupons=1]')
      end
    end
  end
end
