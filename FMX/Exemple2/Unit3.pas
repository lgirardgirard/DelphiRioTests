unit Unit3;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Controls.Presentation, FMX.StdCtrls, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.Intf, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.FMXUI.Wait, Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FMX.Edit, FMX.EditBox, FMX.SpinBox,
  System.Rtti,
  FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, Data.Bind.EngExt, FMX.Bind.DBEngExt, FMX.Bind.Grid, System.Bindings.Outputs,
  FMX.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, FMX.ListBox, FMX.Colors;

type
  TForm3 = class(TForm)
    CornerButton1: TCornerButton;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    btnOuvrir: TButton;
    Label1: TLabel;
    btnAjouter: TButton;
    SpinBox1: TSpinBox;
    ProgressBar1: TProgressBar;
    Edit1: TEdit;
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    ColorComboBox1: TColorComboBox;
    ComboColorBox1: TComboColorBox;
    Edit2: TEdit;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    procedure CornerButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnOuvrirClick(Sender: TObject);
    procedure btnAjouterClick(Sender: TObject);
    procedure ColorComboBox1Change(Sender: TObject);
    procedure ComboColorBox1Change(Sender: TObject);
    procedure ProgressBar1Paint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

procedure TForm3.btnOuvrirClick(Sender: TObject);
begin
  try
    if FDConnection1.Connected = false then FDConnection1.Connected := true;
    FDQuery1.Active := false;
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add('select * from PARAMSQL');
    // FDQuery1.SQL.Add('select * from PARAMSQL');
    FDQuery1.Open;
    // Label1.Text := 'Nombre d''enregistrements: ' + IntToStr(FDQuery1.RecordCount);
    Label1.Text := 'Nombre d''enregistrements: ' + Integer.ToString( FDQuery1.RecordCount );

  except
    on E: Exception do begin
      ShowMessage(FDQuery1.SQL.Text + '\n' + E.ToString);
    end;
  end;
end;

procedure TForm3.btnAjouterClick(Sender: TObject);
var
  i: integer;
  j: integer;
begin
  if FDConnection1.Connected = false then ShowMessage('base de données fermée')
  else begin
    try
      j := Trunc(SpinBox1.Value);
      ProgressBar1.Value := 0;
      ProgressBar1.Max := j;
      FDConnection1.StartTransaction;
      for i := 0 to j do begin
        FDQuery1.SQL.Clear;
        FDQuery1.SQL.Add(' insert into PARAMSQL(PARAMETRE, VALEUR)');
        FDQuery1.SQL.Add(' values("' + Edit1.Text + IntToStr(i) + '", "' + IntToStr(i) + '")');
        FDQuery1.ExecSQL;
        ProgressBar1.Value := ProgressBar1.Value + 1;
      end;
      FDConnection1.Commit;
    except
      on E: Exception do begin
        ShowMessage(FDQuery1.SQL.Text + '\n' + E.ToString);
        FDConnection1.Rollback;
      end;
    end;
  end;
end;

procedure TForm3.ColorComboBox1Change(Sender: TObject);
begin
  ProgressBar1.Canvas.Fill.Color := TAlphaColor(ColorComboBox1.Color);
  ProgressBar1.Repaint;
end;

procedure TForm3.ComboColorBox1Change(Sender: TObject);
begin
  ProgressBar1.Canvas.Fill.Color := TAlphaColor(ComboColorBox1.Color);
  ProgressBar1.Repaint;
end;

procedure TForm3.CornerButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
  FDPhysSQLiteDriverLink1.DriverID := 'SQLite';
  FDConnection1.Params.DriverID := 'SQLite';
  FDConnection1.Params.Database := Edit2.Text;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := 100;
  ProgressBar1.Canvas.Fill.Color := TAlphaColor($FFE83F33); // Rouge OMP    TAlphaColor($FF808183); // Gris OMP
  ProgressBar1.Repaint;
end;

procedure TForm3.ProgressBar1Paint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
var
  PRect: TRectF;
begin
  with ProgressBar1.Canvas do begin
    PRect := ARect;
    PRect.Width := ARect.Width * ProgressBar1.Value / ProgressBar1.Max;
    FillRect(PRect, 0, 0, [], 1);
  end;
end;

end.
