unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.WinXPanels;

type
  TShowDataProc = procedure(ACliHandle: Pointer); stdcall;
  TShutdownProc = procedure; stdcall;

type
  TForm1 = class(TForm)
    Button1: TButton;
    CardPanel1: TCardPanel;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit3, FireDAC.Stan.Util;

procedure TForm1.Button1Click(Sender: TObject);
var
  dllHandle: THandle;
  ParGen   : TShowDataProc;
  ShutDown : TShutdownProc;
begin
{$IFDEF WIN32}
  dllHandle := LoadLibrary(PChar('..\..\WIN32\Debug\Project2.dll'));
{$ENDIF}
{$IFDEF WIN64}
  dllHandle := LoadLibrary(PChar('..\..\WIN64\Debug\Project2.dll'));
{$ENDIF}
  if dllHandle = 0 then
    raise Exception.Create(FDLastSystemErrorMsg);

  @ParGen := GetProcAddress(dllHandle, 'ShowData');
  if not Assigned(ParGen) then
    raise Exception.Create(FDLastSystemErrorMsg);
  ParGen(DataModule3.FDConnection1.CliHandle);

  @ShutDown := GetProcAddress(dllHandle, 'Shutdown');
  if Assigned(ShutDown) then
    ShutDown();
//  if dllHandle <> 0 then
//    FreeLibrary(dllHandle);
  dllHandle := 0;
  @ParGen   := nil;
  @ShutDown := nil;
end;

procedure TForm1.FormActivate(Sender: TObject);
var
  databasename: string;
begin
  // tentative de connexion � la base de donn�es
  try
    databasename :=
      'C:\Users\Administrateur\Mes sources\SourcesDelphi\DelphiRioTests\VCL_fmx\database\test.SQLite';
    DataModule3.FDConnection1.Connected       := False;
    DataModule3.FDConnection1.Params.Database := databasename;
    DataModule3.FDConnection1.Connected       := True;
  except
    on E: Exception do
    begin
      MessageDlg('Impossible de se connecter � la base de donn�es' + chr(13) + E.ToString, mtError,
        [mbOK], 0);
    end;
  end;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  // d�connexion de la base de donn�es
  DataModule3.FDConnection1.Connected := False;
end;

end.
