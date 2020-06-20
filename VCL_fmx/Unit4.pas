unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.WinXCtrls;

type
  TsplashScreen = class(TForm)
    Label1: TLabel;
    Timer1: TTimer;
    ActivityIndicator1: TActivityIndicator;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    Completed: boolean;
  end;

var
  splashScreen: TsplashScreen;

implementation

{$R *.dfm}

procedure TsplashScreen.FormShow(Sender: TObject);
begin
  OnShow          := nil;
  Completed       := False;
  Timer1.Interval := 2000;
  Timer1.Enabled  := True;
end;

procedure TsplashScreen.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  Completed      := True;
end;

end.
