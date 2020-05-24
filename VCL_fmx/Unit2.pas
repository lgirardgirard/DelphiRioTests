unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FireDAC.Comp.Client,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.UI.Intf,
  FireDAC.FMXUI.Wait, FireDAC.Comp.UI, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Stan.Def, FireDAC.Stan.Pool, FMX.TreeView, FMX.Layouts;

type
  TForm2 = class(TForm)
    Expander1: TExpander;
    FDQuery1: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDConnection1: TFDConnection;
    TreeView1: TTreeView;
    TreeViewItem1: TTreeViewItem;
    TreeViewItem2: TTreeViewItem;
    TreeViewItem3: TTreeViewItem;
    TreeViewItem4: TTreeViewItem;
    TreeViewItem5: TTreeViewItem;
    TreeViewItem6: TTreeViewItem;
    TreeViewItem7: TTreeViewItem;
    TreeViewItem8: TTreeViewItem;
    TreeViewItem9: TTreeViewItem;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    constructor Create(const ACliHandle: Pointer);
    destructor destroy;
    class procedure ShowData(ACliHandle: Pointer);
  end;

implementation

{$R *.fmx}
{ TForm2 }

constructor TForm2.Create(const ACliHandle: Pointer);
begin
  inherited Create(nil);

  FDConnection1.SharedCliHandle := ACliHandle;
  FDConnection1.Connected       := true;

  FDQuery1.Connection := FDConnection1;
  try
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add('select * from USERS');
    FDQuery1.Active := true;
  except
    on E: Exception do
      MessageDlg('Impossible d''ouvrir la requête' + chr(13) + E.Message, TMsgDlgType.mtWarning,
        [TMsgDlgBtn.mbOK], 0);
  end;
end;

destructor TForm2.Destroy;
begin
  FDConnection1.Connected := false;

  inherited Destroy;
end;

class procedure TForm2.ShowData(ACliHandle: Pointer);
var
  oForm: TForm2;
begin
  oForm := TForm2.Create(ACliHandle);
  try
    oForm.ShowModal;
  finally
    oForm.DisposeOf;
  end;
end;

end.
