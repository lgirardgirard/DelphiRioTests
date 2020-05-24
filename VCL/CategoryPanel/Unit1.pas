unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.ValEdit,
  Vcl.CategoryButtons, Vcl.ButtonGroup, System.Actions, Vcl.ActnList;

type
  TForm1 = class(TForm)
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    CheckBox1: TCheckBox;
    CategoryPanel2: TCategoryPanel;
    ValueListEditor1: TValueListEditor;
    ButtonGroup1: TButtonGroup;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    procedure FormActivate(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action1Update(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Action1Execute(Sender: TObject);
begin
  showmessage('action1');
end;

procedure TForm1.Action1Update(Sender: TObject);
begin
  (Sender as TAction).Visible := false;
  (Sender as TAction).Enabled := (Sender as TAction).Visible;
end;

procedure TForm1.Action2Execute(Sender: TObject);
begin
  showmessage('action2');
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  CategoryPanelGroup1.CollapseAll;
end;

end.
