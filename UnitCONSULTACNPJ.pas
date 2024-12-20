unit UnitCONSULTACNPJ;

interface

uses
  ShellAPI, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, System.JSON, REST.Types, System.Net.HttpClient, System.Net.URLClient,
  System.Net.HttpClientComponent, Vcl.ComCtrls;

type
  TConsultaCNPJ = class(TForm)
    CNPJ_TOP: TPanel;
    CNPJ_BODY: TPanel;
    CNPJ_SCROLLBODY: TScrollBox;
    P5_SUL: TPanel;
    Panel19: TPanel;
    Image6: TImage;
    Panel20: TPanel;
    Panel25: TPanel;
    Image9: TImage;
    Panel26: TPanel;
    Panel27: TPanel;
    Image10: TImage;
    Panel28: TPanel;
    TOP_SUL: TPanel;
    B1_SUL: TPanel;
    P2_NORTE: TPanel;
    TOP_NORTE: TPanel;
    B2_NORTE: TPanel;
    Panel16: TPanel;
    Image3: TImage;
    Panel17: TPanel;
    Panel18: TPanel;
    Image11: TImage;
    Panel29: TPanel;
    Panel30: TPanel;
    Image12: TImage;
    Panel31: TPanel;
    Panel32: TPanel;
    Image13: TImage;
    Panel33: TPanel;
    Panel34: TPanel;
    Image14: TImage;
    Panel35: TPanel;
    B1_NORTE: TPanel;
    Panel37: TPanel;
    Image15: TImage;
    Panel38: TPanel;
    Panel43: TPanel;
    Image18: TImage;
    Panel44: TPanel;
    P1_NORDESTE: TPanel;
    TOP_NORDESTE: TPanel;
    B1_NORDESTE: TPanel;
    Panel48: TPanel;
    Image19: TImage;
    Panel49: TPanel;
    Panel50: TPanel;
    Image20: TImage;
    Panel51: TPanel;
    Panel52: TPanel;
    Image21: TImage;
    Panel53: TPanel;
    Panel54: TPanel;
    Image22: TImage;
    Panel55: TPanel;
    Panel56: TPanel;
    Image23: TImage;
    Panel57: TPanel;
    B2_NORDESTE: TPanel;
    Panel59: TPanel;
    Image24: TImage;
    Panel60: TPanel;
    Panel61: TPanel;
    Image25: TImage;
    Panel62: TPanel;
    Panel63: TPanel;
    Image26: TImage;
    Panel64: TPanel;
    Panel65: TPanel;
    Image27: TImage;
    Panel66: TPanel;
    P3_CENTRO_OESTE: TPanel;
    TOP_CENTRO_OESTE: TPanel;
    B1_CENTRO_OESTE: TPanel;
    Panel6: TPanel;
    Image1: TImage;
    Panel8: TPanel;
    Panel11: TPanel;
    Image2: TImage;
    Panel12: TPanel;
    Panel13: TPanel;
    Image4: TImage;
    Panel14: TPanel;
    Panel23: TPanel;
    Image5: TImage;
    Panel24: TPanel;
    P4_SUDESTE: TPanel;
    TOP_SUDESTE: TPanel;
    B1_SUDESTE: TPanel;
    Panel42: TPanel;
    Image8: TImage;
    Panel67: TPanel;
    Panel68: TPanel;
    Image16: TImage;
    Panel69: TPanel;
    Panel70: TPanel;
    Image17: TImage;
    Panel71: TPanel;
    Panel72: TPanel;
    Image28: TImage;
    Panel73: TPanel;
    Shape2: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape4: TShape;
    Button1: TButton;
    Label1: TLabel;
    edt_CNPJ1: TEdit;
    NetHTTPClient1: TNetHTTPClient;
    ProgressBar1: TProgressBar;
    procedure Panel56DblClick(Sender: TObject);
    procedure Panel48DblClick(Sender: TObject);
    procedure Panel54DblClick(Sender: TObject);
    procedure Panel50DblClick(Sender: TObject);
    procedure Panel52DblClick(Sender: TObject);
    procedure Panel65DblClick(Sender: TObject);
    procedure Panel59DblClick(Sender: TObject);
    procedure Panel63DblClick(Sender: TObject);
    procedure Panel61DblClick(Sender: TObject);

    procedure PanelMouseEnter(Sender: TObject);
    procedure PanelMouseLeave(Sender: TObject);
    procedure ImageMouseEnter(Sender: TObject);
    procedure ImageMouseLeave(Sender: TObject);
    procedure Panel1MouseLeave(Sender: TObject);
    procedure Panel1MouseEnter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edt_CNPJ1Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaCNPJ: TConsultaCNPJ;

implementation

{$R *.dfm}

uses UnitConsultarInterno_CNPJ;

procedure TConsultaCNPJ.Panel48DblClick(Sender: TObject);
begin
    ShellExecute(0, 'open', 'https://portal.sefaz.ba.gov.br/scripts/cadastro/cadastroBa/consultaBa.asp', nil, nil, SW_SHOWNORMAL);
end;

procedure TConsultaCNPJ.Panel50DblClick(Sender: TObject);
begin
    ShellExecute(0, 'open', 'https://sistemas1.sefaz.ma.gov.br/sintegra/jsp/consultaSintegra/consultaSintegraFiltro.jsf', nil, nil, SW_SHOWNORMAL);
end;

procedure TConsultaCNPJ.Panel52DblClick(Sender: TObject);
begin
    ShellExecute(0, 'open', 'https://www4.sefaz.pb.gov.br/sintegra/SINf_ConsultaSintegra.jsp', nil, nil, SW_SHOWNORMAL);
end;

