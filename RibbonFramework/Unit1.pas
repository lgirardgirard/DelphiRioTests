unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UIRibbon, UIRibbonForm, UIRibbonCommands, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    ActionManager1: TActionManager;
    actAbout: TAction;
    actProduits: TAction;
    actSites: TAction;
    mainRibbon: TUIRibbon;
    Button1: TButton;
    Button2: TButton;
    actVehicules: TAction;
    actQuitter: TAction;
    Panel1: TPanel;
    Button3: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure actAboutExecute(Sender: TObject);
    procedure actProduitsExecute(Sender: TObject);
    procedure mainRibbonLoaded(Sender: TObject);
    procedure mainRibbonCommandCreate(const Sender: TUIRibbon; const Command: TUICommand);
    procedure actSitesExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure actVehiculesExecute(Sender: TObject);
    procedure actQuitterExecute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{$R 'Ribbon\MyRibbon.res'}

uses
  Vcl.graphUtil, MyRibbon;

procedure TForm1.actAboutExecute(Sender: TObject);
begin
  showmessage('a propos');
end;

procedure TForm1.actProduitsExecute(Sender: TObject);
begin
  showmessage('produits');
end;

procedure TForm1.actQuitterExecute(Sender: TObject);
begin
  close;
end;

procedure TForm1.actSitesExecute(Sender: TObject);
begin
  showmessage('sites logistiques');
end;

procedure TForm1.actVehiculesExecute(Sender: TObject);
begin
  showmessage('Véhicules');
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  mainRibbon.SetApplicationModes([0,1, 0, 0, 1]);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  mainRibbon.SetApplicationModes([0,1, 0, 0, 0]);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  actProduits.Visible := not actProduits.Visible;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  mainRibbon.SetApplicationModes([0,1]);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  mainRibbon.SetApplicationModes([0,0]);
end;

procedure TForm1.mainRibbonCommandCreate(const Sender: TUIRibbon; const Command: TUICommand);
begin
  inherited;
  case Command.CommandId of
    14:
      begin
        Command.ActionLink.Action := actProduits;
        // Command.Caption           := 'Produits traduits';
      end;
    tabOperations:
      begin
        Command.Caption := 'Mes Opérations'
      end;
  end;
end;

procedure TForm1.mainRibbonLoaded(Sender: TObject);
begin
  inherited;
  // Color := ColorAdjustLuma(Ribbon.BackgroundColor, -25, False);
end;

end.
