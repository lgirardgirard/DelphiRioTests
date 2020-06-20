unit MyRibbon;

// *****************************************************************************
// * This is an automatically generated source file for UI Element definition  *
// * resource symbols and values. Please do not modify manually.               *
// *****************************************************************************

interface

{$R 'MyRibbon.res'}

uses
  Generics.Collections, SysUtils, UIRibbon;

const
  actAbout = 20;
  actAbout_LabelTitle_RESID = 2;
  actAbout_TooltipTitle_RESID = 3;
  actAjustements = 24;
  actAjustements_LabelTitle_RESID = 4;
  actBdd = 36;
  actBdd_LabelTitle_RESID = 60001;
  actBdd_SmallImages_RESID = 60002;
  actBdd_LargeImages_RESID = 60003;
  actBddMaj = 38;
  actBddMaj_LabelTitle_RESID = 60004;
  actBddMaj_SmallImages_RESID = 60005;
  actBddMaj_LargeImages_RESID = 60006;
  actBddNew = 37;
  actBddNew_LabelTitle_RESID = 60007;
  actBddNew_SmallImages_RESID = 60008;
  actBddNew_LargeImages_RESID = 60009;
  actBddSQL = 39;
  actBddSQL_LabelTitle_RESID = 60010;
  actBddSQL_SmallImages_RESID = 60011;
  actBddSQL_LargeImages_RESID = 60012;
  actCategories = 26;
  actCategories_LabelTitle_RESID = 5;
  actCategories_TooltipTitle_RESID = 6;
  actCategories_TooltipDescription_RESID = 7;
  actCategories_SmallImages_RESID = 8;
  actCategories_LargeImages_RESID = 9;
  actChangeUser = 10;
  actChangeUser_LabelTitle_RESID = 10;
  actChangeUser_SmallImages_RESID = 11;
  actChangeUser_LargeImages_RESID = 12;
  actConditionnements = 21;
  actConditionnements_LabelTitle_RESID = 13;
  actConditionnements_TooltipTitle_RESID = 14;
  actConditionnements_TooltipDescription_RESID = 15;
  actConditionnements_SmallImages_RESID = 16;
  actConditionnements_LargeImages_RESID = 17;
  actExportStd = 3;
  actExportStd_LabelTitle_RESID = 18;
  actExportStd_SmallImages_RESID = 19;
  actExportStd_LargeImages_RESID = 20;
  actFrequences = 29;
  actFrequences_LabelTitle_RESID = 21;
  actFrequences_TooltipTitle_RESID = 22;
  actFrequences_SmallImages_RESID = 23;
  actFrequences_LargeImages_RESID = 24;
  actGroupes = 22;
  actGroupes_LabelTitle_RESID = 25;
  actGroupes_TooltipTitle_RESID = 26;
  actGroupes_TooltipDescription_RESID = 27;
  actGroupes_SmallImages_RESID = 28;
  actGroupes_LargeImages_RESID = 29;
  actGroupesSites = 27;
  actGroupesSites_LabelTitle_RESID = 30;
  actGroupesSites_TooltipTitle_RESID = 31;
  actGroupesSites_SmallImages_RESID = 32;
  actGroupesSites_LargeImages_RESID = 33;
  actImportStd = 2;
  actImportStd_LabelTitle_RESID = 34;
  actImportStd_SmallImages_RESID = 35;
  actImportStd_LargeImages_RESID = 36;
  actOpenArchive = 11;
  actOpenArchive_LabelTitle_RESID = 37;
  actOpenArchive_TooltipTitle_RESID = 38;
  actOpenArchive_SmallImages_RESID = 39;
  actOpenArchive_LargeImages_RESID = 40;
  actPrestations = 15;
  actPrestations_LabelTitle_RESID = 41;
  actPrestations_TooltipTitle_RESID = 42;
  actPrestations_TooltipDescription_RESID = 43;
  actPrestations_SmallImages_RESID = 44;
  actPrestations_LargeImages_RESID = 45;
  actProduits = 14;
  actProduits_LabelTitle_RESID = 46;
  actProduits_TooltipTitle_RESID = 47;
  actProduits_TooltipDescription_RESID = 48;
  actProduits_SmallImages_RESID = 49;
  actProduits_LargeImages_RESID = 50;
  actQuitter = 13;
  actQuitter_LabelTitle_RESID = 51;
  actQuitter_TooltipTitle_RESID = 52;
  actQuitter_TooltipDescription_RESID = 53;
  actQuitter_SmallImages_RESID = 54;
  actQuitter_LargeImages_RESID = 55;
  actRognage = 23;
  actRognage_LabelTitle_RESID = 56;
  actRognage_TooltipTitle_RESID = 57;
  actRognage_TooltipDescription_RESID = 58;
  actSaveArchive = 12;
  actSaveArchive_LabelTitle_RESID = 59;
  actSaveArchive_TooltipTitle_RESID = 60;
  actSaveArchive_SmallImages_RESID = 61;
  actSaveArchive_LargeImages_RESID = 62;
  actSites = 25;
  actSites_LabelTitle_RESID = 63;
  actSites_TooltipTitle_RESID = 64;
  actSites_TooltipDescription_RESID = 65;
  actSites_SmallImages_RESID = 66;
  actSites_LargeImages_RESID = 67;
  actTypesSItes = 28;
  actTypesSItes_LabelTitle_RESID = 68;
  actTypesSItes_TooltipTitle_RESID = 69;
  actTypesSItes_SmallImages_RESID = 70;
  actTypesSItes_LargeImages_RESID = 71;
  actVehicules = 31;
  actVehicules_LabelTitle_RESID = 72;
  actVehicules_TooltipTitle_RESID = 73;
  actVehicules_TooltipDescription_RESID = 74;
  actVehicules_SmallImages_RESID = 75;
  actVehicules_LargeImages_RESID = 76;
  cmdRecentItems = 19;
  cmdRecentItems_LabelTitle_RESID = 77;
  grpBdd = 35;
  grpBdd_LabelTitle_RESID = 60013;
  grpCatalogues = 17;
  grpCatalogues_LabelTitle_RESID = 78;
  grpProduits = 7;
  grpProduits_LabelTitle_RESID = 79;
  grpProduits_SmallImages_RESID = 80;
  grpProduits_LargeImages_RESID = 81;
  grpSites = 8;
  grpSites_LabelTitle_RESID = 82;
  grpVacations = 18;
  grpVacations_LabelTitle_RESID = 83;
  grpVehicules = 9;
  grpVehicules_LabelTitle_RESID = 84;
  grpZonage = 16;
  grpZonage_LabelTitle_RESID = 85;
  tabCartographie = 32;
  tabCartographie_LabelTitle_RESID = 86;
  tabData = 4;
  tabData_LabelTitle_RESID = 87;
  tabEconomic = 6;
  tabEconomic_LabelTitle_RESID = 88;
  tabOperations = 33;
  tabOperations_LabelTitle_RESID = 89;
  tabOutils = 34;
  tabOutils_LabelTitle_RESID = 60014;
  tabParametres = 30;
  tabParametres_LabelTitle_RESID = 90;
  InternalCmd2_LabelTitle_RESID = 60015;
  InternalCmd6_LabelTitle_RESID = 60016;

