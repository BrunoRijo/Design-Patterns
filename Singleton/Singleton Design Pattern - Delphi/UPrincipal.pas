unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, USingletonLogger, Vcl.StdCtrls;

type
  TSingleton = class(TForm)
    btnRegistraLog: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnRegistraLogClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Logger: TLogger;
  end;

var
  Singleton: TSingleton;

implementation

{$R *.dfm}

procedure TSingleton.FormCreate(Sender: TObject);
begin
  Logger := TLogger.GetInstance;
end;

procedure TSingleton.btnRegistraLogClick(Sender: TObject);
begin
  Logger.Log(DateTimeToStr(Now));
end;

end.
