object Configuracao: TConfiguracao
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Configura'#231#227'o'
  ClientHeight = 185
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object pnl_TituloConf: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 347
    Height = 41
    Align = alTop
    Caption = 'CONFIGURA'#199#195'O'
    TabOrder = 0
  end
  object pnl_Body: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 347
    Height = 132
    Align = alClient
    TabOrder = 1
    object lb_SubtituloConf: TLabel
      Left = 16
      Top = 24
      Width = 146
      Height = 15
      Caption = 'Caminho da base de dados:'
    end
    object edt_CaminhoBase: TEdit
      Left = 16
      Top = 45
      Width = 281
      Height = 23
      TabOrder = 0
      TextHint = 'Ex: C:/Karl4Knows/BASE.FDB'
    end
    object btn_BuscarBase: TButton
      Left = 303
      Top = 45
      Width = 33
      Height = 20
      Caption = '...'
      TabOrder = 1
      OnClick = btn_BuscarBaseClick
    end
    object btn_SalvarConf: TButton
      Left = 232
      Top = 88
      Width = 104
      Height = 33
      Caption = 'Salvar'
      TabOrder = 2
      OnClick = btn_SalvarConfClick
    end
  end
  object opn_BuscarBase: TOpenDialog
    Filter = 'FireBird (.FDB)|*.FDB'
    Left = 321
    Top = 4
  end
end
