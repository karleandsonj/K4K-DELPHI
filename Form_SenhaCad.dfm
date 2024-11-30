object Formsenhacad: TFormsenhacad
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'SENHA DE CADASTRO'
  ClientHeight = 113
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  StyleName = 'Windows'
  OnClose = FormClose
  TextHeight = 15
  object Lb_senha: TLabel
    AlignWithMargins = True
    Left = 0
    Top = 20
    Width = 357
    Height = 15
    Margins.Left = 0
    Margins.Top = 20
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Alignment = taCenter
    Caption = 'DIGITE A SENHA DE ADMIN!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    StyleName = 'Windows'
    ExplicitWidth = 148
  end
  object Edit_Senha: TEdit
    AlignWithMargins = True
    Left = 20
    Top = 45
    Width = 317
    Height = 23
    Hint = 'Insira a senha correta!'
    Margins.Left = 20
    Margins.Top = 10
    Margins.Right = 20
    Margins.Bottom = 0
    Align = alTop
    Alignment = taCenter
    NumbersOnly = True
    ParentShowHint = False
    PasswordChar = '*'
    ShowHint = True
    TabOrder = 0
    TextHint = 'DIGITE A SENHA'
    OnKeyPress = Edit_SenhaKeyPress
  end
  object btn_senha: TButton
    Left = 128
    Top = 79
    Width = 105
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = btn_senhaClick
  end
end