implementation

function RegisterRibbonElements(): TRibbonMarkupElementList;
begin
  Result := TRibbonMarkupElementList.Create('MyRibbon');
  Result.Add(TRibbonMarkupElement.Create('actAbout', 20, 2, -1, 3, -1));
  Result.Add(TRibbonMarkupElement.Create('actAjustements', 24, 4, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('actBdd', 36, 60001, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('actBddMaj', 38, 60004, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('actBddNew', 37, 60007, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('actBddSQL', 39, 60010, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('actCategories', 26, 5, -1, 6, 7));
  Result.Add(TRibbonMarkupElement.Create('actChangeUser', 10, 10, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('actConditionnements', 21, 13, -1, 14, 15));
  Result.Add(TRibbonMarkupElement.Create('actExportStd', 3, 18, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('actFrequences', 29, 21, -1, 22, -1));
  Result.Add(TRibbonMarkupElement.Create('actGroupes', 22, 25, -1, 26, 27));
  Result.Add(TRibbonMarkupElement.Create('actGroupesSites', 27, 30, -1, 31, -1));
  Result.Add(TRibbonMarkupElement.Create('actImportStd', 2, 34, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('actOpenArchive', 11, 37, -1, 38, -1));
  Result.Add(TRibbonMarkupElement.Create('actPrestations', 15, 41, -1, 42, 43));
  Result.Add(TRibbonMarkupElement.Create('actProduits', 14, 46, -1, 47, 48));
  Result.Add(TRibbonMarkupElement.Create('actQuitter', 13, 51, -1, 52, 53));
  Result.Add(TRibbonMarkupElement.Create('actRognage', 23, 56, -1, 57, 58));
  Result.Add(TRibbonMarkupElement.Create('actSaveArchive', 12, 59, -1, 60, -1));
  Result.Add(TRibbonMarkupElement.Create('actSites', 25, 63, -1, 64, 65));
  Result.Add(TRibbonMarkupElement.Create('actTypesSItes', 28, 68, -1, 69, -1));
  Result.Add(TRibbonMarkupElement.Create('actVehicules', 31, 72, -1, 73, 74));
  Result.Add(TRibbonMarkupElement.Create('cmdRecentItems', 19, 77, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('grpBdd', 35, 60013, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('grpCatalogues', 17, 78, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('grpProduits', 7, 79, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('grpSites', 8, 82, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('grpVacations', 18, 83, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('grpVehicules', 9, 84, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('grpZonage', 16, 85, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('tabCartographie', 32, 86, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('tabData', 4, 87, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('tabEconomic', 6, 88, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('tabOperations', 33, 89, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('tabOutils', 34, 60014, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('tabParametres', 30, 60016, -1, -1, -1));
end;

initialization

  RegisterRibbonElements();

end.