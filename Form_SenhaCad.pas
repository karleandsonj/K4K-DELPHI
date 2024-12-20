unit Form_SenhaCad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormsenhacad = class(TForm)
    Lb_senha: TLabel;
    Edit_Senha: TEdit;
    btn_senha: TButton;
    procedure btn_senhaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit_SenhaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formsenhacad: TFormsenhacad;

implementation

{$R *.dfm}

uses UnitCadastro, UnitCONSULTA, UnitDM, UnitPrincipal;

procedure TFormsenhacad.btn_senhaClick(Sender: TObject);
begin
  if Edit_Senha.Text = '1' then
    begin
      DM.SQLCONSULTA.Close;
      DM.SQLCONSULTA.SQL.Clear;
      FormCadastro := TFormCadastro.Create(self);
      try
         FormCadastro.ShowModal;
      finally
        FormCadastro.Free;  // Libera o formul�rio de cadastro ap�s fech�-lo
      end;
      Close;  // Fecha o formul�rio de senha ap�s a valida��o correta
      Formsenhacad := nil;
    end
  else
    begin
      ShowMessage('Senha inv�lida!');
      Edit_Senha.Text := '';
    end;

end;

procedure TFormsenhacad.Edit_SenhaKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin

      if Edit_Senha.Text = '1' then
      begin
        Key := #0;
        DM.SQLCONSULTA.Close;
        DM.SQLCONSULTA.SQL.Clear;
        FormCadastro := TFormCadastro.Create(self);
        try
          FormCadastro.ShowModal;
        finally
          FormCadastro.Free;  // Libera o formul�rio de cadastro ap�s fech�-lo
        end;
        Close;  // Fecha o formul�rio de senha ap�s a valida��o correta
        Formsenhacad := nil;
      end
      else
      begin
        ShowMessage('Senha inv�lida!');
        Edit_Senha.Text := '';
      end;
     end;
end;

procedure TFormsenhacad.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     FormPrincipal.busca.Clear;
     FormPrincipal.FORM.Visible := False;
     DM.SQLCONSULTA.Close;
     DM.SQLCONSULTA.SQL.Clear;
     FormCadastro := nil;
end;

end.
