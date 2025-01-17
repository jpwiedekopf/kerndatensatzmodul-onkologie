Logical: MII_LM_Onko
Parent: Element
Id: mii-lm-onko
Title: "MII LM Onkologie"
Description: "MII LogicalModel Modul Onkologie"
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/Onkologie"
* Diagnose 0..* BackboneElement "Diagnose"
  * PrimaertumorTumordiagnoseICDCode 0..1 code "Primärtumor Tumordiagnose ICD Code" "Kodierung einer meldepflichtigen Erkrankung nach der aktuellen ICD-GM Version."
  * PrimaertumorTumordiagnoseICDVersion 0..1 string "Primärtumor Tumordiagnose ICD-Version" "Bezeichnung der zur Kodierung verwendeten ICD-GM Version."
  * PrimaertumorTumordiagnoseText 0..1 string "Primärtumor Tumordiagnose Text" "Bezeichnung einer meldepflichtigen Erkrankung."
  * PrimaertumorTopographieICDO 0..1 code "Primärtumor Topographie ICD-O" "Bezeichnung der Topographie einer Erkrankung nach der aktuellen ICD-O Version."
  * PrimaertumorTopographieICDOVersion 0..1 string "Primärtumor Topographie ICD-O-Version" "Bezeichnung der zur Kodierung verwendeten ICD-O Version."
  * PrimaertumorDiagnosedatum 0..1 dateTime "Primärtumor Diagnosedatum" "Datum, angegeben in Tag, Monat und Jahr, an dem die meldepflichtige Diagnose erstmals durch einen Arzt klinisch oder mikroskopisch diagnostiziert wurde."
  * PrimaertumorDiagnosesicherung 0..1 code "Primärtumor Diagnosesicherung" "Höchste erreichte Diagnosesicherheit der Diagnose."
  * PrimaertumorSeitenlokalisation 0..1 code "Primärtumor Seitenlokalisation" "Organspezifische Angabe der betroffenen Seite."
  * FruehereTumorerkrankungen 0..* Condition "Frühere Tumorerkrankungen" "Tumorerkrankungen, die in der Anamnese zu einem früheren Zeitpunkt diagnostiziert/behandelt wurden."
* Histologie 0..* BackboneElement "Histologie"
  * TumorHistologiedatum 0..1 dateTime "Tumor Histologiedatum" "Datum, an dem die Gewebeprobe entnommen wurde."
  * HistologieEinsendenummer 0..1 string "Histologie-Einsendenummer" "Die Histologie-Einsendenummer/Auftragsnummer wird vom Pathologischen Institut beim Eingang des Präparates vergeben."
  * MorphologieCode 0..1 code "Morphologie-Code" "Gibt an, welche Histologie der Tumor aufweist."
  * MorphologieICDOBlueBookVersion 0..1 string "Morphologie ICD-O/Blue Book Version" "Bezeichnung der zur Kodierung verwendeten ICD-O/Blue Book Version."
  * MorphologieFreitext 0..1 string "Morphologie-Freitext" "Gibt die Originalbezeichnung der morphologischen Diagnose an."
  * Grading 0..* code "Grading" "Gibt den Differenzierungsgrad des Tumors entsprechend der aktuellen TNM-Auflage an."
  * AnzahlUntersuchteLymphknoten 0..* decimal "Anzahl der untersuchten Lymphknoten" "Gibt an, wie viele Lymphknoten untersucht wurden (einschließlich Sentinel)."
  * AnzahlBefalleneLymphknoten 0..* decimal "Anzahl der befallenen Lymphknoten" "Gibt an, wie viele Lymphknoten befallen sind (einschließlich Sentinel)."
  * AnzahlUntersuchteSentinelLymphknoten 0..* decimal "Anzahl der untersuchten Sentinel-Lymphknoten" "Gibt an, wie viele Sentinel-Lymphknoten untersucht wurden."
  * AnzahlBefalleneSentinelLymphknoten 0..* decimal "Anzahl der befallenen Sentinel-Lymphknoten" "Gibt an, wie viele Sentinel-Lymphknoten befallen sind."
  * Befund 0..* string "Befund" "Vollständiger Befundbericht des Pathologen."
