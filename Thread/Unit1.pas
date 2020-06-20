unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
<<<<<<< HEAD
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit2, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    memoMain: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
    monThread: TMyThread;
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
<<<<<<< HEAD

uses Unit3;

procedure TForm1.Button1Click(Sender: TObject);
begin
  memoMain.Lines.Clear;
  memoMain.Lines.Add('Button1Click');

  memoMain.Lines.Add('     - Création & lancement du thread');
  Form3 := TForm3.Create(nil);

  monThread := TMyThread.Create(Form3);
  monThread.Resume;

  memoMain.Lines.Add('     - Sleep.....');
  Sleep(5000);

  memoMain.Lines.Add('     - Sleep.....');
  Sleep(5000);

  memoMain.Lines.Add('     - Arrêt du thread');
  monThread.Terminate;

  memoMain.Lines.Add('Fin Button1Click');
end;

end.
