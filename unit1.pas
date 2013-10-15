unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  zahlen : Array[1..10] of Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var i : Integer;
begin
  randomize;
  ListBox1.Clear;
  for i := 1 to 10 do
  begin
    zahlen[i] := random(100);
    ListBox1.Items.Add(IntToStr(zahlen[i]));
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var i, wert: Integer;
  found : boolean;
begin
  ListBox1.Clear;
i := 1;
found := false;
wert := StrToInt(Edit1.Text);
while (found = false) XOR (i=10) do
begin
 if zahlen[i] = wert then
 begin
   ListBox1.Items.Add('GEFUNDEN!!');
   ListBOx1.Items.Add('Der gesuchte Wert ' + IntToStr(wert) + ' befindet sich im Array');
   ListBox1.Items.Add('an Position ' + IntToStr(i) );
 found := true;
 end;
 Inc(i);
end;
if found = false then
begin
ListBOx1.Items.Add('Der gesuchte WErt wurde nicht gefunden:');
end;
end;


end.

