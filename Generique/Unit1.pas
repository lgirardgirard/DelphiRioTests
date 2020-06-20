unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections, Vcl.StdCtrls;

type
  TMonType = class
  private
    attInteger: integer;
    attStr    : string;
  end;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1 : TForm1;
  maList: TList<TMonType>;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  obj: TMonType;
begin
  maList    := TList<TMonType>.Create;
  for var i := 1 to 100 do
  begin
    obj            := TMonType.Create;
    obj.attInteger := i;
    obj.attStr     := i.ToString;
    maList.Add(obj);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i: integer;
begin
  if Assigned(maList) then
  begin
    i := 0;
    while (i < maList.Count) do
    begin
      Memo1.Lines.Add('<obj' + maList.Items[i].attInteger.ToString + '>: ' + maList.Items[i].attStr);
      inc(i);
    end;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i: integer;
begin
  if Assigned(maList) then
  begin
    i := 0;
    ShowMessage('initial:' + maList.Count.ToString);
    maList.Items[i].Destroy;
    ShowMessage('after destroy:' + maList.Count.ToString);
    maList.Delete(i);
    ShowMessage('after delete:' + maList.Count.ToString);
  end;
end;

end.
