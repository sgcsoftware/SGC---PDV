object frmFinalizar: TfrmFinalizar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = 'Finaliar Venda'
  ClientHeight = 506
  ClientWidth = 670
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 670
    Height = 506
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 664
      Height = 61
      Align = alTop
      Caption = '  Consumidor '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 88
        Height = 13
        Caption = 'Nome / Raza'#227'o'
      end
      object Label6: TLabel
        Left = 496
        Top = 16
        Width = 60
        Height = 13
        Caption = 'Cpf / Cnpj'
      end
      object edt_cpfcnpj: TEdit
        Left = 493
        Top = 31
        Width = 137
        Height = 22
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnExit = edt_cpfcnpjExit
      end
      object edt_nomeCliente: TEdit
        Left = 16
        Top = 31
        Width = 474
        Height = 22
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edt_nomeClienteChange
        OnExit = edt_nomeClienteExit
        OnKeyDown = edt_nomeClienteKeyDown
      end
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 70
      Width = 664
      Height = 105
      Align = alTop
      Caption = '  Desconto / Acrescimo '
      ParentBackground = False
      ParentColor = False
      TabOrder = 1
      object Label2: TLabel
        Left = 16
        Top = 16
        Width = 54
        Height = 13
        Caption = 'Desconto $'
      end
      object Label3: TLabel
        Left = 111
        Top = 16
        Width = 59
        Height = 13
        Caption = 'Desconto %'
      end
      object Label4: TLabel
        Left = 16
        Top = 56
        Width = 57
        Height = 13
        Caption = 'Acrescimo $'
      end
      object Label5: TLabel
        Left = 111
        Top = 56
        Width = 62
        Height = 13
        Caption = 'Acrescimo %'
      end
      object edt_descontoDin: TEdit
        AlignWithMargins = True
        Left = 16
        Top = 30
        Width = 89
        Height = 22
        Alignment = taRightJustify
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '0,00'
        OnEnter = edt_descontoDinEnter
        OnExit = edt_descontoDinExit
      end
      object edt_descontoPor: TEdit
        Left = 111
        Top = 30
        Width = 89
        Height = 22
        Alignment = taRightJustify
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = '0,00'
        OnEnter = edt_descontoPorEnter
        OnExit = edt_descontoPorExit
      end
      object edt_acresimoDin: TEdit
        Left = 16
        Top = 70
        Width = 89
        Height = 22
        Alignment = taRightJustify
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '0,00'
        OnEnter = edt_acresimoDinEnter
        OnExit = edt_acresimoDinExit
      end
      object edt_AcrescimoPor: TEdit
        Left = 111
        Top = 70
        Width = 89
        Height = 22
        Alignment = taRightJustify
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = '0,00'
        OnEnter = edt_AcrescimoPorEnter
        OnExit = edt_AcrescimoPorExit
      end
    end
    object GroupBox3: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 181
      Width = 664
      Height = 259
      Align = alTop
      Caption = '  Formas de Pagamento '
      ParentBackground = False
      ParentColor = False
      TabOrder = 2
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 385
        Height = 236
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 198
          Height = 236
          Align = alLeft
          BorderStyle = bsNone
          DataSource = DSCDS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'FormaDePagamento'
              Title.Caption = 'Formas de Pagamentos'
              Width = 170
              Visible = True
            end>
        end
        object edt_codigoCli: TEdit
          Left = 216
          Top = 184
          Width = 121
          Height = 21
          TabOrder = 2
          Text = '0'
          Visible = False
        end
        object Pn_forma: TPanel
          Left = 170
          Top = 14
          Width = 131
          Height = 169
          BevelOuter = bvNone
          TabOrder = 1
          object edt_fpDinheiro: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 125
            Height = 28
            Margins.Bottom = 0
            Alignment = taRightJustify
            BevelKind = bkFlat
            BorderStyle = bsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            MaxLength = 11
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            Text = '0,00'
            Visible = False
          end
          object edt_fpCarCredito: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 34
            Width = 125
            Height = 28
            Margins.Bottom = 0
            Alignment = taRightJustify
            BevelKind = bkFlat
            BorderStyle = bsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            MaxLength = 11
            ParentFont = False
            TabOrder = 1
            Text = '0,00'
            Visible = False
            OnChange = edt_fpCarCreditoChange
            OnExit = edt_fpCarCreditoExit
          end
          object edt_fpCarDebito: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 65
            Width = 125
            Height = 28
            Margins.Bottom = 0
            Alignment = taRightJustify
            BevelKind = bkFlat
            BorderStyle = bsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            MaxLength = 11
            ParentFont = False
            TabOrder = 2
            Text = '0,00'
            Visible = False
            OnChange = edt_fpCarDebitoChange
            OnExit = edt_fpCarDebitoExit
          end
          object edt_fpCheque: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 96
            Width = 125
            Height = 28
            Margins.Bottom = 0
            Alignment = taRightJustify
            BevelKind = bkFlat
            BorderStyle = bsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            MaxLength = 11
            ParentFont = False
            TabOrder = 3
            Text = '0,00'
            Visible = False
            OnChange = edt_fpChequeChange
            OnExit = edt_fpChequeExit
          end
          object edt_fpCrediario: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 127
            Width = 125
            Height = 28
            Margins.Bottom = 0
            Alignment = taRightJustify
            BevelKind = bkFlat
            BorderStyle = bsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            MaxLength = 11
            ParentFont = False
            TabOrder = 4
            Text = '0,00'
            Visible = False
            OnChange = edt_fpCrediarioChange
            OnExit = edt_fpCrediarioExit
          end
        end
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 396
        Top = 18
        Width = 263
        Height = 236
        Align = alClient
        BevelOuter = bvNone
        Padding.Left = 10
        TabOrder = 1
        object pn_Total: TPanel
          Left = 10
          Top = 170
          Width = 253
          Height = 66
          Align = alBottom
          BevelOuter = bvNone
          Caption = '0,00'
          Color = 5329233
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -27
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
        object Panel5: TPanel
          Left = 10
          Top = 129
          Width = 253
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Total a Pagar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -27
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object Panel6: TPanel
          Left = 10
          Top = 88
          Width = 253
          Height = 41
          Align = alBottom
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = 'Troco:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -21
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Padding.Right = 10
          ParentFont = False
          TabOrder = 2
          object pn_Troco: TPanel
            AlignWithMargins = True
            Left = 98
            Top = 3
            Width = 142
            Height = 35
            Align = alRight
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = '0,00'
            Padding.Right = 10
            TabOrder = 0
          end
        end
        object Panel7: TPanel
          Left = 10
          Top = 6
          Width = 253
          Height = 41
          Align = alBottom
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = 'Sub Total:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -21
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Padding.Right = 10
          ParentFont = False
          TabOrder = 3
          object pn_Subtotal: TPanel
            AlignWithMargins = True
            Left = 98
            Top = 3
            Width = 142
            Height = 35
            Align = alRight
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = '0,00'
            Padding.Right = 10
            TabOrder = 0
          end
        end
        object Panel8: TPanel
          Left = 10
          Top = 47
          Width = 253
          Height = 41
          Align = alBottom
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = 'Dinheiro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -21
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Padding.Right = 10
          ParentFont = False
          TabOrder = 4
          object edt_Dinheiro: TEdit
            AlignWithMargins = True
            Left = 119
            Top = 3
            Width = 121
            Height = 35
            Align = alRight
            Alignment = taRightJustify
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 0
            Text = '0,00'
            OnChange = edt_DinheiroChange
            OnExit = edt_DinheiroExit
          end
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 465
      Width = 670
      Height = 41
      Align = alBottom
      TabOrder = 3
      object Button1: TButton
        AlignWithMargins = True
        Left = 547
        Top = 4
        Width = 119
        Height = 33
        Align = alRight
        Caption = 'Finalizar'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
  end
  object DBGrid2: TDBGrid
    Left = 19
    Top = 56
    Width = 614
    Height = 313
    Color = clSkyBlue
    DataSource = DSClie
    GradientStartColor = clWindow
    Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGrid2DblClick
    OnKeyDown = DBGrid2KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'CLI_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CPFCNPJ'
        Title.Caption = 'Cpf / Cnpj'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_RGIE'
        Title.Caption = 'Rg / Ie'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOMERAZAO'
        Title.Caption = 'Nome / Raza'#227'o'
        Width = 210
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CIDADE'
        Title.Caption = 'Munic'#237'pio'
        Width = 151
        Visible = True
      end>
  end
  object CDS: TClientDataSet
    PersistDataPacket.Data = {
      3F0000009619E0BD0100000018000000010000000000030000003F0010466F72
      6D614465506167616D656E746F01004900000001000557494454480200020032
      000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 64
    Top = 336
    object CDSFormaDePagamento: TStringField
      FieldName = 'FormaDePagamento'
      Size = 50
    end
  end
  object DSCDS: TDataSource
    DataSet = CDS
    OnDataChange = DSCDSDataChange
    Left = 136
    Top = 344
  end
  object DSClie: TDataSource
    DataSet = FDCli
    Left = 56
    Top = 392
  end
  object FDCli: TFDQuery
    AutoCalcFields = False
    Connection = Dm.Con
    Left = 352
    Top = 344
  end
end
