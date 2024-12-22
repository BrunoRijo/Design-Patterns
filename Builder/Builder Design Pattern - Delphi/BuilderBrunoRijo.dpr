program BuilderBrunoRijo;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {Form2},
  UICarroBuilder in 'BuilderCar\interface\UICarroBuilder.pas',
  UCarro in 'BuilderCar\UCarro.pas',
  UCarroBuilder in 'BuilderCar\implementation\UCarroBuilder.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
