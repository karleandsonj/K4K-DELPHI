unit UnitPrincipal;

interface

uses
  ShellAPI, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.VirtualImage, IdBaseComponent,
  IdIntercept, IdBlockCipherIntercept, System.Actions, Vcl.ActnList,
  Vcl.ButtonGroup, Vcl.WinXPanels, Vcl.DBCGrids, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.FormTabsBar, Data.FMTBcd, Data.SqlExpr, Vcl.ComCtrls, Clipbrd,
  Vcl.Mask;

type
  TFormPrincipal = class(TForm)
    MargemTOP: TPanel;
    Karl4Knows: TLabel;
    Image2: TImage;
    MargemLEFT: TPanel;
    ScrollBox1: TScrollBox;
    F8_SGAOTICA: TPanel;
    Image11: TImage;
    Label9: TLabel;
    F7_SGAOS: TPanel;
    Image3: TImage;
    Label1: TLabel;
    F6_GOURMET: TPanel;
    Image4: TImage;
    Label2: TLabel;
    F5_SGALITE: TPanel;
    Image5: TImage;
    Label3: TLabel;
    F4_SGABOX2010: TPanel;
    Image6: TImage;
    Label4: TLabel;
    F3_SOBOX: TPanel;
    Image7: TImage;
    Label5: TLabel;
    F2_SGABOXN: TPanel;
    Image8: TImage;
    Label6: TLabel;
    F1_SGA: TPanel;
    Image9: TImage;
    Label7: TLabel;
    F9_SPED: TPanel;
    Image10: TImage;
    Label8: TLabel;
    LOGO: TPanel;
    imgLOGO: TImage;
    inicio: TPanel;
    lado: TPanel;
    BV: TLabel;
    BARRAFM: TPanel;
    busca: TEdit;
    DBCtrlGrid2: TDBCtrlGrid;
    FORM: TPanel;
    minimizar: TPanel;
    fechar: TPanel;
    TXTSISTEMA: TDBText;
    TXTERRORESUMIDO: TDBText;
    RemoverCaracter: TPanel;
    TItleRC: TPanel;
    RCNumOriginal: TEdit;
    BodyRC: TPanel;
    BTN_REMOVER: TButton;
    RC_REMOVIDO: TPanel;
    GridPanel1: TGridPanel;
    BTN_Copiar: TButton;
    BTN_Limpar: TButton;
    BODY: TPanel;
    RC_REMOVIDO_EDIT: TMemo;
    lupa: TImage;
    Sistem: TEdit;
    CircleLOGO: TShape;
    Inicio2: TFlowPanel;
    GRADEINICIO: TGridPanel;
    Panel_InicioNFE: TPanel;
    IniCONSNFE: TImage;
    Label11: TLabel;
    Panel_InicioNFCE: TPanel;
    iniCONSNFCE: TImage;
    Label12: TLabel;
    Panel_InicioCNPJ: TPanel;
    iniCONSCNPJ: TImage;
    Label13: TLabel;
    Panel_InicioDISPO: TPanel;
    iniCONSDISPONI: TImage;
    Label14: TLabel;
    Panel_InicioRemCaracter: TPanel;
    iniREMOVCARAC: TImage;
    Label15: TLabel;
    Panel6: TPanel;
    Image16: TImage;
    Label16: TLabel;
    Panel7: TPanel;
    Image17: TImage;
    Label17: TLabel;
    Panel8: TPanel;
    Image18: TImage;
    Label18: TLabel;
    TempoCopiar: TTimer;
    Conf: TPanel;
    ConfIMG: TImage;
    imgMinimizar: TImage;
    imgFechar: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure imgLOGOClick(Sender: TObject);
    //procedure DBCtrlGrid2Click(Sender: TObject);
    procedure FecharIMGClick(Sender: TObject);
    procedure MinimizarIMGClick(Sender: TObject);
    procedure MinimizarIMGMouseEnter(Sender: TObject);
    procedure MinimizarIMGMouseLeave(Sender: TObject);
    procedure ScrollBox1MouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure buscaChange(Sender: TObject);
    procedure FecharIMGMouseEnter(Sender: TObject);
    procedure FecharIMGMouseLeave(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure IniCONSNFEDblClick(Sender: TObject);
    procedure iniCONSNFCEDblClick(Sender: TObject);
    procedure iniCONSCNPJDblClick(Sender: TObject);
    procedure iniCONSDISPONIDblClick(Sender: TObject);
    procedure IniCONSNFEMouseEnter(Sender: TObject);
    procedure IniCONSNFEMouseLeave(Sender: TObject);
    procedure iniCONSNFCEMouseEnter(Sender: TObject);
    procedure iniCONSNFCEMouseLeave(Sender: TObject);
    procedure iniCONSCNPJMouseEnter(Sender: TObject);
    procedure iniCONSCNPJMouseLeave(Sender: TObject);
    procedure iniCONSDISPONIMouseLeave(Sender: TObject);
    procedure iniREMOVCARACMouseEnter(Sender: TObject);
    procedure iniREMOVCARACMouseLeave(Sender: TObject);
    procedure iniCONSDISPONIMouseEnter(Sender: TObject);
    procedure BTN_REMOVERClick(Sender: TObject);
    procedure RC_REMOVIDO_EDITChange(Sender: TObject);
    procedure BTN_LimparClick(Sender: TObject);
    procedure BTN_CopiarClick(Sender: TObject);
    procedure TempoCopiarTimer(Sender: TObject);
    procedure iniREMOVCARACDblClick(Sender: TObject);
    procedure LOGOEnter(Sender: TObject);
    procedure Label7MouseEnter(Sender: TObject);
    procedure Label7MouseLeave(Sender: TObject);
    procedure Image8MouseLeave(Sender: TObject);
    procedure Image8MouseEnter(Sender: TObject);
    procedure Image7MouseEnter(Sender: TObject);
    procedure Image7MouseLeave(Sender: TObject);
    procedure Image6MouseEnter(Sender: TObject);
    procedure Image6MouseLeave(Sender: TObject);
    procedure Image5MouseEnter(Sender: TObject);
    procedure Image5MouseLeave(Sender: TObject);
    procedure Image4MouseEnter(Sender: TObject);
    procedure Image4MouseLeave(Sender: TObject);
    procedure Image3MouseLeave(Sender: TObject);
    procedure Image3MouseEnter(Sender: TObject);
    procedure Image11MouseEnter(Sender: TObject);
    procedure Image11MouseLeave(Sender: TObject);
    procedure Image10MouseEnter(Sender: TObject);
    procedure Image10MouseLeave(Sender: TObject);
    procedure SistemChange(Sender: TObject);
    procedure DBCtrlGrid2Click(Sender: TObject);
    procedure ConfIMGMouseEnter(Sender: TObject);
    procedure ConfIMGMouseLeave(Sender: TObject);
    procedure ConfIMGClick(Sender: TObject);
    {procedure Karl4KnowsClick(Sender: TObject);
    procedure TempoTituloTimer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Tempo0Timer(Sender: TObject);}
    // Outros componentes
  private
    procedure WMMouseWheel(var Msg: TMessage); message WM_MOUSEWHEEL;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses UnitCadastro, UnitDM, UnitSGA, UnitCONSULTA, Form_SenhaCad, UnitConf,
  UnitSenhaConfig, UnitCONSULTACNPJ;

procedure SetRedraw(Control: TWinControl; Value: Boolean);
begin
  SendMessage(Control.Handle, WM_SETREDRAW, WPARAM(Value), 0);
  if Value then
    Control.Invalidate;
end;

procedure ArredondarLOGO(Control: TWinControl);
var
  R: TRect;
  Rgn: HRGN;
begin
  with Control do
  begin
    R := ClientRect;
    rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 150,150);
    Perform(EM_GETRECT, 0, lParam(@r));
    InflateRect(R, -5, -5);
    Perform(EM_SETRECTNP, 0, lParam(@r));
    SetWindowRgn(Handle, rgn, True);
    Invalidate;
  end;