* TNMKlassifikation 0..* BackboneElement "TNM-Klassifikation"
  * TNMDatum 1..1 dateTime "TNM Datum" "Gibt an, auf welches Datum sich die TNM-Klassifikation bezieht."
  * TNMVersion 1..1 code "TNM Version" "Gibt an, nach welcher Version des TNM klassifiziert wurde."
  * TNMySymbol 0..1 code "TNM y-Symbol" "Gibt an, ob die Klassifikation während oder nach initialer multimodaler Therapie erfolgte."
  * TNMySymbol ^code = $LOINC#101658-3 "Cancer staging after multimodality therapy"
  * TNMrSymbol 0..1 code "TNM r-Symbol" "Gibt an, ob die Klassifikation ein Rezidiv beurteilt."
  * TNMrSymbol ^code = $LOINC#101659-1 "Cancer staging after tumor recurrence"
  * TNMaSymbol 0..1 code "TNM a-Symbol" "Gibt an, ob die Klassifikation aus Anlass einer Autopsie erfolgte."
  * TNMaSymbol ^code = $LOINC#101660-9 "Cancer staging during autopsy" 
  * TNMcpuPraefixT 0..1 code "TNM c/p-Präfix T" "Gibt an, ob die Klassifikation klinisch oder pathologisch erfolgte."
  * TNMcpuPraefixN 0..1 code "TNM c/p-Präfix N" "Gibt an, ob die Klassifikation klinisch oder pathologisch erfolgte."
  * TNMcpuPraefixM 0..1 code "TNM c/p-Präfix M" "Gibt an, ob die Klassifikation klinisch oder pathologisch erfolgte."
  * TNMTKategorie 0..1 code "TNM T-Kategorie" "Ausbreitung des Primärtumors, erfolgt gemäß Tumorentität nach TNM."
  * TNMmSymbol 0..1 code "TNM m-Symbol" "Kennzeichnet Vorhandensein multipler Primärtumoren in einem anatomischen Bezirk."
  * TNMNKategorie 0..1 code "TNM N-Kategorie" "Ausbreitung von regionären Lymphknotenmetastasen, erfolgt gemäß Tumorentität nach TNM."
  * TNMLKategorie 0..1 code "TNM L-Kategorie" "Lymphgefäßinvasion."
  * TNMLKategorie ^code = $SCT#395715009 "Status of lymphatic (small vessel) invasion by tumor (observable entity)"
  * TNMVKategorie 0..1 code "TNM V-Kategorie" "Veneninvasion."
  * TNMVKategorie ^code = $SCT#371493002 "Status of venous (large vessel) invasion by tumor (observable entity)"
  * TNMPnKategorie 0..1 code "TNM Pn-Kategorie" "Perineuralinvasion."
  * TNMPnKategorie ^code = $SCT#371513001 "Presence of direct invasion by primary malignant neoplasm to nerve (observable entity)"
  * TNMSKategorie 0..1 code "TNM S-Kategorie" "Serumtumormarker."
  * TNMSKategorie ^code = $SCT#399424006 "Serum tumor marker category (observable entity)"
  * UICCStadium 0..1 code "UICC Stadium" "Stadium nach aktuell gültiger TNM-Klassifikation."
* WeitereKlassifikationen 0..* BackboneElement ""
  * WeitereKlassifikationDatum 1..1 date "Hämatoonkologische und sonstige Klassifikationen Datum" "Gibt an, auf welches Datum sich die Klassifikation bezieht."
  * WeitereKlassifikationName 1..1 string "Hämatoonkologische und sonstige Klassifikationen Name" "Name der hämatologischen oder sonstigen Klassifikation. Art der Klassifikation."
  * WeitereKlassifikationEinstufung 1..1 code "Hämatoonkologische und sonstige Klassifikationen Einstufung" "Einstufung gemäß der verwendeten hämatoonkologischen oder sonstigen Klassifikationen."
