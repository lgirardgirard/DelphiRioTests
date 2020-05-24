// https://theroadtodelphi.com/2010/08/07/using-the-google-maps-api-v3-from-delphi-part-i-basic-functionality/


program GoogleMapsTest;

uses
  Vcl.Forms,
  fmain in 'fmain.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
