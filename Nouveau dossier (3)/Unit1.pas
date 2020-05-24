unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.PlatformDefaultStyleActnCtrls, Vcl.Menus, Vcl.ActnPopup, System.Actions, Vcl.ActnList,
  Vcl.ActnMan;

type
  TForm1 = class(TForm)
    PopupActionBar1: TPopupActionBar;
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  Images: TImageList;
  Image: TBitmap;
  ActionManager: TActionManager;
  Option1, Option2: TMenuItem;
begin
  // display an information message
  ShowMessage('Right click the form to display the customized popup menu');

  // create an image list
  Images := TImageList.Create(self);
  Images.Height := 32;
  Images.Width := 32;
  try
    Image := TBitmap.Create;
    Image.Height := 32;
    Image.Width := 32;
    Image.Canvas.Font.Name := 'Times New Roman';
    Image.Canvas.Font.Size := 22;
    Image.Canvas.TextOut((Image.Width - Image.Canvas.TextWidth('1')) div 2, 0, '1');
    Images.Add(Image, nil);
  finally Image.Free;
  end;

  // create an action manager and assign the image list to some of its properties
  ActionManager := TActionManager.Create(self);
  ActionManager.DisabledImages := Images;
  ActionManager.LargeDisabledImages := Images;
  ActionManager.LargeImages := Images;

  // add some items to the popup menu associated with the popup action bar
  Option1 := TMenuItem.Create(self);
  Option1.Caption := 'New';
  PopupActionBar1.Items.Add(Option1);

  Option2 := TMenuItem.Create(self);
  Option2.Caption := 'Save';
  PopupActionBar1.Items.Add(Option2);

  // let the popup action bar be the form's popup menu
  Form1.PopupMenu := PopupActionBar1;
end;

end.
