object frmPrevenda: TfrmPrevenda
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Importa'#231#227'o de Pr'#233'-Venda'
  ClientHeight = 410
  ClientWidth = 1107
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1107
    Height = 410
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 1107
      Height = 93
      Align = alTop
      BevelOuter = bvNone
      Color = clWindow
      ParentBackground = False
      TabOrder = 0
      object pnNomeLabel: TPanel
        Left = 727
        Top = 10
        Width = 380
        Height = 83
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object lblNomeTela: TRzLabel
          AlignWithMargins = True
          Left = 160
          Top = 3
          Width = 217
          Height = 77
          Margins.Left = 60
          Align = alRight
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Pr'#233'-Venda'
          Color = clNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          WordWrap = True
          BlinkColor = 10930928
          BorderColor = clActiveCaption
          BorderHighlight = 33023
          BorderShadow = clNone
          FlatColor = clNone
          Rotation = roFlat
          HighlightColor = clWhite
          ShadowColor = clScrollBar
          TextStyle = tsShadow
          ExplicitLeft = 264
          ExplicitHeight = 87
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1107
        Height = 10
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
      object Panel5: TPanel
        Left = 0
        Top = 10
        Width = 297
        Height = 83
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object Label2: TLabel
          Left = 60
          Top = 1
          Width = 59
          Height = 13
          Caption = 'Buscar Por :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton5: TSpeedButton
          Left = 211
          Top = 14
          Width = 38
          Height = 23
          Hint = 'Limpa Filtro'
          Flat = True
          Glyph.Data = {
            E6040000424DE604000000000000360000002800000014000000140000000100
            180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFF9882EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC2B5F4D4CBF7FFFFFFFFFFFFFFFFFFFFFFFF5C3AE350
            2BE1846AE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFC5B9F54A24E04A25E0D8D0F8FFFFFFF7F6FD5A37E25C3AE36140E45431
            E18268E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4B7F44A
            25E0603FE3603FE34A25E0D2C9F7EAE6FB4F2BE15E3CE36140E46140E45531E1
            8167E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2B6F44A25E0603FE36140
            E4603FE34A25E0BCAEF3FFFFFFF6F4FD522EE15D3CE36140E46140E45531E180
            66E9FFFFFFFFFFFFFFFFFFFFFFFFC1B4F44B25E0603FE36140E4603FE34B25E0
            C1B4F4FFFFFFFFFFFFFFFFFFF7F5FD532FE15D3CE36140E46140E45532E27F64
            E9FFFFFFFFFFFFBFB2F44B25E0603FE36140E4603FE34B25E0C2B6F4FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFF8F6FD532FE15D3CE36140E46140E45532E2866DEA
            C7BBF54B26E0603FE36140E4603FE34A25E0C4B7F4FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFF8F7FD5430E15D3BE36140E46140E45B39E35633E260
            3FE36140E4603FE34A25E0C5B9F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF9F8FE5430E15E3CE36140E46140E46140E46140E4603F
            E34B25E0C7BBF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF5C3AE35F3EE36140E46140E46140E45532E2D0C6F6
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFBBADF35532E2603FE46140E46140E46140E45B39E38167E9FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6A7F2
            4C26E0603FE46140E4603FE35F3EE36140E46140E45633E2785CE7FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4A5F24C27E0603FE461
            40E4603FE35531E16140E45D3BE36140E46140E45633E2775BE7FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3A3F24C27E0603FE46140E4603FE34A24
            E0D1C7F7FFFFFF5734E25C3BE36140E46140E45633E2765AE7FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFB1A1F14C27E0603FE46140E4603FE34A24E0CFC5F6FFFFFF
            FFFFFFFEFEFF5835E25C3AE36140E46140E45734E27558E7FFFFFFFFFFFFFFFF
            FFB09FF14D28E0603FE46140E4603FE34A24E0D0C6F7FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF5835E25C3AE36140E46140E45734E27457E7FFFFFFCEC5F6411ADE
            603FE46140E4603FE34A24E0D1C8F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF5936E25C3AE36140E46140E4512DE18F77EBFFFFFF957FEC512DE160
            3FE34A24E0D3CAF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF5937E25C3AE35A38E26343E4FFFFFFFFFFFFFFFFFF9680ED4018DED4CB
            F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF5734E26241E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4DFFAFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F3
            FDFEFFFFFFFFFFFFFFFF}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton5Click
        end
        object SpeedButton6: TSpeedButton
          Left = 251
          Top = 15
          Width = 38
          Height = 23
          Flat = True
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADCDD9E9A9A9A
            9697D9DCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACAC
            AC583B3C713A36944A49604145939695FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFE9ECEC3C25277332348D4545C66A649A53502E282A6D6E6FDCDCDDFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEEEEDEDFDFEEF1F1FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF6E6E6E3E11126F2D326F3135874042904747413637
            252629302F327A7A7AF5F4F5FFFFFFFFFFFFFFFFFFC3C0C17C5A5C814348856C
            6FA0A2A2F4F4F4FFFFFFFFFFFFFFFFFFF2F4F44A44456E322FA54D49873C3C85
            3D3D78383B4037382121242D2C302B2A2D545354B7B6B7FFFFFFE9E9E8654043
            86353ADC5B66A54D53443F405354559F9D9EFFFFFFFFFFFFECEDED3F3739884B
            48CE746DC26962AF5B575F2F343631341D1D202221252524282A292D323134B5
            B6B58A82825A1D22782F38AD43529D3F475C4A4B1C1D202A292D181719828283
            DBDCDB656263401F20CC8781C7807B59292D4A3E41393A3D232226201F231F1E
            212120241E1D20646365524545893E3B9442418E3B408134395645471B1C1F24
            23272222222C2C2C5253536162623F33353B2325321D1F4C46476869694F4E51
            39383B2D2C302524271F1E221B1A1E464648413334AA605CCB716ABA645F7939
            3C433A3C1C1D211F1F222526253E3E3E4F4F4F2727275B5C5B7C7A7B9F9E9EC1
            C2C39E9E9F7F7E805D5C5E48474A37363A29282C1A1A1D5C5B5E5E595A64393A
            C8847F743F404530333535382020242120242E2E2D4B4B4B4747471F1F1F2929
            294546465F5F5E949493A5A5A57C7B7C8A898B7F7E8168676A494A4D2F2D30C0
            C0C1C0C0C0271C1F210E113127295F5E60535254363539302F313B3B3B595959
            4040402929293B3B3B5959596565656B6B6B7777774745474A494A6E6D6F8180
            8179797B8A898AFFFFFFFFFFFFC9C9C97E7C7C7F7F7FABACAC99989A6363643E
            3E3E5252526565654444449595958E8E8D3F3F4071707189898885858538383A
            1D1C1F2E2D304A484A6160614D4C4CC0C0C0FFFFFFFFFFFFFFFFFFFAFAFABDBD
            BDAEAEAE4F4F4E6363638282823737371717176F6F6F7C7C7C5F5E604343466C
            6D6DB6B5B6A09FA16665673B3A3E25242828282A27272A262528FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF8282827F7F7F7373732A2A2A2F2F2F2727273C3B
            3C6565666F6E709B9C9DE6E6E6E4E5E4C9C9C9A6A6A76666694342434342454A
            474CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6D6D6D68E8E8E3F3F3F
            3030303030303C3C3D2B2C2E4D4A4FFFFFFFFFFFFFFFFFFFFCFCFCFAFAFAF1F1
            F1B8B8B7A8A8A9DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFECECECBCBCBC8C8C8CA1A1A1E5E5E5FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = SpeedButton6Click
        end
        object cmb_filtro: TComboBox
          Left = 60
          Top = 15
          Width = 145
          Height = 21
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'N'#186' Pr'#233'-Venda'
          OnClick = cmb_filtroClick
          Items.Strings = (
            'N'#186' Pr'#233'-Venda'
            'Data'
            'Faturamento'
            'Status'
            'Cliente'
            'Total'
            'Vendedor'
            'Modelo')
        end
        object edt_filtro: TEdit
          Left = 60
          Top = 42
          Width = 145
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnKeyDown = edt_filtroKeyDown
        end
        object CheckBox1: TCheckBox
          Left = 60
          Top = 64
          Width = 117
          Height = 17
          Caption = 'Ativar Modo Filtro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object btn_menu: TRzMenuButton
          Left = 3
          Top = 9
          Width = 51
          Height = 37
          Cursor = crHandPoint
          FrameColor = clWindow
          HighlightColor = clWindow
          HotTrackColor = clWindow
          ParentColor = True
          TextHighlightColor = clWindow
          TextShadowColor = clWindow
          TabOrder = 3
          TextStyle = tsShadow
          Glyph.Data = {
            220E0000424D220E000000000000360000002800000023000000210000000100
            180000000000EC0D000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F6F6A09897594B
            494C3D3B5E504F877D7BD3D0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFAAA3A22E1C19847A78CCC8C7D9D6D5C7C1C19D9594514340817776EDEBEBFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF8C8281423230D4D0D0FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFCFCFC918886291714D8D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA39B9A4F403EF2F1F1FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA59E9C7F7473FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D0CF2E
            1C19DBD8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF564846CBC7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF7A6F6EAAA3A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2ABAA726665FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF847A797F7473FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E3E33F2F
            2DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF938A89594B49
            FAF9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFAF9F92B1917FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFB4AEAE3D2D2AEBE9E9FFFFFFFFFFFFEBE9E9FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF261412FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B4E4CCAC4C3FFFFFFFFFFFFC7C1C14435
            32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF261412FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF605352C4BF
            BEF2F1F1847A78291714261412FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF261412FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFBAB4B36053522B1A178C8281F9F9F9261412FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF261412FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFFFFFFF
            FFFF261412FFFFFFFFFFFFE8E6E6FFFFFFFFFFFFF2F1F1FFFFFFFFFFFFC4BFBE
            FFFFFFFFFFFF261412FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF261412FFFFFFFFFFFF2B1A17FFFFFFFFFFFF
            473835FFFFFFFFFFFF33221FFFFFFFFFFFFF261412FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF261412FFFFFF
            FFFFFF261412FFFFFFFFFFFF33221FFFFFFFFFFFFF33221FFFFFFFFFFFFF2614
            12FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF261412FFFFFFFFFFFF261412FFFFFFFFFFFF33221FFFFFFFFFFF
            FF261412F5F4F4E8E6E63C2C2BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF261412FFFFFFFFFFFF261412FFFF
            FFFFFFFF261412F7F7F7E6E3E33F2F2D4F403E4F403E968D8CFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2614
            12FFFFFFFFFFFF261412B2ABAAADA6A5776C6B5143404F403E98908FD6D2D2D6
            D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF261412FFFFFFFFFFFF261412726665776C6BD1CDCCD3
            D0CFD6D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF261412FFFFFFFFFFFF26
            1412FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF261412FFFFFFFFFFFF261412FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF281614FCFCFCFAF9F92B1A17F9F9F9FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E504FC7C1C1
            BCB6B6685B5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFB7B1B05E504F685B5AC1BCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000}
        end
        object Data1: TRzDateTimeEdit
          Left = 60
          Top = 42
          Width = 109
          Height = 21
          EditType = etDate
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          Visible = False
        end
        object Data2: TRzDateTimeEdit
          Left = 175
          Top = 42
          Width = 109
          Height = 21
          EditType = etDate
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          Visible = False
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 93
      Width = 1107
      Height = 317
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 770
        Height = 317
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 770
          Height = 317
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
            OnKeyDown = cxGrid1DBTableView1KeyDown
            OnKeyPress = cxGrid1DBTableView1KeyPress
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
            OnCellClick = cxGrid1DBTableView1CellClick
            OnCellDblClick = cxGrid1DBTableView1CellDblClick
            DataController.DataSource = DataSource
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
            object cxGrid1DBTableView1PRE_NUMEROPREVENDA: TcxGridDBColumn
              Caption = 'N'#186' Pr'#233'-Venda'
              DataBinding.FieldName = 'PRE_NUMEROPREVENDA'
              OnCustomDrawCell = cxGrid1DBTableView1PRE_NUMEROPREVENDACustomDrawCell
              Options.Editing = False
              Width = 69
            end
            object cxGrid1DBTableView1PRE_DATA: TcxGridDBColumn
              Caption = 'Data'
              DataBinding.FieldName = 'PRE_DATA'
              OnCustomDrawCell = cxGrid1DBTableView1PRE_NUMEROPREVENDACustomDrawCell
              Options.Editing = False
            end
            object cxGrid1DBTableView1PRE_DATAFATURAMENTO: TcxGridDBColumn
              Caption = 'Faturamento'
              DataBinding.FieldName = 'PRE_DATAFATURAMENTO'
              OnCustomDrawCell = cxGrid1DBTableView1PRE_NUMEROPREVENDACustomDrawCell
              Options.Editing = False
              Width = 79
            end
            object cxGrid1DBTableView1PRE_STATUS: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'PRE_STATUS'
              OnCustomDrawCell = cxGrid1DBTableView1PRE_NUMEROPREVENDACustomDrawCell
              Options.Editing = False
              Width = 111
            end
            object cxGrid1DBTableView1PRE_NOME_CLIENTE: TcxGridDBColumn
              Caption = 'Cliente'
              DataBinding.FieldName = 'PRE_NOME_CLIENTE'
              OnCustomDrawCell = cxGrid1DBTableView1PRE_NUMEROPREVENDACustomDrawCell
              Options.Editing = False
              Width = 250
            end
            object cxGrid1DBTableView1PRE_TOTAL: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'PRE_TOTAL'
              OnCustomDrawCell = cxGrid1DBTableView1PRE_NUMEROPREVENDACustomDrawCell
              Options.Editing = False
              Width = 100
            end
            object cxGrid1DBTableView1PRE_VENDEDOR: TcxGridDBColumn
              Caption = 'Vendedor'
              DataBinding.FieldName = 'PRE_VENDEDOR'
              OnCustomDrawCell = cxGrid1DBTableView1PRE_NUMEROPREVENDACustomDrawCell
              Options.Editing = False
              Width = 100
            end
            object cxGrid1DBTableView1PRE_MODELO: TcxGridDBColumn
              Caption = 'Modelo'
              DataBinding.FieldName = 'PRE_MODELO'
              OnCustomDrawCell = cxGrid1DBTableView1PRE_NUMEROPREVENDACustomDrawCell
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
      end
      object DBGrid2: TDBGrid
        Left = 770
        Top = 0
        Width = 337
        Height = 317
        Align = alRight
        DataSource = DSItens
        DrawingStyle = gdsGradient
        FixedColor = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PRE_PRODUTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o do Item'
            Title.Color = clHighlight
            Width = 267
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PRE_QUANTIDADE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Qtde'
            Width = 35
            Visible = True
          end>
      end
    end
  end
  object cxLocalizer: TcxLocalizer
    Left = 785
    Top = 29
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 640
    Top = 136
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
  object FiltroPrevenda: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44041.676489571800000000
    ReportOptions.LastChange = 44043.687180544000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 804
    Top = 141
    Datasets = <
      item
        DataSet = frxFiltroPrevenda
        DataSetName = 'frxFiltroPrevenda'
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
        Height = 14.362204720000000000
        Top = 196.535560000000000000
        Width = 755.906000000000000000
        DataSet = frxFiltroPrevenda
        DataSetName = 'frxFiltroPrevenda'
        RowCount = 0
        object TableObject1: TfrxTableObject
          AllowVectorExport = True
          Top = 0.298700000000000000
          object TableColumn3: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn4: TfrxTableColumn
            Width = 423.590600000000000000
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
          object TableRow16: TfrxTableRow
            Height = 14.362204724409500000
            object TableCell36: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'PRE_NUMEROPREVENDA'
              DataSet = frxFiltroPrevenda
              DataSetName = 'frxFiltroPrevenda'
              DisplayFormat.FormatStr = '000000000'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '[frxFiltroPrevenda."PRE_NUMEROPREVENDA"]')
              ParentFont = False
            end
            object TableCell37: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'PRE_NOME_CLIENTE'
              DataSet = frxFiltroPrevenda
              DataSetName = 'frxFiltroPrevenda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[frxFiltroPrevenda."PRE_NOME_CLIENTE"]')
              ParentFont = False
            end
            object TableCell38: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'PRE_STATUS'
              DataSet = frxFiltroPrevenda
              DataSetName = 'frxFiltroPrevenda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Memo.UTF8W = (
                '[frxFiltroPrevenda."PRE_STATUS"]')
              ParentFont = False
            end
            object TableCell39: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxFiltroPrevenda
              DataSetName = 'frxFiltroPrevenda'
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
                '[frxFiltroPrevenda."PRE_TOTAL"] ')
              ParentFont = False
            end
            object TableCell40: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataField = 'PRE_DATAFATURAMENTO'
              DataSet = frxFiltroPrevenda
              DataSetName = 'frxFiltroPrevenda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = []
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              HAlign = haCenter
              Memo.UTF8W = (
                '[frxFiltroPrevenda."PRE_DATAFATURAMENTO"]')
              ParentFont = False
            end
          end
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 116.267396770000000000
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
          Top = 62.102350000000000000
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
            'Pr'#233'-Vendas')
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
        object TableObject2: TfrxTableObject
          AllowVectorExport = True
          Top = 101.401050000000000000
          object TableColumn8: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn9: TfrxTableColumn
            Width = 423.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn10: TfrxTableColumn
            Width = 105.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn11: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableColumn12: TfrxTableColumn
            Width = 75.590600000000000000
            MaxWidth = 75.590600000000000000
          end
          object TableRow1: TfrxTableRow
            Height = 14.362204724409500000
            object TableCell1: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxFiltroPrevenda
              DataSetName = 'frxFiltroPrevenda'
              DisplayFormat.FormatStr = '000000000'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haCenter
              Memo.UTF8W = (
                'N'#186' Pr'#233'-Venda')
              ParentFont = False
            end
            object TableCell2: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxFiltroPrevenda
              DataSetName = 'frxFiltroPrevenda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              Memo.UTF8W = (
                'Cliente')
              ParentFont = False
            end
            object TableCell3: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxFiltroPrevenda
              DataSetName = 'frxFiltroPrevenda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haCenter
              Memo.UTF8W = (
                'Status')
              ParentFont = False
            end
            object TableCell4: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxFiltroPrevenda
              DataSetName = 'frxFiltroPrevenda'
              DisplayFormat.FormatStr = '%2.2n'
              DisplayFormat.Kind = fkNumeric
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haCenter
              Memo.UTF8W = (
                'Total')
              ParentFont = False
            end
            object TableCell5: TfrxTableCell
              AllowVectorExport = True
              Restrictions = [rfDontDelete]
              DataSet = frxFiltroPrevenda
              DataSetName = 'frxFiltroPrevenda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'calibri'
              Font.Style = [fsBold]
              Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
              Fill.BackColor = cl3DLight
              HAlign = haCenter
              Memo.UTF8W = (
                'Faturamento')
              ParentFont = False
            end
          end
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 84.677180000000000000
        Top = 234.330860000000000000
        Width = 755.906000000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 614.000000000000000000
          Top = 2.669140000000000000
          Width = 136.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            
              'Faturado : [SUM(IIF(<frxFiltroPrevenda."PRE_STATUS">='#39'Faturado'#39',' +
              '<frxFiltroPrevenda."PRE_TOTAL">,0),MasterData1,2)]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 614.000000000000000000
          Top = 23.669140000000000000
          Width = 136.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            
              'Aberto : [SUM(IIF(<frxFiltroPrevenda."PRE_STATUS">='#39'Aberto'#39',<frx' +
              'FiltroPrevenda."PRE_TOTAL">,0),MasterData1,2)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 614.000000000000000000
          Top = 44.669140000000000000
          Width = 137.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            
              'Cancelado : [SUM(IIF(<frxFiltroPrevenda."PRE_STATUS">='#39'Cancelado' +
              #39',<frxFiltroPrevenda."PRE_TOTAL">,0),MasterData1,2)]')
          ParentFont = False
        end
      end
    end
  end
  object frxFiltroPrevenda: TfrxDBDataset
    UserName = 'frxFiltroPrevenda'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 916
    Top = 141
  end
  object SaveDialog1: TSaveDialog
    Left = 900
    Top = 24
  end
  object tm_foco: TTimer
    Enabled = False
    Interval = 10
    Left = 648
    Top = 32
  end
  object DataSource: TDataSource
    DataSet = FDQuery
    Left = 512
    Top = 24
  end
  object DSItens: TDataSource
    DataSet = FDItens
    Left = 1000
    Top = 141
  end
  object FDQuery: TFDQuery
    Connection = Dm.Con
    Left = 720
    Top = 32
  end
  object FDItens: TFDQuery
    Connection = Dm.Con
    Left = 824
    Top = 309
  end
end
