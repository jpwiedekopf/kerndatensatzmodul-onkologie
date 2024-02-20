Profile: MII_PR_Onko_Verlauf
Parent: Observation
Id: mii-pr-onko-verlauf
Title: "MII PR Onkologie Verlauf"
Description: "Dieses Profil beschreibt die Verlaufskontrolle und verweist ggfs. auf andere verlaufsrelevante diagnostische Maßnahmen"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* identifier MS
* status ^fixedCode = $request-status#active
* intent ^fixedCode = $request-intent#plan

* subject MS
* subject only Reference(Patient)

* category 1..1 MS
* category.coding from $mii-vs-onko-therapieplanung-typ
* category.coding ^fixedCoding.system = $mii-cs-onko-therapieplanung-typ

// Therapieplanung Datum
* created 1..1 MS
* code MS
* component MS
* component 1..*
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
