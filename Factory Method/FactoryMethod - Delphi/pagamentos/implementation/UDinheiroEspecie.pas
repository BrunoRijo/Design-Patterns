unit UDinheiroEspecie;

interface

uses
  uIPagamento, Dialogs, System.SysUtils;

type
  TDinheiroEmEspecia = class(TInterfacedObject, IPagamento)
    procedure RealizaPagamento(AValor: Double);
  end;

implementation

{ DinheiroEmEspecia }

procedure TDinheiroEmEspecia.RealizaPagamento(AValor: Double);
begin
  //Aqui ser�o implemetadas todas as especificidades desse tipo de pagamento
  ShowMessage(Format('Pagamento de %f realizado utilizado Dinheiro em esp�cie.',[AValor]));
end;

end.
