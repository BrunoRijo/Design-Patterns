unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UICarroBuilder;

type
  TPrincipal = class(TForm)
    btnCriarCarro: TButton;
    lbl1: TLabel;
    edtModeloCarro: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    edtAnoCarro: TEdit;
    edtCorCarro: TEdit;
    procedure btnCriarCarroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    CarroBuilder: ICarroBuilder;
  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;

implementation

uses
  UCarroBuilder, UCarro, strutil;

{$R *.dfm}

procedure TPrincipal.btnCriarCarroClick(Sender: TObject);
var
  Carro: TCarro;
begin

  if (edtModeloCarro.Text = EmptyStr) or (edtAnoCarro.Text = EmptyStr) or
     (edtCorCarro.Text = EmptyStr) then
  begin
    ShowMessage('Preencha todos os campos para prosseguir.');
    Exit;
  end;

  try
    Carro := CarroBuilder
            .SetModelo(edtModeloCarro.Text)
            .SetCor(edtCorCarro.Text)
            .SetAno(edtAnoCarro.Text)
            .Build;
  finally
     ShowMessage(Carro.ToString);
  end;

end;

procedure TPrincipal.FormCreate(Sender: TObject);
begin
  CarroBuilder := TCarroBuilder.Create;
end;

end.
