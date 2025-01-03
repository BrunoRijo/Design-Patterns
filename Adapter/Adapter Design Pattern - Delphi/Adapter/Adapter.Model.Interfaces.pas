unit Adapter.Model.Interfaces;

interface

uses
  System.Generics.Collections;

type
  TItem = record
    Produto: string;
    Valor: Currency;
  end;

  IControllerItens = interface
    ['{682174C9-CF15-48C0-96E0-CFCC6EF888EA}']
    function Add(Value: TItem): IControllerItens;
    function Itens: TList<TItem>;
  end;

  IModelItens = interface
  ['{FBC8FCAE-8D0D-4D8B-B9BD-23409A6DB1AE}']
    function Add(Value: IModelItens): IModelItens;
    function Itens: TList<IModelItens>;
    function SetProduto(Value: String): IModelItens;
    function SetValor(Value: Currency): IModelItens;
    function GetProduto: string;
    function GetValor: Currency;
  end;

implementation

end.
