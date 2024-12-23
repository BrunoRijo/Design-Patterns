unit UExemploCliente;

interface

uses
  UIAbstractFactory, UIConnection, UIExecutaQuery, UMySQLFactory, UPostgreSQLFactory;

type
  ClienteAF = class
    private
      factory: IAbstractFactory;
      function getFactory(ADataBase: string): IAbstractFactory;
    public
      procedure Connect(ADatabase, ASql: string);
  end;

implementation

uses
  System.StrUtils, Dialogs, System.SysUtils;

{ ClienteAF }

function ClienteAF.getFactory(ADataBase: string): IAbstractFactory;
begin
  if SameText(ADataBase, 'MYSQL') then
    Result := MySQLFactory.Create
  else
  if SameText(ADataBase, 'MYSQL') then
    Result := PostgreSQLFactory.Create
  else
    ShowMessage(Format('Banco de dados %s não condigurado.',[ADataBase]));
end;

procedure ClienteAF.Connect(ADatabase, ASql: string);
var
  connection: IConnection;
  executaSQL: IExecutaQuery;
begin
  factory := getFactory(Uppercase(ADatabase));

  connection := factory.createConnetion;
  executaSQL := factory.createExecutorQuery;

  if not connection.Connect then
    raise Exception.Create('Erro ao conectar');

  if not executaSQL.Executa(ASql) then
    raise Exception.Create('Erro ao executar o SQL.');

end;

end.
