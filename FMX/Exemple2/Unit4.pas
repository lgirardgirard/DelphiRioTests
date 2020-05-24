unit Unit4;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Ani, FMX.Edit, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components, FMX.EditBox, FMX.SpinBox;

type
  TForm4 = class(TForm)
    CornerButton1: TCornerButton;
    ProgressBar1: TProgressBar;
    Button1: TButton;
    Edit1: TEdit;
    BindingsList1: TBindingsList;
    SpinBox1: TSpinBox;
    LinkControlToPropertyValue: TLinkControlToProperty;
    procedure CornerButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ProgressBar1Paint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
    procedure FormActivate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}

procedure TForm4.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  ProgressBar1.Value := 0;
  for i := 0 to 100 do begin
    ProgressBar1.Value := i;
    if i mod 10 = 0 then begin
      Edit1.Text := i.ToString;
      ShowMessage('petite pause');
    end;
  end;
end;

procedure TForm4.CornerButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm4.FormActivate(Sender: TObject);
begin
  ProgressBar1.Value := 0;
  ProgressBar1.Max := 100;
  ProgressBar1.Canvas.Fill.Color := TAlphaColor($FFe83f33); // Rouge OMP    TAlphaColor($FF808183); // Gris OMP
  ProgressBar1.Repaint;
end;

procedure TForm4.ProgressBar1Paint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
var
  PRect: TRectF;
begin
  with ProgressBar1.Canvas do begin
    PRect := ARect;
    PRect.Width := ARect.Width * ProgressBar1.Value / ProgressBar1.Max;
    FillRect(PRect, 0, 0, [], 1);
  end;
end;

end.