end;

procedure TFormPrincipal.buscaChange(Sender: TObject);
begin
    DM.BUSCA.Close;
    DM.BUSCA.SQL.Clear;

    DM.BUSCA.SQL.Add('SELECT * FROM FORMULARIO WHERE SISTEMA = :pSISTEMA AND ERRORESUMIDO LIKE :pCONSULTA');

    DM.BUSCA.ParamByName('pCONSULTA').AsString := busca.Text+'%';
    DM.BUSCA.ParamByName('pSISTEMA').AsString := Sistem.Text;

    DM.BUSCA.Open;
end;

procedure TFormPrincipal.DBCtrlGrid2Click(Sender: TObject);
begin
    FormCONSULTA := TFormCONSULTA.Create(self);
    FormCONSULTA.Show;
end;

procedure TFormPrincipal.BTN_CopiarClick(Sender: TObject);
//var I : Integer;
var cont : integer;
begin
  if RC_REMOVIDO_EDIT.Text <> '' then
  begin
    Clipboard.AsText := RC_REMOVIDO_EDIT.Text;
    BTN_Copiar.Caption := 'COPIADO ✔';
    TempoCopiar.Enabled := True;       // Inicia o Timer
  end
  else
  begin
    ShowMessage('Parabens, Copiou nada! 👍');
    RC_REMOVIDO_EDIT.Visible := True;
  end;