* Residualstatus 0..* BackboneElement "Residualstatus"
  * LokalerResidualstatus 0..1 code "Beurteilung des lokalen Residualstatus nach Abschluss der Operation" "Lokale Beurteilung der Residualklassifikation nach Resektion, bezieht sich auf das, was reseziert wurde, meist Primärtumor, aber z. B. auch Lebermetastasen."
  * GlobalerResidualstatus 0..1 code "Gesamtbeurteilung des Residualstatus" "Gesamtbeurteilung der Residualklassifikation der Erkrankung einschließlich etwaiger Fernmetastasen."
* Fernmetastasen 0..* BackboneElement "Fernmetastasen"
  * LokalisationFernmetastase 1..1 code "Lokalisation von Fernmetastase(n)" "Lokalisation der Fernmetastase(n)."
  * DatumFernmetase 1..1 date "Datum der diagnostischen Sicherung von Fernmetastasen" "Gibt an, wann die Fernmetastase festgestellt wurde."
* AllgemeinerLeistungszustand 0..* BackboneElement "Allgemeiner Leistungszustand"
  * ECOGKarnofsky 1..1 code "ECOG oder Karnofsky"
* Operation 0..* BackboneElement "Operation"
  * OPIntention 1..1 code "Intention" "Gibt an, mit welchem Ziel die Operation geplant wurde"
  * OPDatum 1..1 code "OP Datum" "Datum der OP"
  * OPSCode  1..* code "OPS Code" "Gibt an, welche Operation durchgeführ wurde. OPS (5-*), so genau wie möglich. Bei paaringen Organen mit Seitenangabe"
  * OPSVersion 1..1 code "OPS Version" "Gibt an, nach welcher Version (Jahr) des OPS klassifiziert wurde (Gültige Bezeichnung nach BfArM)" 
  * OPKomplikation 0..* code "OP Komplikationen" "Gibt an, ob eine oder keine Komplikation aufgetreten ist, bzw. wenn eine aufgetreten ist welche."
* Strahlentherapie 0..* BackboneElement "Strahlentherapie"
  * StrahlentherapieIntention 1..1 code "Intention der Strahlentherapie" "Gibt an, mit welcher Intention die Strahlentherapie geplant wurde."
  * StrahlentherapieStellung  1..1 code "Strahlentherapie Stellung zu operativer Therapie" "Gibt an, in welchem Bezug zu einer operativen Therapie die Bestrahlung steht."
  * StrahlentherapieEndeGrund 0..1 code "Strahlentherapie Ende Grund" "Gibt den Grund an, warum die Strahlentherapie beendet wurde."
  * StrahlentherapieBestrahlung 1..* BackboneElement "Bestrahlung" "Dieser Abschnitt entspricht einer Bestrahlung mit spezifischem Zielgebiet, Methodik und Dosis "
    * StrahlentherapieZielgebiet  1..* code "Strahlentherapie Zielgebiet" "Gibt an, an welcher anatomischen Region die Bestrahlung durchgeführt wurde."
    * StrahlentherapieSeiteZielgebiet 0..*  code "Strahlentherapie Seite Zielgebiet" "Bei Zielgebieten, die durch \"(r, l)\" gekennzeichnet sind, ist eine Seitenangabe Pflicht."
    * StrahlentherapieBeginn  1..1 date "Strahlentherapie Beginn" "Gibt an, wann die Strahlentherapie begonnen wurde."
    * StrahlentherapieEnde  0..1 date "Strahlentherapie Ende" "Gibt an, wann die Strahlentherapie beendet wurde."
    * StrahlentherapieApplikationsart 1..1 code "Strahlentherapie Applikationsart" "Gibt an, mit welcher Technik die Strahlentherapie durchgeführt wurde."
    * StrahlentherapieStrahlenart  1..1 code "Strahlenart" "Angewandte Strahlenart (Strahlung oder metabolische Nuklide)"
    * StrahlentherapieGesamtdosis 0..1 code "Strahlentherapie Gesamtdosis" "Gibt an, mit welcher Gesamtdosis das Zielgebiet bestrahlt wurde (inklusive Boost)."
    * StrahlentherapieEinzeldosis 0..1 code "Strahlentherapie Einzeldosis" "Strahlentherapie Einzeldosis pro Tag (Dosis)"
    * StrahlentherapieEinheit 0..1 code "Strahlentherapie Einheit" "Gibt die Einheit zu der Einzel- oder Gesamtdosis an, mit welcher das Zielgebiet bestrahlt wurde, bzw. bei metabolischer Therapie die Aktivität des verwendeten Radionuklids."
    * StrahlentherapieBoost  0..1 code "Boost" "Angabe, ob ein Boost und falls ja, welche Art von Boost appliziert wurde."
