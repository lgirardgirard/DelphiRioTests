unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, System.ImageList, Vcl.ImgList,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, Vcl.Menus, Vcl.ActnPopup;

type
  TForm1 = class(TForm)
    ActionManager1: TActionManager;
    ActionMainMenuBar1: TActionMainMenuBar;
    actQuitter: TAction;
    ImageList1: TImageList;
    ActionToolBar1: TActionToolBar;
    PopupActionBar1: TPopupActionBar;
    Quitter1: TMenuItem;
    procedure actQuitterExecute(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.actQuitterExecute(Sender: TObject);
begin
  Application.Terminate;
end;

end.
