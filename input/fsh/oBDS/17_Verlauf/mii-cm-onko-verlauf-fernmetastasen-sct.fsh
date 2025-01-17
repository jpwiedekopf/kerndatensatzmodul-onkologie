Instance: MII-CM-Onko-Verlauf-Fernmetastasen-SCT-Mapping
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-verlauf-fernmetastasen-sct"
* name = "MII_CM_Onko_Verlauf_Fernmetastasen_SNOMED_Mapping"
* title = "MII CM Onko Verlauf Fernmetastasen SNOMED Mapping"
* status = #draft
* experimental = false
* date = "2024-04-10"
* description = "Mapping Verlauf Fernmetastasen Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $mii-cs-onko-verlauf-fernmetastasen
* group[=].target = "http://snomed.info/sct"

* group[=].element[+].code = #K
* group[=].element[=].display = "kein Fernmetastasen nachweisbar"
* group[=].element[=].target.code = #261985008
* group[=].element[=].target.display = "No metastases (tumor staging)"
* group[=].element[=].target.equivalence = #equivalent

// Wert von equivalence muss noch überprüft werden
* group[=].element[+].code = #R
* group[=].element[=].display = "neu aufgetretene Fernmetastase(n) bzw. Metastasenrezidiv"
* group[=].element[=].target.code = #7147002
* group[=].element[=].target.display = "New (qualifier value)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[+].target.code = #263855007
* group[=].element[=].target.display = "Relapse phase (qualifier value)"
* group[=].element[=].target.equivalence = #narrower

* group[=].element[+].code = #T
* group[=].element[=].display = "Fernmetastasen Residuen"
* group[=].element[=].target.code = #65320000
* group[=].element[=].target.display = "Residual (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #P
* group[=].element[=].display = "Fernmetastasen Progress"
* group[=].element[=].target.code = #255314001
* group[=].element[=].target.display = "Progressive (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #N
* group[=].element[=].display = "Fernmetastasen No Change"
* group[=].element[=].target.code = #260388006
* group[=].element[=].target.display = "No status change (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #F
* group[=].element[=].display = "fraglicher Befund"
* group[=].element[=].target.code = #64957009
* group[=].element[=].target.display = "Uncertain (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #U
* group[=].element[=].display = "unbekannt"
* group[=].element[=].target.code = #261665006
* group[=].element[=].target.display = "Unknown (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #X
* group[=].element[=].display = "fehlende Angabe"
* group[=].element[=].target.code = #1287211007
* group[=].element[=].target.display = " No information available (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent
