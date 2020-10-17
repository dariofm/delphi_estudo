program Poo;

uses
  Forms,
  ufrmPoo in 'ufrmPoo.pas' {frmPoo},
  Classe.Cadastro in 'Classe.Cadastro.pas',
  Classe.Pessoa in 'Classe.Pessoa.pas',
  Classe.Funcoes in 'Classe.Funcoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPoo, frmPoo);
  Application.Run;
end.
