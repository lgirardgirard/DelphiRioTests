unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit, System.Rtti,
  FMX.Grid.Style, FMX.Grid, FMX.ScrollBox, FMX.ListBox, FMX.Layouts, FMX.ComboEdit, FMX.SpinBox, FMX.EditBox, FMX.NumberBox;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    CornerButton1: TCornerButton;
    Label1: TLabel;
    PasswordEditButton1: TPasswordEditButton;
    StringGrid1: TStringGrid;
    Column1: TColumn;
    ProgressColumn1: TProgressColumn;
    CheckColumn1: TCheckColumn;
    DateColumn1: TDateColumn;
    TimeColumn1: TTimeColumn;
    PopupColumn1: TPopupColumn;
    CurrencyColumn1: TCurrencyColumn;
    FloatColumn1: TFloatColumn;
    IntegerColumn1: TIntegerColumn;
    GlyphColumn1: TGlyphColumn;
    Grid1: TGrid;
    ListBox1: TListBox;
    ListBoxGroupHeader1: TListBoxGroupHeader;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ComboEdit1: TComboEdit;
    ListBoxHeader1: TListBoxHeader;
    ListBoxGroupHeader2: TListBoxGroupHeader;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    ComboBox1: TComboBox;
    ListBoxGroupHeader3: TListBoxGroupHeader;
    ListBoxItem6: TListBoxItem;
    ListBoxItem7: TListBoxItem;
    ListBoxItem8: TListBoxItem;
    ListBoxGroupHeader4: TListBoxGroupHeader;
    ListBoxItem9: TListBoxItem;
    ListBoxItem10: TListBoxItem;
    CheckBox1: TCheckBox;
    Switch1: TSwitch;
    NumberBox1: TNumberBox;
    SpinBox1: TSpinBox;
    AniIndicator1: TAniIndicator;
    procedure CornerButton1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation


{$R *.fmx}
{$R *.Windows.fmx MSWINDOWS}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiTb.fmx ANDROID}

procedure TForm1.CornerButton1Click(Sender: TObject);
begin
  ShowMessage(Edit1.Text);
end;

end.
