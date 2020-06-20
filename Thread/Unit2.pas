unit Unit2;

interface

uses
  System.Classes, Unit3;

type
  TMyThread = class(TThread)
  private
    pFiche: TForm3;
  protected
    procedure Execute; override;
  public
    constructor Create(Form3 : TForm3);
  end;

implementation

{
  Important : Les m�thodes et les propri�t�s des objets des composants visuels peuvent seulement �tre
  utilis�es dans une m�thode appel�e avec Synchronize, par exemple

  Synchronize(UpdateCaption);

  et UpdateCaption pourrait ressembler �

  procedure TMyThread.UpdateCaption;
  begin
  Form1.Caption := 'Mis � jour dans un thread';
  end;

  ou

  Synchronize(
  procedure
  begin
  Form1.Caption := 'Mis � jour dans un thread via une m�thode anonyme'
  end
  )
  );

  o� une m�thode anonyme est transmise.

  De m�me, le d�veloppeur peut appeler la m�thode Queue avec des param�tres similaires �
  ceux ci-dessus, au lieu de passer une autre classe TThread en premier param�tre, en
  pla�ant le thread appelant dans une file d'attente avec l'autre thread.

}

{ TMyThread }

constructor TMyThread.Create(Form3 : TForm3);
begin

  // ouverture fiche splashscreen
//  Form3 := TForm3.Create(nil);
  Form3.Memo1.clear;
  Form3.Show;
  Form3.Update;

  pFiche := Form3;

  inherited Create(true);
end;

procedure TMyThread.Execute;
begin
//  NameThreadForDebugging('monThread');
  { Placer le code du thread ici }

  while not Terminated do
  begin
    Synchronize(
      procedure
      begin
        Form3.Memo1.Lines.add('Boucle Thread.Execute');
        Form3.Refresh;
      end);

    if not Terminated then
      Sleep(1000);
  end;

  Form3.Close;

end;

end.
