unit UCarro;

interface

type
  TCarro = class
    Modelo: string;
    Ano: string;
    Cor: string;
    function ToString: string; override;
  end;

implementation

uses
  System.SysUtils;

{ TCarro }

function TCarro.ToString: string;
begin
  Result := Format('Carro do modelo s, cor %s, ano %s',[Modelo, Cor, Ano]);
end;

end.
