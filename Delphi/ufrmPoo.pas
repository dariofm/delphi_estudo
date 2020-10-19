unit ufrmPoo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmPoo = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPoo: TfrmPoo;

implementation

uses Classe.Pessoa, Classe.Funcoes;

{$R *.dfm}

procedure TfrmPoo.Button1Click(Sender: TObject);
var
  Cliente:TPessoa;
  Fornecedor:TPessoa;
  Desconto:TFuncoes;
begin

  Cliente := TPessoa.Create;
  Fornecedor := TPessoa.Create;
  Desconto := TFuncoes.Create;

  try
    //ShowMessage(Desconto.AplicaDesconto(50,3,0));
    ShowMessage(FloatToStr(Desconto.JurosComposto(1000,10,12)));
  finally
    Cliente.Free;
    Fornecedor.Free;
    Desconto.Free;
  end;


end;

end.
