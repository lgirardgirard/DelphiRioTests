unit fMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Comp.DataSet, Vcl.Themes;

type
  TForm1 = class(TForm)
    panTop: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    panBottom: TPanel;
    BitBtn1: TBitBtn;
    ActionManager1: TActionManager;
    actQuitter: TAction;
    labEdtBdd: TLabeledEdit;
    FDConnection1: TFDConnection;
    btnConnect: TButton;
    btnExecute: TButton;
    actConnect: TAction;
    actExecute: TAction;
    Memo1: TMemo;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    procedure actQuitterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actConnectExecute(Sender: TObject);
    procedure actExecuteExecute(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.actConnectExecute(Sender: TObject);
begin
  try
    FDConnection1.Connected := True;
    Memo1.Lines.Add('Connection established!');
    actExecute.Enabled := True;
  except
    on E: EDatabaseError do
      Memo1.Lines.Add('Exception raised with message' + E.Message);
  end;

end;

procedure TForm1.actExecuteExecute(Sender: TObject);
begin
  try
    if not FDConnection1.Connected then
      FDConnection1.Connected := True;

    FDQuery1.Connection := FDConnection1;
    try
      FDQuery1.Active := False;
      FDQuery1.SQL.Clear;
      FDQuery1.SQL.Add('SELECT Id, Nom, Prenom FROM "main"."TABLELGI"');
      FDQuery1.Open();
      Memo1.Text := 'Count= ' + Integer.ToString(FDQuery1.RecordCount);
      DataSource1.DataSet := FDQuery1;
      DBGrid1.DataSource := DataSource1;
    except
      on E: EDatabaseError do
      begin
        Memo1.Lines.Add('Exception raised with message' + E.Message);
        Memo1.Lines.Add(FDQuery1.SQL.Text);
      end;
      on E: Exception do
      begin
        Memo1.Lines.Add('Exception raised with message' + E.Message);
        Memo1.Lines.Add(FDQuery1.SQL.Text);
      end;
    end;
  finally
    FDQuery1.Close;
  end;
end;

procedure TForm1.actQuitterExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  TStyleManager.SetStyle(ComboBox1.Items[ComboBox1.ItemIndex]);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  labEdtBdd.Text := 'C:\Users\Administrateur\Database\test1.db';

  Memo1.Lines.Clear;

  actConnect.Enabled := True;
  actExecute.Enabled := False;

  FDConnection1.Connected := False;
  FDConnection1.DriverName := 'SQLite';
  FDConnection1.Params.Database := labEdtBdd.Text;

  // Chargement du combobox des styles (
  ComboBox1.Items.Clear;
  ComboBox1.Items.AddStrings(TStyleManager.StyleNames);
  ComboBox1.Sorted := True;
  ComboBox1.ItemIndex := ComboBox1.Items.IndexOf(TStyleManager.ActiveStyle.Name);
end;

end.
