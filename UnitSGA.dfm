object FormSGA: TFormSGA
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'FormSGA'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object DBCtrlGrid1: TDBCtrlGrid
    AlignWithMargins = True
    Left = 30
    Top = 100
    Width = 564
    Height = 311
    Margins.Left = 30
    Margins.Top = 100
    Margins.Right = 30
    Margins.Bottom = 30
    Align = alClient
    AllowDelete = False
    AllowInsert = False
    DataSource = DM.dsSGA
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    PanelHeight = 62
    PanelWidth = 547
    ParentFont = False
    TabOrder = 0
    RowCount = 5
    OnClick = IDClick
    object ID: TDBText
      Left = 8
      Top = 8
      Width = 65
      Height = 17
      DataField = 'ID'
      DataSource = DM.dsSGA
      OnClick = IDClick
    end
    object ERRORESUMIDO: TDBText
      Left = 79
      Top = 0
      Width = 434
      Height = 25
      DataField = 'ERRORESUMIDO'
      DataSource = DM.dsSGA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      OnClick = IDClick
    end
  end
  object busca: TEdit
    Left = 72
    Top = 56
    Width = 522
    Height = 23
    AutoSelect = False
    Color = clBtnFace
    DoubleBuffered = False
    ParentDoubleBuffered = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    Text = 'busca'
    StyleElements = [seFont, seClient]
    OnChange = buscaChange
  end
end