* SystemischeTherapie 0..* BackboneElement "Systemische Therapie" 
  * SystemischeTherapieIntention  1..1 code "Intention der systemischen Therapie" "Intention der systemischen Therapie"
  * SystemischeTherapieStellung  1..1 code "Systemische Therapie Stellung zu operativer Therapie" "Gibt an, in welchem Bezug zu einer operativen Therapie die systemische Therapie steht."
  * SystemischeTherapieArtTherapie 1..1 code "Art der systemischen oder abwartenden Therapie" "Gibt an, welche Art der Therapie bzw. abwartende Strategie durchgeführt wurde."
  * SystemischeTherapieProtokoll 0..1 string "Systemische Therapie Protokoll" "Gibt an, nach welchem Protokoll die Systemtherapie durchgeführt wurde."
  * SystemischeTherapieSubstanz 0..* code "Systemische Therapie Substanz" "Gibt an, mit welcher Substanz die Systemtherapie durchgeführt wurde. Nach Möglichkeit ATC kodiert. Mehrere Substanzen sind jeweils einzeln zu kodieren. "
  * SystemischeTherapieBeginn  0..1 date "Systemische Therapie Beginn" "Gibt an, wann die systemische Therapie begonnen wurde."
  * SystemischeTherapieEnde  0..1 date "Systemische Therapie Ende Grund" "Gibt den Grund an, warum die Systemtherapie beendet wurde."
  * SystemischeTherapieEndeGrund 0..1 code "Systemische Therapie Ende" "Gibt an, wann die systemische Therapie beendet wurde."
* Nebenwirkungen 0..* BackboneElement "Nebenwirkungen"
  * NebenwirkungenCTCAEGrad 1..1 code "Nebenwirkungen nach CTCAE-Grad" "Gibt an, zu welchem Schweregrad von Nebenwirkungen es bei der Bestrahlung oder der systemischen Therapie gekommen ist."
  * NebenwirkungenCTCAEArt 1..1 code "Nebenwirkungen nach CTCAE Art" "Gibt an, zu welcher Nebenwirkung es bei der Bestrahlung oder der systemischen Therapie gekommen ist. Bei der Bestrahlung sind sogenannte akute Nebenwirkungen bis zum 90. Tag nach Bestrahlungsbeginn gemeint."
  * NebenwirkungenCTCAEVersion 1..1 string "Nebenwirkungen nach CTCAE Version" "Für den medizinischen Katalog gültige Versionsbezeichnungen."
