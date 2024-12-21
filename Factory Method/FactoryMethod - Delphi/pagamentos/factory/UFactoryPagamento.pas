unit UFactoryPagamento;

interface

uses
  uIPagamento;

type
  TFactoryPagamento = class
    function CriaTipoPagamento: IPagamento; virtual; abstract;
    procedure RealizaPagamento(AValor: Double);
  end;

  TPagamentoCartaoDeCredito = class(TFactoryPagamento)
    function CriaTipoPagamento: IPagamento; override;
  end;

  TPagamentoBoletoBancario = class(TFactoryPagamento)
    function CriaTipoPagamento: IPagamento; override;
  end;

  TPagamentoDinheiroEmEspecie = class(TFactoryPagamento)
    function CriaTipoPagamento: IPagamento; override;
  end;
  
implementation

uses
  UBoletoBancario, UCartaoDeCredito, UDinheiroEspecie;

{ TFactoryPagamento }

procedure TFactoryPagamento.RealizaPagamento(AValor: Double);
var
  TipoDePagamento : IPagamento;
begin
  TipoDePagamento := CriaTipoPagamento;
  TipoDePagamento.RealizaPagamento(AValor);
end;

{ TPagamentoCartaoDeCredito }

function TPagamentoCartaoDeCredito.CriaTipoPagamento: IPagamento;
begin
  Result := TCartaoDeCredito.Create;
end;

{ TPagamentoBoletoBancario }

function TPagamentoBoletoBancario.CriaTipoPagamento: IPagamento;
begin
  Result := TBoletoBancario.Create;
end;

{ TPagamentoDinheiroEmEspecie }

function TPagamentoDinheiroEmEspecie.CriaTipoPagamento: IPagamento;
begin
  Result := TDinheiroEmEspecia.Create;
end;

end.
