unit UCurriculo;

interface

uses
  UIDocument;

type
  TCurriculo = class(TInterfacedObject, IDocument)
    private
      FName: string;
      FExperienceYears: Double;
    public
      constructor Create(AName: string; AExperienceYears: Double);
      function Clone: IDocument;
      function ShowDocumentDetails: string;
  end;

implementation

uses
  System.SysUtils;

{ Curriculo }

function TCurriculo.Clone: IDocument;
begin
  Result := TCurriculo.Create(FName, FExperienceYears);
end;

constructor TCurriculo.Create(AName: string; AExperienceYears: Double);
begin
  FName := AName;
  FExperienceYears := AExperienceYears;
end;

function TCurriculo.ShowDocumentDetails: string;
begin
  Result := Format('Curriculo - Nome: %s, %f anos de experiencia',[FName, FExperienceYears]);
end;

end.
