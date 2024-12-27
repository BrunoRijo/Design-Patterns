unit Adapter.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Adapter.Controller.Itens;

type
  TForm2 = class(TForm)
    edtValor: TEdit;
    btnAdd: TButton;
    edtProduto: TEdit;
    mmoProdutos: TMemo;
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
    FControllerItens: TControllerItens;
    function DadosInvalidos: Boolean;
    procedure LimpaCampos;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

var
  Form2: TForm2;

implementation

uses
  Adapter.Model.Interfaces;

{$R *.dfm}

procedure TForm2.btnAddClick(Sender: TObject);
var
  Item: TItem;
  i: Integer;
begin

  if DadosInvalidos then
    Exit;

  Item.Produto := edtProduto.Text;
  Item.Valor := StrToCurr(edtValor.Text);
  FControllerItens.Add(Item);

  //Atualiza a lista
  mmoProdutos.Clear;
  for i := 0 to Pred(FControllerItens.Itens.Count) do
    mmoProdutos.Lines.Add(
      FControllerItens.Itens[I].Produto + ' - ' +
      FormatCurr('R$ #,##0.00', FControllerItens.Itens[I].Valor)
    );

  LimpaCampos;
end;

constructor TForm2.Create(AOwner: TComponent);
begin
  inherited;
  FControllerItens:= TControllerItens.New;
end;

function TForm2.DadosInvalidos: Boolean;
begin
  Result := (edtProduto.Text = '') or
            (edtValor.Text = '');;
end;

procedure TForm2.LimpaCampos;
begin
  edtProduto.Text := EmptyStr;
  edtValor.Text := EmptyStr;
end;

end.
