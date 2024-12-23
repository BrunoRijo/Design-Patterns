unit UMySQLConnection;

interface

uses
  UIConnection;

type
  MySQLConnection = class(TInterfacedObject, IConnection)
    function Connect: Boolean;
  end;

implementation

uses
  Dialogs;

{ MySQLConnection }

function MySQLConnection.Connect: Boolean;
begin
  //Aqui será implementada a conexão apropriada para o banco de dados MYSQL
  Result := False;
  try
    ShowMessage('Conectou com o BD MySQL.');
  finally
    Result := True;
  end;
end;

end.
