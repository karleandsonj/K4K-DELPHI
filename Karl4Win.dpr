program Karl4Win;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitCadastro in 'UnitCadastro.pas' {FormCadastro},
  UnitDM in 'UnitDM.pas' {DM: TDataModule},
  UnitCONSULTA in 'UnitCONSULTA.pas' {FormCONSULTA},
  Vcl.Themes,
  Vcl.Styles,
  Form_SenhaCad in 'Form_SenhaCad.pas' {Formsenhacad},
  UnitConf in 'UnitConf.pas' {Configuracao},
  UnitBiblioteca in 'UnitBiblioteca.pas',
  UnitSenhaConfig in 'UnitSenhaConfig.pas' {SenhaConfig},
  UnitCONSULTACNPJ in 'UnitCONSULTACNPJ.pas' {ConsultaCNPJ},
  UnitConsultarInterno_CNPJ in 'UnitConsultarInterno_CNPJ.pas' {ConsultaCNPJ_INTERNO};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TConfiguracao, Configuracao);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
