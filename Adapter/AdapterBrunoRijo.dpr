program AdapterBrunoRijo;

uses
  Vcl.Forms,
  Adapter.View.Principal in 'Adapter.View.Principal.pas' {Form2},
  Adapter.Model.Interfaces in 'Adapter\Adapter.Model.Interfaces.pas',
  Adapter.Model.Itens in 'Adapter\Adapter.Model.Itens.pas',
  Adapter.Controller.Itens in 'Adapter\Adapter.Controller.Itens.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
