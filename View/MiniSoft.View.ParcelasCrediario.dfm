object frmParcelasCrediario: TfrmParcelasCrediario
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Parcelamento Credi'#225'rio'
  ClientHeight = 373
  ClientWidth = 697
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 90
    Width = 697
    Height = 232
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
    TabOrder = 0
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
      object cxGrid1DBTableView1CLI_CODIGO: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'CLI_CODIGO'
        Options.Editing = False
        Width = 65
      end
      object cxGrid1DBTableView1CLI_CPFCNPJ: TcxGridDBColumn
        Caption = 'Cpf / Cnpj'
        DataBinding.FieldName = 'CLI_CPFCNPJ'
        Options.Editing = False
      end
      object cxGrid1DBTableView1CLI_NOMERAZAO: TcxGridDBColumn
        Caption = 'Nome / Raz'#227'o'
        DataBinding.FieldName = 'CLI_NOMERAZAO'
        Options.Editing = False
        Width = 301
      end
      object cxGrid1DBTableView1CLI_CONTATO: TcxGridDBColumn
        Caption = 'Contato'
        DataBinding.FieldName = 'CLI_CONTATO'
        Options.Editing = False
        Width = 200
      end
      object cxGrid1DBTableView1CLI_RGIE: TcxGridDBColumn
        Caption = 'RG / IE'
        DataBinding.FieldName = 'CLI_RGIE'
        Options.Editing = False
        Width = 100
      end
      object cxGrid1DBTableView1CLI_CIDADE: TcxGridDBColumn
        Caption = 'Munic'#237'pio'
        DataBinding.FieldName = 'CLI_CIDADE'
        Options.Editing = False
        Width = 150
      end
      object cxGrid1DBTableView1CLI_UF: TcxGridDBColumn
        Caption = 'UF'
        DataBinding.FieldName = 'CLI_UF'
        Options.Editing = False
      end
      object cxGrid1DBTableView1CLI_ENDERECO: TcxGridDBColumn
        Caption = 'Endere'#231'o'
        DataBinding.FieldName = 'CLI_ENDERECO'
        Options.Editing = False
        Width = 200
      end
      object cxGrid1DBTableView1CLI_COMPLEMENTO: TcxGridDBColumn
        Caption = 'Complemento'
        DataBinding.FieldName = 'CLI_COMPLEMENTO'
        Options.Editing = False
        Width = 200
      end
      object cxGrid1DBTableView1CLI_NUMERO: TcxGridDBColumn
        Caption = 'N'#250'mero'
        DataBinding.FieldName = 'CLI_NUMERO'
        Options.Editing = False
        Width = 72
      end
      object cxGrid1DBTableView1CLI_BAIRRO: TcxGridDBColumn
        Caption = 'Bairro'
        DataBinding.FieldName = 'CLI_BAIRRO'
        Options.Editing = False
        Width = 150
      end
      object cxGrid1DBTableView1CLI_CEP: TcxGridDBColumn
        Caption = 'CEP'
        DataBinding.FieldName = 'CLI_CEP'
        Options.Editing = False
        Width = 106
      end
      object cxGrid1DBTableView1CLI_TEL1: TcxGridDBColumn
        Caption = 'Telefone 1'
        DataBinding.FieldName = 'CLI_TEL1'
        Options.Editing = False
        Width = 120
      end
      object cxGrid1DBTableView1CLI_TEL2: TcxGridDBColumn
        Caption = 'Telefone 2'
        DataBinding.FieldName = 'CLI_TEL2'
        Options.Editing = False
        Width = 120
      end
      object cxGrid1DBTableView1CLI_CELULAR: TcxGridDBColumn
        Caption = 'Celular'
        DataBinding.FieldName = 'CLI_CELULAR'
        Options.Editing = False
        Width = 120
      end
      object cxGrid1DBTableView1CLI_WHATSAP: TcxGridDBColumn
        Caption = 'Whatsapp'
        DataBinding.FieldName = 'CLI_WHATSAP'
        Options.Editing = False
        Width = 120
      end
      object cxGrid1DBTableView1CLI_EMAIL: TcxGridDBColumn
        Caption = 'E-mail'
        DataBinding.FieldName = 'CLI_EMAIL'
        Options.Editing = False
        Width = 200
      end
      object cxGrid1DBTableView1CLI_CONJUGE: TcxGridDBColumn
        Caption = 'Conjuge'
        DataBinding.FieldName = 'CLI_CONJUGE'
        Options.Editing = False
        Width = 250
      end
      object cxGrid1DBTableView1CLI_NOMEPAI: TcxGridDBColumn
        Caption = 'Nome do Pai'
        DataBinding.FieldName = 'CLI_NOMEPAI'
        Options.Editing = False
        Width = 250
      end
      object cxGrid1DBTableView1CLI_NOMEMAE: TcxGridDBColumn
        Caption = 'Nome da M'#227'e'
        DataBinding.FieldName = 'CLI_NOMEMAE'
        Options.Editing = False
        Width = 250
      end
      object cxGrid1DBTableView1CLI_DATAULTIMACOMPRA: TcxGridDBColumn
        Caption = 'Ult. Compra'
        DataBinding.FieldName = 'CLI_DATAULTIMACOMPRA'
        Options.Editing = False
      end
      object cxGrid1DBTableView1CLI_OBS: TcxGridDBColumn
        Caption = 'Observa'#231#227'o'
        DataBinding.FieldName = 'CLI_OBS'
        Options.Editing = False
        Width = 300
      end
      object cxGrid1DBTableView1CLI_DATACADASTRO: TcxGridDBColumn
        Caption = 'Data Cadastro'
        DataBinding.FieldName = 'CLI_DATACADASTRO'
        Options.Editing = False
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
  object Panel1: TPanel
    Left = 0
    Top = 49
    Width = 697
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
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
      Left = 162
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Gerar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 697
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Parcelamento'
    Color = clGray
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
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
    Top = 322
    Width = 697
    Height = 51
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object Button2: TButton
      Left = 608
      Top = 6
      Width = 75
      Height = 35
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 90
    Width = 697
    Height = 232
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object Panel8: TPanel
      Left = 0
      Top = 0
      Width = 697
      Height = 232
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 697
        Height = 232
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 697
          Height = 232
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
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = True
          LookAndFeel.ScrollbarMode = sbmClassic
          object cxGridDBTableView1: TcxGridDBTableView
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
            object cxGridDBTableView1Cliente: TcxGridDBColumn
              DataBinding.FieldName = 'Cliente'
              Options.Editing = False
              Width = 391
            end
            object cxGridDBTableView1refParcelas: TcxGridDBColumn
              Caption = 'Ref.'
              DataBinding.FieldName = 'refParcelas'
              Options.Editing = False
              Width = 93
            end
            object cxGridDBTableView1vlrParcela: TcxGridDBColumn
              Caption = 'Vlr. Parcela'
              DataBinding.FieldName = 'vlrParcela'
            end
            object cxGridDBTableView1DataVencimento: TcxGridDBColumn
              Caption = 'Vencimento'
              DataBinding.FieldName = 'DataVencimento'
            end
          end
          object cxGridChartView1: TcxGridChartView
            DiagramColumn.Active = True
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
            Options.DetailFrameColor = 10930928
          end
        end
      end
    end
  end
  object CDS: TClientDataSet
    PersistDataPacket.Data = {
      E50000009619E0BD010000001800000008000000000003000000E50007436C69
      656E7465010049000000010005574944544802000200FA000B72656650617263
      656C617301004900000001000557494454480200020032000A766C7250617263
      656C6108000400000000000E6461746156656E63696D656E746F040006000000
      00000952616E646F6D69636F0100490000000100055749445448020002003200
      09636F64436F6D70726104000100000000000A636F6450617263656C61040001
      00000000000D6E756D65726F50617263656C6101004900000001000557494454
      480200020032000000}
    Active = True
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    Left = 432
    Top = 16
    object CDSCliente: TStringField
      FieldName = 'Cliente'
      Size = 250
    end
    object CDSrefParcelas: TStringField
      FieldName = 'refParcelas'
      Size = 50
    end
    object CDSvlrParcela: TFloatField
      FieldName = 'vlrParcela'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '########0.00'
    end
    object CDSdataVencimento: TDateField
      FieldName = 'dataVencimento'
    end
    object CDSRandomico: TStringField
      FieldName = 'Randomico'
      Size = 50
    end
    object CDScodCompra: TIntegerField
      FieldName = 'codCompra'
    end
    object CDScodParcela: TIntegerField
      FieldName = 'codParcela'
    end
    object CDSnumeroParcela: TStringField
      FieldName = 'numeroParcela'
      Size = 50
    end
  end
  object cxLocalizer: TcxLocalizer
    Left = 185
    Top = 5
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 40
    Top = 8
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
    Left = 240
    Top = 8
  end
  object tm_foco: TTimer
    Enabled = False
    Interval = 10
    Left = 128
    Top = 8
  end
  object DS: TDataSource
    DataSet = CDS
    Left = 528
    Top = 24
  end
end