* Verlauf 0..* BackboneElement "Verlauf"
  * VerlaufDatum 0..* date "Untersuchungsdatum Verlauf" "Datum, an dem die letzte Untersuchung durchgeführt wurde, die zur Einschätzung des Tumorstatus geführt hat."
  * VerlaufBeurteilungTumorstatus 0..* code "Gesamtbeurteilung des Tumorstatus" "Gesamtbeurteilung der Erkrankung unter Berücksichtigung aller Manifestationen."
  * VerlaufTumorstatusPrimaertumor 0..* code "Tumorstatus Primärtumor" "Beurteilung der Situation im Primärtumorbereich."
  * VerlaufTumorstatusLymphknoten 0..* code "Tumorstatus Lymphknoten" "Beurteilung der Situation im Bereich der regionären Lymphknoten."
  * VerlaufTumorstatusMetastasen 0..* code "Tumorstatus Fernmetastasen" "Beurteilung der Situation im Bereich der Fernmetastasen."
* Tumorkonferenz 0..* BackboneElement "Tumorkonferenz und Therapieempfehlung"
  * TumorkonferenzTherapieplanungDatum 1..1 date "Tumorkonferenz Therapieplanung Datum" "Datum der Durchführung der Tumorkonferenz bzw. der sonstigen Therapieplanung."
  * TumorkonferenzTherapieplanungTyp 1..1 code "Tumorkonferenz Therapieplanung Typ" "Typ der Tumorkonferenz bzw. der sonstigen Therapieplanung." 
  * TumorkonferenzTherapieempfehlungTyp 1..* code "Tumorkonferenz Therapieempfehlung Typ" "Typ der Therapieempfehlung der Tumorkonferenz."
  * TumorkonferenzTherapieAbweichungPatientenwunsch 1..* code "Tumorkonferenz/Therapieempfehlung Therapieabweichung auf Wunsch des Patienten" "Abweichung auf Wunsch des Patienten."
* Tod 0..1 BackboneElement "Tod"
  * Sterbedatum 0..1 date "Sterbedatum" "Datum des Todes"
  * TodTumorbedingt 0..1 code "Tod tumorbedingt" "Krebs-Tod-Relation"
  * TodesursacheICD 0..* code "Todesursache ICD" "Todesursache im Sinne des Grundleidens"
  * TodesursacheICDVersion 0..* string "Todesursache ICD Version" "Bezeichnung der zur Kodierung verwendeten ICD-GM-Version"
* GenetischeVariante 0..* BackboneElement "Genetische Variante"
  * GenetischeVarianteName 0..1 string "Genetische Variante Name" "Name der genetischen Variante (z.B. K-ras, BRAFV600, NRAS, C-KIT)"
  * GenetischeVarianteAuspraegung 0..1 code "Genetische Variante Ausprägung" "Ausprägung der genetischen Variante nach oBDS"

Mapping: Onkologie-LogicalModel
Id: FHIR
Title: "Onkologie LogicalModel FHIR Mapping"
Source: MII_LM_Onko
* Diagnose -> "Condition"
  * PrimaertumorTumordiagnoseICDCode -> "Condition.code.coding.where(system='http://fhir.de/CodeSystem/bfarm/icd-10-gm').code"
  * PrimaertumorTumordiagnoseICDVersion -> "Condition.code.coding.where(system='http://fhir.de/CodeSystem/bfarm/icd-10-gm').version"
  * PrimaertumorTumordiagnoseText -> "Condition.code.text"
  * PrimaertumorTopographieICDO -> "Condition.bodySite.coding.where(system='http://terminology.hl7.org/CodeSystem/icd-o-3').code"
  * PrimaertumorTopographieICDOVersion -> "Condition.bodySite.coding.where(system='http://terminology.hl7.org/CodeSystem/icd-o-3').version"
  * PrimaertumorDiagnosedatum -> "Condition.recordedDate"
  * PrimaertumorDiagnosesicherung -> "Condition.verificationStatus.coding.where(system='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung').code"
  * PrimaertumorSeitenlokalisation -> "Condition.bodySite.coding.where(system='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-seitenlokalisation').code"
  * FruehereTumorerkrankungen -> "Condition"
