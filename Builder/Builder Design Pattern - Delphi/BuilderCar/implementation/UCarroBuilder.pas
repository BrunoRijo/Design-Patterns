unit UCarroBuilder;

interface

uses
  UICarroBuilder, UCarro;

type
  TCarroBuilder = class(TInterfacedObject, ICarroBuilder)
    private
      FCarro: TCarro;
    public
      constructor Create;
      function SetModelo(const AModelo: string): ICarroBuilder;
      function SetAno(const AAno: string): ICarroBuilder;
      function SetCor(const ACor: string): ICarroBuilder;
      function Build: TCarro;
  end;

implementation

{ TCarroBuilder }

function TCarroBuilder.Build: TCarro;
begin
  Result := FCarro;
end;

constructor TCarroBuilder.Create;
begin
  inherited;
  FCarro:= TCarro.Create;
end;

function TCarroBuilder.SetAno(const AAno: string): ICarroBuilder;
begin
  FCarro.Ano := AAno;
  Result := Self;
end;

function TCarroBuilder.SetCor(const ACor: string): ICarroBuilder;
begin
  FCarro.Cor := ACor;
  Result := Self;
end;

function TCarroBuilder.SetModelo(const AModelo: string): ICarroBuilder;
begin
  FCarro.Modelo := AModelo;
  Result := Self;
end;

end.
