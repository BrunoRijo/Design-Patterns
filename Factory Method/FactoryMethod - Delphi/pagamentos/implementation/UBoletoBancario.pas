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
  //Aqui serão implemetadas todas as especificidades desse tipo de pagamento
  ShowMessage(Format('Pagamento de %f realizado utilizado Boleto Bancário.',[AValor]));
end;

end.
