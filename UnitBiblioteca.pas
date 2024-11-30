unit UnitBiblioteca;

interface
uses iniFiles, System.SysUtils;
  procedure SetValorIni(pLocal, pSessao, pSubSessao, pValor: string);
  function GetValorIni(pLocal, pSessao, pSubSessao: string): string;
implementation

  procedure SetValorIni(pLocal, pSessao, pSubSessao, pValor: string);
  var vArquivo: TiniFile;
  begin
     vArquivo := TIniFile.Create(pLocal);

     vArquivo.WriteString(pSessao, pSubSessao, pValor);
     vArquivo.free;
  end;

  function GetValorIni(pLocal, pSessao, pSubSessao: string): string;
  var vArquivo: TiniFile;
  begin
    vArquivo := TIniFile.Create(pLocal);

    Result := vArquivo.ReadString(pSessao, pSubSessao, '');

    vArquivo.Free;
  end;

end.
