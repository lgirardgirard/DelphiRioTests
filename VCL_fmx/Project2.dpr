library Project2;

{ Remarque importante sur la gestion mémoire de la DLL : ShareMem doit être la
  première unité de la clause USES de votre bibliothèque ET la clause USES
  (sélectionner Projet-Voir le source) de votre projet si votre DLL exporte toute procédure ou
  fonction qui passe des chaînes par le biais de paramètres ou de résultats de fonctions. Cela
  s'applique à toutes les chaînes passées vers et depuis votre DLL -- même celles qui
  sont imbriquées dans des enregistrements et des classes. ShareMem est l'unité d'interface au
  gestionnaire de mémoire partagée BORLNDMM.DLL, qui doit être déployé
  avec votre DLL. Pour éviter l'emploi de BORLNDMM.DLL, passez des informations chaîne
  par le biais de paramètres PChar ou ShortString. }

uses
  System.SysUtils,
  System.Classes,
  FireDAC.UI.Intf,
  FireDAC.Stan.Factory,
  FMX.Forms,
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}

procedure ShowData(ACliHandle: Pointer); stdcall;
begin
  TForm2.ShowData(ACliHandle);
end;

procedure Shutdown; stdcall;
var
  i: integer;
begin
  for i := Application.ComponentCount - 1 downto 0 do
    if Application.Components[i] is TForm then
      Application.Components[i].Free;
//  FDTerminate;
end;

exports
  ShowData, Shutdown;

begin
//  FFDGUIxSilentMode := True;
end.
