program FactoryMethod;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form2},
  uIPagamento in 'pagamentos\interface\uIPagamento.pas',
  UCartaoDeCredito in 'pagamentos\implementation\UCartaoDeCredito.pas',
  UDinheiroEspecie in 'pagamentos\implementation\UDinheiroEspecie.pas',
  UBoletoBancario in 'pagamentos\implementation\UBoletoBancario.pas',
  UFactoryPagamento in 'pagamentos\factory\UFactoryPagamento.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
