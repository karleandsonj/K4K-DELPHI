unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef, Data.FMTBcd,
  Data.SqlExpr, Vcl.ExtCtrls, UnitBiblioteca, Vcl.Forms;

type
  TDM = class(TDataModule)
    CONEXAO: TFDConnection;
    SGA: TFDTable;
    dsSGA: TDataSource;
    SQLCONSULTA: TFDQuery;
    SGAID: TStringField;
    SGASISTEMA: TStringField;
    SGAERRORESUMIDO: TStringField;
    SGAERRO: TMemoField;
    SGASOLUCAO: TMemoField;
    SGASCRIPT: TMemoField;
    SGAIMAGEM: TBlobField;
    SGAANEXO: TBlobField;
    BUSCA: TFDQuery;
    F2_CONS: TFDQuery;
    CONSULTA_CAD: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
      procedure CarregaBanco;
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UnitPrincipal, UnitConf, UnitSenhaConfig;

{$R *.dfm}

procedure TDM.CarregaBanco;
begin
   try   //Tentar executar
      CONEXAO.Params.Database := GetValorIni(ExtractFilePath(Application.ExeName) + 'Config.ini', 'CONFIGURACAO', 'LOCAL_DB');
      CONEXAO.Connected := true;
   except  //Se n�o executar
      Configuracao.ShowModal;
   end;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
       CarregaBanco;
end;

end.
