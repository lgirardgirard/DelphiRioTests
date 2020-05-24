unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, System.Rtti, FMX.Grid.Style, Data.Bind.EngExt,
  FMX.Bind.DBEngExt, FMX.Bind.Grid, System.Bindings.Outputs, FMX.Bind.Editors, FMX.StdCtrls, FMX.Edit, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Grid, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TForm1 = class(TForm)
    FDMemTable1: TFDMemTable;
    FDMemTable1id: TStringField;
    FDMemTable1f1: TBooleanField;
    FDMemTable1f2: TBooleanField;
    FDMemTable1f3: TBooleanField;
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    btnInsert: TButton;
    btnCancel: TButton;
    btnPost: TButton;
    ed_tab_id: TEdit;
    cb_tab_f1: TCheckBox;
    cb_tab_f2: TCheckBox;
    cb_tab_f3: TCheckBox;
    Label1: TLabel;
    procedure StringGrid1SelChanged(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure DBToScreen;
    procedure ScreenToDB;
    function getFieldName(ComponentName: string): string;
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btnCancelClick(Sender: TObject);
begin
  FDMemTable1.Cancel;
end;

procedure TForm1.btnInsertClick(Sender: TObject);
begin
  FDMemTable1.Insert;
  DBToScreen;
end;

procedure TForm1.btnPostClick(Sender: TObject);
begin
  ScreenToDB;
  FDMemTable1.Post;
end;

procedure TForm1.StringGrid1SelChanged(Sender: TObject);
begin
  if (StringGrid1.Row >= 0) and (not FDMemTable1.Eof) then
    DBToScreen;
end;

procedure TForm1.DBToScreen;
var
  i        : integer;
  fieldname: string;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TEdit) then
    begin
      fieldname := getFieldName(Components[i].Name);
      if (fieldname.Length > 0) then
        (Components[i] as TEdit).Text := FDMemTable1.FieldByName(fieldname).AsString;
    end
    else if (Components[i] is TCheckBox) then
    begin
      fieldname := getFieldName(Components[i].Name);
      if (fieldname.Length > 0) then
        (Components[i] as TCheckBox).IsChecked := FDMemTable1.FieldByName(fieldname).AsBoolean;
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FDMemTable1.Active := true;
end;

procedure TForm1.ScreenToDB;
var
  i        : integer;
  fieldname: string;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TEdit) then
    begin
      if (not(Components[i] as TEdit).readonly) then
      begin
        fieldname := getFieldName(Components[i].Name);
        if (fieldname.Length > 0) then
          FDMemTable1.FieldByName(fieldname).AsString := (Components[i] as TEdit).Text;
      end;
    end
    else if (Components[i] is TCheckBox) then
    begin
      fieldname := getFieldName(Components[i].Name);
      if (fieldname.Length > 0) then
        FDMemTable1.FieldByName(fieldname).AsBoolean := (Components[i] as TCheckBox).IsChecked;
    end;
  end;
end;

function TForm1.getFieldName(ComponentName: string): string;
var
  tab  : tarray<string>;
  i    : integer;
  first: boolean;
begin
  result := '';
  tab    := ComponentName.split(['_']);
  first  := true;
  if (Length(tab) > 2) and (tab[1].tolower = 'tab') then
    for i := 2 to Length(tab) - 1 do
      if first then
      begin
        result := tab[i];
        first  := false;
      end
      else
        result := result + '_' + tab[i];
end;

end.
