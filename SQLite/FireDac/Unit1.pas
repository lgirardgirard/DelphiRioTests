unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteDef, FireDAC.Phys.SQLite, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfMain = class(TForm)
    Panel1: TPanel;
    btnConnect: TButton;
    Edit1: TEdit;
    FDConnection: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    Memo1: TMemo;
    btnExecute: TButton;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure btnConnectClick(Sender: TObject);
    procedure btnExecuteClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}

procedure TfMain.btnConnectClick(Sender: TObject);
begin
  FDConnection.Params.Database := Edit1.Text;
  try
    // FDConnection.Open;
    FDConnection.Connected := True;
    Memo1.Lines.Add('Connection established!');
    btnExecute.Enabled := True;
  except
    on E: EDatabaseError do Memo1.Lines.Add('Exception raised with message' + E.Message);
  end;
end;

procedure TfMain.btnExecuteClick(Sender: TObject);
var
  query: String;
begin
  try
    if not FDConnection.Connected then FDConnection.Connected := True;

    FDQuery1.Connection := FDConnection;
    try
      // FDConnection.StartTransaction;
      FDQuery1.Active := False;
      FDQuery1.SQL.Clear;
      // FDQuery1.SQL.Add('SELECT * FROM PARAMSQL');
      FDQuery1.SQL.Add('SELECT * FROM Table01');
      FDQuery1.Open();
      // FDQuery1.SQL.Add('SELECT name FROM sqlite_master WHERE type=''table''');
      // FDQuery1.Open();
      // query := 'CREATE TABLE "TABLELGI" ("Id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,"Nom"	TEXT,"Prenom"	TEXT)';
      // FDQuery1.SQL.Add(query);
      // FDQuery1.ExecSQL;
      // FDConnection.Commit;
      Memo1.Text := 'Count= ' + Integer.ToString(FDQuery1.RecordCount);
    except
      on E: EDatabaseError do begin
        Memo1.Lines.Add('Exception raised with message' + E.Message);
        Memo1.Lines.Add(FDQuery1.SQL.Text);
        // FDConnection.Rollback;
      end;
    end;
  finally FDQuery1.Close;
  end;
end;

procedure TfMain.FormCreate(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Edit1.Text := 'C:\Users\Administrateur\test1.db';
  Edit1.Text := 'C:\Opensource\SQLiteDatabaseBrowserPortable\Data\Test1.db';
  FDPhysSQLiteDriverLink1.DriverID := 'SQLite';
  FDConnection.Params.DriverID := 'SQLite';
  // FDConnection.DriverName := 'SQLite';
  btnExecute.Enabled := False;
end;

end.
