unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
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

end.