* Histologie
  * TumorHistologiedatum -> "Specimen.collection.collectedDateTime"
  * HistologieEinsendenummer -> "Specimen.identifier.value"
  * MorphologieCode -> "Condition.code.coding.where(system='http://terminology.hl7.org/CodeSystem/icd-o-3').code"
  * MorphologieICDOBlueBookVersion -> "Condition.code.coding.where(system='http://terminology.hl7.org/CodeSystem/icd-o-3').version"
  * MorphologieFreitext -> "Condition.code.text"
  * Grading -> "Observation.valueCodeableConcept.coding.where(system='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-grading').code"
  * AnzahlUntersuchteLymphknoten -> "Observation.code.coding.where(system='http://loinc.org' and code='2708-6').select(%resource.valueQuantity.value)"
  * AnzahlBefalleneLymphknoten -> "Observation.code.coding.where(system='http://loinc.org' and code='21893-3').select(%resource.valueQuantity.value)"
  * AnzahlUntersuchteSentinelLymphknoten -> "Observation.code.coding.where(system='http://loinc.org' and code='85347-3').select(%resource.valueQuantity.value)"
  * AnzahlBefalleneSentinelLymphknoten -> "Observation.code.coding.where(system='http://loinc.org' and code='92832-5').select(%resource.valueQuantity.value)"
  * Befund -> "DiagnosticReport.code.coding.where(system='http://loinc.org' and code='60568-3').select(%resource.conclusion)"
* TNMKlassifikation
  * TNMDatum -> "Observation.effectiveDateTime"
  * TNMVersion -> "Observation.method"
  * TNMySymbol -> "Observation.valueCodeableConcept.coding.code"
  * TNMrSymbol -> "Observation.valueCodeableConcept.coding.code"
  * TNMaSymbol -> "Observation.valueCodeableConcept.coding.code"
  * TNMcpuPraefixT -> "Observation.code.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix').value.coding.code"
  * TNMcpuPraefixN -> "Observation.code.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix').value.coding.code"
  * TNMcpuPraefixM -> "Observation.code.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix').value.coding.code"
  * TNMTKategorie -> "Observation.valueCodeableConcept.coding.code"
  * TNMmSymbol -> "Observation.valueCodeableConcept.coding.code"
  * TNMNKategorie -> "Observation.valueCodeableConcept.coding.code"
  * TNMLKategorie -> "Observation.valueCodeableConcept.coding.code"
  * TNMVKategorie -> "Observation.valueCodeableConcept.coding.code"
  * TNMPnKategorie -> "Observation.valueCodeableConcept.coding.code"
  * TNMSKategorie -> "Observation.valueCodeableConcept.coding.code"
  * UICCStadium -> "Observation.valueCodeableConcept.coding.code"
* WeitereKlassifikationen -> "Observation"
  * WeitereKlassifikationDatum -> "Observation.effectiveDateTime"
  * WeitereKlassifikationName -> "Observation.code.text"
  * WeitereKlassifikationEinstufung -> "Observation.value[x]"
* Residualstatus 
  * LokalerResidualstatus -> "Procedure.outcome"
  * GlobalerResidualstatus -> "Observation.valueCodeableConcept.coding.code"
* Fernmetastasen  
  * LokalisationFernmetastase -> "Observation.bodySite"
  * DatumFernmetase -> "Observation.effectiveDateTime"
* AllgemeinerLeistungszustand
  * ECOGKarnofsky -> "Observation.value[x]"
* Operation
  * OPIntention -> "Procedure.extension.valueCodeableConcept.coding.code"
  * OPDatum -> "Procedure.performedDateTime"
  * OPSCode -> "Procedure.code.coding.code"
  * OPSVersion -> "Procedure.code.coding.version"
  * OPKomplikation -> "Procedure.complication.coding.code"
