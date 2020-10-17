unit Classe.Funcoes;

interface


type

  TFuncoes = class

  private
    

  public
    function AplicaDesconto(Valor: Double; Desconto:integer; Tipo: String): string;

  end;

implementation

uses SysUtils;





{ TFuncoes }

function TFuncoes.AplicaDesconto(Valor: Double; Desconto:integer; Tipo: String): string;
var
  ValorComDesconto:Double;
begin
  ValorComDesconto := 0;
  if Tipo = '$' then
  begin
    ValorComDesconto := Valor - Desconto
  end;
  if Tipo = '%' then
  begin
    ValorComDesconto := Valor *  (Desconto / 100);
  end;

  Result := FloatToStr(ValorComDesconto);
end;

end.