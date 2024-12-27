program PrototypeBrunoRijo;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {FormPrincipal},
  UIDocument in 'Prototype\interface\UIDocument.pas',
  UContrato in 'Prototype\implementation\UContrato.pas',
  UCurriculo in 'Prototype\implementation\UCurriculo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, Principal);
  Application.Run;
end.