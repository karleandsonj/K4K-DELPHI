object FormCONSULTA: TFormCONSULTA
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'CONSULTA'
  ClientHeight = 568
  ClientWidth = 831
  Color = clGradientActiveCaption
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PopupMode = pmAuto
  Position = poMainFormCenter
  PrintScale = poNone
  ScreenSnap = True
  OnShow = FormShow
  TextHeight = 15
  object IMG_AMPLIADA: TPanel
    AlignWithMargins = True
    Left = 15
    Top = 69
    Width = 801
    Height = 484
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alClient
    Color = clPowderblue
    ParentBackground = False
    TabOrder = 2
    Visible = False
    object DBImage2: TDBImage
      AlignWithMargins = True
      Left = 4
      Top = 36
      Width = 793
      Height = 444
      Align = alClient
      DataField = 'IMAGEM'
      DataSource = DM.dsSGA
      Proportional = True
      Stretch = True
      TabOrder = 0
    end
    object Panel7: TPanel
      Left = 1
      Top = 1
      Width = 799
      Height = 32
      Align = alTop
      TabOrder = 1
      object Image1: TImage
        AlignWithMargins = True
        Left = 771
        Top = 4
        Width = 24
        Height = 24
        Align = alRight
        ParentShowHint = False
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000320000
          003208060000001E3F88B1000000097048597300000B1300000B1301009A9C18
          000003F44944415478DAED9A494C14411486ABBA516200A3894666060933100F
          1A94C18311320DA889A8714934269EC1E5E692B8C05D052E700597A31EF4E212
          301E041A312E318A266A14A635991E423CE841832CDDE5EB005190A97AD5DD20
          22EF30334957BDAAAFFA9F57AF5F3525F3C4E8DF9EC002080624AC9BED94D272
          4EBFAF36A3951FB5C0133F2793A7F76F5228BB073F97A56AC318EB30B450050A
          24A2275FC2950DBC411923BD4B2C35FAA662D5373F20D6B60F640EAAD60B4A49
          01B721233D712D588402C9EF348B6D4A1EC35D59C4F7495A8C58F0A81F2091AE
          640B7C1DE6B76216B39512A32CF01405E258B82B590717CF8A26C088BDC788E5
          DCF10291AF272B1961AD04564E30581DDC8D9AE92EA5EC58D0FA3EDDCACC780E
          BED7F17DB3CF244D2D3436670FB88128D0932B6DCA5EC154B20510EF2C6B28FA
          A922FC430AC4B1B13F9FDD0DCD54C120B761A5F6BA0189749937C1FF7EBE7F66
          C3A716D742DDA99A08C32F5E62ACDA8885AEC840843BCD6AAAD04BC2861C49A1
          41B01283D1BE13CB8EC6CB577FC040E476F687556AF780DF2C010457526810C7
          B0128328F6C8E80F68E420B5F893634AE461F201F82B13B4134A4A0AC4310989
          D582C42E727DE9662DDC89F3C24111929206918862A344A1254669F0D9B47E3A
          12514B51608F228B05102849498338868E6284BD1D56AD8D8992DCC1A98B6167
          6500202DE477C74BCA15886320B17AE87446D40E529826430B9E9CD4574F36C1
          9D382EEC4B483D640CE764E6250D828E6290DDC14EBD2B1E0BB68D2D40621B65
          F43E62F79692946B10C7D0518C1173246D74BD3A64D9AA9ADE03A3E50AE0A525
          E509C431B4C408B93E3ED02144DB0690943032FA0A82DF2891E652529E411CC3
          473111847B49F902E21856625C0E1751CA7710CF12F32829DF401C732D311F24
          E52B88636E24E687A46600C46CA0849E9604711D6E6704645E48CB8F3FFB70DA
          68F1D40473D641DC48EA4F16EF125BD810672245F122310F492352528C5C63D0
          704E268DF3228D9779B0821BB1B34F0B3AD57512D1135B6138E7C14AE1F77327
          31178FBAD828C51AE3B1D0A9497DF5642368EC84B0A70B89FD7FC507743988B1
          11A2D2523FCA4132129329D0219342560392AAE3FB326B409E17849E24924ABF
          4BA6DD467FA06C4E964C658AD854B58AFA4A727B318B335EC47E097E97F2DDE2
          2486395640564BEC2A2396731503F1CBB7590512BB2CF62D96982F073D30D02D
          18689F0CC48445BACC1BE0FF009FC4C341CF6C1DBDAD6937578CA691D798A337
          9EC47887A1C81A2FDD6D6881BB6E20262CAFD3DCAE50D2262AA7F224366D477C
          2EC59A0D2D74CC0BC46F0BD70C93392258B594129BDF2F0C205EE1F86233BA63
          865EE170AAF7CB532F206B07156C4181FC8BB60032D7EC270ABC70515213A598
          0000000049454E44AE426082}
        Proportional = True
        ShowHint = False
        Transparent = True
        OnClick = Image1Click
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitHeight = 669
      end
    end
  end
  object BODY: TPanel
    AlignWithMargins = True
    Left = 15
    Top = 69
    Width = 801
    Height = 484
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alClient
    Color = clPowderblue
    ParentBackground = False
    TabOrder = 0
    object Shape6: TShape
      Left = 799
      Top = 229
      Width = 1
      Height = 254
      Align = alRight
      Pen.Style = psDot
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitHeight = 799
    end
    object Shape7: TShape
      Left = 1
      Top = 229
      Width = 1
      Height = 254
      Align = alLeft
      Pen.Style = psDot
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitHeight = 799
    end
    object TOP: TPanel
      Left = 1
      Top = 1
      Width = 799
      Height = 228
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Shape5: TShape
        Left = 0
        Top = 0
        Width = 1
        Height = 228
        Align = alLeft
        Pen.Style = psDot
        ExplicitLeft = -4
        ExplicitTop = -5
      end
      object Shape4: TShape
        Left = 798
        Top = 0
        Width = 1
        Height = 228
        Align = alRight
        Pen.Style = psDot
        ExplicitLeft = 801
        ExplicitTop = -9
      end
      object Shape2: TShape
        Left = 399
        Top = 0
        Width = 1
        Height = 228
        Align = alLeft
        Pen.Style = psDot
        ExplicitLeft = 404
      end
      object ConsSOLUCAO_PANEL: TPanel
        Left = 400
        Top = 0
        Width = 398
        Height = 228
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object LbSOLUCAO: TLabel
          Left = 0
          Top = 0
          Width = 398
          Height = 15
          Align = alTop
          Alignment = taCenter
          Caption = 'SOLUCAO'
          ExplicitWidth = 54
        end
        object ConsSOLUCAO: TMemo
          AlignWithMargins = True
          Left = 3
          Top = 18
          Width = 392
          Height = 207
          TabStop = False
          Align = alClient
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = bsNone
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
          StyleName = 'Windows'
        end
      end
      object ConsERRO_PANEL: TPanel
        Left = 1
        Top = 0
        Width = 398
        Height = 228
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object LbERRO: TLabel
          Left = 0
          Top = 0
          Width = 398
          Height = 15
          Align = alTop
          Alignment = taCenter
          Caption = 'ERRO DETALHADO'
          ExplicitWidth = 99
        end
        object ConsERRO: TMemo
          AlignWithMargins = True
          Left = 3
          Top = 18
          Width = 392
          Height = 207
          TabStop = False
          Align = alClient
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = bsNone
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
          StyleName = 'Windows'
        end
      end
    end
    object BOTTON: TPanel
      Left = 2
      Top = 229
      Width = 797
      Height = 254
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Shape1: TShape
        Left = 0
        Top = 0
        Width = 797
        Height = 1
        Align = alTop
        Pen.Style = psDot
        ExplicitWidth = 799
      end
      object Shape3: TShape
        Left = 549
        Top = 1
        Width = 1
        Height = 253
        Align = alRight
        Pen.Style = psDot
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitHeight = 799
      end
      object ConsIMG_PANEL: TPanel
        Left = 550
        Top = 1
        Width = 247
        Height = 253
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object LbIMAGEM: TLabel
          Left = 0
          Top = 0
          Width = 247
          Height = 15
          Align = alTop
          Alignment = taCenter
          Caption = 'IMAGEM'
          ExplicitWidth = 47
        end
        object ConsIMAGE: TDBImage
          AlignWithMargins = True
          Left = 3
          Top = 18
          Width = 241
          Height = 210
          Align = alTop
          DataField = 'IMAGEM'
          DataSource = DM.dsSGA
          Proportional = True
          ReadOnly = True
          Stretch = True
          TabOrder = 0
          OnClick = ConsIMAGEClick
        end
      end
      object ConsSCRIPT_PANEL: TPanel
        Left = 0
        Top = 1
        Width = 549
        Height = 253
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object LbSCRIPT: TLabel
          Left = 0
          Top = 0
          Width = 549
          Height = 15
          Align = alTop
          Alignment = taCenter
          Caption = 'SCRIPT / OBSERVA'#199#195'O'
          ExplicitWidth = 122
        end
        object ConsSCRIPT: TMemo
          AlignWithMargins = True
          Left = 3
          Top = 18
          Width = 543
          Height = 210
          TabStop = False
          Align = alClient
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = bsNone
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
          StyleName = 'Windows'
        end
        object Panel1: TPanel
          Left = 0
          Top = 231
          Width = 549
          Height = 22
          Align = alBottom
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 1
          object BTN_CopiarSCRIPT: TButton
            Left = 0
            Top = 0
            Width = 89
            Height = 22
            Cursor = crDrag
            Align = alLeft
            BiDiMode = bdLeftToRight
            Caption = #55357#56516' Copiar!'
            DoubleBuffered = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Pitch = fpVariable
            Font.Style = []
            Font.Quality = fqProof
            ParentBiDiMode = False
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 0
            OnClick = BTN_CopiarSCRIPTClick
          end
        end
      end
    end
  end
  object TOP_TITLE_CONS: TPanel
    AlignWithMargins = True
    Left = 15
    Top = 15
    Width = 801
    Height = 44
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Margins.Bottom = 10
    Align = alTop
    Color = clPowderblue
    ParentBackground = False
    TabOrder = 1
    object ConsSISTEMA: TDBText
      AlignWithMargins = True
      Left = 4
      Top = 16
      Width = 793
      Height = 24
      Margins.Top = 13
      Align = alBottom
      Alignment = taCenter
      DataField = 'SISTEMA'
      DataSource = DM.dsSGA
      ParentShowHint = False
      ShowHint = False
      ExplicitLeft = 8
      ExplicitWidth = 653
    end
    object ConsID: TDBText
      Left = 1
      Top = 1
      Width = 799
      Height = 17
      Hint = 'ID: '
      Align = alTop
      Alignment = taCenter
      Color = clPowderblue
      DataField = 'ID'
      DataSource = DM.dsSGA
      Enabled = False
      ParentColor = False
      ExplicitLeft = 298
      ExplicitTop = 2
      ExplicitWidth = 65
    end
  end
  object TempoCopiar_SCRIPT: TTimer
    OnTimer = TempoCopiar_SCRIPTTimer
    Left = 99
    Top = 528
  end
end
