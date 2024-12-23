unit UContrato;

interface

uses
  UIDocument;

type
  TContrato = class(TInterfacedObject, IDocument)
    private
      FClientName: string;
      FContractValue: Double;
    public
      constructor Create(AClientName: string; AContractValue: Double);
      function Clone: IDocument;
      function ShowDocumentDetails: string;
  end;

implementation

uses
  System.SysUtils;

{ Contrato }

constructor TContrato.Create(AClientName: string; AContractValue: Double);
begin
  FClientName := AClientName;
  FContractValue := AContractValue;
end;

function TContrato.Clone: IDocument;
begin
  Result := TContrato.Create(FClientName, FContractValue);
end;

function TContrato.ShowDocumentDetails: string;
begin
  Result := Format('Contrato - Cliente:%s, valor R$: %f',[FClientName, FContractValue]);
end;

end.
