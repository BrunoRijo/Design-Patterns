unit UMySQLExecutor;

interface

uses
  UIExecutaQuery;

type
  MySQLExecutor = class(TInterfacedObject, IExecutaQuery)
    function Executa(Msg: string): Boolean;
  end;

implementation

uses
  Dialogs, System.SysUtils;

{ MySQLExecutor }

function MySQLExecutor.Executa(Msg: string): Boolean;
begin
  Result := False;
  try
    ShowMessage(Format('Executando a query %s',[Msg]));
  finally
    Result := True;
  end;
end;

end.
