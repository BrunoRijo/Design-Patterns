unit UPostgreSQLConnection;

interface

uses
  UIConnection;

type
  PostgreSQLConnection = class(TInterfacedObject, IConnection)
    function Connect: Boolean;
  end;

implementation

uses
  Dialogs;

{ PostgreSQLConnection }

function PostgreSQLConnection.Connect: Boolean;
begin
  Result := False;
  try
    ShowMessage('Conectou com PostgresSQL');
  finally
    Result := True;
  end;
end;

end.
