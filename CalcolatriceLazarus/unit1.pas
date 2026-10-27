unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button3: TButton;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);

begin


end;

procedure TForm1.Button3Click(Sender: TObject);
var primoNumero, SecondoNumero, risultato: integer;
    primoNumeroSTR, SecondoNumeroSTR, risultatoSTR: string;
begin
  primoNumeroSTR    := Edit1.Text;;
  SecondoNumeroSTR  := Edit2.Text;;

  primoNumero   := StrToInt(primoNumeroSTR);
  SecondoNumero := StrToInt(SecondoNumeroSTR);

  risultato := primoNumero + SecondoNumero;
  risultatoSTR := IntToStr(risultato);

  Edit3.Text  :=  risultatoSTR;
  Label2.Caption:= risultatoSTR;

end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

end.

