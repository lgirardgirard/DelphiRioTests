unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, System.Actions, FMX.ActnList, FMX.Menus, FMX.Maps, FMX.WindowsStore, System.ImageList, FMX.ImgList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.Objects, FMX.Colors;

type
  TfMain = class(TForm)
    MainMenu1: TMainMenu;
    ActionList1: TActionList;
    CheckBox1: TCheckBox;
    panBottom: TPanel;
    btnClick: TButton;
    actQuitter: TAction;
    btnClose: TButton;
    actClickOnMe: TAction;
    miFichier: TMenuItem;
    miHelp: TMenuItem;
    miQuitter: TMenuItem;
    CornerButton1: TCornerButton;
    ImageList1: TImageList;
    Lang1: TLang;
    Text1: TText;
    Label1: TLabel;
    ColorButton1: TColorButton;
    Button1: TButton;
    btnSQLite: TCornerButton;
    actSQLite: TAction;
    btnJauge: TCornerButton;
    StyleBook1: TStyleBook;
    procedure actQuitterExecute(Sender: TObject);
    procedure actClickOnMeExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actSQLiteExecute(Sender: TObject);
    procedure btnJaugeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  fMain: TfMain;

implementation

{$R *.fmx}

uses
  Unit3, Unit4, FMX.Styles;

procedure TfMain.actClickOnMeExecute(Sender: TObject);
begin
  ShowMessage('Tu as cliqué');
end;

procedure TfMain.actQuitterExecute(Sender: TObject);
begin
  Close;
end;

procedure TfMain.actSQLiteExecute(Sender: TObject);
begin
  Application.CreateForm(TForm3, Form3);
  try
    Form3.ShowModal;
  finally
    Form3.Free;
  end;
end;

procedure TfMain.btnJaugeClick(Sender: TObject);
begin
  Application.CreateForm(TForm4, Form4);
  try
    Form4.ShowModal;
  finally
    Form4.Free;
  end;
end;

procedure TfMain.FormActivate(Sender: TObject);
begin
  Lang1.Lang := 'en';
end;

procedure TfMain.FormCreate(Sender: TObject);
begin
//  TStyleManager.SetStyleFromFile('C:\Users\Public\Documents\Embarcadero\Studio\20.0\Styles\Win10ModernSlateGray.style');
end;

end.
