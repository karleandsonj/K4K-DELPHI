unit UnitSGA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.DBCGrids,
  Vcl.Mask, Vcl.ExtCtrls;

type
  TFormSGA = class(TForm)
    DBCtrlGrid1: TDBCtrlGrid;
    ID: TDBText;
    ERRORESUMIDO: TDBText;
    busca: TEdit;
    procedure IDClick(Sender: TObject);
    procedure buscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSGA: TFormSGA;

implementation

{$R *.dfm}

uses UnitCONSULTA, UnitDM;

procedure TFormSGA.buscaChange(Sender: TObject);
begin
   //DM.SGA.Locate('ERRORESUMIDO', busca.Text);
end;

procedure TFormSGA.IDClick(Sender: TObject);
begin
   FormCONSULTA.Show;
end;

end.
