Instance: mii-cm-onko-tnm-uicc-snomed
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-tnm-uicc-sct"
* name = "MII_CM_Onko_TNM_UICC_SNOMED"
* title = "MII CM Onko TNM UICC SNOMED"
* status = #draft
* experimental = false
* date = "2024-01-05"
* description = "Mapping TNM UICC Codes zu SNOMED-CT"
//* sourceCanonical = "http://fhir.de/ValueSet/bfarm/ops"
//* targetCanonical = "http://snomed.info/sct?fhir_vs"
* group.source = "https://www.uicc.org/resources/tnm"
* group.target = "http://snomed.info/sct"
* group.element[+].code = #y
* group.element[=].display = "y"
* group.element[=].target.code = #421755005
* group.element[=].target.display = "Tumor staging descriptor y (tumor staging)"
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #r
* group.element[=].display = "r"
* group.element[=].target.code = #421188008
* group.element[=].target.display = "Tumor staging descriptor r (tumor staging)"
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #a
* group.element[=].display = "a"
* group.element[=].target.code = #421426001
* group.element[=].target.display = "Tumor staging descriptor a (tumor staging)"
* group.element[=].target.equivalence = #equivalent