﻿object FormCadastro: TFormCadastro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'CADASTRO'
  ClientHeight = 562
  ClientWidth = 777
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  PrintScale = poPrintToFit
  RoundedCorners = rcOn
  StyleName = 'Windows'
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object CADASTRO: TPageControl
    Left = 0
    Top = 80
    Width = 777
    Height = 454
    ActivePage = CadPrincipal
    DoubleBuffered = False
    MultiLine = True
    ParentDoubleBuffered = False
    TabOrder = 0
    StyleElements = []
    StyleName = 'Windows'
    object CadPrincipal: TTabSheet
      Caption = 'CADASTRO'
      DoubleBuffered = False
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = False
      object Label2: TLabel
        Left = 420
        Top = 11
        Width = 37
        Height = 15
        Caption = '*ERRO:'
      end
      object Label3: TLabel
        Left = 35
        Top = 11
        Width = 54
        Height = 15
        Caption = '*SISTEMA:'
      end
      object Label5: TLabel
        Left = 420
        Top = 75
        Width = 57
        Height = 15
        Caption = 'SOLU'#199#195'O:'
      end
      object Label6: TLabel
        Left = 367
        Top = 220
        Width = 40
        Height = 15
        Caption = 'SCRIPT:'
      end
      object Shape1: TShape
        Left = 385
        Top = -3
        Width = 3
        Height = 221
        Pen.Color = clSilver
        Pen.Style = psDash
      end
      object Label4: TLabel
        Left = 35
        Top = 75
        Width = 99
        Height = 15
        Caption = 'ERRO DETALHADO'
      end
      object Panel1: TPanel
        Left = 409
        Top = 55
        Width = 329
        Height = 173
        Caption = 'Panel1'
        TabOrder = 5
        Visible = False
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 327
          Height = 16
          Align = alTop
          TabOrder = 0
          object Panel3: TPanel
            Left = 304
            Top = 1
            Width = 22
            Height = 14
            Align = alRight
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            OnMouseEnter = Image1MouseEnter
            OnMouseLeave = Image1MouseLeave
            object Image1: TImage
              Left = 1
              Top = 1
              Width = 20
              Height = 12
              Cursor = crHandPoint
              Align = alClient
              Center = True
              ParentShowHint = False
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000320000
                003208060000001E3F88B1000000097048597300000B1300000B1301009A9C18
                000003DD4944415478DAED9A3D4C144114C7778EDD3D214A34D1C4CAC4C4CEA0
                1C16269A805F89A7E2C7CE798535F8D1F991F8010D950A34D0821F098D16E7DD
                9E628450880DC68F18410A4DA4B530165A68D0DDBD19DF9E9144E066DEECEE21
                9EF79ACD6567E6BDDF9BFFBE9D9B59A2558891BF1D40150403F2C3B2C60921BB
                4A75E29AF605EE27CD6CF67994C138A9D476CEF92804B5BAA46FCE9FC46D7B37
                0AC4A174122E5B855E399F31743D413299AF5140F0747AA5EB79AF354236499A
                4E99B95C230A0466A4092ECF20EB860466D0B4EDD3518040F206E17252EC8E17
                08E73BCC7CFE050AA408436937DCBC2C0B8069DA9115B9DC701808D7B2928C90
                4744F2CC024837C8AA63B17B253BF26432EED6D6BE82A9DE2C19FC93E9790D64
                78F863100890D43AC7F3DEC0ECAF1737E4EF8CFAFA04191AFAAE04E25BF1E163
                6C029CD448E27900BA3D1A04C4B1AC7B90AC9424593061A4197C4C946A232DBF
                588941256B8FE772B75420E0596C87006F48C716480A0DA220B16F9C90043C2F
                EF3110B3E9F4C658A1300501AC925008258506F10D2B3180796AEA7A3394E482
                B05D5757CC999E7E0CCE5B24E34925A504E21B5662609DE0F8BA303196D50933
                7C5536104652CA206889699A57ACF5B6FD72D184A452098D31FF1D654A285092
                52062966125FC5DE1A3535DB4062B30B925157E703368819F0920A0452CCA865
                F580934BB2763033FD50C5CECFEBDB0F7DCF22FAF640DF2B2A71298328488CC7
                183B64E4F323FE6F97D27DB00A1893BDBD55251518C437B4C438FF000BCB2D9A
                E33037169B02F80DE2E6EA920A05E21B566210DDDD5F9EC8097953DE0B550A53
                19A303C14A0C3F6030498506F14DA18A4918824B2A1210DFD012138104A85291
                8384965848494506E25B50894521A948417C0B22B12824550E905E00B9A80412
                A2DC9605A422A415C9C3AEEB4DF317984B0E1244520B59C24BACFA422CCB1225
                84C4C22C1A7192E2FC4ED1CF725C3456C4325EE98F15E7070DDB1EF57FBBA9D4
                5EC6D818041A93C007925890BFBA284901481FBCB52FFCD197D23E70784EDA37
                80C4FEBFCD07851D471706DD19C9769082C4F01B74F845610764B25BD4C0A1D4
                DF74BB264D9EC2A232EA2DD30953D75B96E596A9CA2636D3F5C6DA4C6606939C
                E226B6E74D42A0F5E2007012931F2B6037E408698B67B3B73110736353DA0601
                DC948E8D905854073DF761FA8FA940CCF9A0340397E3429030073D4B76F4D6DA
                BAD6318C69D4D19B4062A50F439192228C1D36F2F98741207E9B4BE97EA66923
                D2C35081C4163F67C756294D1B8081CF848198F369590330FBA784FE0412ABF8
                0F06649F707C86FB07CAF409872FB135A5F3C7C7611DB60705F22F5A1564B9D9
                4F71DF9D51586B537A0000000049454E44AE426082}
              Proportional = True
              ShowHint = True
              Stretch = True
              Transparent = True
              OnClick = Image1Click
              OnMouseEnter = Image1MouseEnter
              OnMouseLeave = Image1MouseLeave
              ExplicitLeft = 304
              ExplicitWidth = 22
              ExplicitHeight = 14
            end
          end
        end
        object StringGrid1: TStringGrid
          AlignWithMargins = True
          Left = 4
          Top = 17
          Width = 325
          Height = 155
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alLeft
          BevelInner = bvNone
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          ColCount = 2
          DefaultColWidth = 150
          DefaultRowHeight = 20
          DrawingStyle = gdsGradient
          FixedColor = clMenuBar
          FixedCols = 0
          RowCount = 7
          FixedRows = 0
          Options = [goFixedVertLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goFixedColClick]
          ParentBiDiMode = False
          ParentShowHint = False
          ScrollBars = ssVertical
          ShowHint = True
          TabOrder = 1
          OnClick = StringGrid1Click
          OnDblClick = StringGrid1DblClick
          OnKeyPress = StringGrid1KeyPress
        end
      end
      object ERRO: TEdit
        Left = 409
        Top = 32
        Width = 329
        Height = 23
        CharCase = ecUpperCase
        TabOrder = 1
        OnKeyDown = ERROKeyDown
        OnKeyPress = AVANÇARCOMENTERKeyPress
      end
      object ERRODETALHADO: TMemo
        Left = 24
        Top = 96
        Width = 329
        Height = 113
        ParentShowHint = False
        ScrollBars = ssVertical
        ShowHint = False
        TabOrder = 2
        OnKeyPress = AVANÇARCOMENTERKeyPress
      end
      object SCRIPT: TMemo
        Left = 24
        Top = 240
        Width = 725
        Height = 162
        ScrollBars = ssVertical
        TabOrder = 4
        WantTabs = True
        OnKeyPress = AVANÇARCOMENTERKeyPress
      end
      object SOLUCAO: TMemo
        Left = 409
        Top = 96
        Width = 329
        Height = 113
        ScrollBars = ssVertical
        TabOrder = 3
        OnKeyPress = AVANÇARCOMENTERKeyPress
      end
      object SISTEMA: TComboBoxEx
        Left = 25
        Top = 32
        Width = 329
        Height = 24
        AutoCompleteOptions = [acoAutoAppend, acoUseTab, acoUpDownKeyDropsList]
        ItemsEx = <
          item
          end
          item
            Caption = 'SGA'
          end
          item
            Caption = 'SGABOX NOVO'
          end
          item
            Caption = 'SOBOX'
          end
          item
            Caption = 'SGABOX 2010'
          end
          item
            Caption = 'SGA LITE'
          end
          item
            Caption = 'GOURMET'
          end
          item
            Caption = 'SGA OS'
          end
          item
            Caption = 'OTICA'
          end>
        Style = csExDropDownList
        StyleEx = [csExCaseSensitive, csExNoEditImage, csExNoEditImageIndent, csExNoSizeLimit, csExPathWordBreak]
        Color = clActiveCaption
        DoubleBufferedMode = dbmRequested
        ImeMode = imSKata
        TabOrder = 0
        OnKeyPress = AVANÇARCOMENTERKeyPress
      end
    end
    object CadIMG_ANEXO: TTabSheet
      Caption = 'IMAGEM / ANEXO'
      ImageIndex = 1
      object DIVIDIR: TShape
        Left = 3
        Top = 189
        Width = 740
        Height = 3
        Pen.Color = clSilver
        Pen.Style = psDash
      end
      object NamIMG: TLabel
        Left = 0
        Top = 0
        Width = 769
        Height = 20
        Align = alTop
        Alignment = taCenter
        Caption = 'Imagem:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 59
      end
      object Panel_IMG: TPanel
        AlignWithMargins = True
        Left = 50
        Top = 30
        Width = 669
        Height = 139
        Margins.Left = 50
        Margins.Top = 10
        Margins.Right = 50
        Align = alTop
        TabOrder = 0
        object ListIMAGE: TScrollBox
          AlignWithMargins = True
          Left = 88
          Top = 6
          Width = 575
          Height = 127
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          TabOrder = 0
          StyleName = 'Windows'
        end
        object InsertIMG: TPanel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Width = 77
          Height = 127
          Cursor = crHandPoint
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 0
          Margins.Bottom = 5
          Align = alLeft
          BevelInner = bvRaised
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 1
          OnClick = CadIMGClick
          OnMouseEnter = InsertIMGMouseEnter
          OnMouseLeave = InsertIMGMouseLeave
          object CadIMG: TImage
            Left = 26
            Top = 70
            Width = 25
            Height = 25
            Cursor = crHandPoint
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 30
            Align = alCustom
            Center = True
            ParentShowHint = False
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
              00400806000000AA6971DE000000097048597300000B1300000B1301009A9C18
              000003814944415478DAED9BC96B144118C5BF68E26E5C504C0415248A111114
              54DC63342EA0FF814783E0455C405082120441F1E0C583E0C5A37831892B2E28
              22B85EDC62445050E3022A8A01C5ED3DAA9A0CC9F474554F4FD764A61E3CD2A9
              A9867EBFAEE9EEAFBAA642CA5C15AE0FC0B54C00D4C3CBE171AE0FD6525FE09B
              70675C00B3E0E3F02AD749F2D435781BFCDC06C022F8123CC6F5D127A4AFF03A
              F8AE09806A51C3A656FFFF1BBE208AE01FD7490C3558D4085E0F57EAB677BAED
              7B14807DF041BDFD5993BBEF3A514C2D842F4AEFF56B2F7C280AC00378BEDEDE
              029F749D224F35C327F4364FE48228001C22A3F436BF06EF5D27C85335707746
              B6EA2800FF223E1F880ACDE40178001E8007E00178001E8007E00178001E4041
              000C81EBE01EF8553901E07EBB44D5DF412DFE54D4D4D48D7200B01F3E90A5FD
              27BC12BE53CA0026C06FE0A1219F5F871B4B19C026B82DC7E79C631C26E9CE2F
              A60A6023DC5ECE00A2BE0257E13529864F1D00D502B76669E745906F99EE953A
              00EEB75D8318AFDB1E89BA0DDE4A39BC130081AAE019F00FF8B583E0CE01148B
              3C000FC003F000061C00DE4116C31345BDAE7F524E0058319E82A766B45D8137
              C31F4A1DC05AF8ACA87AA1AF5EC00DA2163B942480261D7E788E3E5DA2D62DD9
              401810004CC2C78550F4006CC207EAD4104C1670BC84A7EBBF755100423B1748
              2C8DDB2CC3077AA621445D18598F709EA243D475242780D0CE05D06A51932771
              C207E2646BA30184AC72799FE7BCC079E95D8F948FB8848F23A1DB76C77CEA7D
              06982B6A11E265F8A3C5FE3C633CF32312081FE8B1A81165731CB10070D5D519
              7869461B5F7CEC90DEE568B9C433D59170F84C0884FBA9500026895A7B3B3BE4
              F37E0B11FB6899A855A7490CFB30D9DC1DAC004C1635A73F33A2DF6EF86896F6
              0651677E6401C3077A08AF1035139508002E9ABE2DE1673E0A029FEDCFA5143E
              10DF4EB546753205704487B2D11EF8B0A8E1D89E72788AD5E39CA400F091B3D6
              B06FA67845E67B82412987A778778AFC918709003EA4F4380890AFFAAD0B8E0B
              6034FCCD751A0FC003F0009C01E0159C2F352B0DFA1693F8867A4A120028969C
              F5AE13598A93A84D4901E013558BEB4496DA2A06C5992980B1A2665F6A5CA732
              1447EC3CF857520028FE9892955CB1FF84F6ADA892B8CBA4B36D39CCE9B263F0
              06D729B3E82F7C1ADE29163343716784A6C14B44D507558E83F30EC55A850B30
              ADE705FF0303F2D94125B5EA220000000049454E44AE426082}
            Proportional = True
            ShowHint = True
            Stretch = True
            OnClick = CadIMGClick
            OnMouseEnter = InsertIMGMouseEnter
            OnMouseLeave = InsertIMGMouseLeave
          end
          object Label1: TLabel
            Left = 16
            Top = 35
            Width = 46
            Height = 30
            Cursor = crHandPoint
            Caption = 'Escolher'#13#10'Imagem'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = CadIMGClick
            OnMouseEnter = InsertIMGMouseEnter
            OnMouseLeave = InsertIMGMouseLeave
          end
        end
      end
    end
  end
  object TopCAD: TPanel
    AlignWithMargins = True
    Left = 0
    Top = 10
    Width = 777
    Height = 57
    Margins.Left = 0
    Margins.Top = 10
    Margins.Right = 0
    Margins.Bottom = 10
    Align = alTop
    Color = clPowderblue
    ParentBackground = False
    TabOrder = 1
    object TitleCad: TLabel
      Left = 257
      Top = 12
      Width = 257
      Height = 30
      Alignment = taCenter
      Caption = 'CADASTRO DE ERROS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Humnst777 Blk BT'
      Font.Style = []
      ParentFont = False
      OnMouseEnter = Image1MouseEnter
    end
    object ID: TEdit
      Left = 6
      Top = 6
      Width = 75
      Height = 23
      TabStop = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clPowderblue
      Enabled = False
      ReadOnly = True
      TabOrder = 0
      OnChange = IDChange
    end
  end
  object BaixoCAD: TPanel
    Left = 0
    Top = 509
    Width = 777
    Height = 53
    BevelOuter = bvNone
    TabOrder = 2
    object LIMPAR: TButton
      AlignWithMargins = True
      Left = 125
      Top = 10
      Width = 113
      Height = 33
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alRight
      Caption = 'LIMPAR'
      TabOrder = 2
      OnClick = LIMPARClick
    end
    object SALVAR: TButton
      AlignWithMargins = True
      Left = 567
      Top = 10
      Width = 175
      Height = 33
      Margins.Top = 10
      Margins.Right = 35
      Margins.Bottom = 10
      Align = alRight
      Anchors = [akRight]
      Caption = 'SALVAR'
      ImageAlignment = iaRight
      TabOrder = 0
      StyleName = 'Windows'
      OnClick = SALVARClick
      OnKeyPress = SALVARKeyPress
    end
    object ALTERAR: TButton
      AlignWithMargins = True
      Left = 377
      Top = 10
      Width = 152
      Height = 33
      Margins.Top = 10
      Margins.Right = 35
      Margins.Bottom = 10
      Align = alRight
      Anchors = [akRight]
      Caption = 'ALTERAR'
      ImageAlignment = iaRight
      TabOrder = 1
      Visible = False
      WordWrap = True
      OnClick = ALTERARClick
      OnKeyPress = ALTERARKeyPress
    end
    object DELETAR: TButton
      AlignWithMargins = True
      Left = 251
      Top = 10
      Width = 113
      Height = 33
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alRight
      Caption = 'DELETAR'
      TabOrder = 3
      Visible = False
      OnClick = DELETARClick
    end
  end
  object OpenIMG: TOpenPictureDialog
    Filter = 
      'Todas|*.wbmp;*.webp;*.svg;*.gif;*.jpg;*.jpeg;*.png;*.bmp;*.ico;*' +
      '.emf;*.wmf;*.tif;*.tiff|JPEG Image File (*.jpg)|*.jpg|JPEG Image' +
      ' File (*.jpeg)|*.jpeg|Portable Network Graphics (*.png)|*.png|Bi' +
      'tmaps (*.bmp)|*.bmp'
    Options = [ofHideReadOnly, ofOldStyleDialog, ofEnableSizing]
    Title = 'Escolha sua IMAGEM'
    Left = 732
    Top = 14
  end
end
