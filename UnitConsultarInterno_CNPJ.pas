unit UnitConsultarInterno_CNPJ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.JSON, REST.Types, System.Net.HttpClient, System.Net.URLClient,
  System.Net.HttpClientComponent, Vcl.ExtCtrls;

type
  TConsultaCNPJ_INTERNO = class(TForm)
    Memo1: TMemo;
    NetHTTPClient1: TNetHTTPClient;
    edt_CNPJ: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Memo1Enter(Sender: TObject);
    procedure Memo1Exit(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure Memo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaCNPJ_INTERNO: TConsultaCNPJ_INTERNO;

implementation

{$R *.dfm}

uses UnitCONSULTACNPJ;

procedure TConsultaCNPJ_INTERNO.FormCreate(Sender: TObject);
var
  Response: IHTTPResponse;
  JSONObj: TJSONObject;
  CNPJ, URL: string;
  TIPOEMPRESA_WEB: string;
  TIPOEMPRESA: string;
begin
  edt_CNPJ.text := ConsultaCNPJ.edt_CNPJ1.text;
  CNPJ := edt_CNPJ.text; // Substitua pelo CNPJ desejado
  URL := 'https://brasilapi.com.br/api/cnpj/v1/' + CNPJ;

  try
    // Faz a requisi��o GET na URL da API
    Response := NetHTTPClient1.Get(URL);

    // Verifica se a resposta foi bem-sucedida
    if Response.StatusCode = 200 then
    begin
      JSONObj := TJSONObject.ParseJSONValue(Response.ContentAsString) as TJSONObject;

      // Verifica se o JSON foi parseado corretamente
      if JSONObj = nil then
      begin
        ShowMessage('Erro: Resposta JSON inv�lida');
        Exit;
      end;

      TIPOEMPRESA_WEB := (JSONObj.GetValue<string>('opcao_pelo_simples', 'N�o dispon�vel'));
        if TIPOEMPRESA_WEB = 'true' then
        begin
          TIPOEMPRESA := 'SIMPLES NACIONAL';
        end else
        begin
          TIPOEMPRESA := 'CONTA CORRENTE';
        end;

      try
        // Exibe os dados obtidos no Memo
        Memo1.Lines.Add('');
        Memo1.Lines.Add('Informa��es Empresa:');
        Memo1.Lines.Add('');
        Memo1.Lines.Add(' CNPJ: ' + JSONObj.GetValue<string>('cnpj', 'N�o dispon�vel'));
        Memo1.Lines.Add('');
        Memo1.Lines.Add(' Nome: ' + JSONObj.GetValue<string>('razao_social', 'N�o dispon�vel'));
        Memo1.Lines.Add('');
        Memo1.Lines.Add(' Fantasia: ' + JSONObj.GetValue<string>('nome_fantasia', 'N�o dispon�vel'));
        Memo1.Lines.Add('');
        Memo1.Lines.Add(' Telefone: ' + JSONObj.GetValue<string>('ddd_telefone_1', 'N�o dispon�vel'));
        Memo1.Lines.Add('');
        Memo1.Lines.Add(' Data de Abertura: ' + JSONObj.GetValue<string>('data_inicio_atividade', 'N�o dispon�vel'));
        Memo1.Lines.Add('');
        Memo1.Lines.Add(' SITUA��O: ' + JSONObj.GetValue<string>('descricao_situacao_cadastral', 'N�o dispon�vel'));
        Memo1.Lines.Add('');
        Memo1.Lines.Add(' Identificador: ' + JSONObj.GetValue<string>('descricao_identificador_matriz_filial', 'N�o dispon�vel'));
        Memo1.Lines.Add('');
        Memo1.Lines.Add(' Tipo empresa: ' + (TIPOEMPRESA));
        Memo1.Lines.Add('');
        Memo1.Lines.Add(' ---------------------------------------------------------- ');
        Memo1.Lines.Add('');
        Memo1.Lines.Add('Endere�o:');
        Memo1.Lines.Add('');
        Memo1.Lines.Add(' CEP: ' + JSONObj.GetValue<string>('cep', 'N�o dispon�vel'));
        Memo1.Lines.Add('');
        Memo1.Lines.Add(' Cidade: ' + JSONObj.GetValue<string>('municipio', 'N�o dispon�vel'));
        Memo1.Lines.Add('');
        Memo1.Lines.Add(' Estado: ' + JSONObj.GetValue<string>('uf', 'N�o dispon�vel'));
        Memo1.Lines.Add('');
        Memo1.Lines.Add(' Codigo do municipio: ' + JSONObj.GetValue<string>('codigo_municipio', 'N�o dispon�vel'));
        Memo1.Lines.Add('');
        Memo1.Lines.Add(' Logradouro: ' + JSONObj.GetValue<string>('logradouro', 'N�o dispon�vel'));
        Memo1.Lines.Add('');
        Memo1.Lines.Add(' Bairro: ' + JSONObj.GetValue<string>('bairro', 'N�o dispon�vel'));
        Memo1.Lines.Add('');
        Memo1.Lines.Add(' Complemento: ' + JSONObj.GetValue<string>('complemento', 'N�o dispon�vel'));
        Memo1.Lines.Add('');
        Memo1.Lines.Add(' Numero: ' + JSONObj.GetValue<string>('numero', 'N�o dispon�vel'));
      finally
        JSONObj.Free;
      end;
    end
    else
    begin
      ShowMessage('Erro ao consultar CNPJ: ' + Response.StatusText);
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Erro: ' + E.Message);
    end;
  end;
end;

procedure TConsultaCNPJ_INTERNO.Memo1Click(Sender: TObject);
begin
  HideCaret(Memo1.Handle); // Garantir que o caret n�o reapare�a ao clicar
end;

procedure TConsultaCNPJ_INTERNO.Memo1Enter(Sender: TObject);
begin
  HideCaret(Memo1.Handle); // Oculta o cursor de edi��o (caret)
  Memo1.Color := clWhite;
end;

procedure TConsultaCNPJ_INTERNO.Memo1Exit(Sender: TObject);
begin
  ShowCaret(Memo1.Handle); // Restaura o cursor de edi��o ao sair
end;

procedure TConsultaCNPJ_INTERNO.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
   HideCaret(Memo1.Handle); // Garantir que o caret n�o reapare�a ao digitar
end;

end.
