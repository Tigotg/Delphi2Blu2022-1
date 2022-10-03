unit exercicio13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TbtnMaior = class(TForm)
    edtNumero: TEdit;
    lbResultado: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
  procedure MaiorQueDez;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  btnMaior: TbtnMaior;

implementation

{$R *.dfm}

{ TForm1 }

procedure TbtnMaior.Button1Click(Sender: TObject);
begin
  self.MaiorQueDez;
end;

procedure TbtnMaior.MaiorQueDez;
var
  xNumero: Double;
begin
  xNumero:= StrToFloat(edtNumero.text);
  if xNumero > 10 then
  lbResultado.caption:= 'O numero '+FloatToStr(xNumero)+ ' � Maior que 10!'
  else
  lbResultado.caption:= 'O numero '+FloatToStr(xNumero)+ ' � Menor que 10';

end;

end.
{Fa�a um algoritmo que receba um n�mero e mostre uma mensagem caso
 este n�mero seja maior que 10;}
