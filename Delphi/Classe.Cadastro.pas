unit Classe.Cadastro;

interface
  uses SysUtils;

type

  TCadastro = class

  private
    FAtivo: Boolean;
    FDtCadastro: string;
    FId: Integer;
    procedure SetAtivo(const Value: Boolean);
    procedure SetDtCadastro(const Value: string);
    procedure SetId(const Value: Integer);
  public
    constructor Create;
    property Id:Integer read FId write SetId;
    property DtCadastro:string read FDtCadastro write SetDtCadastro;
    property Ativo:Boolean read FAtivo write SetAtivo;
  end;



implementation



{ TCadastro }

constructor TCadastro.Create;
begin
  FDtCadastro := DateToStr(now);
end;

procedure TCadastro.SetAtivo(const Value: Boolean);
begin
  FAtivo := Value;
end;

procedure TCadastro.SetDtCadastro(const Value: string);
begin
  FDtCadastro := Value;
end;

procedure TCadastro.SetId(const Value: Integer);
begin
  FId := Value;
end;

end.
