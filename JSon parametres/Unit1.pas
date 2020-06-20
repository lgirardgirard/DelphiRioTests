unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
    procedure loadParamIB;
    procedure SaveParam;
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, System.JSON, System.IOUtils;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  tParams.setValue('style', Edit1.Text);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  loadParamIB;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  SaveParam;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Edit1.Text := tParams.getValue('style', 'Silver');
end;

procedure TForm1.loadParamIB;
var
  S         : string;
  parentObj : TJSONValue;
  currentObj: TJSONValue;
  FileName  : string;
  appName   : string;
  folder    : string;
  style     : string;
begin
  appName := TPath.GetFileNameWithoutExtension(paramstr(0));
  folder   := TPath.Combine(TPath.GetDocumentsPath, appName);
  if not tdirectory.Exists(folder) then
    tdirectory.CreateDirectory(folder);
  FileName := TPath.Combine(folder, appName + '.json');

  S         := TFile.ReadAllText(FileName);
  parentObj := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(S), 0);
  if assigned(parentObj) and (parentObj is TJSONObject) then
  begin
    currentObj := TJSONObject(parentObj).getValue('style');
    if assigned(currentObj) and (currentObj is TJSONString) then
      style := TJSONString(currentObj).Value;
  end;
end;

procedure TForm1.SaveParam;
var
  paramList: TJSONObject;
  appName   : string;
  folder    : string;
  FileName  : string;
begin
  if not assigned(paramList) then
    paramList := TJSONObject.Create;
  paramList.AddPair('style', TJSONString.Create(Edit1.Text));

  appName := TPath.GetFileNameWithoutExtension(paramstr(0));
  folder   := TPath.Combine(TPath.GetDocumentsPath, appName);
  if not tdirectory.Exists(folder) then
    tdirectory.CreateDirectory(folder);
  FileName := TPath.Combine(folder, appName + '.json');

  tfile.WriteAllText(filename, paramList.ToJSON, TEncoding.UTF8)
end;

end.
