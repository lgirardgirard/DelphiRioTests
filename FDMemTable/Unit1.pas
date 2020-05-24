unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.ExtCtrls,
  Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDQuery1: TFDQuery;
    FDFireDAC.Comp.Client1: TFDFireDAC.Comp.Client;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    FDTable1: TFDTable;
    DataSource3: TDataSource;
    DBGrid3: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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
begin
  FDFireDAC.Comp.Client1.Fields.Clear;
  FDFireDAC.Comp.Client1.CopyDataSet(FDQuery1, [coStructure]);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FDFireDAC.Comp.Client1.CopyDataSet(FDQuery1, [coStructure, coAppend]);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  try
    FDFireDAC.Comp.Client1.IndexDefs.Clear;
    FDFireDAC.Comp.Client1.AddIndex('index1', 'CODE_ANOMALIE', '', [soPrimary, soUnique]);
    FDFireDAC.Comp.Client1.AddIndex('index2', 'CODE_ANOMALIE:D;REGLE', '', []);
    FDFireDAC.Comp.Client1.IndexName := 'index1';
  except
    on E: Exception do
      showmessage(E.message);
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  FDFireDAC.Comp.Client1.IndexName := 'index1';
  FDFireDAC.Comp.Client1.First;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  FDFireDAC.Comp.Client1.IndexName := 'index2';
  FDFireDAC.Comp.Client1.First;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FDConnection1.Connected := true;
  FDQuery1.Active         := true;

  FDTable1.Active := true;
end;

end.
