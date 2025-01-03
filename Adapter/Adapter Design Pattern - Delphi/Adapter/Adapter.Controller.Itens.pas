unit Adapter.Controller.Itens;

interface

{A Classe controller, far� o papel de adapter, fazendo com que os dados recebidos como
record sejam adaptados, ou traduzidos para o formado iModelItens}

uses
  Adapter.Model.Interfaces, System.Generics.Collections;

type
  TControllerItens = class(TInterfacedObject, IControllerItens)
  private
    FItem : IModelItens;
  public
    constructor Create;
    destructor Destroy; override;
    function Add(Value: TItem): IControllerItens;
    function Itens: TList<TItem>;
    class function New: TControllerItens;
  end;

implementation

uses
  Adapter.Model.Itens, System.SysUtils;

{ TControllerItens }

function TControllerItens.Add(Value: TItem): IControllerItens;
begin
  {Recebe o valor de record e o transforma no formato da interface,
   que � utilizada pelo sistema}
   FItem.Add(
     TModelItens.New
        .SetProduto(Value.Produto)
        .SetValor(Value.Valor)
   );
end;

constructor TControllerItens.Create;
begin
  FItem := TModelItens.New;
end;

destructor TControllerItens.Destroy;
begin
  FreeAndNil(FItem);
  inherited;
end;

function TControllerItens.Itens: TList<TItem>;
var
  i: Integer;
  Item: TItem;
begin
  {Converte os itens que seguem o modelo da interface para o tipo record}
  Result := TList<TItem>.Create;
  for I := 0 to Pred(FItem.Itens.Count) do
  begin
    Item.Produto := FItem.Itens[i].GetProduto;
    Item.Valor := FItem.Itens[i].GetValor;
    Result.Add(Item);
  end;
end;

class function TControllerItens.New: TControllerItens;
begin
  Result := TControllerItens.Create;
end;

end.
