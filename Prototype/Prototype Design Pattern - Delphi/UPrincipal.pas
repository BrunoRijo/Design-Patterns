unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormPrincipal = class(TForm)
    rg1: TRadioGroup;
    rbCurriculo: TRadioButton;
    rbContrato: TRadioButton;
    btnCriaDocumento: TButton;
    procedure btnCriaDocumentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Principal: TFormPrincipal;

implementation

uses
  UIDocument, UContrato, UCurriculo;

{$R *.dfm}

procedure TFormPrincipal.btnCriaDocumentoClick(Sender: TObject);
var
  OriginalContract, ClonedContract: IDocument;
  OriginalResume, ClonedResume: IDocument;
begin
  //Criando os objetos originais
  OriginalResume   := TCurriculo.Create('Bruno Rijo', 5.0);
  OriginalContract := TContrato.Create('Bruno Rijo', 99999999990.0);

  if rbCurriculo.Checked then
  begin
    ClonedResume := OriginalResume.Clone;
    ShowMessage(ClonedResume.ShowDocumentDetails);
  end
  else
  begin
    ClonedContract := OriginalContract.Clone;
    ShowMessage(ClonedContract.ShowDocumentDetails);
  end;

end;

end.
