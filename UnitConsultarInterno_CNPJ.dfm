object ConsultaCNPJ_INTERNO: TConsultaCNPJ_INTERNO
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'CONSULTA CNPJ INTERNAMENTE'
  ClientHeight = 500
  ClientWidth = 544
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 544
    Height = 41
    Align = alTop
    Caption = 'CONSULTA CNPJ'
    TabOrder = 0
    object edt_CNPJ: TEdit
      Left = 0
      Top = 7
      Width = 161
      Height = 23
      Alignment = taCenter
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      Color = clWhite
      Enabled = False
      ParentBiDiMode = False
      CanUndoSelText = True
      ReadOnly = True
      TabOrder = 0
      Text = 'CNPJ'
      TextHint = 'Digite o CNPJ'
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 544
    Height = 459
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Memo1: TMemo
      AlignWithMargins = True
      Left = 20
      Top = 0
      Width = 524
      Height = 459
      Margins.Left = 20
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      TabStop = False
      Align = alClient
      BevelEdges = [beLeft]
      BevelKind = bkSoft
      BevelOuter = bvRaised
      Color = clBtnFace
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      WordWrap = False
      OnClick = Memo1Click
      OnEnter = Memo1Enter
      OnExit = Memo1Exit
      OnKeyPress = Memo1KeyPress
    end
  end
  object NetHTTPClient1: TNetHTTPClient
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 520
  end
end
