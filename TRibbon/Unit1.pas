unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Ribbon, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.ActnCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnMenus, Vcl.RibbonActnMenus, Vcl.RibbonLunaStyleActnCtrls, Vcl.StdActns,
  Vcl.RibbonSilverStyleActnCtrls, Vcl.RibbonObsidianStyleActnCtrls, Vcl.VirtualImageList, Vcl.BaseImageCollection,
  Vcl.ImageCollection;

type
  TForm1 = class(TForm)
    actionManager: TActionManager;
    actQuitter: TAction;
    ActSaveArchive: TAction;
    ActOpenArchive: TAction;
    actNewDatabase: TAction;
    actImportStd: TAction;
    actExportStd: TAction;
    actSettings: TAction;
    actRoutesProfiles: TAction;
    actPackingProfiles: TAction;
    actProducts: TAction;
    ActPPrestation: TAction;
    ActPConditionnements: TAction;
    actPGroupes: TAction;
    actDatabaseUpdate: TAction;
    ActSSites: TAction;
    ActSCaractDepot: TAction;
    actHistorique: TAction;
    ActImpTotalQuantites: TAction;
    ActMotdePasse: TAction;
    ActRognage: TAction;
    ActAjustements: TAction;
    ActParametreDistancier: TAction;
    actSpecifique: TAction;
    actAPropos: TAction;
    actAssistance: TAction;
    actEditeurSQL: TAction;
    ActEditeurSQLBaseCentrale: TAction;
    ActChangerInstall: TAction;
    ActCreationBase: TAction;
    actDeleteBase: TAction;
    ActThemesBilan: TAction;
    ActCouleurPriorite: TAction;
    ActCouleurScores: TAction;
    actModeFavoris: TAction;
    ActLibelleActivite: TAction;
    ActPUniteComptage: TAction;
    ActVVehicules: TAction;
    AxtVCateVeh: TAction;
    ActCatEco: TAction;
    ActCalendriers: TAction;
    ActSynchroniseSQL: TAction;
    AxtVTypePoste: TAction;
    ActGestionUsers: TAction;
    ActDongle: TAction;
    ActDomainesPlanif: TAction;
    ActDroitsPrestatPlanif: TAction;
    ActImpConfigurer: TAction;
    ActZones: TAction;
    ActZoneSite: TAction;
    ActZoneVehicule: TAction;
    ActZonePoste: TAction;
    ActZoneGraphique: TAction;
    ActZoneConsultation: TAction;
    ActVisualiseDistancier: TAction;
    ActCalculDistancier: TAction;
    ActLiaisonsFigees: TAction;
    ActCalculDistancierComplement: TAction;
    ActProfilposte: TAction;
    ActImpSites: TAction;
    ActSGroupes: TAction;
    ActSTypes: TAction;
    ActSFrequence: TAction;
    ActSpecialite: TAction;
    actGPCertifications: TAction;
    ActSCategories: TAction;
    ActSFicheTechnique: TAction;
    actGPGrpIncomp: TAction;
    actGPIncomp: TAction;
    mainRibbon: TRibbon;
    RibbonApplicationMenuBar1: TRibbonApplicationMenuBar;
    RibbonQuickAccessToolbar1: TRibbonQuickAccessToolbar;
    RibbonPageDonnees: TRibbonPage;
    RibbonGroupProduits: TRibbonGroup;
    RibbonGroupSites: TRibbonGroup;
    RibbonGroupVehicules: TRibbonGroup;
    RibbonGroupZonage: TRibbonGroup;
    RibbonGroupMarges: TRibbonGroup;
    RibbonGroupPeages: TRibbonGroup;
    RibbonGroupEcoTaxe: TRibbonGroup;
    RibbonGroupCatalogues: TRibbonGroup;
    RibbonGroupVacations: TRibbonGroup;
    RibbonPageParametrage: TRibbonPage;
    RibbonGroupConfiguration: TRibbonGroup;
    RibbonGroupSecurite: TRibbonGroup;
    RibbonGroupImprimante: TRibbonGroup;
    RibbonPageCartographie: TRibbonPage;
    RibbonGroupDistancier: TRibbonGroup;
    RibbonPageOperations: TRibbonPage;
    RibbonGroupMaintenance: TRibbonGroup;
    RibbonGroupUtilitaires: TRibbonGroup;
    RibbonGroupAffectationSrategique: TRibbonGroup;
    RibbonGroupRestocking: TRibbonGroup;
    RibbonPageTours: TRibbonPage;
    RibbonGroupInteractivite: TRibbonGroup;
    RibbonGroupCalculs: TRibbonGroup;
    RibbonGroupImpressions: TRibbonGroup;
    RibbonPageModules: TRibbonPage;
    RibbonGroupSpecifiques: TRibbonGroup;
    RibbonGroupAxioNavigation: TRibbonGroup;
    RibbonGroupEtats: TRibbonGroup;
    RibbonGroupRequetes: TRibbonGroup;
    RibbonPageOutils: TRibbonPage;
    RibbonGroupInstallation: TRibbonGroup;
    RibbonGroupBaseDeDonnees: TRibbonGroup;
    RibbonPageAPropos: TRibbonPage;
    RibbonGroupAPropos: TRibbonGroup;
    ImageCollection1: TImageCollection;
    VirtualImageList16: TVirtualImageList;
    VirtualImageList32: TVirtualImageList;
    VirtualImageList8: TVirtualImageList;
    procedure Action1Execute(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Action1Execute(Sender: TObject);
begin
  application.Terminate;
end;

end.
