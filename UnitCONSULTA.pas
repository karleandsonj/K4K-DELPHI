﻿unit UnitCONSULTA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.ComCtrls, Vcl.Mask, Clipbrd;

type
  TFormCONSULTA = class(TForm)
    TOP_TITLE_CONS: TPanel;
    ConsERRO_PANEL: TPanel;
    ConsSOLUCAO_PANEL: TPanel;
    ConsSCRIPT_PANEL: TPanel;
    ConsSISTEMA: TDBText;
    ConsIMG_PANEL: TPanel;
    IMG_AMPLIADA: TPanel;
    DBImage2: TDBImage;
    Image1: TImage;
    Panel7: TPanel;
    BODY: TPanel;
    TOP: TPanel;
    BOTTON: TPanel;
    ConsERRO: TMemo;
    ConsSOLUCAO: TMemo;
    ConsSCRIPT: TMemo;
    ConsID: TDBText;
    ConsIMAGE: TDBImage;
    LbERRO: TLabel;
    LbSOLUCAO: TLabel;
    LbSCRIPT: TLabel;
    LbIMAGEM: TLabel;
    Panel1: TPanel;
    BTN_CopiarSCRIPT: TButton;
    TempoCopiar_SCRIPT: TTimer;
    Shape1: TShape;
    Shape3: TShape;
    Shape5: TShape;
    Shape4: TShape;
    Shape2: TShape;
    Shape6: TShape;
    Shape7: TShape;
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Image1Click(Sender: TObject);
    procedure ConsultaDeERROS;
    procedure ConsIMAGEClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LimparConsulta;
    procedure BTN_CopiarSCRIPTClick(Sender: TObject);
    procedure TempoCopiar_SCRIPTTimer(Sender: TObject);
  private
  public
  end;

var
  FormCONSULTA: TFormCONSULTA;

implementation

{$R *.dfm}

uses UnitDM, UnitPrincipal, UnitCadastro;

procedure TFormCONSULTA.ConsultaDeERROS;

begin
    //ConsID.Caption := '';
    // Fecha a query e define uma nova consulta para buscar os dados completos com base no ERRORESUMIDO
    DM.SQLCONSULTA.Close;
    DM.SQLCONSULTA.SQL.Clear;
    DM.SQLCONSULTA.SQL.Add('SELECT * FROM FORMULARIO WHERE ID = :ConsID');

    // Usa o valor do campo ERRO para fazer a busca
    DM.SQLCONSULTA.ParamByName('ConsID').AsString := Trim(ConsID.Caption);

    DM.SQLCONSULTA.Open;

      // Preenche os campos do formulário com os valores retornados
      //ConsID.Caption := DM.F2_CONS.FieldByName('ID').AsString;
      //ConsERRORESUMIDO.Text := DM.F2_CONS.FieldByName('ERRORESUMIDO').AsString;
      //ConsSISTEMA.Caption := DM.SQLCONSULTA.FieldByName('SISTEMA').AsString;
      ConsERRO.Text := DM.SQLCONSULTA.FieldByName('ERRO').AsString;
      ConsSOLUCAO.Text := DM.SQLCONSULTA.FieldByName('SOLUCAO').AsString;
      ConsSCRIPT.Text := DM.SQLCONSULTA.FieldByName('SCRIPT').AsString;
end;

procedure TFormCONSULTA.LimparConsulta;
begin
   ConsERRO.Clear;
   ConsSOLUCAO.Clear;
   ConsSCRIPT.Clear;
end;

procedure TFormCONSULTA.FormShow(Sender: TObject);
begin

    LimparConsulta;

    ConsultaDeERROS;

    if DM.SQLCONSULTA.FieldByName('IMAGEM').IsNull then
    begin
      ConsSCRIPT_PANEL.TabOrder := 0;
      ConsIMG_PANEL.TabOrder := 1;
      ConsIMG_PANEL.Visible := False;
      Shape3.Visible := false;
      ConsSCRIPT_PANEL.Width := 798;
    end
    else
    begin
      ConsSCRIPT_PANEL.TabOrder := 0;
      ConsIMG_PANEL.TabOrder := 1;
      ConsIMG_PANEL.Visible := True;
      Shape3.Visible := true;
      ConsSCRIPT_PANEL.Width := 549;
    end;

end;

procedure TFormCONSULTA.BTN_CopiarSCRIPTClick(Sender: TObject);
begin
  Clipboard.AsText := ConsSCRIPT.Text;
  BTN_CopiarSCRIPT.Caption := '✔ Copiado!';

  // Inicia o Timer
  TempoCopiar_SCRIPT.Enabled := True;
end;

procedure TFormCONSULTA.ConsIMAGEClick(Sender: TObject);
begin
   IMG_AMPLIADA.Visible := True;
   IMG_AMPLIADA.BringToFront;
end;

procedure TFormCONSULTA.Image1Click(Sender: TObject);
begin
    IMG_AMPLIADA.Visible := False;
    IMG_AMPLIADA.SendToBack;
end;

procedure TFormCONSULTA.Memo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  // evitar a entrada de texto
  Key := 0;
end;

procedure TFormCONSULTA.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
  // evitar a entrada de texto
  Key := #0;
end;

procedure TFormCONSULTA.TempoCopiar_SCRIPTTimer(Sender: TObject);
begin
  // Restaura o texto original do botão após 3 segundos
  BTN_CopiarSCRIPT.Caption := '📄 Copiar!'; // Ajuste conforme a legenda original do botão

  // Desativa o Timer
  TempoCopiar_SCRIPT.Enabled := False;
end;

end.

