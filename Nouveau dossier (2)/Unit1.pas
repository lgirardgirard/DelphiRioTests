unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  FireDAC.Comp.UI, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    BitBtn1: TBitBtn;
    Button1: TButton;
    StatusBar1: TStatusBar;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    nbRecords: Integer;
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  try
    FDQuery1.Connection := FDConnection1;
    FDQuery1.Active := False;
    FDQuery1.Active := False;
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add('select count(*) as NB from PARAMSQL');
    FDQuery1.Open();
    nbRecords := FDQuery1.FieldByName('NB').AsInteger;
    StatusBar1.Panels[0].Text := 'Enregistrements:' + Integer.ToString(nbRecords);

    FDQuery1.Active := False;
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add('select * from PARAMSQL');
    FDQuery1.Open();

    Button1.Enabled := true;
    Button2.Enabled := true;
  except
    on E: Exception do MessageDlg('Erreur sur requête' + E.Message, mtError, mbOKCancel, 0);
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  query: TFDQuery;
  okTRansaction: Boolean;
  i: Integer;
begin
  okTRansaction := False;
  try
    query := TFDQuery.Create(nil);
    try
      query.Connection := FDConnection1;
      query.Active := False;
      FDConnection1.StartTransaction;

      for i := nbRecords + 1 to nbRecords + 100000 do begin
        query.SQL.Clear;
        query.SQL.Add('insert into PARAMSQL(PARAMETRE, VALEUR)');
        query.SQL.Add(' values("Param' + Integer.ToString(i) + '","Valeur' + Integer.ToString(i) + '")');
        query.ExecSQL;
      end;
      FDConnection1.Commit;
      okTRansaction := true;
    except
      on E: Exception do begin
        MessageDlg('Erreur sur requête' + E.Message + ' : ' + query.SQL.Text, mtError, mbOKCancel, 0);
        okTRansaction := False;
      end;
    end;

  finally
    FreeAndNil(query);
    if not okTRansaction then FDConnection1.Rollback;
    BitBtn1Click(Sender);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  okTRansaction: Boolean;
  query: TFDQuery;
begin
  okTRansaction := False;
  try
    query := TFDQuery.Create(nil);
    query.Connection := FDConnection1;
    query.Active := False;
    FDConnection1.StartTransaction;

    query.SQL.Clear;
    query.SQL.Add('delete from PARAMSQL');
    query.ExecSQL;

    FDConnection1.Commit;
    okTRansaction := true;
  finally
    if assigned(query) then FreeAndNil(query);
    if not okTRansaction then FDConnection1.Rollback;
    BitBtn1Click(Sender);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FDPhysSQLiteDriverLink1.DriverID := 'SQLite';

  FDConnection1.Connected := False;
  FDConnection1.LoginPrompt := False;
  FDConnection1.Params.DriverID := 'SQLite';
  FDConnection1.Params.Database := 'C:\Opensource\SQLiteDatabaseBrowserPortable\Data\Axiodis.db';
  FDConnection1.Connected := true;

  DataSource1.DataSet := FDQuery1;

  DBGrid1.DataSource := DataSource1;

end;

end.
