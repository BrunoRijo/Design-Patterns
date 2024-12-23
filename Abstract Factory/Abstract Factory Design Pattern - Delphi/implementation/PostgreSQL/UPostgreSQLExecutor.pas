unit UPostgreSQLExecutor;

interface

uses
  UIExecutaQuery;

type
  PostgreSQLExecutor = class(TInterfacedObject, IExecutaQuery)
    function Executa(Msg: string): Boolean;
  end;

implementation

uses
  Dialogs, System.SysUtils;

{ MySQLExecutor }

function PostgreSQLExecutor.Executa(Msg: string): Boolean;
begin
  Result := False;
  try
    ShowMessage(Format('Executando no Postgres a query %s',[Msg]));
  finally
    Result := True;
  end;
end;

end.

