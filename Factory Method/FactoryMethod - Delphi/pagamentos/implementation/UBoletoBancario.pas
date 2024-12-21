unit UBoletoBancario;

interface

uses
  uIPagamento, Dialogs, System.SysUtils;

type
  TBoletoBancario = class(TInterfacedObject, IPagamento)
    procedure RealizaPagamento(AValor: Double);
  end;

implementation

{ BoletoBancario }

procedure TBoletoBancario.RealizaPagamento(AValor: Double);
begin
  //Aqui ser�o implemetadas todas as especificidades desse tipo de pagamento
  ShowMessage(Format('Pagamento de %f realizado utilizado Boleto Banc�rio.',[AValor]));
end;

end.
