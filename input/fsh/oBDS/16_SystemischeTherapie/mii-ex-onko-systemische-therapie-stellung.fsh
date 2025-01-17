Extension: MII_EX_Onko_Systemische_Therapie_Stellung
Id: mii-ex-onko-systemische-therapie-stellung
Title: "MII EX Onko Systemische Therapie Stellung"
Description: "Systemische Therapie Stellung zur OP"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-stellung"
* insert PR_CS_VS_Version
* insert Publisher
* ^context.type = #element
* ^context.expression = "Procedure"

* value[x] 0..
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Onko_Systemische_Therapie_Stellung (required)
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.system = $mii-cs-onko-therapie-stellung (exactly)
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.text MS