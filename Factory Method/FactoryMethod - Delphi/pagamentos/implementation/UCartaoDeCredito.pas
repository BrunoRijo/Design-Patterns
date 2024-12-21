unit UCartaoDeCredito;

interface

uses
  uIPagamento, Dialogs, System.SysUtils;

  type
  TCartaoDeCredito = class(TInterfacedObject, IPagamento)
  public
    procedure RealizaPagamento(AValor: Double);
  end;

implementation

{ CartaoDeCredito }

procedure TCartaoDeCredito.RealizaPagamento(AValor: Double);
begin
  //Aqui serão implemetadas todas as especificidades desse tipo de pagamento
  ShowMessage(Format('Pagamento de %f realizado utilizado cartão de crédito.',[AValor]));
end;

end.
