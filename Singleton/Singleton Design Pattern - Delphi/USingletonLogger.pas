unit USingletonLogger;

interface

type
  TLogger = class
    private
      class var FInstancia: TLogger;
      constructor Create; //Construtor privado
    public
      class function GetInstance: TLogger;
      procedure Log(const Msg: string);
  end;

implementation

uses
  System.SysUtils, Dialogs;

{ TLogger }

constructor TLogger.Create;
begin
  inherited; //Inicialização
end;

class function TLogger.GetInstance: TLogger;
begin
  if not Assigned(FInstancia) then
    FInstancia := TLogger.Create;

  Result := FInstancia;
end;

procedure TLogger.Log(const Msg: string);
begin
  //Aqui ficaria a implementação do log de fato, inserção do no BD ou POST em Api
  //Deixei o showMessage só pra exemplificar que funcionou
  ShowMessage(Format('Log: %s.',[Msg]));
end;

end.
