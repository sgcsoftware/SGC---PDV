object Dm: TDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 687
  Width = 1050
  object MySQLDriver: TFDPhysMySQLDriverLink
    Left = 412
    Top = 8
  end
  object Revenda: TFDConnection
    Params.Strings = (
      'Server=cpanel.atualinformatica.com.br'
      'User_Name=atuali72_pegasus'
      'Database=atuali72_revendas'
      'Password=Mn98326521'
      'DriverID=MySQL')
    ResourceOptions.AssignedValues = [rvAutoConnect, rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    LoginPrompt = False
    Left = 344
    Top = 7
  end
  object FDQuery1: TFDQuery
    AutoCalcFields = False
    FieldOptions.UpdatePersistent = True
    Connection = Revenda
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    SQL.Strings = (
      'select * from revendedor')
    Left = 496
    Top = 7
  end
  object FDquery: TFDQuery
    AutoCalcFields = False
    FieldOptions.UpdatePersistent = True
    Connection = Revenda
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    SQL.Strings = (
      'select * from clientes_revenda')
    Left = 560
    Top = 7
  end
  object ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes
    Sistema = 'HrochaSoft - Automa'#231#227'o Comercial'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.099999999999999000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrNFe = ACBrNFe
    TipoDANFE = tiNFCe
    ExibeTotalTributosItem = True
    ImprimeNomeFantasia = True
    ImprimeDescAcrescItem = False
    ImprimeQRCodeLateral = True
    ImprimeLogoLateral = True
    ImprimeEmDuasLinhas = True
    FormularioContinuo = True
    FonteLinhaItem.Charset = DEFAULT_CHARSET
    FonteLinhaItem.Color = clWindowText
    FonteLinhaItem.Height = -9
    FonteLinhaItem.Name = 'Lucida Console'
    FonteLinhaItem.Style = []
    Left = 352
    Top = 64
  end
  object frxPrevenda: TfrxDBDataset
    UserName = 'Prevenda'
    CloseDataSource = False
    DataSet = Prevenda
    BCDToCurrency = False
    Left = 208
    Top = 232
  end
  object frxitensPrevenda: TfrxDBDataset
    UserName = 'ItensPrevenda'
    CloseDataSource = False
    DataSet = ItensPrevenda
    BCDToCurrency = False
    Left = 288
    Top = 232
  end
  object frxPrevendaMod1: TfrxReport
    Version = '6.7.6'
    DataSet = frxPrevenda
    DataSetName = 'Prevenda'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44036.510965613400000000
    ReportOptions.LastChange = 44036.750445543970000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  CNPJ, CEP : String;'
      'begin'
      '  CNPJ := <Global."PRI_CPFCNPJ">;'
      '  //Utilizar o copy para formatar strings'
      '  case Length(CNPJ) of'
      
        '    11: Memo1.Text := '#39'CPF : '#39'+ Copy(CNPJ,1,3)+'#39'.'#39'+Copy(CNPJ,4,3' +
        ')+'#39'.'#39'+Copy(CNPJ,7,3)+'#39'-'#39'+Copy(CNPJ,9,2);'
      
        '    14: Memo1.Text :='#39'CNPJ : '#39'+ Copy(CNPJ,1,2)+'#39'.'#39'+Copy(CNPJ,3,3' +
        ')+'#39'.'#39'+Copy(CNPJ,6,3)+'#39'/'#39'+Copy(CNPJ,9,4)+'#39'-'#39'+Copy(CNPJ,13,2);'
      '  end;'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnBeforePrint = frxPrevendaMod1BeforePrint
    Left = 88
    Top = 232
    Datasets = <
      item
      end
      item
        DataSet = frxitensPrevenda
        DataSetName = 'ItensPrevenda'
      end
      item
        DataSet = frxPrevenda
        DataSetName = 'Prevenda'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Forma'
        Value = Null
      end
      item
        Name = 'AcreDes'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.500000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      BottomMargin = 3.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      PrintOnPreviousPage = True
      ResetPageNumbers = True
      OnBeforePrint = 'Page1OnBeforePrint'
      object Page: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 679.000000000000000000
        Top = 1078.000000000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'calibri'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[Page]/[TotalPages#]')
        ParentFont = False
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 13.228346456692900000
        Top = 309.921460000000000000
        Width = 755.906000000000000000
        DataSet = frxitensPrevenda
        DataSetName = 'ItensPrevenda'
        KeepHeader = True
        RowCount = 0
        object TableObject1: TfrxTableObject
          AllowVectorExport = True
          Left = 1.000000000000000000
          object TableColumn1: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn2: TfrxTableColumn
            Width = 451.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn3: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn4: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn5: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow1: TfrxTableRow
            Height = 13.228346456692900000
            object TableCell1: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'PRE_CODIGO_PRODUTO'
              DataSet = frxitensPrevenda
              DataSetName = 'ItensPrevenda'
              DisplayFormat.FormatStr = '000000'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = []
              HAlign = haCenter
              Highlight.Font.Charset = DEFAULT_CHARSET
              Highlight.Font.Color = clBlack
              Highlight.Font.Height = -11
              Highlight.Font.Name = 'Calibri'
              Highlight.Font.Style = []
              Highlight.Condition = '(<Line#>mod 2) = 0'
              Highlight.FillType = ftBrush
              Highlight.Fill.BackColor = cl3DLight
              Highlight.Frame.Typ = []
              Memo.UTF8W = (
                '[ItensPrevenda."PRE_CODIGO_PRODUTO"]')
              ParentFont = False
            end
            object TableCell2: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'PRE_PRODUTO'
              DataSet = frxitensPrevenda
              DataSetName = 'ItensPrevenda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = []
              Highlight.Font.Charset = DEFAULT_CHARSET
              Highlight.Font.Color = clBlack
              Highlight.Font.Height = -11
              Highlight.Font.Name = 'Calibri'
              Highlight.Font.Style = []
              Highlight.Condition = '(<Line#>mod 2) = 0'
              Highlight.FillType = ftBrush
              Highlight.Fill.BackColor = cl3DLight
              Highlight.Frame.Typ = []
              Memo.UTF8W = (
                '[ItensPrevenda."PRE_PRODUTO"]')
              ParentFont = False
            end
            object TableCell3: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'PRE_QUANTIDADE'
              DataSet = frxitensPrevenda
              DataSetName = 'ItensPrevenda'
              DisplayFormat.FormatStr = '###,###,##0.000'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = []
              HAlign = haRight
              Highlight.Font.Charset = DEFAULT_CHARSET
              Highlight.Font.Color = clBlack
              Highlight.Font.Height = -11
              Highlight.Font.Name = 'calibri'
              Highlight.Font.Style = []
              Highlight.Condition = '(<Line#>mod 2) = 0'
              Highlight.FillType = ftBrush
              Highlight.Fill.BackColor = cl3DLight
              Highlight.Frame.Typ = []
              Memo.UTF8W = (
                '[ItensPrevenda."PRE_QUANTIDADE"]')
              ParentFont = False
            end
            object TableCell4: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'PRE_TOTAL'
              DataSet = frxitensPrevenda
              DataSetName = 'ItensPrevenda'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = []
              HAlign = haRight
              Highlight.Font.Charset = DEFAULT_CHARSET
              Highlight.Font.Color = clBlack
              Highlight.Font.Height = -11
              Highlight.Font.Name = 'calibri'
              Highlight.Font.Style = []
              Highlight.Condition = '(<Line#>mod 2) = 0'
              Highlight.FillType = ftBrush
              Highlight.Fill.BackColor = cl3DLight
              Highlight.Frame.Typ = []
              Memo.UTF8W = (
                '[ItensPrevenda."PRE_TOTAL"]')
              ParentFont = False
            end
            object TableCell5: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxitensPrevenda
              DataSetName = 'ItensPrevenda'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = []
              HAlign = haRight
              Highlight.Font.Charset = ANSI_CHARSET
              Highlight.Font.Color = clBlack
              Highlight.Font.Height = -11
              Highlight.Font.Name = 'Calibri'
              Highlight.Font.Style = []
              Highlight.Condition = '(<Line#>mod 2) = 0'
              Highlight.FillType = ftBrush
              Highlight.Fill.BackColor = cl3DLight
              Highlight.Frame.Typ = []
              Memo.UTF8W = (
                '[ItensPrevenda."PRE_TOTAL"] ')
              ParentFont = False
            end
          end
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 79.677180000000000000
        Top = 385.512060000000000000
        Width = 755.906000000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 590.000000000000000000
          Top = 4.487940000000000000
          Width = 72.488250000000000000
          Height = 66.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'SubTotal :'
            'Desconto:'
            'Acrescimo:'
            'Total :')
          ParentFont = False
        end
        object PrevendaPRE_SUBTOTAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 664.000000000000000000
          Top = 2.487940000000000000
          Width = 88.370130000000000000
          Height = 68.897650000000000000
          DataSet = frxPrevenda
          DataSetName = 'Prevenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Prevenda."PRE_SUBTOTAL"] '
            '[Prevenda."PRE_DESCDINHEIRO"] '
            '[Prevenda."PRE_ACRESCINHEIRO"]'
            '[Prevenda."PRE_TOTAL"] ')
          ParentFont = False
          Formats = <
            item
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end>
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 13.000000000000000000
          Top = 52.999690000000000000
          Width = 502.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Assinatura.')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 11.000000000000000000
          Top = 52.999690000000000000
          Width = 505.000000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 69.487940000000000000
          Width = 757.000000000000000000
          Color = clBlack
          Frame.Color = clWhite
          Frame.Style = fsDot
          Frame.Typ = []
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 229.787250240000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object img_logo: TfrxPictureView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 12.102350000000000000
          Width = 150.425196850000000000
          Height = 71.905511810000000000
          Center = True
          Frame.Typ = []
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object GlobalPRI_FANTASIA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 154.000000000000000000
          Top = 0.102350000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'PRI_FANTASIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Global."PRI_FANTASIA"]')
          ParentFont = False
        end
        object GlobalPRI_ENDERECO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 154.000000000000000000
          Top = 15.102350000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[Global."PRI_ENDERECO"] N'#186' [Global."PRI_NUMERO"], [Global."PRI_B' +
              'AIRRO"] - [Global."PRI_MUNICIPIO"]'
            ']')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 555.000000000000000000
          Top = 0.102350000000000000
          Width = 195.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cnpj :')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 555.000000000000000000
          Top = 15.102350000000000000
          Width = 65.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone :')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 555.000000000000000000
          Top = 30.102350000000000000
          Width = 65.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 154.000000000000000000
          Top = 56.102350000000000000
          Width = 623.000000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 66.102350000000000000
          Width = 755.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pr'#233'-Venda - N'#186' [Prevenda."PRE_NUMEROPREVENDA"]')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 615.000000000000000000
          Top = 31.102350000000000000
          Width = 135.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]  [TIME]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object GlobalPRI_TELEFONE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 615.000000000000000000
          Top = 16.102350000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'PRI_TELEFONE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_TELEFONE"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 113.102350000000000000
          Width = 52.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente :')
          ParentFont = False
        end
        object PrevendaPRE_ENDERECO_CLIENTE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 71.000000000000000000
          Top = 127.102350000000000000
          Width = 343.630180000000000000
          Height = 15.897650000000000000
          DataSet = frxPrevenda
          DataSetName = 'Prevenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[Prevenda."PRE_ENDERECO_CLIENTE"] N'#186' [Prevenda."PRE_NUMERO_CLIEN' +
              'TE"] , [Prevenda."PRE_BAIRRO_CLIENTE"] - [Prevenda."PRE_MUNICIPI' +
              'O_CLIENTE"] ')
          ParentFont = False
        end
        object PrevendaPRE_NOME_CLIENTE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 54.000000000000000000
          Top = 113.102350000000000000
          Width = 199.630180000000000000
          Height = 18.897650000000000000
          DataField = 'PRE_NOME_CLIENTE'
          DataSet = frxPrevenda
          DataSetName = 'Prevenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Prevenda."PRE_NOME_CLIENTE"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 127.102350000000000000
          Width = 71.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o :')
          ParentFont = False
        end
        object TableObject2: TfrxTableObject
          AllowVectorExport = True
          Left = 4.133858270000000000
          Top = 214.669140000000000000
          object TableColumn6: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn7: TfrxTableColumn
            Width = 451.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn8: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn9: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn10: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow2: TfrxTableRow
            Height = 15.118110236220500000
            object TableCell6: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxitensPrevenda
              DataSetName = 'ItensPrevenda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'C'#243'digo')
              ParentFont = False
            end
            object TableCell7: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxitensPrevenda
              DataSetName = 'ItensPrevenda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftTop, ftBottom]
              Memo.UTF8W = (
                'Descri'#231#227'o dos Itens')
              ParentFont = False
            end
            object TableCell8: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxitensPrevenda
              DataSetName = 'ItensPrevenda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'Qtd')
              ParentFont = False
            end
            object TableCell9: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxitensPrevenda
              DataSetName = 'ItensPrevenda'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'Valor')
              ParentFont = False
            end
            object TableCell10: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxitensPrevenda
              DataSetName = 'ItensPrevenda'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'Total')
              ParentFont = False
            end
          end
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 94.102350000000000000
          Width = 752.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = cl3DLight
          HAlign = haCenter
          Memo.UTF8W = (
            'Dados do Cliente  - [Prevenda."PRE_CODIGO_CLIENTE"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 193.102350000000000000
          Width = 754.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Itens da Pr'#233'-Venda :')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 142.102350000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Observa'#231#227'o :')
          ParentFont = False
        end
        object PrevendaPRE_OBSERVACOA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 158.102350000000000000
          Width = 751.370130000000000000
          Height = 34.897650000000000000
          DataField = 'PRE_OBSERVACOA'
          DataSet = frxPrevenda
          DataSetName = 'Prevenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Prevenda."PRE_OBSERVACOA"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 541.000000000000000000
          Top = 65.897650000000000000
          Width = 68.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor :')
          ParentFont = False
        end
        object PrevendaPRE_VENDEDOR: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 601.000000000000000000
          Top = 65.897650000000000000
          Width = 179.630180000000000000
          Height = 18.897650000000000000
          DataField = 'PRE_VENDEDOR'
          DataSet = frxPrevenda
          DataSetName = 'Prevenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Prevenda."PRE_VENDEDOR"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 416.000000000000000000
          Top = 113.102350000000000000
          Width = 32.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'F.P :')
          ParentFont = False
        end
        object Forma: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 442.000000000000000000
          Top = 113.102350000000000000
          Width = 133.370130000000000000
          Height = 84.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Forma]')
          ParentFont = False
        end
        object Page2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 675.000000000000000000
          Top = 94.102350000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page]/[TotalPages#]')
          ParentFont = False
        end
      end
    end
  end
  object frxHistoricoDeProdutos: TfrxDBDataset
    UserName = 'frxHistoricoDeProdutos'
    CloseDataSource = False
    DataSet = HistoricoDeProduto
    BCDToCurrency = False
    Left = 208
    Top = 288
  end
  object HistoricoDeProduto: TFDQuery
    AutoCalcFields = False
    CachedUpdates = True
    Connection = Con
    SQL.Strings = (
      'select * from TB_HISTORICOPRODUTO')
    Left = 320
    Top = 288
  end
  object frxHistoricoDeProduto: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44041.676489571800000000
    ReportOptions.LastChange = 44077.605648645830000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 88
    Top = 288
    Datasets = <
      item
        DataSet = frxHistoricoDeProdutos
        DataSetName = 'frxHistoricoDeProdutos'
      end
      item
      end
      item
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 14.362204724409500000
        Top = 430.866420000000000000
        Width = 755.906000000000000000
        DataSet = frxHistoricoDeProdutos
        DataSetName = 'frxHistoricoDeProdutos'
        RowCount = 0
        object TableObject1: TfrxTableObject
          AllowVectorExport = True
          Top = -0.701300000000000000
          object TableColumn3: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn4: TfrxTableColumn
            Width = 346.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn5: TfrxTableColumn
            Width = 105.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn6: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn7: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn8: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow16: TfrxTableRow
            Height = 14.362204724409500000
            object TableCell36: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'HIS_NUMEROFISCAL'
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              DisplayFormat.FormatStr = '000000000'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                '[frxHistoricoDeProdutos."HIS_NUMEROFISCAL"]')
              ParentFont = False
            end
            object TableCell37: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'HIS_FORCLI'
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[frxHistoricoDeProdutos."HIS_FORCLI"]')
              ParentFont = False
            end
            object TableCell38: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'HIS_TIPODOC'
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[frxHistoricoDeProdutos."HIS_TIPODOC"]')
              ParentFont = False
            end
            object TableCell39: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                '[frxHistoricoDeProdutos."HIS_QTD_VENDA"] ')
              ParentFont = False
            end
            object TableCell40: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                '[frxHistoricoDeProdutos."HIS_QTD_ESTOQUE"] ')
              ParentFont = False
            end
            object TableCell61: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'HIS_DATA'
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '[frxHistoricoDeProdutos."HIS_DATA"]')
              ParentFont = False
            end
          end
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 351.267396770000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 554.000000000000000000
          Top = 28.102350000000000000
          Width = 65.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 154.000000000000000000
          Top = 51.102350000000000000
          Width = 623.000000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 55.102350000000000000
          Width = 755.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Hist'#243'rico De Produto')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 608.000000000000000000
          Top = 28.102350000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object TableObject2: TfrxTableObject
          AllowVectorExport = True
          Left = 191.000000000000000000
          Top = 90.409400000000000000
          object TableColumn1: TfrxTableColumn
            Width = 143.090600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn2: TfrxTableColumn
            Width = 247.090600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow1: TfrxTableRow
            Height = 15.897650000000000000
            object TableCell1: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'C'#243'digo')
              ParentFont = False
            end
            object TableCell2: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DisplayFormat.FormatStr = '000000'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_CODIGO"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow2: TfrxTableRow
            Height = 15.897650000000000000
            object TableCell6: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'C'#243'digo de Barra')
              ParentFont = False
            end
            object TableCell7: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_CODIGOBARRA"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow3: TfrxTableRow
            Height = 14.897650000000000000
            object TableCell11: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'Custo')
              ParentFont = False
            end
            object TableCell12: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_CUSTO"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow4: TfrxTableRow
            Height = 15.897650000000000000
            object TableCell16: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'Data Cadastro')
              ParentFont = False
            end
            object TableCell17: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_DATACAD"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow5: TfrxTableRow
            Height = 15.897650000000000000
            object TableCell21: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'Descri'#231#227'o')
              ParentFont = False
            end
            object TableCell22: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_DESCRICAO"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow6: TfrxTableRow
            Height = 16.897650000000000000
            object TableCell8: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'Grupo do Produto')
              ParentFont = False
            end
            object TableCell13: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_GRUPO"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow7: TfrxTableRow
            Height = 14.897650000000000000
            object TableCell14: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'Pre'#231'o')
              ParentFont = False
            end
            object TableCell15: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_PRECOVENDA"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow8: TfrxTableRow
            Height = 15.897650000000000000
            object TableCell18: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'Quantidade')
              ParentFont = False
            end
            object TableCell19: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_QUANTIDADE"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow9: TfrxTableRow
            Height = 15.897650000000000000
            object TableCell20: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                #218'ltima Compra')
              ParentFont = False
            end
            object TableCell23: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_ULTIMACOMPRA"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow10: TfrxTableRow
            Height = 15.897650000000000000
            object TableCell24: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                #218'ltima Venda')
              ParentFont = False
            end
            object TableCell25: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_ULTIMAVENDA"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow11: TfrxTableRow
            Height = 14.897650000000000000
            object TableCell26: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'Localiza'#231#227'o')
              ParentFont = False
            end
            object TableCell27: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_LOCALIZACAO"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow12: TfrxTableRow
            Height = 15.897650000000000000
            object TableCell28: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'NCM')
              ParentFont = False
            end
            object TableCell29: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_NCM"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow13: TfrxTableRow
            Height = 13.897650000000000000
            object TableCell30: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'CFOP')
              ParentFont = False
            end
            object TableCell31: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_CFOP"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow14: TfrxTableRow
            Height = 14.897650000000000000
            object TableCell32: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'CST')
              ParentFont = False
            end
            object TableCell33: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_CST"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow15: TfrxTableRow
            Height = 14.897650000000000000
            object TableCell34: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'CSOSN')
              ParentFont = False
            end
            object TableCell35: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_CSOSN"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
        end
        object TableObject3: TfrxTableObject
          AllowVectorExport = True
          Top = 333.881570000000000000
          object TableColumn9: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn10: TfrxTableColumn
            Width = 346.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn11: TfrxTableColumn
            Width = 105.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn12: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn13: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn14: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow17: TfrxTableRow
            Height = 17.385826771653500000
            object TableCell41: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              DisplayFormat.FormatStr = '000000000'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop]
              Fill.BackColor = cl3DLight
              HAlign = haCenter
              Memo.UTF8W = (
                'N'#186' Fiscal')
              ParentFont = False
            end
            object TableCell42: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop]
              Fill.BackColor = cl3DLight
              Memo.UTF8W = (
                'Fornecedor / Cliente ')
              ParentFont = False
            end
            object TableCell43: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop]
              Fill.BackColor = cl3DLight
              HAlign = haCenter
              Memo.UTF8W = (
                'Tipo')
              ParentFont = False
            end
            object TableCell44: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop]
              Fill.BackColor = cl3DLight
              HAlign = haCenter
              Memo.UTF8W = (
                'Qtd Mov')
              ParentFont = False
            end
            object TableCell45: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop]
              Fill.BackColor = cl3DLight
              HAlign = haCenter
              Memo.UTF8W = (
                'Qtd Estoque')
              ParentFont = False
            end
            object TableCell46: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop]
              Fill.BackColor = cl3DLight
              HAlign = haCenter
              Memo.UTF8W = (
                'Data')
              ParentFont = False
            end
          end
        end
        object img_logo: TfrxPictureView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 0.102350000000000000
          Width = 150.425196850000000000
          Height = 83.905511810000000000
          Center = True
          Frame.Typ = []
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object GlobalPRI_FANTASIA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 153.000000000000000000
          Top = 0.102350000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'PRI_FANTASIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_FANTASIA"]')
          ParentFont = False
        end
        object GlobalPRI_ENDERECO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 153.000000000000000000
          Top = 13.102350000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[Global."PRI_ENDERECO"] N'#186' [Global."PRI_NUMERO"], [Global."PRI_B' +
              'AIRRO"] - [Global."PRI_MUNICIPIO"]'
            ']')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 555.000000000000000000
          Top = 0.102350000000000000
          Width = 195.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cnpj :')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 554.000000000000000000
          Top = 14.102350000000000000
          Width = 65.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone :')
          ParentFont = False
        end
        object GlobalPRI_TELEFONE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 614.000000000000000000
          Top = 14.102350000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'PRI_TELEFONE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_TELEFONE"]')
          ParentFont = False
        end
      end
    end
  end
  object frxHistoricoProdutoReal: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44041.676489571800000000
    ReportOptions.LastChange = 44042.608596782410000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 440
    Top = 288
    Datasets = <
      item
        DataSet = frxHistoricoDeProdutos
        DataSetName = 'frxHistoricoDeProdutos'
      end
      item
      end
      item
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 14.362204724409400000
        Top = 430.866420000000000000
        Width = 755.906000000000000000
        DataSet = frxHistoricoDeProdutos
        DataSetName = 'frxHistoricoDeProdutos'
        RowCount = 0
        object TableObject1: TfrxTableObject
          AllowVectorExport = True
          Top = -0.701300000000000000
          object TableColumn3: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn4: TfrxTableColumn
            Width = 346.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn5: TfrxTableColumn
            Width = 105.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn6: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn7: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn8: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow16: TfrxTableRow
            Height = 14.362204724409400000
            object TableCell36: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              DisplayFormat.FormatStr = '000000000'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                '[frxHistoricoDeProdutos."HIS_CODIGO"] ')
              ParentFont = False
            end
            object TableCell37: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'HIS_FORCLI'
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[frxHistoricoDeProdutos."HIS_FORCLI"]')
              ParentFont = False
            end
            object TableCell38: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'HIS_TIPODOC'
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[frxHistoricoDeProdutos."HIS_TIPODOC"]')
              ParentFont = False
            end
            object TableCell39: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                '[frxHistoricoDeProdutos."HIS_QTD_VENDA2"] ')
              ParentFont = False
            end
            object TableCell40: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                '[frxHistoricoDeProdutos."HIS_QTD_ESTOQUE2"] ')
              ParentFont = False
            end
            object TableCell61: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'HIS_DATA'
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '[frxHistoricoDeProdutos."HIS_DATA"]')
              ParentFont = False
            end
          end
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 351.267396770000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 554.000000000000000000
          Top = 28.102350000000000000
          Width = 65.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 154.000000000000000000
          Top = 51.102350000000000000
          Width = 623.000000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 55.102350000000000000
          Width = 755.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Hist'#243'rico De Produto')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 608.000000000000000000
          Top = 28.102350000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object TableObject2: TfrxTableObject
          AllowVectorExport = True
          Left = 191.000000000000000000
          Top = 90.409400000000000000
          object TableColumn1: TfrxTableColumn
            Width = 143.090600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn2: TfrxTableColumn
            Width = 247.090600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow1: TfrxTableRow
            Height = 15.897650000000000000
            object TableCell1: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'C'#243'digo')
              ParentFont = False
            end
            object TableCell2: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DisplayFormat.FormatStr = '000000'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_CODIGO"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow2: TfrxTableRow
            Height = 15.897650000000000000
            object TableCell6: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'C'#243'digo de Barra')
              ParentFont = False
            end
            object TableCell7: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_CODIGOBARRA"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow3: TfrxTableRow
            Height = 14.897650000000000000
            object TableCell11: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'Custo')
              ParentFont = False
            end
            object TableCell12: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[frxProdutos."PRO_CUSTOREAL"] ')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow4: TfrxTableRow
            Height = 15.897650000000000000
            object TableCell16: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'Data Cadastro')
              ParentFont = False
            end
            object TableCell17: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_DATACAD"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow5: TfrxTableRow
            Height = 15.897650000000000000
            object TableCell21: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'Descri'#231#227'o')
              ParentFont = False
            end
            object TableCell22: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_DESCRICAO"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow6: TfrxTableRow
            Height = 16.897650000000000000
            object TableCell8: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'Grupo do Produto')
              ParentFont = False
            end
            object TableCell13: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_GRUPO"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow7: TfrxTableRow
            Height = 14.897650000000000000
            object TableCell14: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'Pre'#231'o')
              ParentFont = False
            end
            object TableCell15: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_PRECOVENDA"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow8: TfrxTableRow
            Height = 15.897650000000000000
            object TableCell18: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'Quantidade')
              ParentFont = False
            end
            object TableCell19: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[frxProdutos."PRO_QUANTIDADEREAL"] ')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow9: TfrxTableRow
            Height = 15.897650000000000000
            object TableCell20: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                #218'ltima Compra')
              ParentFont = False
            end
            object TableCell23: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_ULTIMACOMPRA"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow10: TfrxTableRow
            Height = 15.897650000000000000
            object TableCell24: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                #218'ltima Venda')
              ParentFont = False
            end
            object TableCell25: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_ULTIMAVENDA"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow11: TfrxTableRow
            Height = 14.897650000000000000
            object TableCell26: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'Localiza'#231#227'o')
              ParentFont = False
            end
            object TableCell27: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_LOCALIZACAO"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow12: TfrxTableRow
            Height = 15.897650000000000000
            object TableCell28: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'NCM')
              ParentFont = False
            end
            object TableCell29: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_NCM"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow13: TfrxTableRow
            Height = 13.897650000000000000
            object TableCell30: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'CFOP')
              ParentFont = False
            end
            object TableCell31: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_CFOP"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow14: TfrxTableRow
            Height = 14.897650000000000000
            object TableCell32: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'CST')
              ParentFont = False
            end
            object TableCell33: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_CST"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
          object TableRow15: TfrxTableRow
            Height = 14.897650000000000000
            object TableCell34: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                'CSOSN')
              ParentFont = False
            end
            object TableCell35: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxProdutos."PRO_CSOSN"]')
              ParentFont = False
              VAlign = vaCenter
            end
          end
        end
        object TableObject3: TfrxTableObject
          AllowVectorExport = True
          Top = 333.881570000000000000
          object TableColumn9: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn10: TfrxTableColumn
            Width = 346.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn11: TfrxTableColumn
            Width = 105.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn12: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn13: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn14: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow17: TfrxTableRow
            Height = 17.385826771653500000
            object TableCell41: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              DisplayFormat.FormatStr = '000000000'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop]
              Fill.BackColor = cl3DLight
              HAlign = haCenter
              Memo.UTF8W = (
                'N'#186' Fiscal')
              ParentFont = False
            end
            object TableCell42: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop]
              Fill.BackColor = cl3DLight
              Memo.UTF8W = (
                'Fornecedor / Cliente ')
              ParentFont = False
            end
            object TableCell43: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop]
              Fill.BackColor = cl3DLight
              HAlign = haCenter
              Memo.UTF8W = (
                'Tipo')
              ParentFont = False
            end
            object TableCell44: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop]
              Fill.BackColor = cl3DLight
              HAlign = haCenter
              Memo.UTF8W = (
                'Qtd Mov')
              ParentFont = False
            end
            object TableCell45: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop]
              Fill.BackColor = cl3DLight
              HAlign = haCenter
              Memo.UTF8W = (
                'Qtd Estoque')
              ParentFont = False
            end
            object TableCell46: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxHistoricoDeProdutos
              DataSetName = 'frxHistoricoDeProdutos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop]
              Fill.BackColor = cl3DLight
              HAlign = haCenter
              Memo.UTF8W = (
                'Data')
              ParentFont = False
            end
          end
        end
        object img_logo: TfrxPictureView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 0.102350000000000000
          Width = 150.425196850000000000
          Height = 83.905511810000000000
          Center = True
          Frame.Typ = []
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object GlobalPRI_FANTASIA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 153.000000000000000000
          Top = 0.102350000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'PRI_FANTASIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_FANTASIA"]')
          ParentFont = False
        end
        object GlobalPRI_ENDERECO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 153.000000000000000000
          Top = 13.102350000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[Global."PRI_ENDERECO"] N'#186' [Global."PRI_NUMERO"], [Global."PRI_B' +
              'AIRRO"] - [Global."PRI_MUNICIPIO"]'
            ']')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 555.000000000000000000
          Top = 0.102350000000000000
          Width = 195.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cnpj :')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 554.000000000000000000
          Top = 14.102350000000000000
          Width = 65.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone :')
          ParentFont = False
        end
        object GlobalPRI_TELEFONE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 614.000000000000000000
          Top = 14.102350000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'PRI_TELEFONE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_TELEFONE"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDuplicata: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43789.352164270800000000
    ReportOptions.LastChange = 44047.404721724510000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure DataVencimentoOnAfterData(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 88
    Top = 344
    Datasets = <
      item
        DataSet = frxContasAReceber
        DataSetName = 'frxContasAReceber'
      end
      item
        DataSet = frxGlobal
        DataSetName = 'Global'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'ValorEstenco'
        Value = Null
      end
      item
        Name = 'DataVencimento'
        Value = Null
      end
      item
        Name = 'cpfcnpjglobal'
        Value = Null
      end
      item
        Name = 'cpfcnpjemitente'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      TopMargin = 2.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 275.905690000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        DataSet = frxContasAReceber
        DataSetName = 'frxContasAReceber'
        RowCount = 0
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 20.574830000000000000
          Width = 755.906000000000000000
          Height = 245.669450000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 41.574830000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object frxContasReceberref_parcelas: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 41.574830000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'CRE_REF_PARCELA'
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxContasAReceber."CRE_REF_PARCELA"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 49.913420000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 61.252010000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 72.590600000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 83.929190000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 96.267780000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 107.606370000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 118.944960000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 130.283550000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 142.401670000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 153.740260000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 165.078850000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 176.417440000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 189.094620000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 200.433210000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 211.771800000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Left = 223.110390000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line21: TfrxLineView
          AllowVectorExport = True
          Left = 235.228510000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line22: TfrxLineView
          AllowVectorExport = True
          Left = 246.567100000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line23: TfrxLineView
          AllowVectorExport = True
          Left = 257.905690000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line24: TfrxLineView
          AllowVectorExport = True
          Left = 269.244280000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line25: TfrxLineView
          AllowVectorExport = True
          Left = 281.582870000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line26: TfrxLineView
          AllowVectorExport = True
          Left = 292.921460000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line27: TfrxLineView
          AllowVectorExport = True
          Left = 304.260050000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line28: TfrxLineView
          AllowVectorExport = True
          Left = 315.598640000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line29: TfrxLineView
          AllowVectorExport = True
          Left = 327.716760000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line30: TfrxLineView
          AllowVectorExport = True
          Left = 339.055350000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line31: TfrxLineView
          AllowVectorExport = True
          Left = 350.393940000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line32: TfrxLineView
          AllowVectorExport = True
          Left = 361.732530000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line33: TfrxLineView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line34: TfrxLineView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line35: TfrxLineView
          AllowVectorExport = True
          Left = 396.850650000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line36: TfrxLineView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line37: TfrxLineView
          AllowVectorExport = True
          Left = 420.307360000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line38: TfrxLineView
          AllowVectorExport = True
          Left = 431.645950000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line39: TfrxLineView
          AllowVectorExport = True
          Left = 442.984540000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line40: TfrxLineView
          AllowVectorExport = True
          Left = 454.323130000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line41: TfrxLineView
          AllowVectorExport = True
          Left = 466.661720000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line42: TfrxLineView
          AllowVectorExport = True
          Left = 478.000310000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line43: TfrxLineView
          AllowVectorExport = True
          Left = 489.338900000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line44: TfrxLineView
          AllowVectorExport = True
          Left = 500.677490000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line45: TfrxLineView
          AllowVectorExport = True
          Left = 512.795610000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line46: TfrxLineView
          AllowVectorExport = True
          Left = 524.134200000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line47: TfrxLineView
          AllowVectorExport = True
          Left = 535.472790000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line48: TfrxLineView
          AllowVectorExport = True
          Left = 546.811380000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line49: TfrxLineView
          AllowVectorExport = True
          Left = 559.488560000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line50: TfrxLineView
          AllowVectorExport = True
          Left = 570.827150000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line51: TfrxLineView
          AllowVectorExport = True
          Left = 582.165740000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line52: TfrxLineView
          AllowVectorExport = True
          Left = 593.504330000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line53: TfrxLineView
          AllowVectorExport = True
          Left = 605.622450000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line54: TfrxLineView
          AllowVectorExport = True
          Left = 616.961040000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line55: TfrxLineView
          AllowVectorExport = True
          Left = 628.299630000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line56: TfrxLineView
          AllowVectorExport = True
          Left = 639.638220000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line57: TfrxLineView
          AllowVectorExport = True
          Left = 651.976810000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line58: TfrxLineView
          AllowVectorExport = True
          Left = 663.315400000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line59: TfrxLineView
          AllowVectorExport = True
          Left = 674.653990000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line60: TfrxLineView
          AllowVectorExport = True
          Left = 685.992580000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line61: TfrxLineView
          AllowVectorExport = True
          Left = 698.110700000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line62: TfrxLineView
          AllowVectorExport = True
          Left = 709.449290000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line63: TfrxLineView
          AllowVectorExport = True
          Left = 720.787880000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line64: TfrxLineView
          AllowVectorExport = True
          Left = 732.126470000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line65: TfrxLineView
          AllowVectorExport = True
          Left = 742.787880000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line66: TfrxLineView
          AllowVectorExport = True
          Left = 754.126470000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line67: TfrxLineView
          AllowVectorExport = True
          Left = 765.465060000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line69: TfrxLineView
          AllowVectorExport = True
          Left = 778.583180000000000000
          Top = 273.700990000000000000
          Width = 7.559060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 18.677180000000000000
          Top = 176.637910000000000000
          Width = 15.118120000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'AVALISTA(S)')
          ParentFont = False
          Rotation = 90
        end
        object Line68: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 22.677180000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line70: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 29.795300000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line71: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 37.795300000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line72: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 44.913420000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line73: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 52.913420000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line74: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 60.031540000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line75: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 68.031540000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line76: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 75.149660000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line77: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 83.149660000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line78: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 90.267780000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line79: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 98.267780000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line80: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 105.385900000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line81: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 113.385900000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line82: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 120.504020000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line83: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 128.504020000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line84: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 135.622140000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line85: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 144.401670000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line86: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 151.519790000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line87: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 159.519790000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line88: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 166.637910000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line89: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 174.637910000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line90: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 181.756030000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line91: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 189.756030000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line92: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 196.874150000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line93: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 204.874150000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line94: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 211.992270000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line95: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 219.992270000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line96: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 227.110390000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line97: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 235.110390000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line98: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 242.228510000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line99: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 250.228510000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line100: TfrxLineView
          AllowVectorExport = True
          Left = 61.590600000000000000
          Top = 257.346630000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line101: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 22.677180000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line102: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 29.795300000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line103: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 37.795300000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line104: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 44.913420000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line105: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 52.913420000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line106: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 60.031540000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line107: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 68.031540000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line108: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 75.149660000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line109: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 83.149660000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line110: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 90.267780000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line111: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 98.267780000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line112: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 105.385900000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line113: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 113.385900000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line114: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 120.504020000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line115: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 128.504020000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line116: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 135.622140000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line117: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 144.401670000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line118: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 151.519790000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line119: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 159.519790000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line120: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 166.637910000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line121: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 174.637910000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line122: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 181.756030000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line123: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 189.756030000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line124: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 196.874150000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line125: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 204.874150000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line126: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 211.992270000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line127: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 219.992270000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line128: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 227.110390000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line129: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 235.110390000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line130: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 242.228510000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line131: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 250.228510000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line132: TfrxLineView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 257.346630000000000000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 40.795300000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186)
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 42.354360000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo3: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 42.354360000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'CRE_VALOR_PARCELA'
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxContasAReceber."CRE_VALOR_PARCELA"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 71.811070000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Ao(s) ')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 601.945270000000000000
          Top = 71.811070000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'NOTA PROMISS'#211'RIA')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 141.622140000000000000
          Top = 88.740260000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'a')
          ParentFont = False
        end
        object frxDBDataset2nome_razao: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 89.826840000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          DataField = 'PRI_RAZAO'
          DataSet = frxGlobal
          DataSetName = 'Global'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_RAZAO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 89.826840000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 108.724490000000000000
          Width = 200.315090000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'OU A SUA ORDEM A QUANTIA DE')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 71.811070000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'pagar ei por esta '#250'nica via de ')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 71.811070000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DataField = 'CRE_DATA_VENCIMENTO'
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          DisplayFormat.FormatStr = 'dddddd'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxContasAReceber."CRE_DATA_VENCIMENTO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Top = 20.677180000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vencimento:')
          ParentFont = False
        end
        object frxContasReceberdata_vencimento1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 554.590910000000000000
          Top = 21.677180000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'CRE_DATA_VENCIMENTO'
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxContasAReceber."CRE_DATA_VENCIMENTO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 143.622140000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PAGAV'#201'L EM :')
          ParentFont = False
        end
        object frxDBDataset2cidade: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 143.622140000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_MUNICIPIO"]/[Global."PRI_UF"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object frxContasRecebercliente: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 162.519790000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          DataField = 'CRE_NOME_CLIENTE'
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxContasAReceber."CRE_NOME_CLIENTE"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 181.417440000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'EMITENTE')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 196.535560000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object frxContasReceberendereco: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 211.653680000000000000
          Width = 381.732530000000000000
          Height = 52.913420000000000000
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxContasAReceber."CRE_ENDERECO_CLIENTE"], N'#186' [frxContasARecebe' +
              'r."CRE_NUMERO_CLIENTE"] [frxContasAReceber."CRE_COMPLEMENTO_CLIE' +
              'NTE"]-[frxContasAReceber."CRE_BAIRRO_CLIENTE"] - [frxContasARece' +
              'ber."CRE_MUNICIPIO_CLIENTE"] - [frxContasAReceber."CRE_CEP_CLIEN' +
              'TE"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object frxContasReceberdata_compra: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 524.354670000000000000
          Top = 154.960730000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          DataField = 'CRE_DATA_COMPRA'
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxContasAReceber."CRE_DATA_COMPRA"]')
          ParentFont = False
        end
        object Line133: TfrxLineView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 170.078850000000000000
          Width = 188.976500000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 525.354670000000000000
          Top = 170.078850000000000000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA DA EMISS'#195'O')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 525.354670000000000000
          Top = 219.212740000000000000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO EMITENTE')
          ParentFont = False
        end
        object Line134: TfrxLineView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 207.874150000000000000
          Width = 317.480520000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object ValorEstenco: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 124.724490000000000000
          Width = 634.961040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[ValorEstenco]')
          ParentFont = False
        end
        object cpfcnpjglobal: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 89.708720000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataField = 'PRI_CPFCNPJ'
          DataSet = frxGlobal
          DataSetName = 'Global'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_CPFCNPJ"]')
          ParentFont = False
        end
        object cpfcnpjemitente: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 191.756030000000000000
          Top = 194.535560000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataField = 'CRE_CPF_CLIENTE'
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxContasAReceber."CRE_CPF_CLIENTE"]')
          ParentFont = False
        end
      end
    end
  end
  object frxContasAReceber: TfrxDBDataset
    UserName = 'frxContasAReceber'
    CloseDataSource = False
    DataSet = ContasAReceber
    BCDToCurrency = False
    Left = 272
    Top = 344
  end
  object frxCarne: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43774.544986435200000000
    ReportOptions.LastChange = 44047.354011157400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Picture1OnAfterData(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  CNPJ, CEP : String;'
      'begin'
      '  CNPJ := <Global."PRI_CPFCNPJ">;'
      '  //Utilizar o copy para formatar strings'
      '  case Length(CNPJ) of'
      '    11:'
      '    begin'
      
        '    Memo75.Text := Copy(CNPJ,1,3)+'#39'.'#39'+Copy(CNPJ,4,3)+'#39'.'#39'+Copy(CN' +
        'PJ,7,3)+'#39'-'#39'+Copy(CNPJ,9,2);'
      
        '    Memo49.Text := Copy(CNPJ,1,3)+'#39'.'#39'+Copy(CNPJ,4,3)+'#39'.'#39'+Copy(CN' +
        'PJ,7,3)+'#39'-'#39'+Copy(CNPJ,9,2);'
      '    end;'
      '    14:'
      '    begin'
      
        '     Memo75.Text := Copy(CNPJ,1,2)+'#39'.'#39'+Copy(CNPJ,3,3)+'#39'.'#39'+Copy(C' +
        'NPJ,6,3)+'#39'/'#39'+Copy(CNPJ,9,4)+'#39'-'#39'+Copy(CNPJ,13,2);'
      
        '     Memo49.Text := Copy(CNPJ,1,2)+'#39'.'#39'+Copy(CNPJ,3,3)+'#39'.'#39'+Copy(C' +
        'NPJ,6,3)+'#39'/'#39'+Copy(CNPJ,9,4)+'#39'-'#39'+Copy(CNPJ,13,2);'
      '    end;'
      '  end;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 352
    Top = 344
    Datasets = <
      item
        DataSet = frxContasAReceber
        DataSetName = 'frxContasAReceber'
      end
      item
        DataSet = frxGlobal
        DataSetName = 'Global'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'cnpj'
        Value = Null
      end
      item
        Name = 'cep'
        Value = Null
      end
      item
        Name = 'cliente'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 290.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 3.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 264.567100000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        DataSet = frxContasAReceber
        DataSetName = 'frxContasAReceber'
        RowCount = 0
        object frxDBDataset2fantasia: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 154.960629921260000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          DataField = 'PRI_FANTASIA'
          DataSet = frxGlobal
          DataSetName = 'Global'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_FANTASIA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 154.960629921260000000
          Top = 32.913420000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone :')
          ParentFont = False
        end
        object frxDBDataset2telefone: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 215.653680000000000000
          Top = 32.913420000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'PRI_TELEFONE'
          DataSet = frxGlobal
          DataSetName = 'Global'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_TELEFONE"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 154.960629921260000000
          Top = 10.897650000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cpf/Cnpj:')
          ParentFont = False
        end
        object img_logo: TfrxPictureView
          AllowVectorExport = True
          Left = 0.220470000000000000
          Width = 151.181200000000000000
          Height = 49.133890000000000000
          OnAfterData = 'Picture1OnAfterData'
          Center = True
          Frame.Typ = []
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Height = 264.567100000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo19: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 560.881889763780000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          DataField = 'PRI_FANTASIA'
          DataSet = frxGlobal
          DataSetName = 'Global'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_FANTASIA"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 560.913385830000000000
          Top = 33.913420000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone :')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 621.063390000000000000
          Top = 32.913420000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'PRI_TELEFONE'
          DataSet = frxGlobal
          DataSetName = 'Global'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_TELEFONE"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 560.881889763780000000
          Top = 10.897650000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cpf/Cnpj:')
          ParentFont = False
        end
        object img_logo2: TfrxPictureView
          AllowVectorExport = True
          Left = 405.630180000000000000
          Width = 151.181200000000000000
          Height = 49.133890000000000000
          OnAfterData = 'Picture1OnAfterData'
          Center = True
          Frame.Typ = []
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo75: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 604.283860000000000000
          Top = 10.118120000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[cnpj]')
          ParentFont = False
        end
        object TableObject1: TfrxTableObject
          AllowVectorExport = True
          Left = 404.000000000000000000
          Top = 51.913420000000000000
          object TableColumn1: TfrxTableColumn
            Width = 350.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow8: TfrxTableRow
            Height = 48.968522000000000000
            object TableCell4: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              object Memo24: TfrxMemoView
                AllowVectorExport = True
                Left = -1.000000000000000000
                Top = 3.779530000000000000
                Width = 52.913420000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                Memo.UTF8W = (
                  'Cliente :')
                ParentFont = False
              end
              object Memo25: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Top = 18.897650000000000000
                Width = 347.716760000000000000
                Height = 26.456710000000000000
                DataSetName = 'frxDBDataset5'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'tahoma'
                Font.Style = []
                Frame.Typ = []
                Memo.UTF8W = (
                  
                    '[frxContasAReceber."CRE_ENDERECO_CLIENTE"], N'#186' [frxContasARecebe' +
                    'r."CRE_NUMERO_CLIENTE"] [frxContasAReceber."CRE_COMPLEMENTO_CLIE' +
                    'NTE"]-[frxContasAReceber."CRE_BAIRRO_CLIENTE"] - [frxContasARece' +
                    'ber."CRE_MUNICIPIO_CLIENTE"] - [frxContasAReceber."CRE_CEP_CLIEN' +
                    'TE"]')
                ParentFont = False
              end
              object Memo26: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Left = 49.133890000000000000
                Top = 3.779530000000000000
                Width = 294.803149606299000000
                Height = 18.897650000000000000
                DataField = 'CRE_NOME_CLIENTE'
                DataSet = frxContasAReceber
                DataSetName = 'frxContasAReceber'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'tahoma'
                Font.Style = []
                Frame.Typ = []
                Memo.UTF8W = (
                  '[frxContasAReceber."CRE_NOME_CLIENTE"]')
                ParentFont = False
              end
            end
          end
          object TableRow9: TfrxTableRow
            Height = 19.968522000000000000
            object TableCell5: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              object Memo27: TfrxMemoView
                AllowVectorExport = True
                Top = 4.826778000000000000
                Width = 351.496290000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                HAlign = haCenter
                Memo.UTF8W = (
                  'Dados da Compra')
                ParentFont = False
              end
            end
          end
          object TableRow10: TfrxTableRow
            Height = 42.968522000000000000
            object TableCell6: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              object Memo28: TfrxMemoView
                AllowVectorExport = True
                Left = 0.220470000000000000
                Top = 22.874026000000000000
                Width = 86.929190000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                Memo.UTF8W = (
                  'Parcelado em :')
                ParentFont = False
              end
              object Memo29: TfrxMemoView
                AllowVectorExport = True
                Top = 3.755906000000000000
                Width = 41.574830000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                Memo.UTF8W = (
                  'Data :')
                ParentFont = False
              end
              object Memo30: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Left = 34.015770000000000000
                Top = 3.755906000000000000
                Width = 79.370130000000000000
                Height = 18.897650000000000000
                DataField = 'CRE_DATA_COMPRA'
                DataSet = frxContasAReceber
                DataSetName = 'frxContasAReceber'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = []
                Frame.Typ = []
                Memo.UTF8W = (
                  '[frxContasAReceber."CRE_DATA_COMPRA"]')
                ParentFont = False
              end
              object Memo31: TfrxMemoView
                AllowVectorExport = True
                Left = 113.385900000000000000
                Top = 3.755906000000000000
                Width = 56.692950000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                Memo.UTF8W = (
                  'N'#250'mero :')
                ParentFont = False
              end
              object Memo32: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Left = 166.519790000000000000
                Top = 3.755906000000000000
                Width = 49.133890000000000000
                Height = 18.897650000000000000
                DataField = 'CRE_NUMERO_VENDA'
                DataSet = frxContasAReceber
                DataSetName = 'frxContasAReceber'
                DisplayFormat.FormatStr = '00000'
                DisplayFormat.Kind = fkNumeric
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = []
                Frame.Typ = []
                Memo.UTF8W = (
                  '[frxContasAReceber."CRE_NUMERO_VENDA"]')
                ParentFont = False
              end
              object Memo33: TfrxMemoView
                AllowVectorExport = True
                Left = 215.433210000000000000
                Top = 3.755906000000000000
                Width = 41.574830000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                Memo.UTF8W = (
                  'Valor :')
                ParentFont = False
              end
              object Memo34: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Left = 253.228510000000000000
                Top = 3.755906000000000000
                Width = 98.267780000000000000
                Height = 15.118120000000000000
                DataField = 'CRE_VALOR_COMPRA'
                DataSet = frxContasAReceber
                DataSetName = 'frxContasAReceber'
                DisplayFormat.FormatStr = '%2.2m'
                DisplayFormat.Kind = fkNumeric
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = []
                Frame.Typ = []
                Memo.UTF8W = (
                  '[frxContasAReceber."CRE_VALOR_COMPRA"]')
                ParentFont = False
              end
              object Memo35: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Left = 86.929190000000000000
                Top = 20.653556000000000000
                Width = 22.677180000000000000
                Height = 18.897650000000000000
                DataField = 'CRE_QTD_PARCELAS'
                DataSet = frxContasAReceber
                DataSetName = 'frxContasAReceber'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                Frame.Typ = []
                HAlign = haRight
                Memo.UTF8W = (
                  '[frxContasAReceber."CRE_QTD_PARCELAS"]')
                ParentFont = False
              end
              object Memo36: TfrxMemoView
                AllowVectorExport = True
                Left = 119.165430000000000000
                Top = 22.653556000000000000
                Width = 37.795300000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = []
                Frame.Typ = []
                Memo.UTF8W = (
                  'de R$')
                ParentFont = False
              end
              object Memo37: TfrxMemoView
                AllowVectorExport = True
                Left = 230.551330000000000000
                Top = 22.653556000000000000
                Width = 52.913420000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                Memo.UTF8W = (
                  'Parcela :')
                ParentFont = False
              end
              object Memo38: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Left = 283.464750000000000000
                Top = 22.653556000000000000
                Width = 37.795300000000000000
                Height = 18.897650000000000000
                DataField = 'CRE_REF_PARCELA'
                DataSet = frxContasAReceber
                DataSetName = 'frxContasAReceber'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = []
                Frame.Typ = []
                Memo.UTF8W = (
                  '[frxContasAReceber."CRE_REF_PARCELA"]')
                ParentFont = False
              end
              object Memo39: TfrxMemoView
                AllowVectorExport = True
                Left = 109.606370000000000000
                Top = 22.653556000000000000
                Width = 15.118120000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                Memo.UTF8W = (
                  'x')
                ParentFont = False
              end
              object Memo40: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Left = 151.181200000000000000
                Top = 22.653556000000000000
                Width = 79.370130000000000000
                Height = 18.897650000000000000
                DataField = 'CRE_VALOR_PARCELA'
                DataSet = frxContasAReceber
                DataSetName = 'frxContasAReceber'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = []
                Frame.Typ = []
                Memo.UTF8W = (
                  '[frxContasAReceber."CRE_VALOR_PARCELA"]')
                ParentFont = False
              end
            end
          end
          object TableRow11: TfrxTableRow
            Height = 36.968522000000000000
            object TableCell9: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              object Memo41: TfrxMemoView
                AllowVectorExport = True
                Top = 2.141744000000000000
                Width = 102.047310000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                Memo.UTF8W = (
                  'Vencimento em :')
                ParentFont = False
              end
              object Memo42: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Left = 94.488250000000000000
                Top = 2.141744000000000000
                Width = 79.370130000000000000
                Height = 18.897650000000000000
                DataField = 'CRE_DATA_VENCIMENTO'
                DataSet = frxContasAReceber
                DataSetName = 'frxContasAReceber'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = []
                Frame.Typ = []
                Memo.UTF8W = (
                  '[frxContasAReceber."CRE_DATA_VENCIMENTO"]')
                ParentFont = False
              end
              object Memo43: TfrxMemoView
                AllowVectorExport = True
                Left = 173.858380000000000000
                Top = 2.362214000000000000
                Width = 56.692950000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                Memo.UTF8W = (
                  'Valor  :')
                ParentFont = False
              end
              object Memo44: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Left = 211.653680000000000000
                Top = 1.362214000000000000
                Width = 79.370130000000000000
                Height = 18.897650000000000000
                DataField = 'CRE_VALOR_PARCELA'
                DataSet = frxContasAReceber
                DataSetName = 'frxContasAReceber'
                DisplayFormat.FormatStr = '%2.2m'
                DisplayFormat.Kind = fkNumeric
                Frame.Typ = []
                Memo.UTF8W = (
                  '[frxContasAReceber."CRE_VALOR_PARCELA"]')
              end
              object Memo45: TfrxMemoView
                AllowVectorExport = True
                Top = 19.480334000000000000
                Width = 238.110390000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                Memo.UTF8W = (
                  'Data Recebimento : ___/___/______')
                ParentFont = False
              end
            end
          end
          object TableRow12: TfrxTableRow
            Height = 33.968522000000000000
            object TableCell10: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              object Memo46: TfrxMemoView
                AllowVectorExport = True
                Top = 1.291342000000000000
                Width = 94.488250000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                Memo.UTF8W = (
                  'Vendedor :')
                ParentFont = False
              end
              object Memo47: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Left = 64.252010000000000000
                Top = 1.291342000000000000
                Width = 162.519790000000000000
                Height = 18.897650000000000000
                DataField = 'CRE_NOME_VENDEDOR'
                DataSet = frxContasAReceber
                DataSetName = 'frxContasAReceber'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = []
                Frame.Typ = []
                Memo.UTF8W = (
                  '[frxContasAReceber."CRE_NOME_VENDEDOR"]')
                ParentFont = False
              end
            end
          end
        end
        object TableObject3: TfrxTableObject
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 51.913420000000000000
          object TableColumn3: TfrxTableColumn
            Width = 350.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow3: TfrxTableRow
            Height = 48.968522000000000000
            object TableCell3: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              object Memo56: TfrxMemoView
                AllowVectorExport = True
                Left = -1.000000000000000000
                Top = 3.779530000000000000
                Width = 52.913420000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                Memo.UTF8W = (
                  'Cliente :')
                ParentFont = False
              end
              object frxDBDataset5endereco: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Top = 18.897650000000000000
                Width = 347.716760000000000000
                Height = 26.456710000000000000
                DataSetName = 'frxDBDataset5'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'tahoma'
                Font.Style = []
                Frame.Typ = []
                Memo.UTF8W = (
                  
                    '[frxContasAReceber."CRE_ENDERECO_CLIENTE"], N'#186' [frxContasARecebe' +
                    'r."CRE_NUMERO_CLIENTE"] [frxContasAReceber."CRE_COMPLEMENTO_CLIE' +
                    'NTE"]-[frxContasAReceber."CRE_BAIRRO_CLIENTE"] - [frxContasARece' +
                    'ber."CRE_MUNICIPIO_CLIENTE"] - [frxContasAReceber."CRE_CEP_CLIEN' +
                    'TE"]')
                ParentFont = False
              end
              object cliente: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Left = 49.133890000000000000
                Top = 3.779530000000000000
                Width = 294.803149606299000000
                Height = 18.897650000000000000
                DataField = 'CRE_NOME_CLIENTE'
                DataSet = frxContasAReceber
                DataSetName = 'frxContasAReceber'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'tahoma'
                Font.Style = []
                Frame.Typ = []
                Memo.UTF8W = (
                  '[frxContasAReceber."CRE_NOME_CLIENTE"]')
                ParentFont = False
              end
            end
          end
          object TableRow4: TfrxTableRow
            Height = 19.968522000000000000
            object TableCell8: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              object Memo9: TfrxMemoView
                AllowVectorExport = True
                Top = 4.826778000000000000
                Width = 351.496290000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                HAlign = haCenter
                Memo.UTF8W = (
                  'Dados da Compra')
                ParentFont = False
              end
            end
          end
          object TableRow5: TfrxTableRow
            Height = 42.968522000000000000
            object TableCell13: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              object Memo14: TfrxMemoView
                AllowVectorExport = True
                Left = 0.220470000000000000
                Top = 22.874026000000000000
                Width = 86.929190000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                Memo.UTF8W = (
                  'Parcelado em :')
                ParentFont = False
              end
              object Memo10: TfrxMemoView
                AllowVectorExport = True
                Top = 3.755906000000000000
                Width = 41.574830000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                Memo.UTF8W = (
                  'Data :')
                ParentFont = False
              end
              object frxDBDataset5data_compra: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Left = 34.015770000000000000
                Top = 3.755906000000000000
                Width = 79.370130000000000000
                Height = 18.897650000000000000
                DataField = 'CRE_DATA_COMPRA'
                DataSet = frxContasAReceber
                DataSetName = 'frxContasAReceber'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = []
                Frame.Typ = []
                Memo.UTF8W = (
                  '[frxContasAReceber."CRE_DATA_COMPRA"]')
                ParentFont = False
              end
              object Memo11: TfrxMemoView
                AllowVectorExport = True
                Left = 113.385900000000000000
                Top = 3.755906000000000000
                Width = 56.692950000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                Memo.UTF8W = (
                  'N'#250'mero :')
                ParentFont = False
              end
              object frxDBDataset5numero_compra: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Left = 166.519790000000000000
                Top = 3.755906000000000000
                Width = 49.133890000000000000
                Height = 18.897650000000000000
                DataField = 'CRE_NUMERO_VENDA'
                DataSet = frxContasAReceber
                DataSetName = 'frxContasAReceber'
                DisplayFormat.FormatStr = '00000'
                DisplayFormat.Kind = fkNumeric
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = []
                Frame.Typ = []
                Memo.UTF8W = (
                  '[frxContasAReceber."CRE_NUMERO_VENDA"]')
                ParentFont = False
              end
              object Memo12: TfrxMemoView
                AllowVectorExport = True
                Left = 215.433210000000000000
                Top = 3.755906000000000000
                Width = 41.574830000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                Memo.UTF8W = (
                  'Valor :')
                ParentFont = False
              end
              object frxDBDataset5vlr_compra: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Left = 253.228510000000000000
                Top = 3.755906000000000000
                Width = 98.267780000000000000
                Height = 15.118120000000000000
                DataField = 'CRE_VALOR_COMPRA'
                DataSet = frxContasAReceber
                DataSetName = 'frxContasAReceber'
                DisplayFormat.FormatStr = '%2.2m'
                DisplayFormat.Kind = fkNumeric
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = []
                Frame.Typ = []
                Memo.UTF8W = (
                  '[frxContasAReceber."CRE_VALOR_COMPRA"]')
                ParentFont = False
              end
              object frxDBDataset5qtd_parcelas: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Left = 86.929190000000000000
                Top = 20.653556000000000000
                Width = 22.677180000000000000
                Height = 18.897650000000000000
                DataField = 'CRE_QTD_PARCELAS'
                DataSet = frxContasAReceber
                DataSetName = 'frxContasAReceber'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                Frame.Typ = []
                HAlign = haRight
                Memo.UTF8W = (
                  '[frxContasAReceber."CRE_QTD_PARCELAS"]')
                ParentFont = False
              end
              object Memo15: TfrxMemoView
                AllowVectorExport = True
                Left = 119.165430000000000000
                Top = 22.653556000000000000
                Width = 37.795300000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = []
                Frame.Typ = []
                Memo.UTF8W = (
                  'de R$')
                ParentFont = False
              end
              object Memo16: TfrxMemoView
                AllowVectorExport = True
                Left = 230.551330000000000000
                Top = 22.653556000000000000
                Width = 52.913420000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                Memo.UTF8W = (
                  'Parcela :')
                ParentFont = False
              end
              object frxDBDataset5ref_parcelas: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Left = 283.464750000000000000
                Top = 22.653556000000000000
                Width = 37.795300000000000000
                Height = 18.897650000000000000
                DataField = 'CRE_REF_PARCELA'
                DataSet = frxContasAReceber
                DataSetName = 'frxContasAReceber'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = []
                Frame.Typ = []
                Memo.UTF8W = (
                  '[frxContasAReceber."CRE_REF_PARCELA"]')
                ParentFont = False
              end
              object Memo13: TfrxMemoView
                AllowVectorExport = True
                Left = 109.606370000000000000
                Top = 22.653556000000000000
                Width = 15.118120000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                Memo.UTF8W = (
                  'x')
                ParentFont = False
              end
              object frxDBDataset5valor_parcelas: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Left = 151.181200000000000000
                Top = 22.653556000000000000
                Width = 79.370130000000000000
                Height = 18.897650000000000000
                DataField = 'CRE_VALOR_PARCELA'
                DataSet = frxContasAReceber
                DataSetName = 'frxContasAReceber'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = []
                Frame.Typ = []
                Memo.UTF8W = (
                  '[frxContasAReceber."CRE_VALOR_PARCELA"]')
                ParentFont = False
              end
            end
          end
          object TableRow6: TfrxTableRow
            Height = 36.968522000000000000
            object TableCell18: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              object Memo17: TfrxMemoView
                AllowVectorExport = True
                Top = 2.141744000000000000
                Width = 102.047310000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                Memo.UTF8W = (
                  'Vencimento em :')
                ParentFont = False
              end
              object frxDBDataset5data_vencimento: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Left = 94.488250000000000000
                Top = 2.141744000000000000
                Width = 79.370130000000000000
                Height = 18.897650000000000000
                DataField = 'CRE_DATA_VENCIMENTO'
                DataSet = frxContasAReceber
                DataSetName = 'frxContasAReceber'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = []
                Frame.Typ = []
                Memo.UTF8W = (
                  '[frxContasAReceber."CRE_DATA_VENCIMENTO"]')
                ParentFont = False
              end
              object Memo50: TfrxMemoView
                AllowVectorExport = True
                Left = 173.858380000000000000
                Top = 2.362214000000000000
                Width = 56.692950000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                Memo.UTF8W = (
                  'Valor  :')
                ParentFont = False
              end
              object frxDBDataset5valor_parcelas1: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Left = 211.653680000000000000
                Top = 1.362214000000000000
                Width = 79.370130000000000000
                Height = 18.897650000000000000
                DataField = 'CRE_VALOR_PARCELA'
                DataSet = frxContasAReceber
                DataSetName = 'frxContasAReceber'
                DisplayFormat.FormatStr = '%2.2m'
                DisplayFormat.Kind = fkNumeric
                Frame.Typ = []
                Memo.UTF8W = (
                  '[frxContasAReceber."CRE_VALOR_PARCELA"]')
              end
              object Memo53: TfrxMemoView
                AllowVectorExport = True
                Top = 19.480334000000000000
                Width = 238.110390000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                Memo.UTF8W = (
                  'Data Recebimento : ___/___/______')
                ParentFont = False
              end
            end
          end
          object TableRow7: TfrxTableRow
            Height = 33.968522000000000000
            object TableCell23: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              object Memo18: TfrxMemoView
                AllowVectorExport = True
                Top = 1.291342000000000000
                Width = 94.488250000000000000
                Height = 18.897650000000000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = [fsBold]
                Frame.Typ = []
                Memo.UTF8W = (
                  'Vendedor :')
                ParentFont = False
              end
              object frxDBDataset5vendedor: TfrxMemoView
                IndexTag = 1
                AllowVectorExport = True
                Left = 64.252010000000000000
                Top = 1.291342000000000000
                Width = 162.519790000000000000
                Height = 18.897650000000000000
                DataField = 'CRE_NOME_VENDEDOR'
                DataSet = frxContasAReceber
                DataSetName = 'frxContasAReceber'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'tahoma'
                Font.Style = []
                Frame.Typ = []
                Memo.UTF8W = (
                  '[frxContasAReceber."CRE_NOME_VENDEDOR"]')
                ParentFont = False
              end
            end
          end
        end
        object frxDBDataset2cidade: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 154.960629920000000000
          Top = 21.795300000000000000
          Width = 194.165430000000000000
          Height = 18.897650000000000000
          DataSet = frxGlobal
          DataSetName = 'Global'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_MUNICIPIO"] - [Global."PRI_CEP"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 561.000000000000000000
          Top = 21.102350000000000000
          Width = 194.165430000000000000
          Height = 18.897650000000000000
          DataSet = frxGlobal
          DataSetName = 'Global'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_MUNICIPIO"] - [Global."PRI_CEP"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 199.000000000000000000
          Top = 11.102350000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[cnpj]')
          ParentFont = False
        end
      end
    end
  end
  object frxNotaPromissoria: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43690.435087129600000000
    ReportOptions.LastChange = 44047.369743761600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 432
    Top = 344
    Datasets = <
      item
        DataSet = frxContasAReceber
        DataSetName = 'frxContasAReceber'
      end
      item
      end>
    Variables = <
      item
        Name = ' var'
        Value = Null
      end
      item
        Name = 'cnpj'
        Value = Null
      end
      item
        Name = 'cnpjCliente'
        Value = Null
      end
      item
        Name = 'dia'
        Value = Null
      end
      item
        Name = 'mes'
        Value = Null
      end
      item
        Name = 'ano'
        Value = Null
      end
      item
        Name = 'valor'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object TableObject1: TfrxTableObject
        AllowVectorExport = True
        Left = 1.000000000000000000
        Top = 336.291590000000000000
        object TableColumn1: TfrxTableColumn
          Width = 716.590600000000000000
          MaxWidth = 75.590600000000000000
        end
        object TableRow1: TfrxTableRow
          Height = 18.897650000000000000
          object TableCell1: TfrxTableCell
            AllowVectorExport = True
            Restrictions = [rfDontDelete]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'calibri'
            Font.Style = []
            Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            ParentFont = False
          end
        end
        object TableRow2: TfrxTableRow
          Height = 18.897650000000000000
          object TableCell5: TfrxTableCell
            AllowVectorExport = True
            Restrictions = [rfDontDelete]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'calibri'
            Font.Style = []
            Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            ParentFont = False
          end
        end
        object TableRow3: TfrxTableRow
          Height = 18.897650000000000000
          object TableCell9: TfrxTableCell
            AllowVectorExport = True
            Restrictions = [rfDontDelete]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'calibri'
            Font.Style = []
            Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            ParentFont = False
          end
        end
        object TableRow4: TfrxTableRow
          Height = 18.897650000000000000
          object TableCell13: TfrxTableCell
            AllowVectorExport = True
            Restrictions = [rfDontDelete]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'calibri'
            Font.Style = []
            Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            ParentFont = False
          end
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 306.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Top = 25.102350000000000000
          Width = 718.110700000000000000
          Height = 281.819110000000000000
          Frame.Typ = []
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 9.000000000000000000
          Top = 27.661410000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186)
          ParentFont = False
        end
        object frxContasRecebernumero_nfce: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 36.795300000000000000
          Top = 27.661410000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CRE_NUMERO_VENDA'
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxContasAReceber."CRE_NUMERO_VENDA"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 123.724490000000000000
          Top = 27.661410000000000000
          Width = 89.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object frxContasRecebervlr_compra: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 603.283860000000000000
          Top = 27.661410000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxContasAReceber."CRE_VALOR_COMPRA"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 6.559060000000000000
          Top = 53.677180000000000000
          Width = 445.984540000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Pagarei (emos) por essa '#250'nica via de nota promiss'#243'ria a,')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 103.488250000000000000
          Width = 226.771800000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Ou a sua ordem a quantia de :')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 6.559060000000000000
          Top = 152.283550000000000000
          Width = 704.598640000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'em moeda corrente deste pa'#237's, pag'#225'vel em, [Global."PRI_MUNICIPIO' +
              '"] - [Global."PRI_UF"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 6.559060000000000000
          Top = 182.078850000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'EMITENTE:')
          ParentFont = False
        end
        object frxDBDataset2nome_razao: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 6.708720000000000000
          Top = 78.299320000000000000
          Width = 415.748300000000000000
          Height = 26.456710000000000000
          DataField = 'PRI_RAZAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_RAZAO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 509.236550000000000000
          Top = 181.299320000000000000
          Width = 90.708720000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'EMISS'#195'O:')
          ParentFont = False
        end
        object frxContasReceberdata_compra: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 568.724800000000000000
          Top = 177.299320000000000000
          Width = 119.606370000000000000
          Height = 26.456710000000000000
          DataField = 'CRE_DATA_COMPRA'
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxContasAReceber."CRE_DATA_COMPRA"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 423.559060000000000000
          Top = 78.535560000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 5.567100000000000000
          Top = 236.535560000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object frxDBDataset2endereco: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 71.433070870000000000
          Top = 233.535560000000000000
          Width = 603.496290000000000000
          Height = 26.456710000000000000
          DataSetName = 'frxUsuarios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxContasAReceber."CRE_ENDERECO_CLIENTE"], N'#186' [frxContasARecebe' +
              'r."CRE_NUMERO_CLIENTE"] [frxContasAReceber."CRE_COMPLEMENTO_CLIE' +
              'NTE"]-[frxContasAReceber."CRE_BAIRRO_CLIENTE"] - [frxContasARece' +
              'ber."CRE_MUNICIPIO_CLIENTE"] - [frxContasAReceber."CRE_CEP_CLIEN' +
              'TE"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 6.559060000000000000
          Top = 271.008040000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ASS. DO EMITENTE:')
          ParentFont = False
        end
        object cnpj: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 483.149660000000000000
          Top = 76.535560000000000000
          Width = 181.417440000000000000
          Height = 22.677180000000000000
          DataField = 'PRI_CPFCNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_CPFCNPJ"]')
          ParentFont = False
        end
        object frxContasRecebercliente: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 71.559060000000000000
          Top = 180.472480000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'CRE_NOME_CLIENTE'
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxContasAReceber."CRE_NOME_CLIENTE"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 5.527830000000000000
          Top = 211.472480000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object cnpjCliente: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 71.433070870000000000
          Top = 208.472480000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DataField = 'CRE_CPF_CLIENTE'
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxContasAReceber."CRE_CPF_CLIENTE"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 118.000000000000000000
          Top = 293.527520000000000000
          Width = 560.000000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object valor: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 213.000000000000000000
          Top = 103.519658190000000000
          Width = 495.370130000000000000
          Height = 44.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[valor]')
          ParentFont = False
        end
        object frxContasAReceberCRE_DATA_VENCIMENTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 214.000000000000000000
          Top = 28.102350000000000000
          Width = 341.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxContasAReceber."CRE_DATA_VENCIMENTO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 0.102350000000000000
          Width = 717.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nota Promiss'#243'ria')
          ParentFont = False
        end
      end
    end
  end
  object frxReceibo: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43693.536713807900000000
    ReportOptions.LastChange = 44053.705479641200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  CNPJ, CEP : String;                                           '
      'begin'
      
        '  CNPJ :=<Global."PRI_CPFCNPJ">;                                ' +
        '    '
      
        '  //Utilizar o copy para formatar strings                       ' +
        '                                                            '
      '  case Length(CNPJ) of'
      
        '    11: memo12.Text := '#39'Cpf : '#39'+ Copy(CNPJ,1,3)+'#39'.'#39'+Copy(CNPJ,4,' +
        '3)+'#39'.'#39'+Copy(CNPJ,7,3)+'#39'-'#39'+Copy(CNPJ,9,2);   '
      
        '    14: memo12.Text :='#39'Cnpj : '#39' + Copy(CNPJ,1,2)+'#39'.'#39'+Copy(CNPJ,3' +
        ',3)+'#39'.'#39'+Copy(CNPJ,6,3)+'#39'/'#39'+Copy(CNPJ,9,4)+'#39'-'#39'+Copy(CNPJ,13,2);'
      '  end;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 520
    Top = 344
    Datasets = <
      item
        DataSet = frxContasAReceber
        DataSetName = 'frxContasAReceber'
      end
      item
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 88.000000000000000000
      PaperHeight = 83.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 3.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 288.771800000000000000
        Top = 18.897650000000000000
        Width = 294.803340000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxContasAReceber
        DataSetName = 'frxContasAReceber'
        RowCount = 0
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 197.315090000000000000
          Width = 288.039580000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '__________________________________________')
          ParentFont = False
        end
        object frxContasAReceberCRE_CODIGO_CLIENTE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = 93.409400000000000000
          Width = 50.944960000000000000
          Height = 18.897650000000000000
          DataField = 'CRE_CODIGO_CLIENTE'
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          DisplayFormat.FormatStr = '000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxContasAReceber."CRE_CODIGO_CLIENTE"]')
          ParentFont = False
        end
        object frxContasAReceberCRE_NOME_CLIENTE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 56.000000000000000000
          Top = 93.307050000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'CRE_NOME_CLIENTE'
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'segoe UI'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxContasAReceber."CRE_NOME_CLIENTE"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 93.315090000000000000
          Top = 113.000000000000000000
          Width = 107.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'V. Compra:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 145.133890000000000000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ref. :')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 113.000000000000000000
          Width = 88.165430000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vencimento:')
          ParentFont = False
        end
        object frxContasReceberdata_compra: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 2.165430000000000000
          Top = 128.000000000000000000
          Width = 87.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'segoe UI'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxContasAReceber."CRE_DATA_VENCIMENTO"]')
          ParentFont = False
        end
        object frxContasRecebervlr_compra: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 91.889920000000000000
          Top = 128.000000000000000000
          Width = 85.929190000000000000
          Height = 18.897650000000000000
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxContasAReceber."CRE_VALOR_COMPRA"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 199.779530000000000000
          Top = 113.456710000000000000
          Width = 102.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'V. Parcela')
          ParentFont = False
        end
        object frxContasRecebervalor_parcelas1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 197.488250000000000000
          Top = 128.456710000000000000
          Width = 59.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxContasAReceber."CRE_VALOR_PARCELA"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 74.299320000000000000
          Top = 145.456710000000000000
          Width = 70.370130000000000000
          Height = 18.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'V. Pago:')
          ParentFont = False
        end
        object frxContasReceberref_parcelas1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.488250000000000000
          Top = 158.133890000000000000
          Width = 28.354360000000000000
          Height = 18.897650000000000000
          DataField = 'CRE_REF_PARCELA'
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxContasAReceber."CRE_REF_PARCELA"]')
          ParentFont = False
        end
        object frxContasRecebervlorJurosatrazado: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 150.196970000000000000
          Top = 161.133890000000000000
          Width = 48.031540000000000000
          Height = 18.897650000000000000
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxContasAReceber."CRE_VALOR_JUROS"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 147.842610000000000000
          Top = 145.133890000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Juros:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 204.551330000000000000
          Top = 145.133890000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Multa:')
          ParentFont = False
        end
        object frxContasRecebermulta: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 212.464750000000000000
          Top = 161.133890000000000000
          Width = 48.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxContasAReceber."CRE_VALOR_MULTA"]')
          ParentFont = False
        end
        object frxContasAReceberCRE_VALOR_PAGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 46.000000000000000000
          Top = 161.409400000000000000
          Width = 88.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'segoe UI'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[frxContasAReceber."CRE_VALOR_PAGO"]')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 10.000000000000000000
          Top = 183.409400000000000000
          Width = 293.488250000000000000
          Height = 71.897650000000000000
          Frame.Typ = []
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 78.409400000000000000
          Width = 52.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'segoe UI'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 56.000000000000000000
          Top = 77.409400000000000000
          Width = 268.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'segoe UI'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object frxDBDataset2nome_razao: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 100.000000000000000000
          Top = 1.661410000000000000
          Width = 227.819110000000000000
          Height = 15.897650000000000000
          DataField = 'PRI_RAZAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_RAZAO"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = 2.102350000000000000
          Width = 94.488250000000000000
          Height = 44.897650000000000000
          Center = True
          Frame.Typ = []
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 101.000000000000000000
          Top = 13.102350000000000000
          Width = 229.488250000000000000
          Height = 16.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'segoe UI'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CpfCnpj:')
          ParentFont = False
        end
        object GlobalPRI_ENDERECO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 101.000000000000000000
          Top = 25.000000000000000000
          Width = 193.630180000000000000
          Height = 26.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'segoe UI'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[Global."PRI_ENDERECO"] , [Global."PRI_NUMERO"] , [Global."PRI_B' +
              'AIRRO"], '
            '[Global."PRI_MUNICIPIO"] - [Global."PRI_UF"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object TableObject1: TfrxTableObject
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 58.102350000000000000
          object TableColumn1: TfrxTableColumn
            Width = 290.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow1: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell1: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Frame.Typ = [ftTop, ftBottom]
              Fill.BackColor = clMenuText
              HAlign = haCenter
              Memo.UTF8W = (
                '**Comprovante de Pagamento**')
              ParentFont = False
            end
          end
        end
        object frxContasAReceberCRE_DATA_QUITACAO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = 222.102350000000000000
          Width = 291.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Recebemos : [frxContasAReceber."CRE_DATA_QUITACAO"]')
          ParentFont = False
        end
        object GlobalPRI_CPFCNPJ: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 234.102350000000000000
          Width = 292.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Global."PRI_razao"]')
          ParentFont = False
        end
        object frxContasAReceberCRE_NUMERO_VENDA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 155.000000000000000000
          Top = 77.102350000000000000
          Width = 110.944960000000000000
          Height = 18.897650000000000000
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          DisplayFormat.FormatStr = '000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' Venda : [frxContasAReceber."CRE_NUMERO_VENDA"]')
          ParentFont = False
        end
      end
    end
  end
  object frxContaReceberRel1: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44041.676489571800000000
    ReportOptions.LastChange = 44054.456814606480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  CNPJ, CEP, CNPJCLI : String;'
      'begin'
      '  CNPJ := <Global."PRI_CPFCNPJ">;'
      '  CNPJCLI := <frxContasAReceber."CRE_CPF_CLIENTE">;'
      '  //Utilizar o copy para formatar strings'
      '  case Length(CNPJ) of'
      
        '    11: Memo1.Text := '#39'Cpf : '#39'+Copy(CNPJ,1,3)+'#39'.'#39'+Copy(CNPJ,4,3)' +
        '+'#39'.'#39'+Copy(CNPJ,7,3)+'#39'-'#39'+Copy(CNPJ,9,2);'
      
        '    14: Memo1.Text := '#39'Cnpj : '#39'+ Copy(CNPJ,1,2)+'#39'.'#39'+Copy(CNPJ,3,' +
        '3)+'#39'.'#39'+Copy(CNPJ,6,3)+'#39'/'#39'+Copy(CNPJ,9,4)+'#39'-'#39'+Copy(CNPJ,13,2);'
      '  end;'
      ''
      'end;'
      ''
      ''
      'begin'
      ''
      'end.')
    Left = 88
    Top = 401
    Datasets = <
      item
        DataSet = frxContasAReceber
        DataSetName = 'frxContasAReceber'
      end
      item
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Titulo'
        Value = Null
      end
      item
        Name = 'data3'
        Value = ''
      end
      item
        Name = 'data4'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 79.677180000000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object TableObject4: TfrxTableObject
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 2.007730000000000000
          object TableColumn19: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn20: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn21: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn22: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn23: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow4: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell19: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'Totais ')
              ParentFont = False
              ColSpan = 5
            end
            object TableCell20: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
            object TableCell21: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
            object TableCell22: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
            object TableCell23: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
            end
          end
          object TableRow5: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell24: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'Atrasado')
              ParentFont = False
            end
            object TableCell25: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'Corrigido')
              ParentFont = False
            end
            object TableCell26: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'A Vencer')
              ParentFont = False
            end
            object TableCell27: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'v. Parcelas')
              ParentFont = False
            end
            object TableCell28: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'V. Atual')
              ParentFont = False
            end
          end
          object TableRow6: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell29: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                
                  '[SUM(IIF(<frxContasAReceber."CRE_STATUS">='#39'Atrasado'#39',<frxContasA' +
                  'Receber."CRE_VALOR_PARCELA_LIMPA">,0),MasterData1,2)] ')
              ParentFont = False
            end
            object TableCell30: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                
                  '[SUM(IIF(<frxContasAReceber."CRE_STATUS">='#39'Atrasado'#39', <frxContas' +
                  'AReceber."CRE_VALOR_PARCELA">,0),MasterData1,2)] ')
              ParentFont = False
            end
            object TableCell31: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                
                  '[SUM(IIF(<frxContasAReceber."CRE_STATUS">='#39'A Vencer'#39', <frxContas' +
                  'AReceber."CRE_VALOR_PARCELA">,0),MasterData1,2)] ')
              ParentFont = False
            end
            object TableCell32: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                
                  '[SUM(<frxContasAReceber."CRE_VALOR_PARCELA_LIMPA">,MasterData1,2' +
                  ')] ')
              ParentFont = False
            end
            object TableCell33: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                '[SUM(<frxContasAReceber."CRE_VALOR_PARCELA">,MasterData1,2)] ')
              ParentFont = False
            end
          end
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 85.763254720000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 554.000000000000000000
          Top = 28.102350000000000000
          Width = 65.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 154.000000000000000000
          Top = 51.102350000000000000
          Width = 623.000000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 608.000000000000000000
          Top = 28.102350000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object img_logo: TfrxPictureView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 0.102350000000000000
          Width = 150.425196850000000000
          Height = 83.905511810000000000
          Center = True
          Frame.Typ = []
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object GlobalPRI_FANTASIA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 153.000000000000000000
          Top = 0.102350000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'PRI_FANTASIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_FANTASIA"]')
          ParentFont = False
        end
        object GlobalPRI_ENDERECO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 153.000000000000000000
          Top = 13.102350000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[Global."PRI_ENDERECO"] N'#186' [Global."PRI_NUMERO"], [Global."PRI_B' +
              'AIRRO"] - [Global."PRI_MUNICIPIO"]'
            ']')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 555.000000000000000000
          Top = 0.102350000000000000
          Width = 195.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cnpj :')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 554.000000000000000000
          Top = 14.102350000000000000
          Width = 65.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone :')
          ParentFont = False
        end
        object GlobalPRI_TELEFONE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 614.000000000000000000
          Top = 14.102350000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'PRI_TELEFONE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_TELEFONE"]')
          ParentFont = False
        end
        object Titulo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 62.102350000000000000
          Width = 756.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Titulo]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 483.000000000000000000
          Top = 62.102350000000000000
          Width = 267.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Per'#237'odo : [data3] a [data4]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 47.070614720000000000
        Top = 166.299320000000000000
        Width = 755.906000000000000000
        Condition = 'frxContasAReceber."CRE_CODIGO_CLIENTE"'
        object frxContasAReceberCRE_CODIGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 751.944960000000000000
          Height = 16.897650000000000000
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = cl3DLight
          Memo.UTF8W = (
            
              '[frxContasAReceber."CRE_CODIGO"] - [frxContasAReceber."CRE_NOME_' +
              'CLIENTE"] - Rg/Ie : [frxContasAReceber."CRE_RGIE_CLIENTE"]-Cpf/c' +
              'npj : [frxContasAReceber."CRE_CPF_CLIENTE"] - Telefone : [frxCon' +
              'tasAReceber."CRE_TELEFONE_CLIENTE"]')
          ParentFont = False
          Formats = <
            item
              FormatStr = '000000'
              Kind = fkNumeric
            end
            item
            end
            item
            end
            item
              Kind = fkNumeric
            end
            item
              FormatStr = '###.###.###-##'
              Kind = fkNumeric
            end>
        end
        object frxContasAReceberCRE_ENDERECO_CLIENTE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 13.000000000000000000
          Width = 750.630180000000000000
          Height = 15.897650000000000000
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = cl3DLight
          Memo.UTF8W = (
            
              '[frxContasAReceber."CRE_ENDERECO_CLIENTE"], N'#186' [frxContasARecebe' +
              'r."CRE_NUMERO_CLIENTE"], [frxContasAReceber."CRE_BAIRRO_CLIENTE"' +
              '] - [frxContasAReceber."CRE_MUNICIPIO_CLIENTE"] - [frxContasARec' +
              'eber."CRE_CEP_CLIENTE"]')
          ParentFont = False
        end
        object TableObject2: TfrxTableObject
          AllowVectorExport = True
          Top = 32.708410000000000000
          object TableColumn7: TfrxTableColumn
            Width = 110.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn8: TfrxTableColumn
            Width = 112.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn9: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn10: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn11: TfrxTableColumn
            Width = 114.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn12: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow2: TfrxTableRow
            Height = 14.362204724409400000
            object TableCell7: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                ' Compra')
              ParentFont = False
              VAlign = vaBottom
            end
            object TableCell8: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                'F. Pagamento')
              ParentFont = False
              VAlign = vaBottom
            end
            object TableCell9: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'Vencimento')
              ParentFont = False
            end
            object TableCell10: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'V. Parcela')
              ParentFont = False
            end
            object TableCell11: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'V. Atual')
              ParentFont = False
            end
            object TableCell12: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'Status')
              ParentFont = False
            end
          end
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 14.362204724409400000
        Top = 238.110390000000000000
        Width = 755.906000000000000000
        DataSet = frxContasAReceber
        DataSetName = 'frxContasAReceber'
        RowCount = 0
        object TableObject1: TfrxTableObject
          AllowVectorExport = True
          Top = 0.007730000000000000
          object TableColumn1: TfrxTableColumn
            Width = 109.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn2: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn3: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn4: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn5: TfrxTableColumn
            Width = 114.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn6: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow1: TfrxTableRow
            Height = 14.362204724409400000
            object TableCell1: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'CRE_DATA_COMPRA'
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '[frxContasAReceber."CRE_DATA_COMPRA"]')
              ParentFont = False
            end
            object TableCell2: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxContasAReceber."CRE_FORMA_PAGAMENTO"]')
              ParentFont = False
            end
            object TableCell3: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'CRE_DATA_VENCIMENTO'
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '[frxContasAReceber."CRE_DATA_VENCIMENTO"]')
              ParentFont = False
            end
            object TableCell4: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                '[frxContasAReceber."CRE_VALOR_PARCELA_LIMPA"] ')
              ParentFont = False
            end
            object TableCell5: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                '[frxContasAReceber."CRE_VALOR_PARCELA"] ')
              ParentFont = False
            end
            object TableCell6: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxContasAReceber."CRE_STATUS"]')
              ParentFont = False
            end
          end
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 24.677180000000000000
        Top = 275.905690000000000000
        Width = 755.906000000000000000
        object TableObject3: TfrxTableObject
          AllowVectorExport = True
          Top = 2.000000000000000000
          object TableColumn13: TfrxTableColumn
            Width = 110.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn14: TfrxTableColumn
            Width = 112.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn15: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn16: TfrxTableColumn
            Width = 115.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn17: TfrxTableColumn
            Width = 112.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn18: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow3: TfrxTableRow
            Height = 16.362204724409400000
            object TableCell13: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              Fill.BackColor = cl3DLight
              Memo.UTF8W = (
                
                  'Atrasado : [SUM(IIF(<frxContasAReceber."CRE_STATUS">='#39'Atrasado'#39',' +
                  ' <frxContasAReceber."CRE_VALOR_PARCELA_LIMPA">,0),MasterData1)]')
              ParentFont = False
            end
            object TableCell14: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              Fill.BackColor = cl3DLight
              Memo.UTF8W = (
                
                  'Corrigido : [SUM(IIF(<frxContasAReceber."CRE_STATUS">='#39'Atrasado'#39 +
                  ', <frxContasAReceber."CRE_VALOR_PARCELA">,0),MasterData1)]')
              ParentFont = False
            end
            object TableCell15: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              Fill.BackColor = cl3DLight
              Memo.UTF8W = (
                
                  'A Vencer : [SUM(IIF(<frxContasAReceber."CRE_STATUS">='#39'A Vencer'#39',' +
                  ' <frxContasAReceber."CRE_VALOR_PARCELA">,0),MasterData1)]')
              ParentFont = False
            end
            object TableCell16: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                '[SUM(<frxContasAReceber."CRE_VALOR_PARCELA_LIMPA">,MasterData1)]')
              ParentFont = False
            end
            object TableCell17: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                '[SUM(<frxContasAReceber."CRE_VALOR_PARCELA">,MasterData1)] ')
              ParentFont = False
            end
            object TableCell18: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              ParentFont = False
            end
          end
        end
      end
    end
  end
  object frxContasAreceberAvencer: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44041.676489571800000000
    ReportOptions.LastChange = 44054.465894282410000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  CNPJ, CEP, CNPJCLI : String;'
      'begin'
      '  CNPJ := <Global."PRI_CPFCNPJ">;'
      '  CNPJCLI := <frxContasAReceber."CRE_CPF_CLIENTE">;'
      '  //Utilizar o copy para formatar strings'
      '  case Length(CNPJ) of'
      
        '    11: Memo1.Text := '#39'Cpf : '#39'+Copy(CNPJ,1,3)+'#39'.'#39'+Copy(CNPJ,4,3)' +
        '+'#39'.'#39'+Copy(CNPJ,7,3)+'#39'-'#39'+Copy(CNPJ,9,2);'
      
        '    14: Memo1.Text := '#39'Cnpj : '#39'+ Copy(CNPJ,1,2)+'#39'.'#39'+Copy(CNPJ,3,' +
        '3)+'#39'.'#39'+Copy(CNPJ,6,3)+'#39'/'#39'+Copy(CNPJ,9,4)+'#39'-'#39'+Copy(CNPJ,13,2);'
      '  end;'
      ''
      'end;'
      ''
      ''
      'begin'
      ''
      'end.')
    Left = 184
    Top = 401
    Datasets = <
      item
        DataSet = frxContasAReceber
        DataSetName = 'frxContasAReceber'
      end
      item
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Titulo'
        Value = Null
      end
      item
        Name = 'data3'
        Value = Null
      end
      item
        Name = 'data4'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 79.677180000000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object TableObject4: TfrxTableObject
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 2.007730000000000000
          object TableColumn19: TfrxTableColumn
            Width = 202.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow4: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell19: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haCenter
              Memo.UTF8W = (
                'Totais ')
              ParentFont = False
            end
          end
          object TableRow5: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell24: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'A vencer')
              ParentFont = False
            end
          end
          object TableRow6: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell29: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                
                  '[SUM(IIF(<frxContasAReceber."CRE_STATUS">='#39'A Vencer'#39', <frxContas' +
                  'AReceber."CRE_VALOR_PARCELA">,0),MasterData1,2)] ')
              ParentFont = False
            end
          end
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 85.763254720000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 554.000000000000000000
          Top = 28.102350000000000000
          Width = 65.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 154.000000000000000000
          Top = 51.102350000000000000
          Width = 623.000000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 608.000000000000000000
          Top = 28.102350000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object img_logo: TfrxPictureView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 0.102350000000000000
          Width = 150.425196850000000000
          Height = 83.905511810000000000
          Center = True
          Frame.Typ = []
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object GlobalPRI_FANTASIA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 153.000000000000000000
          Top = 0.102350000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'PRI_FANTASIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_FANTASIA"]')
          ParentFont = False
        end
        object GlobalPRI_ENDERECO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 153.000000000000000000
          Top = 13.102350000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[Global."PRI_ENDERECO"] N'#186' [Global."PRI_NUMERO"], [Global."PRI_B' +
              'AIRRO"] - [Global."PRI_MUNICIPIO"]'
            ']')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 555.000000000000000000
          Top = 0.102350000000000000
          Width = 195.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cnpj :')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 554.000000000000000000
          Top = 14.102350000000000000
          Width = 65.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone :')
          ParentFont = False
        end
        object GlobalPRI_TELEFONE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 614.000000000000000000
          Top = 14.102350000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'PRI_TELEFONE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_TELEFONE"]')
          ParentFont = False
        end
        object Titulo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 62.102350000000000000
          Width = 756.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Titulo]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 483.000000000000000000
          Top = 62.102350000000000000
          Width = 267.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Per'#237'odo : [data3] a [data4]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 47.070614720000000000
        Top = 166.299320000000000000
        Width = 755.906000000000000000
        Condition = 'frxContasAReceber."CRE_CODIGO_CLIENTE"'
        object frxContasAReceberCRE_CODIGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 751.944960000000000000
          Height = 16.897650000000000000
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = cl3DLight
          Memo.UTF8W = (
            
              '[frxContasAReceber."CRE_CODIGO"] - [frxContasAReceber."CRE_NOME_' +
              'CLIENTE"] - Rg/Ie : [frxContasAReceber."CRE_RGIE_CLIENTE"]-Cpf/c' +
              'npj : [frxContasAReceber."CRE_CPF_CLIENTE"] - Telefone : [frxCon' +
              'tasAReceber."CRE_TELEFONE_CLIENTE"]')
          ParentFont = False
          Formats = <
            item
              FormatStr = '000000'
              Kind = fkNumeric
            end
            item
            end
            item
            end
            item
              Kind = fkNumeric
            end
            item
              FormatStr = '###.###.###-##'
              Kind = fkNumeric
            end>
        end
        object frxContasAReceberCRE_ENDERECO_CLIENTE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 13.000000000000000000
          Width = 750.630180000000000000
          Height = 15.897650000000000000
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = cl3DLight
          Memo.UTF8W = (
            
              '[frxContasAReceber."CRE_ENDERECO_CLIENTE"], N'#186' [frxContasARecebe' +
              'r."CRE_NUMERO_CLIENTE"], [frxContasAReceber."CRE_BAIRRO_CLIENTE"' +
              '] - [frxContasAReceber."CRE_MUNICIPIO_CLIENTE"] - [frxContasARec' +
              'eber."CRE_CEP_CLIENTE"]')
          ParentFont = False
        end
        object TableObject2: TfrxTableObject
          AllowVectorExport = True
          Top = 32.708410000000000000
          object TableColumn7: TfrxTableColumn
            Width = 110.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn8: TfrxTableColumn
            Width = 112.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn9: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn10: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn11: TfrxTableColumn
            Width = 114.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn12: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow2: TfrxTableRow
            Height = 14.362204724409400000
            object TableCell7: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                ' Compra')
              ParentFont = False
              VAlign = vaBottom
            end
            object TableCell8: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                'F. Pagamento')
              ParentFont = False
              VAlign = vaBottom
            end
            object TableCell9: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'Vencimento')
              ParentFont = False
            end
            object TableCell10: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'V. Parcela')
              ParentFont = False
            end
            object TableCell11: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'V. Atual')
              ParentFont = False
            end
            object TableCell12: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'Status')
              ParentFont = False
            end
          end
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 14.362204724409400000
        Top = 238.110390000000000000
        Width = 755.906000000000000000
        DataSet = frxContasAReceber
        DataSetName = 'frxContasAReceber'
        RowCount = 0
        object TableObject1: TfrxTableObject
          AllowVectorExport = True
          Top = 0.007730000000000000
          object TableColumn1: TfrxTableColumn
            Width = 109.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn2: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn3: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn4: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn5: TfrxTableColumn
            Width = 114.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn6: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow1: TfrxTableRow
            Height = 14.362204724409400000
            object TableCell1: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'CRE_DATA_COMPRA'
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '[frxContasAReceber."CRE_DATA_COMPRA"]')
              ParentFont = False
            end
            object TableCell2: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxContasAReceber."CRE_FORMA_PAGAMENTO"]')
              ParentFont = False
            end
            object TableCell3: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'CRE_DATA_VENCIMENTO'
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '[frxContasAReceber."CRE_DATA_VENCIMENTO"]')
              ParentFont = False
            end
            object TableCell4: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                '[frxContasAReceber."CRE_VALOR_PARCELA_LIMPA"] ')
              ParentFont = False
            end
            object TableCell5: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                '[frxContasAReceber."CRE_VALOR_PARCELA"] ')
              ParentFont = False
            end
            object TableCell6: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxContasAReceber."CRE_STATUS"]')
              ParentFont = False
            end
          end
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 24.677180000000000000
        Top = 275.905690000000000000
        Width = 755.906000000000000000
        object TableObject3: TfrxTableObject
          AllowVectorExport = True
          Top = 2.000000000000000000
          object TableColumn13: TfrxTableColumn
            Width = 110.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn14: TfrxTableColumn
            Width = 112.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn15: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn16: TfrxTableColumn
            Width = 115.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn17: TfrxTableColumn
            Width = 112.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn18: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow3: TfrxTableRow
            Height = 16.362204724409400000
            object TableCell13: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              Fill.BackColor = cl3DLight
              Memo.UTF8W = (
                '')
              ParentFont = False
            end
            object TableCell14: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              Fill.BackColor = cl3DLight
              Memo.UTF8W = (
                '')
              ParentFont = False
            end
            object TableCell15: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              Fill.BackColor = cl3DLight
              Memo.UTF8W = (
                
                  'A Vencer : [SUM(IIF(<frxContasAReceber."CRE_STATUS">='#39'A Vencer'#39',' +
                  ' <frxContasAReceber."CRE_VALOR_PARCELA">,0),MasterData1)]')
              ParentFont = False
            end
            object TableCell16: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                '[SUM(<frxContasAReceber."CRE_VALOR_PARCELA_LIMPA">,MasterData1)]')
              ParentFont = False
            end
            object TableCell17: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                '[SUM(<frxContasAReceber."CRE_VALOR_PARCELA">,MasterData1)] ')
              ParentFont = False
            end
            object TableCell18: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              ParentFont = False
            end
          end
        end
      end
    end
  end
  object frxContasAreceberAtrasado: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44041.676489571800000000
    ReportOptions.LastChange = 44054.557774583340000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  CNPJ, CEP, CNPJCLI : String;'
      'begin'
      '  CNPJ := <Global."PRI_CPFCNPJ">;'
      '  CNPJCLI := <frxContasAReceber."CRE_CPF_CLIENTE">;'
      '  //Utilizar o copy para formatar strings'
      '  case Length(CNPJ) of'
      
        '    11: Memo1.Text := '#39'Cpf : '#39'+Copy(CNPJ,1,3)+'#39'.'#39'+Copy(CNPJ,4,3)' +
        '+'#39'.'#39'+Copy(CNPJ,7,3)+'#39'-'#39'+Copy(CNPJ,9,2);'
      
        '    14: Memo1.Text := '#39'Cnpj : '#39'+ Copy(CNPJ,1,2)+'#39'.'#39'+Copy(CNPJ,3,' +
        '3)+'#39'.'#39'+Copy(CNPJ,6,3)+'#39'/'#39'+Copy(CNPJ,9,4)+'#39'-'#39'+Copy(CNPJ,13,2);'
      '  end;'
      ''
      'end;'
      ''
      ''
      'begin'
      ''
      'end.')
    Left = 288
    Top = 401
    Datasets = <
      item
        DataSet = frxContasAReceber
        DataSetName = 'frxContasAReceber'
      end
      item
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Titulo'
        Value = Null
      end
      item
        Name = 'data3'
        Value = Null
      end
      item
        Name = 'data4'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 79.677180000000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object TableObject4: TfrxTableObject
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 2.007730000000000000
          object TableColumn19: TfrxTableColumn
            Width = 202.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow4: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell19: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haCenter
              Memo.UTF8W = (
                'Totais ')
              ParentFont = False
            end
          end
          object TableRow5: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell24: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'A trasado')
              ParentFont = False
            end
          end
          object TableRow6: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell29: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                
                  '[SUM(IIF(<frxContasAReceber."CRE_STATUS">='#39'Atrasado'#39', <frxContas' +
                  'AReceber."CRE_VALOR_PARCELA">,0),MasterData1,2)] ')
              ParentFont = False
            end
          end
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 85.763254720000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 554.000000000000000000
          Top = 28.102350000000000000
          Width = 65.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 154.000000000000000000
          Top = 51.102350000000000000
          Width = 623.000000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 608.000000000000000000
          Top = 28.102350000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object img_logo: TfrxPictureView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 0.102350000000000000
          Width = 150.425196850000000000
          Height = 83.905511810000000000
          Center = True
          Frame.Typ = []
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object GlobalPRI_FANTASIA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 153.000000000000000000
          Top = 0.102350000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'PRI_FANTASIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_FANTASIA"]')
          ParentFont = False
        end
        object GlobalPRI_ENDERECO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 153.000000000000000000
          Top = 13.102350000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[Global."PRI_ENDERECO"] N'#186' [Global."PRI_NUMERO"], [Global."PRI_B' +
              'AIRRO"] - [Global."PRI_MUNICIPIO"]'
            ']')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 555.000000000000000000
          Top = 0.102350000000000000
          Width = 195.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cnpj :')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 554.000000000000000000
          Top = 14.102350000000000000
          Width = 65.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone :')
          ParentFont = False
        end
        object GlobalPRI_TELEFONE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 614.000000000000000000
          Top = 14.102350000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'PRI_TELEFONE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_TELEFONE"]')
          ParentFont = False
        end
        object Titulo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 62.102350000000000000
          Width = 756.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Titulo]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 483.000000000000000000
          Top = 62.102350000000000000
          Width = 267.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Per'#237'odo : [data3] a [data4]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 47.070614720000000000
        Top = 166.299320000000000000
        Width = 755.906000000000000000
        Condition = 'frxContasAReceber."CRE_CODIGO_CLIENTE"'
        object frxContasAReceberCRE_CODIGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 751.944960000000000000
          Height = 16.897650000000000000
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = cl3DLight
          Memo.UTF8W = (
            
              '[frxContasAReceber."CRE_CODIGO"] - [frxContasAReceber."CRE_NOME_' +
              'CLIENTE"] - Rg/Ie : [frxContasAReceber."CRE_RGIE_CLIENTE"]-Cpf/c' +
              'npj : [frxContasAReceber."CRE_CPF_CLIENTE"] - Telefone : [frxCon' +
              'tasAReceber."CRE_TELEFONE_CLIENTE"]')
          ParentFont = False
          Formats = <
            item
              FormatStr = '000000'
              Kind = fkNumeric
            end
            item
            end
            item
            end
            item
              Kind = fkNumeric
            end
            item
              FormatStr = '###.###.###-##'
              Kind = fkNumeric
            end>
        end
        object frxContasAReceberCRE_ENDERECO_CLIENTE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 13.000000000000000000
          Width = 750.630180000000000000
          Height = 15.897650000000000000
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = cl3DLight
          Memo.UTF8W = (
            
              '[frxContasAReceber."CRE_ENDERECO_CLIENTE"], N'#186' [frxContasARecebe' +
              'r."CRE_NUMERO_CLIENTE"], [frxContasAReceber."CRE_BAIRRO_CLIENTE"' +
              '] - [frxContasAReceber."CRE_MUNICIPIO_CLIENTE"] - [frxContasARec' +
              'eber."CRE_CEP_CLIENTE"]')
          ParentFont = False
        end
        object TableObject2: TfrxTableObject
          AllowVectorExport = True
          Top = 32.708410000000000000
          object TableColumn7: TfrxTableColumn
            Width = 110.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn8: TfrxTableColumn
            Width = 112.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn9: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn10: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn11: TfrxTableColumn
            Width = 114.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn12: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow2: TfrxTableRow
            Height = 14.362204724409400000
            object TableCell7: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                ' Compra')
              ParentFont = False
              VAlign = vaBottom
            end
            object TableCell8: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                'F. Pagamento')
              ParentFont = False
              VAlign = vaBottom
            end
            object TableCell9: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'Vencimento')
              ParentFont = False
            end
            object TableCell10: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'V. Parcela')
              ParentFont = False
            end
            object TableCell11: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'V. Atual')
              ParentFont = False
            end
            object TableCell12: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'Status')
              ParentFont = False
            end
          end
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 14.362204724409400000
        Top = 238.110390000000000000
        Width = 755.906000000000000000
        DataSet = frxContasAReceber
        DataSetName = 'frxContasAReceber'
        RowCount = 0
        object TableObject1: TfrxTableObject
          AllowVectorExport = True
          Top = 0.007730000000000000
          object TableColumn1: TfrxTableColumn
            Width = 109.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn2: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn3: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn4: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn5: TfrxTableColumn
            Width = 114.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn6: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow1: TfrxTableRow
            Height = 14.362204724409400000
            object TableCell1: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'CRE_DATA_COMPRA'
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '[frxContasAReceber."CRE_DATA_COMPRA"]')
              ParentFont = False
            end
            object TableCell2: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxContasAReceber."CRE_FORMA_PAGAMENTO"]')
              ParentFont = False
            end
            object TableCell3: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'CRE_DATA_VENCIMENTO'
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '[frxContasAReceber."CRE_DATA_VENCIMENTO"]')
              ParentFont = False
            end
            object TableCell4: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                '[frxContasAReceber."CRE_VALOR_PARCELA_LIMPA"] ')
              ParentFont = False
            end
            object TableCell5: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                '[frxContasAReceber."CRE_VALOR_PARCELA"] ')
              ParentFont = False
            end
            object TableCell6: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxContasAReceber."CRE_STATUS"]')
              ParentFont = False
            end
          end
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 24.677180000000000000
        Top = 275.905690000000000000
        Width = 755.906000000000000000
        object TableObject3: TfrxTableObject
          AllowVectorExport = True
          Top = 2.000000000000000000
          object TableColumn13: TfrxTableColumn
            Width = 110.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn14: TfrxTableColumn
            Width = 112.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn15: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn16: TfrxTableColumn
            Width = 115.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn17: TfrxTableColumn
            Width = 112.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn18: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow3: TfrxTableRow
            Height = 16.362204724409400000
            object TableCell13: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              Fill.BackColor = cl3DLight
              ParentFont = False
            end
            object TableCell14: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              Fill.BackColor = cl3DLight
              ParentFont = False
            end
            object TableCell15: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              Fill.BackColor = cl3DLight
              Memo.UTF8W = (
                '')
              ParentFont = False
            end
            object TableCell16: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                '[SUM(<frxContasAReceber."CRE_VALOR_PARCELA_LIMPA">,MasterData1)]')
              ParentFont = False
            end
            object TableCell17: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                '[SUM(<frxContasAReceber."CRE_VALOR_PARCELA">,MasterData1)] ')
              ParentFont = False
            end
            object TableCell18: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              ParentFont = False
            end
          end
        end
      end
    end
  end
  object frxContasAreceberPago: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44041.676489571800000000
    ReportOptions.LastChange = 44054.570478171300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  CNPJ, CEP, CNPJCLI : String;'
      'begin'
      '  CNPJ := <Global."PRI_CPFCNPJ">;'
      '  CNPJCLI := <frxContasAReceber."CRE_CPF_CLIENTE">;'
      '  //Utilizar o copy para formatar strings'
      '  case Length(CNPJ) of'
      
        '    11: Memo1.Text := '#39'Cpf : '#39'+Copy(CNPJ,1,3)+'#39'.'#39'+Copy(CNPJ,4,3)' +
        '+'#39'.'#39'+Copy(CNPJ,7,3)+'#39'-'#39'+Copy(CNPJ,9,2);'
      
        '    14: Memo1.Text := '#39'Cnpj : '#39'+ Copy(CNPJ,1,2)+'#39'.'#39'+Copy(CNPJ,3,' +
        '3)+'#39'.'#39'+Copy(CNPJ,6,3)+'#39'/'#39'+Copy(CNPJ,9,4)+'#39'-'#39'+Copy(CNPJ,13,2);'
      '  end;'
      ''
      'end;'
      ''
      ''
      'begin'
      ''
      'end.')
    Left = 400
    Top = 401
    Datasets = <
      item
        DataSet = frxContasAReceber
        DataSetName = 'frxContasAReceber'
      end
      item
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Titulo'
        Value = Null
      end
      item
        Name = 'data3'
        Value = Null
      end
      item
        Name = 'data4'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 79.677180000000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object TableObject4: TfrxTableObject
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 2.007730000000000000
          object TableColumn19: TfrxTableColumn
            Width = 202.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow4: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell19: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haCenter
              Memo.UTF8W = (
                'Totais ')
              ParentFont = False
            end
          end
          object TableRow5: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell24: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'Pago')
              ParentFont = False
            end
          end
          object TableRow6: TfrxTableRow
            Height = 18.897650000000000000
            object TableCell29: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                
                  '[SUM(IIF(<frxContasAReceber."CRE_STATUS">='#39'Pago'#39', <frxContasARec' +
                  'eber."CRE_VALOR_PARCELA">,0),MasterData1,2)] ')
              ParentFont = False
            end
          end
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 85.763254720000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 554.000000000000000000
          Top = 28.102350000000000000
          Width = 65.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o :')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 154.000000000000000000
          Top = 51.102350000000000000
          Width = 623.000000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 608.000000000000000000
          Top = 28.102350000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object img_logo: TfrxPictureView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 0.102350000000000000
          Width = 150.425196850000000000
          Height = 83.905511810000000000
          Center = True
          Frame.Typ = []
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object GlobalPRI_FANTASIA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 153.000000000000000000
          Top = 0.102350000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'PRI_FANTASIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_FANTASIA"]')
          ParentFont = False
        end
        object GlobalPRI_ENDERECO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 153.000000000000000000
          Top = 13.102350000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[Global."PRI_ENDERECO"] N'#186' [Global."PRI_NUMERO"], [Global."PRI_B' +
              'AIRRO"] - [Global."PRI_MUNICIPIO"]'
            ']')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 555.000000000000000000
          Top = 0.102350000000000000
          Width = 195.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cnpj :')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 554.000000000000000000
          Top = 14.102350000000000000
          Width = 65.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone :')
          ParentFont = False
        end
        object GlobalPRI_TELEFONE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 614.000000000000000000
          Top = 14.102350000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'PRI_TELEFONE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Global."PRI_TELEFONE"]')
          ParentFont = False
        end
        object Titulo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 62.102350000000000000
          Width = 756.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Titulo]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 483.000000000000000000
          Top = 62.102350000000000000
          Width = 267.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Per'#237'odo : [data3] a [data4]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 47.070614720000000000
        Top = 166.299320000000000000
        Width = 755.906000000000000000
        Condition = 'frxContasAReceber."CRE_CODIGO_CLIENTE"'
        object frxContasAReceberCRE_CODIGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 751.944960000000000000
          Height = 16.897650000000000000
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = cl3DLight
          Memo.UTF8W = (
            
              '[frxContasAReceber."CRE_CODIGO"] - [frxContasAReceber."CRE_NOME_' +
              'CLIENTE"] - Rg/Ie : [frxContasAReceber."CRE_RGIE_CLIENTE"]-Cpf/c' +
              'npj : [frxContasAReceber."CRE_CPF_CLIENTE"] - Telefone : [frxCon' +
              'tasAReceber."CRE_TELEFONE_CLIENTE"]')
          ParentFont = False
          Formats = <
            item
              FormatStr = '000000'
              Kind = fkNumeric
            end
            item
            end
            item
            end
            item
              Kind = fkNumeric
            end
            item
              FormatStr = '###.###.###-##'
              Kind = fkNumeric
            end>
        end
        object frxContasAReceberCRE_ENDERECO_CLIENTE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 13.000000000000000000
          Width = 750.630180000000000000
          Height = 15.897650000000000000
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = cl3DLight
          Memo.UTF8W = (
            
              '[frxContasAReceber."CRE_ENDERECO_CLIENTE"], N'#186' [frxContasARecebe' +
              'r."CRE_NUMERO_CLIENTE"], [frxContasAReceber."CRE_BAIRRO_CLIENTE"' +
              '] - [frxContasAReceber."CRE_MUNICIPIO_CLIENTE"] - [frxContasARec' +
              'eber."CRE_CEP_CLIENTE"]')
          ParentFont = False
        end
        object TableObject2: TfrxTableObject
          AllowVectorExport = True
          Top = 32.708410000000000000
          object TableColumn7: TfrxTableColumn
            Width = 110.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn8: TfrxTableColumn
            Width = 112.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn9: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn10: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn11: TfrxTableColumn
            Width = 114.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn12: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow2: TfrxTableRow
            Height = 14.362204724409400000
            object TableCell7: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                ' Compra')
              ParentFont = False
              VAlign = vaBottom
            end
            object TableCell8: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                'F. Pagamento')
              ParentFont = False
              VAlign = vaBottom
            end
            object TableCell9: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'Vencimento')
              ParentFont = False
            end
            object TableCell10: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'Quita'#231#227'o')
              ParentFont = False
            end
            object TableCell11: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'V. Pago')
              ParentFont = False
            end
            object TableCell12: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                'Status')
              ParentFont = False
            end
          end
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 14.362204724409400000
        Top = 238.110390000000000000
        Width = 755.906000000000000000
        DataSet = frxContasAReceber
        DataSetName = 'frxContasAReceber'
        RowCount = 0
        object TableObject1: TfrxTableObject
          AllowVectorExport = True
          Top = 0.007730000000000000
          object TableColumn1: TfrxTableColumn
            Width = 109.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn2: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn3: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn4: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn5: TfrxTableColumn
            Width = 114.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn6: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow1: TfrxTableRow
            Height = 14.362204724409400000
            object TableCell1: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'CRE_DATA_COMPRA'
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '[frxContasAReceber."CRE_DATA_COMPRA"]')
              ParentFont = False
            end
            object TableCell2: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxContasAReceber."CRE_FORMA_PAGAMENTO"]')
              ParentFont = False
            end
            object TableCell3: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'CRE_DATA_VENCIMENTO'
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '[frxContasAReceber."CRE_DATA_VENCIMENTO"]')
              ParentFont = False
            end
            object TableCell4: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '[frxContasAReceber."CRE_DATA_QUITACAO"]')
              ParentFont = False
            end
            object TableCell5: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'CRE_VALOR_PAGO'
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haRight
              Memo.UTF8W = (
                '[frxContasAReceber."CRE_VALOR_PAGO"]')
              ParentFont = False
            end
            object TableCell6: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                ' [frxContasAReceber."CRE_STATUS"]')
              ParentFont = False
            end
          end
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 24.677180000000000000
        Top = 275.905690000000000000
        Width = 755.906000000000000000
        object TableObject3: TfrxTableObject
          AllowVectorExport = True
          Top = 2.000000000000000000
          object TableColumn13: TfrxTableColumn
            Width = 110.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn14: TfrxTableColumn
            Width = 112.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn15: TfrxTableColumn
            Width = 113.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn16: TfrxTableColumn
            Width = 115.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn17: TfrxTableColumn
            Width = 112.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn18: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow3: TfrxTableRow
            Height = 16.362204724409400000
            object TableCell13: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              Fill.BackColor = cl3DLight
              ParentFont = False
            end
            object TableCell14: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              Fill.BackColor = cl3DLight
              ParentFont = False
            end
            object TableCell15: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              Fill.BackColor = cl3DLight
              Memo.UTF8W = (
                '')
              ParentFont = False
            end
            object TableCell16: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              Fill.BackColor = cl3DLight
              HAlign = haRight
              ParentFont = False
            end
            object TableCell17: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              Fill.BackColor = cl3DLight
              HAlign = haRight
              Memo.UTF8W = (
                '[SUM(<frxContasAReceber."CRE_VALOR_Pago">,MasterData1)] ')
              ParentFont = False
            end
            object TableCell18: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxContasAReceber
              DataSetName = 'frxContasAReceber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Frame.Typ = []
              ParentFont = False
            end
          end
        end
      end
    end
  end
  object frxReportTableObject1: TfrxReportTableObject
    Left = 688
    Top = 64
  end
  object frxIBXComponents1: TfrxIBXComponents
    Left = 584
    Top = 64
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 496
    Top = 64
  end
  object frxGlobal: TfrxDBDataset
    UserName = 'Global'
    CloseDataSource = False
    DataSet = Global
    BCDToCurrency = False
    Left = 248
    Top = 128
  end
  object frxProdutos: TfrxDBDataset
    UserName = 'frxProdutos'
    CloseDataSource = False
    DataSet = FDProduto
    BCDToCurrency = False
    Left = 152
    Top = 72
  end
  object frxViaCliente: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44070.453038263900000000
    ReportOptions.LastChange = 44139.450893298600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 88
    Top = 184
    Datasets = <
      item
        DataSet = frxContasAReceber
        DataSetName = 'frxContasAReceber'
      end
      item
        DataSet = frxDBViaCliente
        DataSetName = 'frxDBViaCliente'
      end
      item
        DataSet = frxGlobal
        DataSetName = 'Global'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 72.000000000000000000
      PaperHeight = 100.000000000000000000
      PaperSize = 256
      LeftMargin = 3.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 3.000000000000000000
      BottomMargin = 3.000000000000000000
      Duplex = dmSimplex
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 327.551330000000000000
        Top = 18.897650000000000000
        Width = 249.448980000000000000
        object frxDBDataset2nome_razao: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#195'O E DOCUMENTO FISCAL')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 2.779530000000000000
          Top = 19.015770000000000000
          Width = 94.488250000000000000
          Height = 64.252010000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Produtos'
            'Desconto'
            'Acrescimos'
            'VALOR FINAL')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 246.842610000000000000
          Width = 244.346630000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RECONHE'#199'O E PAGAREI  A IMPORTANCIA  ACIMA'
            'REFERENTE AO CUMPOM N'#218'MERO:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 297.094620000000000000
          Width = 272.126160000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = -1.000000000000000000
          Top = 305.653680000000000000
          Width = 272.126160000000000000
          Height = 41.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO CLIENTE')
          ParentFont = False
        end
        object frxDBViaClienteNFC_TOTAL_VPROD: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 162.000000000000000000
          Top = 19.102350000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBViaCliente
          DataSetName = 'frxDBViaCliente'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBViaCliente."NFC_TOTAL_VPROD"] ')
          ParentFont = False
        end
        object frxDBViaClienteNFC_TOTAL_VDESC: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 162.000000000000000000
          Top = 36.102350000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBViaCliente
          DataSetName = 'frxDBViaCliente'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBViaCliente."NFC_TOTAL_VDESC"] ')
          ParentFont = False
        end
        object frxDBViaClienteNFC_TOTAL_VOUTRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 162.000000000000000000
          Top = 51.102350000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBViaCliente
          DataSetName = 'frxDBViaCliente'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBViaCliente."NFC_TOTAL_VOUTRO"] ')
          ParentFont = False
        end
        object frxDBViaClienteNFC_TOTAL_VNF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 162.000000000000000000
          Top = 67.102350000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBViaCliente
          DataSetName = 'frxDBViaCliente'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBViaCliente."NFC_TOTAL_VNF"] ')
          ParentFont = False
        end
        object frxDBViaClienteNFC_IDE_NNF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 204.000000000000000000
          Top = 257.102350000000000000
          Width = 51.370130000000000000
          Height = 13.897650000000000000
          DataField = 'NFC_IDE_NNF'
          DataSet = frxDBViaCliente
          DataSetName = 'frxDBViaCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBViaCliente."NFC_IDE_NNF"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 87.102350000000000000
          Width = 250.039580000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'ARial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FORMAS DE PAGAMENTO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 107.102350000000000000
          Width = 94.488250000000000000
          Height = 77.031540000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Credi'#225'rio'
            'Dinheiro'
            'Cart'#227'o Cr'#233'dito'
            'Cart'#227'o D'#233'bito'
            'Cheque')
          ParentFont = False
        end
        object frxDBViaClienteNFC_FORMACREDIARIO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 162.000000000000000000
          Top = 107.102350000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBViaCliente
          DataSetName = 'frxDBViaCliente'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBViaCliente."NFC_FORMACREDIARIO"] ')
          ParentFont = False
        end
        object frxDBViaClienteNFC_FORMADINHEIRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 162.000000000000000000
          Top = 122.102350000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBViaCliente
          DataSetName = 'frxDBViaCliente'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBViaCliente."NFC_FORMADINHEIRO"] ')
          ParentFont = False
        end
        object frxDBViaClienteNFC_FORMACARTAODEBITO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 162.000000000000000000
          Top = 153.102350000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBViaCliente
          DataSetName = 'frxDBViaCliente'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBViaCliente."NFC_FORMACARTAODEBITO"] ')
          ParentFont = False
        end
        object frxDBViaClienteNFC_FORMACHEQUE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 162.000000000000000000
          Top = 167.102350000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBViaCliente
          DataSetName = 'frxDBViaCliente'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBViaCliente."NFC_FORMACHEQUE"] '
            ' ')
          ParentFont = False
        end
        object frxDBViaClienteNFC_IDE_DHEMI: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 191.102350000000000000
          Width = 245.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBViaCliente
          DataSetName = 'frxDBViaCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o :[frxDBViaCliente."NFC_IDE_DHEMI"]')
          ParentFont = False
        end
        object frxContasAReceberCRE_DATA_VENCIMENTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 210.102350000000000000
          Width = 243.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxContasAReceber
          DataSetName = 'frxContasAReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vencimento : [frxContasAReceber."CRE_DATA_VENCIMENTO"]')
          ParentFont = False
        end
        object frxDBViaClienteNFC_FORMACARTAOCREDITO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 162.000000000000000000
          Top = 138.102350000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBViaCliente
          DataSetName = 'frxDBViaCliente'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBViaCliente."NFC_FORMACARTAOCREDITO"] ')
          ParentFont = False
        end
      end
    end
  end
  object frxDBViaCliente: TfrxDBDataset
    UserName = 'frxDBViaCliente'
    CloseDataSource = False
    DataSet = FDNfce
    BCDToCurrency = False
    Left = 160
    Top = 168
  end
  object ACBrNFe: TACBrNFe
    OnTransmitError = ACBrNFeTransmitError
    OnStatusChange = ACBrNFeStatusChange
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ModeloDF = moNFCe
    Configuracoes.Geral.AtualizarXMLCancelado = True
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = ACBrNFeDANFCeFortes1
    Left = 248
    Top = 64
  end
  object Con: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 16
    Top = 8
  end
  object DriverFB: TFDPhysFBDriverLink
    Left = 72
    Top = 8
  end
  object Cursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 160
    Top = 8
  end
  object ContasAReceber: TFDQuery
    AutoCalcFields = False
    CachedUpdates = True
    Connection = Con
    SQL.Strings = (
      'select * from TB_CONTASARECEBER')
    Left = 160
    Top = 344
  end
  object Prevenda: TFDQuery
    AutoCalcFields = False
    CachedUpdates = True
    Connection = Con
    SQL.Strings = (
      'select * from tb_prevenda')
    Left = 368
    Top = 232
  end
  object ItensPrevenda: TFDQuery
    AutoCalcFields = False
    CachedUpdates = True
    Connection = Con
    SQL.Strings = (
      'select * from tb_itensprevenda')
    Left = 448
    Top = 232
  end
  object FDNfce: TFDQuery
    AutoCalcFields = False
    CachedUpdates = True
    Connection = Con
    SQL.Strings = (
      'select * from tb_itensprevenda')
    Left = 632
    Top = 8
  end
  object FDProduto: TFDQuery
    AutoCalcFields = False
    CachedUpdates = True
    Connection = Con
    SQL.Strings = (
      'select * from tb_itensprevenda')
    Left = 784
    Top = 8
  end
  object Global: TFDQuery
    AutoCalcFields = False
    CachedUpdates = True
    Connection = Con
    SQL.Strings = (
      'select * from tb_principal')
    Left = 240
    Top = 8
  end
  object RelatorioLX300: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43650.820399618100000000
    ReportOptions.LastChange = 44201.726669953700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 520
    Top = 400
    Datasets = <
      item
        DataSet = frxContasAReceber
        DataSetName = 'frxContasAReceber'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'vendedor'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 76.500000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object frxDBDataset5cliente: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 1.000000000000000000
        Top = 88.370130000000000000
        Width = 260.787570000000000000
        Height = 30.236240000000000000
        DataField = 'CRE_NOME_CLIENTE'
        DataSet = frxContasAReceber
        DataSetName = 'frxContasAReceber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_NOME_CLIENTE"]')
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 265.567100000000000000
        Top = 88.370130000000000000
        Width = 257.008040000000000000
        Height = 30.236240000000000000
        DataField = 'CRE_NOME_CLIENTE'
        DataSet = frxContasAReceber
        DataSetName = 'frxContasAReceber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_NOME_CLIENTE"]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 526.354670000000000000
        Top = 88.370130000000000000
        Width = 264.567100000000000000
        Height = 30.236240000000000000
        DataField = 'CRE_NOME_CLIENTE'
        DataSet = frxContasAReceber
        DataSetName = 'frxContasAReceber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_NOME_CLIENTE"]')
        ParentFont = False
      end
      object frxDBDataset5codigo_cliente: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = -2.000000000000000000
        Top = 133.039475040000000000
        Width = 79.370083620000000000
        Height = 30.236220470000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_CODIGO_CLIENTE"]')
        ParentFont = False
      end
      object frxDBDataset5data_compra: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = -2.000000000000000000
        Top = 165.275715040000000000
        Width = 79.370083620000000000
        Height = 30.236220470000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_DATA_COMPRA"]')
        ParentFont = False
      end
      object frxDBDataset5data_vencimento: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = -2.000000000000000000
        Top = 199.511955040000000000
        Width = 79.370083620000000000
        Height = 30.236220470000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_DATA_VENCIMENTO"]')
        ParentFont = False
      end
      object frxDBDataset5vlr_compra: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 84.149660000000000000
        Top = 199.511955040000000000
        Width = 86.929133860000000000
        Height = 30.236220470000000000
        DisplayFormat.FormatStr = '%2.2n'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_VALOR_COMPRA"]')
        ParentFont = False
      end
      object frxDBDataset5valor_parcelas: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 176.637910000000000000
        Top = 133.039475040000000000
        Width = 75.590551180000000000
        Height = 30.236220470000000000
        DisplayFormat.FormatStr = '%2.2n'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_VALOR_PARCELA"]')
        ParentFont = False
      end
      object frxDBDataset5valor_quitado: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 176.637910000000000000
        Top = 199.511955040000000000
        Width = 75.590551180000000000
        Height = 30.236220470000000000
        DisplayFormat.FormatStr = '%2.2n'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_VALOR_PAGO"]')
        ParentFont = False
      end
      object frxDBDataset5ref_parcelas: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 83.149660000000000000
        Top = 166.299320000000000000
        Width = 86.929190000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_REF_PARCELA"]')
        ParentFont = False
      end
      object frxDBDataset7vendedor: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 83.149660000000000000
        Top = 133.283550000000000000
        Width = 86.929133860000000000
        Height = 30.236220470000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_NOME_VENDEDOR"]')
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 268.346630000000000000
        Top = 132.283550000000000000
        Width = 79.370083620000000000
        Height = 30.236220470000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_CODIGO_CLIENTE"]')
        ParentFont = False
      end
      object Memo10: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 268.346630000000000000
        Top = 164.519790000000000000
        Width = 79.370083620000000000
        Height = 30.236220470000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_DATA_COMPRA"]')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 268.346630000000000000
        Top = 198.756030000000000000
        Width = 79.370083620000000000
        Height = 30.236220470000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_DATA_VENCIMENTO"]')
        ParentFont = False
      end
      object Memo17: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 354.496290000000000000
        Top = 198.756030000000000000
        Width = 86.929133860000000000
        Height = 30.236220470000000000
        DisplayFormat.FormatStr = '%2.2n'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_VALOR_COMPRA"]')
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 446.984540000000000000
        Top = 132.283550000000000000
        Width = 75.590551180000000000
        Height = 30.236220470000000000
        DisplayFormat.FormatStr = '%2.2n'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_VALOR_PARCELA"]')
        ParentFont = False
      end
      object Memo20: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 446.984540000000000000
        Top = 198.756030000000000000
        Width = 75.590551180000000000
        Height = 30.236220470000000000
        DisplayFormat.FormatStr = '%2.2n'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_VALOR_PAGO"]')
        ParentFont = False
      end
      object Memo21: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 353.496290000000000000
        Top = 165.543394960000000000
        Width = 86.929190000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_REF_PARCELA"]')
        ParentFont = False
      end
      object Memo22: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 353.496290000000000000
        Top = 132.527624960000000000
        Width = 86.929133860000000000
        Height = 30.236220470000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_NOME_VENDEDOR"]')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 532.913730000000000000
        Top = 132.283550000000000000
        Width = 79.370083620000000000
        Height = 30.236220470000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_CODIGO_CLIENTE"]')
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 532.913730000000000000
        Top = 164.519790000000000000
        Width = 79.370083620000000000
        Height = 30.236220470000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_DATA_COMPRA"]')
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 532.913730000000000000
        Top = 198.756030000000000000
        Width = 79.370083620000000000
        Height = 30.236220470000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_DATA_VENCIMENTO"]')
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 619.063390000000000000
        Top = 198.756030000000000000
        Width = 86.929133860000000000
        Height = 30.236220470000000000
        DisplayFormat.FormatStr = '%2.2n'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_VALOR_COMPRA"]')
        ParentFont = False
      end
      object Memo16: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 711.551640000000000000
        Top = 132.283550000000000000
        Width = 75.590551180000000000
        Height = 30.236220470000000000
        DisplayFormat.FormatStr = '%2.2n'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_VALOR_PARCELA"]')
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 711.551640000000000000
        Top = 198.756030000000000000
        Width = 75.590551180000000000
        Height = 30.236220470000000000
        DisplayFormat.FormatStr = '%2.2n'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_VALOR_PAGO"]')
        ParentFont = False
      end
      object Memo23: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 618.063390000000000000
        Top = 165.543394960000000000
        Width = 86.929190000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_REF_PARCELA"]')
        ParentFont = False
      end
      object Memo24: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 618.063390000000000000
        Top = 132.527624960000000000
        Width = 86.929133860000000000
        Height = 30.236220470000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxContasAReceber."CRE_NOME_VENDEDOR"]')
        ParentFont = False
      end
    end
  end
end