procedure TConsultaCNPJ.Panel54DblClick(Sender: TObject);
begin
    ShellExecute(0, 'open', 'https://consultapublica.sefaz.ce.gov.br/sintegra/preparar-consultar', nil, nil, SW_SHOWNORMAL);
end;

procedure TConsultaCNPJ.Panel56DblClick(Sender: TObject);
begin
    ShellExecute(0, 'open', 'https://sintegra.sefaz.al.gov.br/#/', nil, nil, SW_SHOWNORMAL);
end;

procedure TConsultaCNPJ.Panel59DblClick(Sender: TObject);
begin
    ShellExecute(0, 'open', 'https://dfe-portal.svrs.rs.gov.br/Nfe/Ccc', nil, nil, SW_SHOWNORMAL);
end;

procedure TConsultaCNPJ.Panel61DblClick(Sender: TObject);
begin
    ShellExecute(0, 'open', 'https://security.sefaz.se.gov.br/SIC/sintegra/index.jsp', nil, nil, SW_SHOWNORMAL);
end;

procedure TConsultaCNPJ.Panel63DblClick(Sender: TObject);
begin
    ShellExecute(0, 'open', 'https://uvt2.set.rn.gov.br/#/services/consultaContribuinte', nil, nil, SW_SHOWNORMAL);
end;

procedure TConsultaCNPJ.Panel65DblClick(Sender: TObject);
begin
    ShellExecute(0, 'open', 'https://efisco.sefaz.pe.gov.br/sfi_trb_gcc/PRConsultarExtratoCadastroContribuinteSINTEGRA', nil, nil, SW_SHOWNORMAL);
end;

//mudar cor dos panels

procedure TConsultaCNPJ.Button1Click(Sender: TObject);
var
  Response: IHTTPResponse;
  JSONObj: TJSONObject;
  CNPJ, URL: string;
begin

  // Configura��o inicial da ProgressBar
  ProgressBar1.Position := 0;
  ProgressBar1.Visible := True;
  ProgressBar1.BringToFront;
  //Application.ProcessMessages;


  //edt_CNPJ.text := ConsultaCNPJ.edt_CNPJ1.text;
  CNPJ := edt_CNPJ1.text;
  URL := 'https://brasilapi.com.br/api/cnpj/v1/' + CNPJ;

  try
    ProgressBar1.Position := 20;
    //Application.ProcessMessages;

    // Faz a requisi��o GET na URL da API
    Response := NetHTTPClient1.Get(URL);

    ProgressBar1.Position := 60;
    //Application.ProcessMessages;

    // Verifica se a resposta foi bem-sucedida
    if Response.StatusCode = 200 then
    begin
      ProgressBar1.Position := 100;
      //Application.ProcessMessages;
      JSONObj := TJSONObject.ParseJSONValue(Response.ContentAsString) as TJSONObject;

      ConsultaCNPJ_INTERNO := TConsultaCNPJ_INTERNO.Create(self);
      ConsultaCNPJ_INTERNO.ShowModal;



      // Verifica se o JSON foi parseado corretamente
      if JSONObj = nil then
      begin
        ProgressBar1.State := pbsError;
        ProgressBar1.Position := 100;
        //Application.ProcessMessages;
        ShowMessage('Erro: Resposta JSON inv�lida');
        Exit;
      end;

    end
    else
    begin
      ProgressBar1.State := pbsError;
      ProgressBar1.Position := 100;
      ShowMessage('Erro ao consultar CNPJ: ' + CNPJ);
      edt_CNPJ1.SetFocus;

    end;
  except
    on E: Exception do
    begin
      ProgressBar1.State := pbsError;
      ProgressBar1.Position := 100;
      ShowMessage('Erro: ' + E.Message);
      edt_CNPJ1.SetFocus;

    end;
  end;

  // Oculta a ProgressBar ao finalizar
  ProgressBar1.Visible := False;
  ProgressBar1.State := pbsNormal;
  ProgressBar1.Position := 0;

end;

procedure TConsultaCNPJ.edt_CNPJ1Change(Sender: TObject);
var
  CNPJ: string;
  I: Integer;
begin
  // Remove caracteres n�o num�ricos
  CNPJ := '';
  for I := 1 to Length(TEdit(Sender).Text) do
  begin
    if TEdit(Sender).Text[I] in ['0'..'9'] then
      CNPJ := CNPJ + TEdit(Sender).Text[I];
  end;

  // Atualiza o Edit com o CNPJ limpo sem reposicionar o cursor
  TEdit(Sender).Text := CNPJ;

  // Move o cursor para o final do texto para evitar pular caracteres
  TEdit(Sender).SelStart := Length(CNPJ);
end;


procedure TConsultaCNPJ.ImageMouseEnter(Sender: TObject);
begin
    PanelMouseEnter(TImage(Sender).Parent); // Chama o evento do painel
end;

procedure TConsultaCNPJ.ImageMouseLeave(Sender: TObject);
begin
    PanelMouseLeave(TImage(Sender).Parent); // Chama o evento do painel

end;

procedure TConsultaCNPJ.PanelMouseEnter(Sender: TObject);
begin
  if Sender is TPanel then
  begin
    TPanel(Sender).Color := clSilver; // Muda a cor para prata ou outra desejada
  end;
end;


procedure TConsultaCNPJ.PanelMouseLeave(Sender: TObject);
begin
  if Sender is TPanel then
  begin
    TPanel(Sender).Color := clMenu; // Restaura a cor original
  end;

end;

procedure TConsultaCNPJ.Panel1MouseLeave(Sender: TObject);
begin
    PanelMouseLeave(Tpanel(Sender).Parent); // Chama o evento do painel
end;
procedure TConsultaCNPJ.Panel1MouseEnter(Sender: TObject);
begin
    PanelMouseEnter(Tpanel(Sender).Parent); // Chama o evento do painel
end;

end.
