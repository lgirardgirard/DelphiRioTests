program Project1;




uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  MyRibbon in 'Ribbon\MyRibbon.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
