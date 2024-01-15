ValueSet: MII_CS_Onko_Strahlentherapie_Strahlungseinheit
Id: mii-cs-onko-strahlentherapie-strahlungseinheit
Title: "MII CS Onkologie Strahlentherapie Strahlungseinheit"
Description: "oBDS-spezifisches Codesystem für Klassifikation von Strahlenart bei Strahlungseinheit"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-strahlentherapie-strahlungs
einheit"
* ^status = #draft
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* include $UCUM#Gy	"Gy"
* include $UCUM#kBq	"kBq"
* include $UCUM#MBq	"MBq"
* include $UCUM#GBq	"GBq"
