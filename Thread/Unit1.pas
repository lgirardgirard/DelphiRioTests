unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  // interceptor class
  TButton = class(Vcl.StdCtrls.TButton)
    OwnedThread: TThread;
    ProgressBar: TProgressBar;
  end;

type
  TMyThread = class(TThread)
  private
    FCounter    : Integer;
    FCountTo    : Integer;
    FProgressBar: TProgressBar;
    FOwnerButton: TButton;
    procedure DoProgress;
    procedure SetCountTo(const Value: Integer);
    procedure SetProgressBar(const Value: TProgressBar);
    procedure SetOwnerButton(const Value: TButton);
  protected
    procedure Execute; override;
  public
    constructor Create(CreateSuspended: Boolean);
    property CountTo: Integer read FCountTo write SetCountTo;
    property ProgressBar: TProgressBar read FProgressBar write SetProgressBar;
    property OwnerButton: TButton read FOwnerButton write SetOwnerButton;
  end;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ProgressBar1: TProgressBar;
    Button2: TButton;
    ProgressBar2: TProgressBar;
    Button3: TButton;
    ProgressBar3: TProgressBar;
    Button4: TButton;
    ProgressBar4: TProgressBar;
    Button5: TButton;
    ProgressBar5: TProgressBar;
    procedure Button1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{ TMyThread }

constructor TMyThread.Create(CreateSuspended: Boolean);
begin
  inherited;
  FCounter := 0;
  FCountTo := MaxInt;
end;

procedure TMyThread.DoProgress;
var
  PctDone: Extended;
begin
  PctDone               := (FCounter / FCountTo);
  FProgressBar.Position := Round(FProgressBar.Step * PctDone);
  FOwnerButton.Caption  := FormatFloat('0.00 %', PctDone * 100);
end;

procedure TMyThread.Execute;
const
  Interval = 1000000;
begin
  inherited;

  FreeOnTerminate   := True;
  FProgressBar.Max  := FCountTo div Interval;
  FProgressBar.Step := FProgressBar.Max;
  while FCounter < FCountTo do
  begin
    if FCounter mod Interval = 0 then
      Synchronize(DoProgress);
    Inc(FCounter);
  end;
  FOwnerButton.Caption     := 'Start';
  FOwnerButton.OwnedThread := nil;
  FProgressBar.Position    := FProgressBar.Max;
end;

procedure TMyThread.SetCountTo(const Value: Integer);
begin
  FCountTo := Value;
end;

procedure TMyThread.SetOwnerButton(const Value: TButton);
begin
  FOwnerButton := Value;
end;

procedure TMyThread.SetProgressBar(const Value: TProgressBar);
begin
  FProgressBar := Value;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  aButton     : TButton;
  aThread     : TMyThread;
  aProgressBar: TProgressBar;
begin
  aButton := TButton(Sender);
  if not Assigned(aButton.OwnedThread) then
  begin
    aThread             := TMyThread.Create(True);
    aButton.OwnedThread := aThread;
    aProgressBar        := TProgressBar(FindComponent(StringReplace(aButton.Name, 'Button',
      'ProgressBar', [])));
    aThread.ProgressBar := aProgressBar;
    aThread.OwnerButton := aButton;
    aThread.Resume;
    aButton.Caption := 'Pause';
  end
  else
  begin
    if aButton.OwnedThread.Suspended then
      aButton.OwnedThread.Resume
    else
      aButton.OwnedThread.Suspend;
    aButton.Caption := 'Run';
  end;
end;

end.
