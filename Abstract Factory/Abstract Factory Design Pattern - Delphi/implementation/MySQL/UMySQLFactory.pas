unit UMySQLFactory;

interface

uses
  UIAbstractFactory, UIConnection, UIExecutaQuery, UMySQLConnection, UMySQLExecutor;

type
  MySQLFactory = class(TInterfacedObject, IAbstractFactory)
    constructor Create;
    function createConnetion: IConnection;
    function createExecutorQuery: IExecutaQuery;
  end;

implementation

{ MySQLFactory }

constructor MySQLFactory.Create;
begin
  inherited Create;
end;

function MySQLFactory.createConnetion: IConnection;
begin
  Result := MySQLConnection.Create;
end;

function MySQLFactory.createExecutorQuery: IExecutaQuery;
begin
  Result := MySQLExecutor.Create;
end;

end.
