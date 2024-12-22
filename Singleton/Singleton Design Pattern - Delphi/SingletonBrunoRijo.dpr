program SingletonBrunoRijo;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {Singleton},
  USingletonLogger in 'USingletonLogger.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSingleton, Singleton);
  Application.Run;
end.
