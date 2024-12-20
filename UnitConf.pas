unit UnitConf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  UnitBiblioteca, UnitDM;

type
  TConfiguracao = class(TForm)
    pnl_TituloConf: TPanel;
    pnl_Body: TPanel;
    lb_SubtituloConf: TLabel;
    edt_CaminhoBase: TEdit;
    btn_BuscarBase: TButton;
    btn_SalvarConf: TButton;
    opn_BuscarBase: TOpenDialog;
    procedure btn_BuscarBaseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_SalvarConfClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure Configuracao;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Configuracao: TConfiguracao;

implementation

{$R *.dfm}

uses UnitPrincipal, UnitSenhaConfig;

procedure TConfiguracao.btn_BuscarBaseClick(Sender: TObject);
begin
    Configuracao;
end;

procedure TConfiguracao.btn_SalvarConfClick(Sender: TObject);
var
  vFileName: string;
begin
      vFileName := ExtractFilePath(Application.ExeName) + 'Config.ini';
      SetValorIni(vFileName, 'CONFIGURACAO', 'LOCAL_DB', edt_CaminhoBase.Text);
      ShowMessage('Banco de dados Configurado!' + ' Reabra o sistema :)');
      Application.Terminate;
end;

procedure TConfiguracao.Configuracao;
var
  vFileName: string;
begin
    if opn_BuscarBase.Execute then
    begin
      edt_CaminhoBase.Text := opn_BuscarBase.FileName;
    end;
end;

procedure TConfiguracao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ShowMessage('Sera necessario reabrir o sistema :)');
  Application.Terminate;
end;

procedure TConfiguracao.FormShow(Sender: TObject);
begin
  btn_BuscarBase.SetFocus;
end;

end.
