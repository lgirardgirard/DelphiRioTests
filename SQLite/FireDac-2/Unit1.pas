unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.ScriptCommands,
  FireDAC.Stan.Util,
  FireDAC.Comp.Script;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDTable1: TFDTable;
    Button1: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    FDScript1: TFDScript;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  FDTable1.Active := false;

  FDTable1.FieldDefs.Clear;
  FDTable1.FieldDefs.Add('ID_OPERAT', ftInteger, 0, True);
  FDTable1.FieldDefs.Add('LIB_OPERAT', ftString, 50, false);
  FDTable1.FieldDefs.Add('DATE_OPERAT', ftDateTime, 0, false);
  FDTable1.FieldDefs.Add('ARCHIVE', ftBoolean, 0, false);
  FDTable1.FieldDefs.Add('UNE_DATE', ftDate, 0, false);
  FDTable1.FieldDefs.Add('UNE_HEURE', ftTime, 0, false);

  FDTable1.IndexDefs.Clear;
  FDTable1.IndexDefs.Add('prim', 'ID_OPERAT', [ixPrimary, ixUnique]);
  FDTable1.IndexDefs.Add('sec', 'LIB_OPERAT', [ixCaseInsensitive]);

  try
    FDTable1.CreateDataSet();
  except
    on E: Exception do
      showmessage(E.Message);
  end;
  FDTable1.Active := True;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i: Integer;
begin
  if not FDTable1.Active then
    FDTable1.Active := True;
  try
    for i := 0 to 10 do
    begin
      FDTable1.Append;
      FDTable1.Fields[0].AsInteger := i;
      FDTable1.FieldByName('LIB_OPERAT').AsString := 'Libellé de l''opération ' + i.ToString;
      FDTable1.FieldByName('DATE_OPERAT').AsDateTime := Now + i;
      FDTable1.FieldByName('ARCHIVE').AsBoolean := odd(i);
      FDTable1.FieldByName('UNE_DATE').AsDateTime := Trunc(Now);
      FDTable1.FieldByName('UNE_HEURE').AsDateTime := GetTime;
      FDTable1.Post;
    end
  except
    on E: Exception do
    begin
      showmessage(E.Message);
      FDTable1.Cancel;
    end;
  end;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDConnection1.Connected := false;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FDConnection1.Connected := True;
end;

end.
