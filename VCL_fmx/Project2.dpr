library Project2;

{ Remarque importante sur la gestion m�moire de la DLL : ShareMem doit �tre la
  premi�re unit� de la clause USES de votre biblioth�que ET la clause USES
  (s�lectionner Projet-Voir le source) de votre projet si votre DLL exporte toute proc�dure ou
  fonction qui passe des cha�nes par le biais de param�tres ou de r�sultats de fonctions. Cela
  s'applique � toutes les cha�nes pass�es vers et depuis votre DLL -- m�me celles qui
  sont imbriqu�es dans des enregistrements et des classes. ShareMem est l'unit� d'interface au
  gestionnaire de m�moire partag�e BORLNDMM.DLL, qui doit �tre d�ploy�
  avec votre DLL. Pour �viter l'emploi de BORLNDMM.DLL, passez des informations cha�ne
  par le biais de param�tres PChar ou ShortString. }

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
