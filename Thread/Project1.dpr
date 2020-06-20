program Project1;

uses
  Vcl.Forms,
<<<<<<< HEAD
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas',
  Unit3 in 'Unit3.pas' {Form3};
=======
  Unit1 in 'Unit1.pas' {Form1};
>>>>>>> a795f49be08c64869ff2db3dca44b21d9286f6f8

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
