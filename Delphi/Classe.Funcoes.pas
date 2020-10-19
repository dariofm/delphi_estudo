unit Classe.Funcoes;

interface

uses Math;

type

  TFuncoes = class

  private
    

  public
    function AplicaDesconto(Valor: Double; Desconto:integer; Tipo: Integer): string;
    function JurosComposto(CapitalInicial:Double;Juros: Double;Periodo:Integer):Double;
  end;

implementation

uses SysUtils;





{ TFuncoes }

function TFuncoes.AplicaDesconto(Valor: Double; Desconto:integer; Tipo: Integer): string;
var
  ValorComDesconto:Double;
begin
  {
    0 - Dinheiro
    1 - Percent
  }
  ValorComDesconto := 0;
  if Tipo = 0 then
  begin
    ValorComDesconto := Valor - Desconto;
  end;
  if Tipo = 1 then
  begin
    ValorComDesconto := Valor - (Valor *  (Desconto / 100));
  end;

  Result := FloatToStr(ValorComDesconto);
end;

function TFuncoes.JurosComposto(CapitalInicial, Juros: Double;
  Periodo: Integer): Double;
var
  Montante:Double;
begin
  Montante := CapitalInicial * (Power((1 + (Juros / 100)),Periodo));
  Result :=  CapitalInicial + (Montante - CapitalInicial);

end;

end.
