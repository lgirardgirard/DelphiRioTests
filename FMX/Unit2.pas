unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.Samples.Calendar;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    ListBox1: TListBox;
    ToggleSwitch1: TToggleSwitch;
    ActivityIndicator1: TActivityIndicator;
    Calendar1: TCalendar;
    MonthCalendar1: TMonthCalendar;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
MessageDlg(Edit1.Text, mtInformation, [mbOK], 0);
end;

end.
