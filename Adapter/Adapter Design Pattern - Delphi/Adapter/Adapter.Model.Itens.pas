unit Adapter.Model.Itens;

interface

uses
  Adapter.Model.Interfaces, System.Generics.Collections;

type
  TModelItens = class(TInterfacedObject, IModelItens)
    private
      FLista: TList<IModelItens>;
      FProduto: string;
      FValor: Currency;
    public
      constructor Create;
      destructor Destroy;
      class function New: IModelItens;
      function Add(Value: IModelItens): IModelItens;
      function Itens: TList<IModelItens>;
      function SetProduto(Value: String): IModelItens;
      function SetValor(Value: Currency): IModelItens;
      function GetProduto: string;
      function GetValor: Currency;
  end;

implementation

uses
  System.SysUtils;

{ TModelItens }

function TModelItens.Add(Value: IModelItens): IModelItens;
begin
  FLista.Add(Value);
end;

constructor TModelItens.Create;
begin
  FLista := TList<IModelItens>.Create;
end;

destructor TModelItens.Destroy;
begin
  FreeAndNil(FLista);
  inherited;
end;

function TModelItens.GetProduto: string;
begin
  Result := FProduto;
end;

function TModelItens.GetValor: Currency;
begin
  Result := FValor;
end;

function TModelItens.Itens: TList<IModelItens>;
begin
  Result := FLista;
end;

class function TModelItens.New: IModelItens;
begin
  Result := TModelItens.Create;
end;

function TModelItens.SetProduto(Value: String): IModelItens;
begin
  Result := Self;
  FProduto := Value;
end;

function TModelItens.SetValor(Value: Currency): IModelItens;
begin
  Result := Self;
  FValor := Value;
end;

end.
