object SenhaConfig: TSenhaConfig
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'SenhaConfig'
  ClientHeight = 98
  ClientWidth = 292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  StyleName = 'Windows'
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 292
    Height = 15
    Align = alTop
    Alignment = taCenter
    Caption = 'Senha para Configurar BASE'
    Layout = tlCenter
    ExplicitWidth = 148
  end
  object edt_SenhaConf: TEdit
    Left = 7
    Top = 40
    Width = 276
    Height = 23
    Alignment = taCenter
    PasswordChar = '*'
    TabOrder = 0
    TextHint = 'Digite a senha'
    OnKeyPress = edt_SenhaConfKeyPress
  end
  object btn_SenhaConf: TButton
    Left = 81
    Top = 69
    Width = 129
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = btn_SenhaConfClick
  end
end
