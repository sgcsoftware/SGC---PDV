object frmParcelamentoCheque: TfrmParcelamentoCheque
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSizeToolWin
  Caption = 'Parcelamento Cheque'
  ClientHeight = 426
  ClientWidth = 837
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
  object Panel1: TPanel
    Left = 0
    Top = 49
    Width = 837
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 87
      Top = 16
      Width = 69
      Height = 15
      Caption = 'Qtd. Parcelas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 8
      Top = 11
      Width = 73
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 0
      Text = '1'
    end
    object Button1: TButton
      Left = 168
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Gerar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 249
      Top = 10
      Width = 96
      Height = 25
      Caption = 'Duplicar'
      TabOrder = 2
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 837
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Parcelamento de Cheques'
    Color = clGray
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object NumeroNFe: TLabel
      Left = 622
      Top = 16
      Width = 3
      Height = 18
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Chave: TLabel
      Left = 8
      Top = 31
      Width = 3
      Height = 18
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 380
    Width = 837
    Height = 46
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Button3: TButton
      Left = 752
      Top = 6
      Width = 75
      Height = 35
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = Button3Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 90
    Width = 837
    Height = 290
    ParentCustomHint = False
    Touch.ParentTabletOptions = False
    Touch.TabletOptions = []
    Align = alClient
    BevelOuter = bvNone
    BevelWidth = 214
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = True
    LookAndFeel.ScrollbarMode = sbmClassic
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Enabled = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.InfoPanel.DisplayMask = '[RecordIndex] / [RecordCount]'
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = DS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Click aqui para definir um filtro'
      FilterRow.OperatorCustomization = True
      FixedDataRows.PinVisibility = rpvAlways
      FixedDataRows.SeparatorColor = clGray
      NewItemRow.InfoText = 'Click aqui para adicionar uma nova linha'
      OptionsView.NoDataToDisplayInfoText = '  '
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 15
      Styles.ContentEven = cor_azul_claro
      Styles.Selection = cor_cinza_escuro
      object cxGrid1DBTableView1Banco: TcxGridDBColumn
        DataBinding.FieldName = 'Banco'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          '001 - Banco do Brasil S.A.'
          '341 - Banco Ita'#250' S.A.'
          '033 - Banco Santander (Brasil) S.A.'
          '356 - Banco Real S.A. (antigo)'
          '652 - Ita'#250' Unibanco Holding S.A.'
          '237 - Banco Bradesco S.A.'
          '745 - Banco Citibank S.A.'
          '399 - HSBC Bank Brasil S.A. - Banco M'#250'ltiplo'
          '104 - Caixa Econ'#244'mica Federal'
          '389 - Banco Mercantil do Brasil S.A.'
          '453 - Banco Rural S.A.'
          '422 - Banco Safra S.A.'
          '633 - Banco Rendimento S.A.'
          '246 - Banco ABC Brasil S.A.'
          '025 - Banco Alfa S.A.'
          '641 - Banco Alvorada S.A.'
          '029 - Banco Banerj S.A.'
          '038 - Banco Banestado S.A.'
          '000 - Banco Bankpar S.A.'
          '740 - Banco Barclays S.A.'
          '107 - Banco BBM S.A.'
          '031 - Banco Beg S.A.'
          '096 - Banco BM&F de Servi'#231'os de Liquida'#231#227'o e Cust'#243'dia S.A'
          '318 - Banco BMG S.A.'
          '752 - Banco BNP Paribas Brasil S.A.'
          '248 - Banco Boavista Interatl'#226'ntico S.A.'
          '036 - Banco Bradesco BBI S.A.'
          '204 - Banco Bradesco Cart'#245'es S.A.'
          '225 - Banco Brascan S.A.'
          '044 - Banco BVA S.A.'
          '263 - Banco Cacique S.A.'
          '473 - Banco Caixa Geral - Brasil S.A.'
          '222 - Banco Calyon Brasil S.A.'
          '040 - Banco Cargill S.A.'
          'M08 - Banco Citicard S.A.'
          'M19 - Banco CNH Capital S.A.'
          '215 - Banco Comercial e de Investimento Sudameris S.A.'
          '756 - Banco Cooperativo do Brasil S.A. - BANCOOB'
          '748 - Banco Cooperativo Sicredi S.A.'
          '505 - Banco Credit Suisse (Brasil) S.A.'
          '229 - Banco Cruzeiro do Sul S.A.'
          '003 - Banco da Amaz'#244'nia S.A.'
          '083-3 - Banco da China Brasil S.A.'
          '707 - Banco Daycoval S.A.'
          'M06 - Banco de Lage Landen Brasil S.A.'
          '024 - Banco de Pernambuco S.A. - BANDEPE'
          '456 - Banco de Tokyo-Mitsubishi UFJ Brasil S.A.'
          '214 - Banco Dibens S.A.'
          '047 - Banco do Estado de Sergipe S.A.'
          '037 - Banco do Estado do Par'#225' S.A.'
          '041 - Banco do Estado do Rio Grande do Sul S.A.'
          '004 - Banco do Nordeste do Brasil S.A.'
          '265 - Banco Fator S.A.'
          'M03 - Banco Fiat S.A.'
          '224 - Banco Fibra S.A.'
          '626 - Banco Ficsa S.A.'
          '394 - Banco Finasa BMC S.A.'
          'M18 - Banco Ford S.A.'
          '233 - Banco GE Capital S.A.'
          '734 - Banco Gerdau S.A.'
          'M07 - Banco GMAC S.A.'
          '612 - Banco Guanabara S.A.'
          'M22 - Banco Honda S.A.'
          '063 - Banco Ibi S.A. Banco M'#250'ltiplo'
          'M11 - Banco IBM S.A.'
          '604 - Banco Industrial do Brasil S.A.'
          '320 - Banco Industrial e Comercial S.A.'
          '653 - Banco Indusval S.A.'
          '630 - Banco Intercap S.A.'
          '249 - Banco Investcred Unibanco S.A.'
          '184 - Banco Ita'#250' BBA S.A.'
          '479 - Banco Ita'#250'Bank S.A'
          'M09 - Banco Itaucred Financiamentos S.A.'
          '376 - Banco J. P. Morgan S.A.'
          '074 - Banco J. Safra S.A.'
          '217 - Banco John Deere S.A.'
          '065 - Banco Lemon S.A.'
          '600 - Banco Luso Brasileiro S.A.'
          '755 - Banco Merrill Lynch de Investimentos S.A.'
          '746 - Banco Modal S.A.'
          '151 - Banco Nossa Caixa S.A.'
          '045 - Banco Opportunity S.A.'
          '623 - Banco Panamericano S.A.'
          '611 - Banco Paulista S.A.'
          '643 - Banco Pine S.A.'
          '638 - Banco Prosper S.A.'
          '747 - Banco Rabobank International Brasil S.A.'
          'M16 - Banco Rodobens S.A.'
          '072 - Banco Rural Mais S.A.'
          '250 - Banco Schahin S.A.'
          '749 - Banco Simples S.A.'
          '366 - Banco Soci'#233't'#233' G'#233'n'#233'rale Brasil S.A.'
          '637 - Banco Sofisa S.A.'
          '464 - Banco Sumitomo Mitsui Brasileiro S.A.'
          '082-5 - Banco Top'#225'zio S.A.'
          'M20 - Banco Toyota do Brasil S.A.'
          '634 - Banco Tri'#226'ngulo S.A.'
          '208 - Banco UBS Pactual S.A.'
          'M14 - Banco Volkswagen S.A.'
          '655 - Banco Votorantim S.A.'
          '610 - Banco VR S.A.'
          '370 - Banco WestLB do Brasil S.A.'
          '021 - BANESTES S.A. Banco do Estado do Esp'#237'rito Santo'
          '719 - Banif-Banco Internacional do Funchal (Brasil)S.A.'
          '073 - BB Banco Popular do Brasil S.A.'
          '078 - BES Investimento do Brasil S.A.-Banco de Investimento'
          '069 - BPN Brasil Banco M'#250'ltiplo S.A.'
          '070 - BRB - Banco de Bras'#237'lia S.A.'
          '477 - Citibank N.A.'
          '081-7 - Conc'#243'rdia Banco S.A.'
          '487 - Deutsche Bank S.A. - Banco Alem'#227'o'
          '751 - Dresdner Bank Brasil S.A. - Banco M'#250'ltiplo'
          '062 - Hipercard Banco M'#250'ltiplo S.A.'
          '492 - ING Bank N.V.'
          '488 - JPMorgan Chase Bank'
          '409 - UNIBANCO - Uni'#227'o de Bancos Brasileiros S.A.'
          '230 - Unicard Banco M'#250'ltiplo S.A.')
        Width = 137
      end
      object cxGrid1DBTableView1NumeroCheque: TcxGridDBColumn
        Caption = 'N'#186' Cheque'
        DataBinding.FieldName = 'NumeroCheque'
      end
      object cxGrid1DBTableView1Agencia: TcxGridDBColumn
        DataBinding.FieldName = 'Agencia'
        Width = 66
      end
      object cxGrid1DBTableView1Conta: TcxGridDBColumn
        DataBinding.FieldName = 'Conta'
        Width = 70
      end
      object cxGrid1DBTableView1Emissor: TcxGridDBColumn
        DataBinding.FieldName = 'Emissor'
        Width = 180
      end
      object cxGrid1DBTableView1CpfCnpj: TcxGridDBColumn
        DataBinding.FieldName = 'CpfCnpj'
        Width = 120
      end
      object cxGrid1DBTableView1Valor: TcxGridDBColumn
        DataBinding.FieldName = 'Valor'
      end
      object cxGrid1DBTableView1PreData: TcxGridDBColumn
        Caption = 'Pr'#233' Data'
        DataBinding.FieldName = 'PreData'
        Width = 80
      end
    end
    object cxGrid1ChartView1: TcxGridChartView
      DiagramColumn.Active = True
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
      Options.DetailFrameColor = 10930928
    end
  end
  object CDS: TClientDataSet
    PersistDataPacket.Data = {
      660100009619E0BD01000000180000000E00000000000300000066010542616E
      636F010049000000010005574944544802000200FA00074167656E6369610100
      49000000010005574944544802000200320005436F6E74610100490000000100
      05574944544802000200320007456D6973736F72010049000000010005574944
      544802000200FA0007437066436E706A01004900000001000557494454480200
      020014000556616C6F7208000400000000000750726544617461040006000000
      00000A5265666572656E63696101004900000001000557494454480200020014
      000C4E756D65726F43686571756504000100000000000A436F6450617263656C
      61040001000000000007436C69656E7465010049000000010005574944544802
      000200FA000A436F64436C69656E746504000100000000000952616E646F6D69
      636F010049000000010005574944544802000200320009436F64436F6D707261
      04000100000000000000}
    Active = True
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    Left = 296
    Top = 144
    object CDSBanco: TStringField
      FieldName = 'Banco'
      Size = 250
    end
    object CDSAgencia: TStringField
      FieldName = 'Agencia'
      Size = 50
    end
    object CDSConta: TStringField
      FieldName = 'Conta'
      Size = 50
    end
    object CDSEmissor: TStringField
      FieldName = 'Emissor'
      Size = 250
    end
    object CDSCpfCnpj: TStringField
      FieldName = 'CpfCnpj'
    end
    object CDSValor: TFloatField
      FieldName = 'Valor'
    end
    object CDSPreData: TDateField
      FieldName = 'PreData'
    end
    object CDSReferencia: TStringField
      FieldName = 'Referencia'
    end
    object CDSNumeroCheque: TIntegerField
      FieldName = 'NumeroCheque'
    end
    object CDSCodParcela: TIntegerField
      FieldName = 'CodParcela'
    end
    object CDSCliente: TStringField
      FieldName = 'Cliente'
      Size = 250
    end
    object CDSCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object CDSRandomico: TStringField
      FieldName = 'Randomico'
      Size = 50
    end
    object CDSCodCompra: TIntegerField
      FieldName = 'CodCompra'
    end
  end
  object cxLocalizer: TcxLocalizer
    Left = 241
    Top = 145
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 136
    Top = 145
    PixelsPerInch = 96
    object cor_azul_claro: TcxStyle
      AssignedValues = [svColor]
      Color = 15321777
    end
    object cor_azul_escuro: TcxStyle
      AssignedValues = [svColor]
      Color = 550418078
    end
    object cor_verde_money: TcxStyle
      AssignedValues = [svColor]
      Color = 549444800
    end
    object cor_amarelo_claro: TcxStyle
      AssignedValues = [svColor]
      Color = 551682047
    end
    object cor_laranja_claro: TcxStyle
      AssignedValues = [svColor]
      Color = 546166271
    end
    object cor_laranja_escuro: TcxStyle
      AssignedValues = [svColor]
      Color = 540317170
    end
    object cor_cinza_escuro: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cor_silver: TcxStyle
      AssignedValues = [svColor]
      Color = clSilver
    end
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 48
    Top = 145
  end
  object DS: TDataSource
    DataSet = CDS
    Left = 352
    Top = 144
  end
end
