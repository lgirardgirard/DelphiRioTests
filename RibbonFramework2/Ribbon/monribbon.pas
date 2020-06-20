unit monribbon;

// *****************************************************************************
// * This is an automatically generated source file for UI Element definition  *
// * resource symbols and values. Please do not modify manually.               *
// *****************************************************************************

interface

{$R 'monribbon.res'}

uses
  Generics.Collections, SysUtils, UIRibbon;

const
  actQuitter = 2;
  actQuitter_LabelTitle_RESID = 60001;
  tabDOnneesContraintes = 3;
  tabDOnneesContraintes_LabelTitle_RESID = 60002;
  tabEconomic = 4;
  tabEconomic_LabelTitle_RESID = 60003;
  InternalCmd2_LabelTitle_RESID = 60004;

implementation

function RegisterRibbonElements(): TRibbonMarkupElementList;
begin
  Result := TRibbonMarkupElementList.Create('APPLICATION');
  Result.Add(TRibbonMarkupElement.Create('actQuitter', 2, 60001, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('tabDOnneesContraintes', 3, 60002, -1, -1, -1));
  Result.Add(TRibbonMarkupElement.Create('tabEconomic', 4, 60004, -1, -1, -1));
end;

initialization

  RegisterRibbonElements();

end.