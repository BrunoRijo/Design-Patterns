unit UICarroBuilder;

interface

uses
  UCarro;

type
  ICarroBuilder = interface
    function SetModelo(const AModelo: string): ICarroBuilder;
    function SetAno(const AAno: string): ICarroBuilder;
    function SetCor(const ACor: string): ICarroBuilder;
    function Build: TCarro;
  end;

implementation

end.