end;

procedure TFormPrincipal.BTN_LimparClick(Sender: TObject);
begin
    RC_REMOVIDO_EDIT.Clear;
     RCNumOriginal.Clear;
    RC_REMOVIDO_EDIT.Visible := false;
end;

procedure TFormPrincipal.BTN_REMOVERClick(Sender: TObject);
var
  i: Integer;
  OriginalText: string;
begin
  // Obtém o texto do campo RCNumOriginal
  RC_REMOVIDO_EDIT.Visible := true;
  OriginalText := RCNumOriginal.Text;

  // Limpa o campo original
  RC_REMOVIDO_EDIT.Text := '';

  // Loop para percorrer cada caractere do texto original
  for i := 1 to Length(OriginalText) do
  begin
    // Verifica se o caractere não é um dos que você deseja remover
    if not (OriginalText[i] in ['.', ',', '-', '_', '%', '#', '@', '*', ':', '/', '\', '=', '+', ';', '|', '<', '>']) then
    begin
      // Adiciona o caractere ao campo se não for um dos removidos
      RC_REMOVIDO_EDIT.Text := RC_REMOVIDO_EDIT.Text + OriginalText[i];
    end;
  end;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
var
  rgn: HRGN;
begin
  ArredondarLOGO(LOGO);
  WindowState := wsMaximized;
  // Ativar o DoubleBuffered para evitar flickering
  Self.DoubleBuffered := True;
  ScrollBox1.DoubleBuffered := True;
  MargemTOP.DoubleBuffered := True;
  F1_SGA.DoubleBuffered := True;
  F2_SGABOXN.DoubleBuffered := True;
  Inicio2.SendToBack;

  // Adicione o DoubleBuffered para os outros painéis, conforme necessário
end;

procedure TFormPrincipal.ScrollBox1MouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  SetRedraw(ScrollBox1, False);  // Desativar redesenho temporariamente
  try
    ScrollBox1.VertScrollBar.Position := ScrollBox1.VertScrollBar.Position - WheelDelta;  // Controlar o movimento do scroll
  finally
    SetRedraw(ScrollBox1, True);  // Reativar o redesenho
  end;
end;

procedure TFormPrincipal.SistemChange(Sender: TObject);
begin
    if Sistem.Text = 'SGA' then
    begin
          F1_SGA.Color := clActiveCaption
    end
    else
    begin
          F1_SGA.Color := TColor($E6E0B0)
    end;

    if Sistem.Text = 'SGABOX NOVO' then
    begin
          F2_SGABOXN.Color := clActiveCaption
    end
    else
    begin
          F2_SGABOXN.Color := TColor($E6E0B0)
    end;

        if Sistem.Text = 'SOBOX' then
    begin
          F3_SOBOX.Color := clActiveCaption
    end
    else
    begin
          F3_SOBOX.Color := TColor($E6E0B0)
    end;

    if Sistem.Text = 'SGABOX 2010' then
    begin
          F4_SGABOX2010.Color := clActiveCaption
    end
    else
    begin
          F4_SGABOX2010.Color := TColor($E6E0B0)
    end;

    if Sistem.Text = 'SGA LITE' then
    begin
          F5_SGALITE.Color := clActiveCaption
    end
    else
    begin
          F5_SGALITE.Color := TColor($E6E0B0)
    end;
end;

procedure TFormPrincipal.TempoCopiarTimer(Sender: TObject);
begin
  // Restaura o texto original do botão após 3 segundos
  BTN_Copiar.Caption := 'COPIAR'; // Ajuste conforme a legenda original do botão

  // Desativa o Timer
  TempoCopiar.Enabled := False;
end;

procedure TFormPrincipal.FecharIMGClick(Sender: TObject);
begin
  Close;
end;

procedure TFormPrincipal.FecharIMGMouseEnter(Sender: TObject);
begin
   fechar.Color := clWebIndianRed;
end;

procedure TFormPrincipal.FecharIMGMouseLeave(Sender: TObject);
begin
   fechar.Color := clBtnFace;
end;

procedure TFormPrincipal.MinimizarIMGClick(Sender: TObject);
begin
  WindowState := TWindowState.wsMinimized;
end;

procedure TFormPrincipal.MinimizarIMGMouseEnter(Sender: TObject);
begin
  Minimizar.Color := clGradientActiveCaption; // Mudar a cor do painel ao passar o mouse
end;

procedure TFormPrincipal.MinimizarIMGMouseLeave(Sender: TObject);
begin
  Minimizar.Color := clBtnFace; // Restaurar a cor original
end;

procedure TFormPrincipal.RC_REMOVIDO_EDITChange(Sender: TObject);
const
  AlturaMinima = 15;
  AlturaMaxima = 200;
  AlturaLinha = 13;  // Altura média de uma linha de texto
var
  AlturaAtual: Integer;
  LinhaCount: Integer;
begin

  // Conta o número de linhas no Memo
  LinhaCount := RC_REMOVIDO_EDIT.Lines.Count;

  // Calcula a altura necessária com base no número de linhas
  AlturaAtual := AlturaMinima + (LinhaCount * AlturaLinha);

  // Limita a altura máxima para o valor definido
  if AlturaAtual > AlturaMaxima then
    AlturaAtual := AlturaMaxima;

  // Define a altura do Memo
  RC_REMOVIDO_EDIT.Height := AlturaAtual;
end;

procedure TFormPrincipal.iniCONSNFCEDblClick(Sender: TObject);
begin
   ShellExecute(0, 'open', 'https://nfe.sefaz.ba.gov.br/servicos/nfce/Modulos/Geral/NFCEC_consulta_chave_acesso.aspx', nil, nil, SW_SHOWNORMAL);
end;

procedure TFormPrincipal.iniCONSNFCEMouseEnter(Sender: TObject);
begin
   Panel_InicioNFCE.Color := clScrollBar;
end;

procedure TFormPrincipal.iniCONSNFCEMouseLeave(Sender: TObject);
begin
      Panel_InicioNFCE.Color := clWhite;
end;

procedure TFormPrincipal.iniCONSCNPJDblClick(Sender: TObject);
begin
    ConsultaCNPJ := TConsultaCNPJ.Create(self);
    ConsultaCNPJ.ShowModal;
    //ShellExecute(0, 'open', 'https://portal.sefaz.ba.gov.br/scripts/cadastro/cadastroBa/consultaBa.asp', nil, nil, SW_SHOWNORMAL);
end;

procedure TFormPrincipal.iniCONSCNPJMouseEnter(Sender: TObject);
begin
   Panel_InicioCNPJ.Color := clScrollBar;
end;

procedure TFormPrincipal.iniCONSCNPJMouseLeave(Sender: TObject);
begin
       Panel_InicioCNPJ.Color := clWhite;
end;

procedure TFormPrincipal.iniCONSDISPONIDblClick(Sender: TObject);
begin
   ShellExecute(0, 'open', 'https://www.nfe.fazenda.gov.br/portal/disponibilidade.aspx', nil, nil, SW_SHOWNORMAL);
end;

procedure TFormPrincipal.iniCONSDISPONIMouseEnter(Sender: TObject);
begin
           Panel_InicioDISPO.Color := clScrollBar;
end;

procedure TFormPrincipal.iniCONSDISPONIMouseLeave(Sender: TObject);
begin
       Panel_InicioDISPO.Color := clWhite;
end;

procedure TFormPrincipal.imgLOGOClick(Sender: TObject);
begin
  busca.Clear;
  DBCtrlGrid2.Refresh;
  DM.BUSCA.SQL.Clear;
  DM.SQLCONSULTA.SQL.Clear;
  DM.F2_CONS.SQL.Clear;
  DM.CONSULTA_CAD.SQL.Clear;
  Sistem.Clear;
  FORM.Visible := False;
  RemoverCaracter.Visible := false;
end;

procedure TFormPrincipal.Image10MouseEnter(Sender: TObject);
begin
   F9_SPED.Color := clActiveCaption;
end;

procedure TFormPrincipal.Image10MouseLeave(Sender: TObject);
begin
   F9_SPED.Color := TColor($E6E0B0);
end;

procedure TFormPrincipal.Image11MouseEnter(Sender: TObject);
begin
   F8_SGAOTICA.Color := clActiveCaption;
end;

procedure TFormPrincipal.Image11MouseLeave(Sender: TObject);
begin
   F8_SGAOTICA.Color := TColor($E6E0B0);
end;

procedure TFormPrincipal.ConfIMGClick(Sender: TObject);
begin
  SenhaConfig := TSenhaConfig.Create(self);
  SenhaConfig.ShowModal;
end;

procedure TFormPrincipal.ConfIMGMouseEnter(Sender: TObject);
begin
   Conf.Color := clBtnShadow; // Mudar a cor do painel ao passar o mouse
end;

procedure TFormPrincipal.ConfIMGMouseLeave(Sender: TObject);
begin
    Conf.Color := clBtnFace; // Restaurar a cor original
end;

procedure TFormPrincipal.Image2Click(Sender: TObject);
begin
  DM.SQLCONSULTA.Close;
  DM.SQLCONSULTA.SQL.Clear;
  FORM.Visible := False;
  RemoverCaracter.Visible := false;
  Formsenhacad := TFormsenhacad.Create(self);
  Formsenhacad.ShowModal;
  //FormCadastro := TFormCadastro.Create(self);
  //FormCadastro.ShowModal;
end;

procedure TFormPrincipal.Image3MouseEnter(Sender: TObject);
begin
   F7_SGAOS.Color := clActiveCaption;
end;

procedure TFormPrincipal.Image3MouseLeave(Sender: TObject);
begin
   F7_SGAOS.Color := TColor($E6E0B0);
end;

procedure TFormPrincipal.Image4MouseEnter(Sender: TObject);
begin
   F6_GOURMET.Color := clActiveCaption;
end;

procedure TFormPrincipal.Image4MouseLeave(Sender: TObject);
begin
   F6_GOURMET.Color := TColor($E6E0B0);
end;

procedure TFormPrincipal.Image5MouseEnter(Sender: TObject);
begin
   F5_SGALITE.Color := clActiveCaption;
end;

procedure TFormPrincipal.Image5MouseLeave(Sender: TObject);
begin
    if Sistem.Text = 'SGA LITE' then
    begin
          F5_SGALITE.Color := clActiveCaption
    end
    else
    begin
          F5_SGALITE.Color := TColor($E6E0B0)
    end;
end;

procedure TFormPrincipal.Image6Click(Sender: TObject);
begin
  FORM.Refresh;
  RemoverCaracter.Visible := false;
  FORM.Visible := true;
  // Limpa a busca e prepara o formulário
  busca.Clear;

  // Fecha a consulta e prepara uma nova SQL
  DM.BUSCA.Close;
  DM.BUSCA.SQL.Clear;

  // Use aspas simples corretas para incluir a string 'SGA' na consulta
  DM.BUSCA.SQL.Add('SELECT * FROM FORMULARIO WHERE SISTEMA = ''SGABOX 2010''');

    Sistem.Clear;
  Sistem.Text := 'SGABOX 2010';

  // Abre a consulta para atualizar os dados
  DM.BUSCA.Open;
end;

procedure TFormPrincipal.Image6MouseEnter(Sender: TObject);
begin
   F4_SGABOX2010.Color := clActiveCaption;
end;

procedure TFormPrincipal.Image6MouseLeave(Sender: TObject);
begin
    if Sistem.Text = 'SGABOX 2010' then
    begin
          F4_SGABOX2010.Color := clActiveCaption
    end
    else
    begin
          F4_SGABOX2010.Color := TColor($E6E0B0)
    end;
end;

procedure TFormPrincipal.Image7Click(Sender: TObject);
begin
     // Torna o formulário visível
  FORM.Refresh;
  RemoverCaracter.Visible := false;
  FORM.Visible := true;
  // Limpa a busca e prepara o formulário
  busca.Clear;

  // Fecha a consulta e prepara uma nova SQL
  DM.BUSCA.Close;
  DM.BUSCA.SQL.Clear;

  // Use aspas simples corretas para incluir a string 'SGA' na consulta
  DM.BUSCA.SQL.Add('SELECT * FROM FORMULARIO WHERE SISTEMA = ''SOBOX''');

    Sistem.Clear;
  Sistem.Text := 'SOBOX';

  // Abre a consulta para atualizar os dados
  DM.BUSCA.Open;
end;

procedure TFormPrincipal.Image7MouseEnter(Sender: TObject);
begin
      F3_SOBOX.Color := clActiveCaption;
end;

procedure TFormPrincipal.Image7MouseLeave(Sender: TObject);
begin
    if Sistem.Text = 'SOBOX' then
    begin
          F3_SOBOX.Color := clActiveCaption
    end
    else
    begin
          F3_SOBOX.Color := TColor($E6E0B0)
    end;
end;

procedure TFormPrincipal.Image8Click(Sender: TObject);
begin
  // Torna o formulário visível
  FORM.Refresh;
  RemoverCaracter.Visible := false;
  FORM.Visible := true;
  // Limpa a busca e prepara o formulário
  busca.Clear;

  // Fecha a consulta e prepara uma nova SQL
  DM.BUSCA.Close;
  DM.BUSCA.SQL.Clear;

  // Use aspas simples corretas para incluir a string 'SGA' na consulta
  DM.BUSCA.SQL.Add('SELECT * FROM FORMULARIO WHERE SISTEMA = ''SGABOX NOVO''');

  Sistem.Clear;
  Sistem.Text := 'SGABOX NOVO';

  // Abre a consulta para atualizar os dados
  DM.BUSCA.Open;

end;

procedure TFormPrincipal.Image8MouseEnter(Sender: TObject);
begin
   F2_SGABOXN.Color := clActiveCaption;
end;

procedure TFormPrincipal.Image8MouseLeave(Sender: TObject);
begin
    if Sistem.Text = 'SGABOX NOVO' then
    begin
          F2_SGABOXN.Color := clActiveCaption
    end
    else
    begin
          F2_SGABOXN.Color := TColor($E6E0B0)
    end;
end;

procedure TFormPrincipal.Image9Click(Sender: TObject);
begin
  // Torna o formulário visível
  FORM.Refresh;
  RemoverCaracter.Visible := false;
  FORM.Visible := true;
  // Limpa a busca e prepara o formulário
  busca.Clear;

  // Fecha a consulta e prepara uma nova SQL
  DM.BUSCA.Close;
  DM.BUSCA.SQL.Clear;

  // Use aspas simples corretas para incluir a string 'SGA' na consulta
  DM.BUSCA.SQL.Add('SELECT * FROM FORMULARIO WHERE SISTEMA = ''SGA''');

  Sistem.Clear;
  Sistem.Text := 'SGA';

  // Abre a consulta para atualizar os dados
  DM.BUSCA.Open;


end;

procedure TFormPrincipal.IniCONSNFEDblClick(Sender: TObject);
begin
   ShellExecute(0, 'open', 'https://www.nfe.fazenda.gov.br/portal/consultaRecaptcha.aspx?tipoConsulta=resumo&tipoConteudo=7PhJ+gAVw2g=&AspxAutoDetectCookieSupport=1', nil, nil, SW_SHOWNORMAL);
end;

procedure TFormPrincipal.IniCONSNFEMouseEnter(Sender: TObject);
begin
   Panel_InicioNFE.Color := clScrollBar;
end;

procedure TFormPrincipal.IniCONSNFEMouseLeave(Sender: TObject);
begin
      Panel_InicioNFE.Color := clWhite;
end;

procedure TFormPrincipal.iniREMOVCARACDblClick(Sender: TObject);
begin
     RemoverCaracter.Visible := true;
     FORM.Visible := false;
end;

procedure TFormPrincipal.iniREMOVCARACMouseEnter(Sender: TObject);
begin
       Panel_InicioRemCaracter.Color := clScrollBar;
end;

procedure TFormPrincipal.iniREMOVCARACMouseLeave(Sender: TObject);
begin
          Panel_InicioRemCaracter.Color := clWhite;
end;


procedure TFormPrincipal.Label7MouseEnter(Sender: TObject);
begin
       F1_SGA.Color := clActiveCaption;
end;

procedure TFormPrincipal.Label7MouseLeave(Sender: TObject);
begin
    if Sistem.Text = 'SGA' then
    begin
          F1_SGA.Color := clActiveCaption
    end
    else
    begin
          F1_SGA.Color := TColor($E6E0B0)
    end;
end;

procedure TFormPrincipal.LOGOEnter(Sender: TObject);
begin
   ArredondarLOGO(LOGO);
end;

procedure TFormPrincipal.WMMouseWheel(var Msg: TMessage);
var
  Delta: Integer;
  MousePos: TPoint;
begin
  // Captura a posição do mouse
  MousePos := Mouse.CursorPos;
  // Converte a posição do mouse para as coordenadas do formulário
  MousePos := DBCtrlGrid2.ScreenToClient(MousePos);

  // Verifica se o mouse está sobre o DBCtrlGrid
  if DBCtrlGrid2.BoundsRect.Contains(MousePos) then
  begin
    Delta := TWMMouseWheel(Msg).WheelDelta;

    if Delta > 0 then
      // Scroll para cima, movendo o registro ativo para o anterior
      DBCtrlGrid2.DataSource.DataSet.Prior
    else
      // Scroll para baixo, movendo o registro ativo para o próximo
      DBCtrlGrid2.DataSource.DataSet.Next;

    Msg.Result := 0; // Indica que a mensagem foi processada
  end
  else
    Msg.Result := 1; // Indica que a mensagem não foi processada
end;

end.

