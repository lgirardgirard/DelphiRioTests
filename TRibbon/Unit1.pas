unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Ribbon, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.ActnCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnMenus, Vcl.RibbonActnMenus, Vcl.RibbonLunaStyleActnCtrls, Vcl.StdActns;

type
  TForm1 = class(TForm)
    Ribbon1: TRibbon;
    ActionManager1: TActionManager;
    RibbonApplicationMenuBar1: TRibbonApplicationMenuBar;
    RibbonQuickAccessToolbar1: TRibbonQuickAccessToolbar;
    RibbonPage1: TRibbonPage;
    ImageList1: TImageList;
    Action1: TAction;
    RibbonGroup1: TRibbonGroup;
    RibbonPage2: TRibbonPage;
    Action2: TAction;
    RibbonGroup2: TRibbonGroup;
    FileOpen1: TFileOpen;
    SearchFind1: TSearchFind;
    SearchFindNext1: TSearchFindNext;
    SearchReplace1: TSearchReplace;
    SearchFindFirst1: TSearchFindFirst;
    procedure Action1Execute(Sender: TObject);
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
  application.Terminate;
end;

end.
