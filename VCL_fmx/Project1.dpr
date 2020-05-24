program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1} ,
  Unit3 in 'Unit3.pas' {DataModule3: TDataModule} ,
  Unit4 in 'Unit4.pas' {splashScreen};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  SplashScreen := TSplashScreen.Create(nil);
  try
    SplashScreen.Show;
    SplashScreen.Update;

    Application.CreateForm(TDataModule3, DataModule3);
    Application.CreateForm(TForm1, Form1);

    while not SplashScreen.Completed do
      Application.ProcessMessages;
    SplashScreen.Hide;
  finally
    SplashScreen.Free;
  end;

  Application.Run;

end.
