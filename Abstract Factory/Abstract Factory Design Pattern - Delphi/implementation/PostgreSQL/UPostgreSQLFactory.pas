unit UPostgreSQLFactory;

interface

uses
  UIAbstractFactory, UIConnection, UIExecutaQuery, UPostgreSQLExecutor, UPostgreSQLConnection;

type
  PostgreSQLFactory = class(TInterfacedObject, IAbstractFactory)
    constructor Create;
    function createConnetion: IConnection;
    function createExecutorQuery: IExecutaQuery;
  end;

implementation

{ PostgreSQLFactory }

constructor PostgreSQLFactory.Create;
begin
  inherited Create;
end;

function PostgreSQLFactory.createConnetion: IConnection;
begin
  Result := PostgreSQLConnection.Create;
end;

function PostgreSQLFactory.createExecutorQuery: IExecutaQuery;
begin
  Result := PostgreSQLExecutor.Create;
end;

end.
