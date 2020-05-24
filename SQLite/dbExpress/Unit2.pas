unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Data.FMTBcd,
  Data.DB, Data.SqlExpr, Data.DbxSqlite, Vcl.Grids, Vcl.DBGrids, Vcl.Themes;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    btnConnection: TButton;
    btnExecute: TButton;
    Memo1: TMemo;
    StatusBar1: TStatusBar;
    SQLConnection: TSQLConnection;
    SQLQuery: TSQLQuery;
    DBGrid1: TDBGrid;
    LinkLabel1: TLinkLabel;
    ComboBox1: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btnConnectionClick(Sender: TObject);
    procedure btnExecuteClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Déclarations privées }
    procedure ShowSelectResults();
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnConnectionClick(Sender: TObject);
begin
  SQLConnection.Params.Add(Edit1.Text);
  try
    SQLConnection.Connected := True;
    btnExecute.Enabled := True;
    Memo1.Lines.Add('Connection established!');
  except
    on E: EDatabaseError do
      ShowMessage('Exception raised with message' + E.Message);
    on E: Exception do
      ShowMessage('Exception raised with message' + E.Message);
  end;
end;

procedure TForm1.btnExecuteClick(Sender: TObject);
var
  query: string;
begin
  Memo1.ClearSelection;
  query := 'SELECT * FROM Operations;';

  try
    SQLQuery.SQL.Clear;
    SQLQuery.SQL.Add(query);
    SQLQuery.Active := True;
  except
    on E: Exception do
      Memo1.Lines.Add('raised with message: ' + E.Message);
  end;

  ShowSelectResults();
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  TStyleManager.SetStyle(ComboBox1.Items[ComboBox1.ItemIndex]);
end;

procedure TForm1.ShowSelectResults();
var
  names: TStringList;
  currentLine: string;
  i: Integer;
  currentField: TField;
begin
  if not SQLQuery.IsEmpty then
  begin
    SQLQuery.First;
    names := TStringList.Create;
    try
      SQLQuery.GetFieldNames(names);
      while not SQLQuery.Eof do
      begin
        currentLine := '';
        for i := 0 to names.Count - 1 do
        begin
          currentField := SQLQuery.FieldByName(names[i]);
          currentLine := currentLine + ' ' + currentField.AsString;
        end;
        Memo1.Lines.Add(currentLine);
        SQLQuery.Next;
      end;
    finally
      names.Free;
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  SQLConnection.DriverName := 'SQLite';
  btnConnection.Enabled := True;
  btnExecute.Enabled := False;
  Edit1.Text := 'C:\Opensource\SQLiteDatabaseBrowserPortable\Data\test1.db';
  Memo1.Lines.Clear;

  // Chargement du combobox des styles (
  ComboBox1.Items.Clear;
  ComboBox1.Items.AddStrings(TStyleManager.StyleNames);
  ComboBox1.ItemIndex := ComboBox1.Items.IndexOf(TStyleManager.ActiveStyle.Name);
end;

end.
