unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  num1, num2, risultato: Double;
begin
  num1 := StrToFloatDef(Edit1.Text, 0);
  num2 := StrToFloatDef(Edit2.Text, 0);
  risultato := num1 + num2;
  Edit3.Text := FloatToStr(risultato);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  num1, num2, risultato: Double;
begin
  num1 := StrToFloatDef(Edit1.Text, 0);
  num2 := StrToFloatDef(Edit2.Text, 0);
  risultato := num1 - num2;
  Edit3.Text := FloatToStr(risultato);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  num1, num2, risultato: Double;
begin
  num1 := StrToFloatDef(Edit1.Text, 0);
  num2 := StrToFloatDef(Edit2.Text, 0);
  risultato := num1 * num2;
  Edit3.Text := FloatToStr(risultato);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  num1, num2, risultato: Double;
begin
  num1 := StrToFloatDef(Edit1.Text, 0);
  num2 := StrToFloatDef(Edit2.Text, 0);
  if num2 <> 0 then
  begin
    risultato := num1 / num2;
    Edit3.Text := FloatToStr(risultato);
  end
  else
  begin
    Edit3.Text := 'Errore (div/0)';
  end;
end;

end.