* Strahlentherapie
  * StrahlentherapieIntention -> "Procedure.extension[Intention].valueCodeableConcept.coding.code"
  * StrahlentherapieStellung -> "Procedure.extension[Stellung].valueCodeableConcept.coding.code"
  * StrahlentherapieEndeGrund -> "Procedure.outcome.coding.code"
  * StrahlentherapieBestrahlung -> "Procedure.extension[Bestrahlung]"
    * StrahlentherapieZielgebiet -> "Procedure.extension[Bestrahlung].extension[Zielgebiet].valueCodeableConcept.coding.code"
    * StrahlentherapieSeiteZielgebiet -> "Procedure.extension[Bestrahlung].extension[Zielgebiet_Lateralitaet].valueCodeableConcept.coding.code"
    * StrahlentherapieBeginn -> "Procedure.performedPeriod.start"
    * StrahlentherapieEnde -> "Procedure.performedPeriod.end"
    * StrahlentherapieApplikationsart -> "Procedure.extension[Bestrahlung].extension[Applikationsart].valueCodeableConcept.coding.code"
    * StrahlentherapieStrahlenart -> "Procedure.extension[Bestrahlung].extension[Strahlenart].valueCodeableConcept.coding.code"
    * StrahlentherapieGesamtdosis -> "Procedure.extension[Bestrahlung].extension[Gesamtdosis].valueQuantity.value"
    * StrahlentherapieEinzeldosis -> "Procedure.extension[Bestrahlung].extension[Einzeldosis].valueQuantity.value"
    * StrahlentherapieEinheit -> "Procedure.extension[Bestrahlung].extension[Einheit].valueCodeableConcept.coding.code"
    * StrahlentherapieBoost -> "Procedure.extension[Bestrahlung].extension[Boost].valueCodeableConcept.coding.code"
  
* SystemischeTherapie
  * SystemischeTherapieIntention -> "Procedure.extension[Intention].valueCodeableConcept.coding.code"
  * SystemischeTherapieStellung -> "Procedure.extension[Stellung].valueCodeableConcept.coding.code"
  * SystemischeTherapieArtTherapie -> "Procedure.code.coding.code"
  * SystemischeTherapieProtokoll -> "MedicationStatement.medicationCodeableConcept.text "
  * SystemischeTherapieSubstanz -> "MedicationStatement.medicationCodeableConcept[atcClassDe].coding.code"
  * SystemischeTherapieBeginn -> "Procedure.performedPeriod.start"
  * SystemischeTherapieEnde -> "Procedure.performedPeriod.end"
  * SystemischeTherapieEndeGrund -> "Procedure.outcome.coding.code"

* Nebenwirkungen 
  * NebenwirkungenCTCAEGrad -> "AdverseEvent.severity.coding.code"
  * NebenwirkungenCTCAEArt -> "AdverseEvent.event.coding.code"
  * NebenwirkungenCTCAEVersion -> "AdverseEvent.event.coding.version"

* Tumorkonferenz
  * TumorkonferenzTherapieplanungDatum -> "CarePlan.created"
  * TumorkonferenzTherapieplanungTyp -> "CarePlan.category"
  * TumorkonferenzTherapieempfehlungTyp -> "CarePlan.activity.detail.code"
  * TumorkonferenzTherapieAbweichungPatientenwunsch -> "CarePlan.activity.detail.status & statusReason"
* Tod
  * Sterbedatum -> "Observation.effectiveDateTime"
  * TodTumorbedingt -> "Observation.interpretation.coding.code"
  * TodesursacheICD -> "Observation.valueCodeableConcept.coding.code" 
  * TodesursacheICDVersion -> "Observation.valueCodeableConcept.coding.version" 

* GenetischeVariante -> "Observation"
  * GenetischeVarianteName -> "Observation.note"
  * GenetischeVarianteAuspraegung -> "Observation.interpretation"
