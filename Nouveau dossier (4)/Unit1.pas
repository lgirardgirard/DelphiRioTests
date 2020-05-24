unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit2, Vcl.Menus, Vcl.StdCtrls, System.ImageList, Vcl.ImgList, Vcl.VirtualImageList,
  Vcl.ComCtrls, Vcl.ToolWin;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    VirtualImageList1: TVirtualImageList;
    Button1: TButton;
    VirtualImageList2: TVirtualImageList;
    ToolBar2: TToolBar;
    ToolButton4: TToolButton;
    MainMenu1: TMainMenu;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
