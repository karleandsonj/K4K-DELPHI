unit UnitCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Buttons, Data.FMTBcd, Data.DB, Data.SqlExpr, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.BaseImageCollection, Vcl.ImageCollection, Jpeg, Vcl.Imaging.pngimage,
  Vcl.Grids, Vcl.ExtDlgs;

type
  TFormCadastro = class(TForm)
    TopCAD: TPanel;
    TitleCad: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SALVAR: TButton;
    LIMPAR: TButton;
    ERRODETALHADO: TMemo;
    SOLUCAO: TMemo;
    ERRO: TEdit;
    SCRIPT: TMemo;
    CADASTRO: TPageControl;
    CadPrincipal: TTabSheet;
    CadIMG_ANEXO: TTabSheet;
    Shape1: TShape;
    BaixoCAD: TPanel;
    DIVIDIR: TShape;
    NamIMG: TLabel;
    CadIMG: TImage;
    ListIMAGE: TScrollBox;
    Panel_IMG: TPanel;
    InsertIMG: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    ID: TEdit;
    ALTERAR: TButton;
    DELETAR: TButton;
    Panel3: TPanel;
    SISTEMA: TComboBoxEx;
    StringGrid1: TStringGrid;
    OpenIMG: TOpenPictureDialog;
    procedure SALVARClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure InserirFormulario;
    procedure AlterarFormulario;
    procedure LimparCamposCAD;
    procedure CONSULTARERROS;
    procedure LIMPARClick(Sender: TObject);
    procedure CadIMGClick(Sender: TObject);
    procedure InsertIMGMouseEnter(Sender: TObject);
    procedure InsertIMGMouseLeave(Sender: TObject);
    procedure ERROKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Image1Click(Sender: TObject);
    procedure IDChange(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure DELETARClick(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure AVAN�ARCOMENTERKeyPress(Sender: TObject; var Key: Char);
    procedure SALVARKeyPress(Sender: TObject; var Key: Char);
    procedure ALTERARKeyPress(Sender: TObject; var Key: Char);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    private
    FCurrentImageControl: TImage; // Campo para armazenar a imagem atual
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastro: TFormCadastro;

implementation

{$R *.dfm}

uses UnitDM, UnitPrincipal, Form_SenhaCad;




procedure TFormCadastro.LimparCamposCAD;
begin
    //SISTEMA.Clear;
    ERRO.Clear;
    ERRODETALHADO.Clear;
    SOLUCAO.Clear;
    SCRIPT.Clear;
    ListIMAGE.DestroyComponents;
    SISTEMA.ItemIndex := 0;
    ID.Clear;
end;

procedure TFormCadastro.LIMPARClick(Sender: TObject);
begin
    //FormCadastro := nil;
    LimparCamposCAD;
    CadPrincipal.PageControl.ActivePageIndex := 0;
    ERRO.SetFocus;
end;

procedure TFormCadastro.CadIMGClick(Sender: TObject);
var
  i: Integer;
  ImageControl: TImage;
begin

    if OpenIMG.Execute then
    begin
      // Limpa o conte�do existente no ScrollBox (se houver)
      ListIMAGE.DestroyComponents;

      for i := 0 to OpenIMG.Files.Count - 1 do
      begin
        // Cria dinamicamente um componente TImage para cada arquivo selecionado
        ImageControl := TImage.Create(ListIMAGE);
        ImageControl.Parent := ListIMAGE;
        ImageControl.Proportional := True;
        ImageControl.Stretch := True;  // Ajusta a imagem ao tamanho do TImage
        ImageControl.Width := 200;     // Largura do TImage
        ImageControl.Height := 100;    // Altura do TImage
        ImageControl.AlignWithMargins := true;
        ImageControl.Margins.Top := 10;
        ImageControl.Margins.Left := 10;
        ImageControl.Margins.Right := 10;
        ImageControl.Margins.Bottom := 10;
        ImageControl.Align := alClient;

        // Carrega a imagem no TImage (para visualiza��o)
        ImageControl.Picture.LoadFromFile(OpenIMG.Files[i]);

        // Armazena a refer�ncia do �ltimo ImageControl criado
        FCurrentImageControl := ImageControl;

        // Armazena o caminho do arquivo na Tag do TImage para salvar posteriormente
        ImageControl.Tag := Integer(TObject(OpenIMG.Files[i]));
      end;
    end;
end;


procedure TFormCadastro.IDChange(Sender: TObject);
begin
  // Verifica se o campo ID (ou o campo que voc� est� monitorando) est� preenchido
  if Trim(ID.Text) <> '' then
  begin
    SALVAR.Visible := False;
    ALTERAR.Visible := true; // Muda o texto do bot�o para "Alterar"
    ALTERAR.Align := alRight;
    ALTERAR.left := 2;
    DELETAR.Visible := true;
    DELETAR.Left := 1;
    LIMPAR.Left := 0;
  end
  else
  begin
    ALTERAR.Visible := false;
    SALVAR.Visible := True; // Se estiver vazio, Muda para "Salvar"
    SALVAR.Align := alRight;
    SALVAR.left := 2;
    DELETAR.Visible := False;
    DELETAR.Left := 1;
    LIMPAR.Left := 0;
  end;
end;

procedure TFormCadastro.Image1Click(Sender: TObject);
begin
       Panel1.Visible := False;
end;

procedure TFormCadastro.Image1MouseEnter(Sender: TObject);
begin
    Panel2.Color := clRed;
end;

procedure TFormCadastro.Image1MouseLeave(Sender: TObject);
begin
   Panel2.Color := clWhite;
end;

procedure TFormCadastro.CONSULTARERROS;
begin
  // Verifica se o campo ERRO n�o est� vazio
  if Trim(ERRO.Text) <> '' then
  begin
    // Fecha a query e define uma nova consulta para buscar os dados completos com base no ERRORESUMIDO
    DM.F2_CONS.Close;
    DM.F2_CONS.SQL.Clear;
    DM.F2_CONS.SQL.Add('SELECT * FROM FORMULARIO WHERE ERRORESUMIDO = :Param');

    // Usa o valor do campo ERRO para fazer a busca
    DM.F2_CONS.ParamByName('Param').AsString := Trim(ERRO.Text);
    DM.F2_CONS.Open;

    // Verifica se encontrou o registro
    if not DM.F2_CONS.IsEmpty then
    begin
      // Preenche os campos do formul�rio com os valores retornados
      ID.Text := DM.F2_CONS.FieldByName('ID').AsString;
      ERRO.Text := DM.F2_CONS.FieldByName('ERRORESUMIDO').AsString;
      SISTEMA.Text := DM.F2_CONS.FieldByName('SISTEMA').AsString;
      ERRODETALHADO.Text := DM.F2_CONS.FieldByName('ERRO').AsString;
      Solucao.Text := DM.F2_CONS.FieldByName('SOLUCAO').AsString;
      SCRIPT.Text := DM.F2_CONS.FieldByName('SCRIPT').AsString;

      // Adicione aqui outros campos que deseja preencher
    end;
  end
  else
  begin
    // Exibe uma mensagem se o campo ERRO estiver vazio
    ShowMessage('Por favor, insira um valor no campo ERRO.');
  end;
end;

procedure TFormCadastro.DELETARClick(Sender: TObject);
begin
    DM.SQLCONSULTA.Close;
    DM.SQLCONSULTA.SQL.Clear;
    DM.SQLCONSULTA.SQL.Add('DELETE FROM FORMULARIO WHERE ID = :ID');

    // Usa o valor do campo ERRO para fazer a busca
    DM.SQLCONSULTA.ParamByName('ID').AsString := Trim(ID.Text);

    DM.SQLCONSULTA.ExecSQL;

    ShowMessage('Cadastro excluido!');

    LimparCamposCAD;
    CadPrincipal.PageControl.ActivePageIndex := 0;
    ERRO.SetFocus;
    //FormCadastro := nil;
end;

procedure TFormCadastro.InserirFormulario;
var
  IDGerado: string;
  ImageStream: TMemoryStream;
begin
  // Verifica se j� existe um ERRORESUMIDO igual no banco
  DM.SQLCONSULTA.SQL.Text := 'SELECT ID FROM FORMULARIO WHERE ERRORESUMIDO = :ErroResumido and SOLUCAO = :Solucao';
  DM.SQLCONSULTA.ParamByName('ErroResumido').AsString := ERRO.Text;
  DM.SQLCONSULTA.ParamByName('Solucao').AsString := SOLUCAO.Text;
  DM.SQLCONSULTA.Open;

  if not DM.SQLCONSULTA.IsEmpty then
  begin
    // Se encontrar um registro com o mesmo ERRORESUMIDO, exibe uma mensagem
    ShowMessage('ERRORESUMIDO "' + ERRO.Text + '" j� cadastrado no sistema "' + SISTEMA.text + '"');
        CONSULTARERROS;
    Exit;

  end;

  // Se n�o existir, realiza a inser��o
  DM.SQLCONSULTA.Close; // Fecha a consulta anterior
  DM.SQLCONSULTA.SQL.Text :=
    'INSERT INTO FORMULARIO (SISTEMA, ERRORESUMIDO, ERRO, SOLUCAO, SCRIPT, IMAGEM, ANEXO) ' +
    'VALUES (:Sistema, :ErroResumido, :Erro, :Solucao, :Script, :Imagem, :Anexo) RETURNING ID';

  // Passa os par�metros da consulta
  DM.SQLCONSULTA.ParamByName('Sistema').AsString := SISTEMA.Text;
  DM.SQLCONSULTA.ParamByName('ErroResumido').AsString := ERRO.Text;
  DM.SQLCONSULTA.ParamByName('Erro').AsString := ERRODETALHADO.Text;
  DM.SQLCONSULTA.ParamByName('Solucao').AsString := SOLUCAO.Text;
  DM.SQLCONSULTA.ParamByName('Script').AsString := SCRIPT.Text;

  // Verifica se h� uma imagem carregada
  if FCurrentImageControl <> nil then
  begin
    ImageStream := TMemoryStream.Create;
    try
      FCurrentImageControl.Picture.Graphic.SaveToStream(ImageStream);
      ImageStream.Position := 0;
      DM.SQLCONSULTA.ParamByName('Imagem').LoadFromStream(ImageStream, ftBlob);
    finally
      ImageStream.Free;
    end;
  end
  else
  begin
    DM.SQLCONSULTA.ParamByName('Imagem').Clear;
  end;

  // Verifica��o para o campo de anexo (exemplo)
  DM.SQLCONSULTA.ParamByName('Anexo').Clear; // Implemente se estiver usando o anexo

  // Executa a consulta e retorna o ID gerado
  DM.SQLCONSULTA.Open; // Usa Open porque estamos retornando o ID gerado

  // Captura o valor do ID gerado
  IDGerado := DM.SQLCONSULTA.FieldByName('ID').AsString;

  // Mostra o ID gerado em uma mensagem
  ShowMessage('ID: ' + IDGerado + 'cadastrado com SUCESSO!');

  CONSULTARERROS;
end;

procedure TFormCadastro.AlterarFormulario;
var
  ImageStream: TMemoryStream;
begin
  // Define a consulta SQL com o comando UPDATE
  DM.SQLCONSULTA.SQL.Text :=
    'UPDATE FORMULARIO SET ' +
    'SISTEMA = :Sistema, ' +
    'ERRORESUMIDO = :ErroResumido, ' +
    'ERRO = :Erro, ' +
    'SOLUCAO = :Solucao, ' +
    'SCRIPT = :Script, ' +
    'IMAGEM = :Imagem ' + // Se n�o for usar o campo ANEXO, mantenha sem essa linha
    //'ANEXO = :Anexo ' +   // Descomente se necess�rio
    'WHERE ID = :ID';

  // Passa os par�metros da consulta
  DM.SQLCONSULTA.ParamByName('ID').AsString := ID.Text;
  DM.SQLCONSULTA.ParamByName('Sistema').AsString := SISTEMA.Text;
  DM.SQLCONSULTA.ParamByName('ErroResumido').AsString := ERRO.Text;
  DM.SQLCONSULTA.ParamByName('Erro').AsString := ERRODETALHADO.Text;
  DM.SQLCONSULTA.ParamByName('Solucao').AsString := SOLUCAO.Text;
  DM.SQLCONSULTA.ParamByName('Script').AsString := SCRIPT.Text;

  // Verifica se h� uma imagem carregada
  if FCurrentImageControl <> nil then
  begin
    ImageStream := TMemoryStream.Create;
    try
      // Salva a imagem em um stream de mem�ria
      FCurrentImageControl.Picture.Graphic.SaveToStream(ImageStream);
      ImageStream.Position := 0; // Reseta a posi��o do stream para o in�cio
      DM.SQLCONSULTA.ParamByName('Imagem').LoadFromStream(ImageStream, ftBlob);
    finally
      ImageStream.Free;
    end;
  end
  else
  begin
    DM.SQLCONSULTA.ParamByName('Imagem').Clear;  // Se nenhuma imagem foi selecionada
  end;

  // Se for usar o campo ANEXO, descomente e adicione o tratamento
  {
  if Anexo.Text <> '' then
    DM.SQLCONSULTA.ParamByName('Anexo').LoadFromFile(Anexo.Text)
  else
    DM.SQLCONSULTA.ParamByName('Anexo').Clear;
  }

  // Executa a consulta de atualiza��o
  DM.SQLCONSULTA.ExecSQL;

  // Mostra uma mensagem de sucesso
  ShowMessage(ID.Text + ': Alterado com sucesso!');
end;

procedure TFormCadastro.ALTERARKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
  begin
    AlterarFormulario;
  end;
end;

procedure TFormCadastro.InsertIMGMouseEnter(Sender: TObject);
begin
      InsertIMG.BevelOuter :=  bvLowered;
end;

procedure TFormCadastro.InsertIMGMouseLeave(Sender: TObject);
begin
      InsertIMG.BevelOuter :=  bvNone;
end;


procedure TFormCadastro.ERROKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  RowIndex: Integer;
begin
  if Key = VK_F2 then
  begin
    Panel1.Visible := True;
    Panel1.BringToFront;
    StringGrid1.RowCount := 1; // Limpa o conte�do da grid e ajusta para 1 linha inicial
    StringGrid1.CleanupInstance;
    StringGrid1.SetFocus;

    // Fecha a consulta antes de redefinir a SQL
    DM.F2_CONS.Close;
    DM.F2_CONS.SQL.Clear;

    // Base da consulta SQL
    DM.F2_CONS.SQL.Add('SELECT ERRORESUMIDO, SISTEMA FROM FORMULARIO WHERE ERRORESUMIDO LIKE :ParamERRORESUMIDO');

    // Adiciona a condi��o do sistema apenas se o campo SISTEMA n�o estiver vazio
    if Trim(SISTEMA.Text) <> '' then
    begin
      DM.F2_CONS.SQL.Add('AND SISTEMA = :ParamSistema');
    end;

    // Parametrize o valor da pesquisa a partir do TEdit
    DM.F2_CONS.ParamByName('ParamERRORESUMIDO').AsString := '%' + ERRO.Text + '%';

    // Somente adiciona o par�metro do sistema se o campo n�o estiver vazio
    if Trim(SISTEMA.Text) <> '' then
    begin
      DM.F2_CONS.ParamByName('ParamSistema').AsString := SISTEMA.Text;
    end;

    // Executa a consulta
    DM.F2_CONS.Open;

    // Preenche o ListBox e o StringGrid com os resultados
    RowIndex := 0; // Come�a da linha 1 (0 geralmente � para cabe�alhos)
    while not DM.F2_CONS.Eof do
    begin
      // Adiciona o resultado na ListBox

      // Define o n�mero de linhas no StringGrid conforme os resultados da consulta
      StringGrid1.RowCount := RowIndex + 1;

      // Preenche as c�lulas com os valores do banco
      StringGrid1.Cells[0, RowIndex] := DM.F2_CONS.FieldByName('ERRORESUMIDO').AsString;
      StringGrid1.Cells[1, RowIndex] := DM.F2_CONS.FieldByName('SISTEMA').AsString;

      // Incrementa a linha para a pr�xima itera��o
      Inc(RowIndex);
      // Defina a primeira linha como selecionada
      StringGrid1.Row := 0;  // Primeira linha de dados (supondo que a linha 0 � o cabe�alho)

      // Simule o clique chamando diretamente o evento OnClick
      StringGrid1Click(StringGrid1);
      DM.F2_CONS.Next;

    end;
  end;
end;

procedure TFormCadastro.StringGrid1Click(Sender: TObject);
begin
  // L�gica do clique no StringGrid
end;

procedure TFormCadastro.AVAN�ARCOMENTERKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    // Verifica se j� existe um ERRORESUMIDO igual no banco
    DM.SQLCONSULTA.SQL.Text := 'SELECT ID FROM FORMULARIO WHERE ERRORESUMIDO = :ErroResumido and SISTEMA = :SISTEMA';
    DM.SQLCONSULTA.ParamByName('ErroResumido').AsString := ERRO.Text;
    DM.SQLCONSULTA.ParamByName('SISTEMA').AsString := SISTEMA.Text;
    DM.SQLCONSULTA.Open;

    if not DM.SQLCONSULTA.IsEmpty then
    begin
      // Se encontrar um registro com o mesmo ERRORESUMIDO, exibe uma mensagem
      ShowMessage('ERRORESUMIDO "' + ERRO.Text + '" j� cadastrado no sistema "' + SISTEMA.text + '"');
          CONSULTARERROS;
      Exit;

    end else if Key = #13 then  // Verifica se a tecla pressionada � o Enter
    begin
      Key := #0;  // Anula o Enter para evitar que o TComboBox abra
      // Avan�a para o pr�ximo controle
      SelectNext(Sender as TWinControl, True, True);
    end;
  end;

  {if Key = #13 then  // Verifica se a tecla pressionada � o Enter
  begin
    Key := #0;  // Anula o Enter para evitar que o TComboBox abra
    // Avan�a para o pr�ximo controle
    SelectNext(Sender as TWinControl, True, True);
  end; }
end;

procedure TFormCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     FormPrincipal.busca.Clear;
     FormPrincipal.FORM.Visible := False;
     DM.SQLCONSULTA.Close;
     DM.SQLCONSULTA.SQL.Clear;
     //LimparCamposCAD;
     FormCadastro := nil;
end;

procedure TFormCadastro.FormShow(Sender: TObject);
begin
  //Formsenhacad := TFormsenhacad.Create(self);
  //Formsenhacad.ShowModal;
      CadPrincipal.PageControl.ActivePageIndex := 0;
      SISTEMA.SetFocus;
      if ID.Text <> '' then
       begin
           DELETAR.Visible := true;
       end;

end;

procedure TFormCadastro.ALTERARClick(Sender: TObject);
begin
    if (Trim(ERRO.Text) <> '') and (Trim(SISTEMA.Text) <> '') then
     begin
        AlterarFormulario;
        CadPrincipal.PageControl.ActivePageIndex := 0;
        ERRO.SetFocus;
     end
     else
     begin
       ShowMessage('Preencha os dados!');
       if Trim(ERRO.Text) = '' then
          ERRO.SetFocus
       else if Trim(SISTEMA.Text) = '' then
            SISTEMA.SetFocus;
     end;
end;

procedure TFormCadastro.SALVARClick(Sender: TObject);
begin
   if (Trim(ERRO.Text) <> '') and (Trim(SISTEMA.Text) <> '') then
   begin
      InserirFormulario;
      CadPrincipal.PageControl.ActivePageIndex := 0;
      ERRO.SetFocus;
   end
   else
   begin
      ShowMessage('Preencha os dados!');

  if Trim(ERRO.Text) = '' then
      ERRO.SetFocus
  else if Trim(SISTEMA.Text) = '' then
      SISTEMA.SetFocus;
  end;
end;

procedure TFormCadastro.SALVARKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
     InserirFormulario;
  end;
end;

procedure TFormCadastro.StringGrid1DblClick(Sender: TObject);
var
  RowIndex: Integer;
begin
  // Verifica se h� uma linha selecionada
  RowIndex := StringGrid1.Row;
  if RowIndex >= 0 then // Assume que a linha 0 � para cabe�alhos
  begin
    // Fecha a query e define uma nova consulta para buscar os dados completos com base no ERRORESUMIDO
    DM.F2_CONS.Close;
    DM.F2_CONS.SQL.Clear;
    DM.F2_CONS.SQL.Add('SELECT * FROM FORMULARIO WHERE ERRORESUMIDO = :ERRORESUMIDO');

    // Usa o valor selecionado na StringGrid para fazer a busca
    DM.F2_CONS.ParamByName('ERRORESUMIDO').AsString := StringGrid1.Cells[0, RowIndex];

    // Executa a consulta
    DM.F2_CONS.Open;

    // Verifica se encontrou o registro
    if not DM.F2_CONS.IsEmpty then
    begin
      // Preenche os campos do formul�rio com os valores retornados
      ID.Text := DM.F2_CONS.FieldByName('ID').AsString;
      ERRO.Text := DM.F2_CONS.FieldByName('ERRORESUMIDO').AsString;
      SISTEMA.ItemIndex := SISTEMA.Items.IndexOf(DM.F2_CONS.FieldByName('SISTEMA').AsString);
      ERRODETALHADO.Text := DM.F2_CONS.FieldByName('ERRO').AsString;
      Solucao.Text := DM.F2_CONS.FieldByName('SOLUCAO').AsString;
      SCRIPT.Text := DM.F2_CONS.FieldByName('SCRIPT').AsString;
    end;

    // Oculta o Panel1 ap�s a sele��o
    Panel1.Visible := False;
  end;
  ERRO.SetFocus;

end;

procedure TFormCadastro.StringGrid1KeyPress(Sender: TObject; var Key: Char);
var
  RowIndex: Integer;
begin
  if Key = #13 then
  begin
     // Verifica se h� uma linha selecionada
    RowIndex := StringGrid1.Row;
    if RowIndex >= 0 then // Assume que a linha 0 � para cabe�alhos
    begin
      // Fecha a query e define uma nova consulta para buscar os dados completos com base no ERRORESUMIDO
      DM.F2_CONS.Close;
      DM.F2_CONS.SQL.Clear;
      DM.F2_CONS.SQL.Add('SELECT * FROM FORMULARIO WHERE ERRORESUMIDO = :ERRORESUMIDO');

      // Usa o valor selecionado na StringGrid para fazer a busca
      DM.F2_CONS.ParamByName('ERRORESUMIDO').AsString := StringGrid1.Cells[0, RowIndex];

      // Executa a consulta
      DM.F2_CONS.Open;

      // Verifica se encontrou o registro
      if not DM.F2_CONS.IsEmpty then
      begin
        // Preenche os campos do formul�rio com os valores retornados
        ID.Text := DM.F2_CONS.FieldByName('ID').AsString;
        ERRO.Text := DM.F2_CONS.FieldByName('ERRORESUMIDO').AsString;
        SISTEMA.ItemIndex := SISTEMA.Items.IndexOf(DM.F2_CONS.FieldByName('SISTEMA').AsString);
        ERRODETALHADO.Text := DM.F2_CONS.FieldByName('ERRO').AsString;
        Solucao.Text := DM.F2_CONS.FieldByName('SOLUCAO').AsString;
        SCRIPT.Text := DM.F2_CONS.FieldByName('SCRIPT').AsString;
      end;

      // Oculta o Panel1 ap�s a sele��o
      Panel1.Visible := False;
    end;
  end;
  ERRO.SetFocus;
end;

end.
