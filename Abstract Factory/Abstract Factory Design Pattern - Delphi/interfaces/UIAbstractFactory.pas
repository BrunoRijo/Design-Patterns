unit UIAbstractFactory;

interface

uses
  UIConnection, UIExecutaQuery;

type
  IAbstractFactory = interface
    function createConnetion: IConnection;
    function createExecutorQuery: IExecutaQuery;
  end;

implementation

end.
