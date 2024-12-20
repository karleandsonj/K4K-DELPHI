unit UnitSenhaConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnitBiblioteca;

type
  TSenhaConfig = class(TForm)
    edt_SenhaConf: TEdit;
    Label1: TLabel;
    btn_SenhaConf: TButton;
    procedure btn_SenhaConfClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edt_SenhaConfKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SenhaConfig: TSenhaConfig;

implementation

{$R *.dfm}

uses UnitConf, UnitDM;

procedure TSenhaConfig.btn_SenhaConfClick(Sender: TObject);
begin
   if edt_SenhaConf.Text = '1' then
   begin
     ShowMessage('Senha esta correta, pode por o caminho da base!');
     Self.Close;
     Configuracao := TConfiguracao.Create(self);
     Configuracao.ShowModal;
   end else
   begin
      ShowMessage('Senha ta errada man�!');
      edt_SenhaConf.SetFocus;
   end;
end;

procedure TSenhaConfig.edt_SenhaConfKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     if edt_SenhaConf.Text = '1' then
     begin
       ShowMessage('Senha esta correta, pode por o caminho da base!');
       Self.Close;
       Configuracao := TConfiguracao.Create(self);
       Configuracao.ShowModal;
     end else
     begin
        ShowMessage('Senha ta errada man�!');
        edt_SenhaConf.SetFocus;
     end;
  end;
end;

procedure TSenhaConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self.Close;
end;

procedure TSenhaConfig.FormCreate(Sender: TObject);
begin
   ShowMessage('Ao abrir a configura��o sera for�ado o fechamento do sistema!');
end;

end.
