unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    RadioGroup: TRadioGroup;
    btnCriar: TButton;
    rbBoletoBancario: TRadioButton;
    rbCartaoDeCredito: TRadioButton;
    rbEmEspecie: TRadioButton;
    procedure btnCriarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  UFactoryPagamento;

{$R *.dfm}

procedure TForm2.btnCriarClick(Sender: TObject);
var
  Pagamento: TFactoryPagamento;
begin

  if rbBoletoBancario.Checked then
    Pagamento := TPagamentoBoletoBancario.Create
  else
  if rbCartaoDeCredito.Checked then
    Pagamento := TPagamentoCartaoDeCredito.Create
  else
    Pagamento := TPagamentoDinheiroEmEspecie.Create;

  try
    Pagamento.RealizaPagamento(200.00); //Simulando um pagamento de R$ 200
  finally
    Pagamento.Free;
  end;

end;

end.
