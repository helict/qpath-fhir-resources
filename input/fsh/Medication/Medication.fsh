Alias: $edqm-dose-form-vs = http://fhir.de/ValueSet/medikationsplanplus/edqm-darreichungsform

Profile: Q4MSMedicationProfile
Parent: Medication
Id: Q4MSMedicationProfile
Title: "Q4MSMedicationProfile"
* ^url = "http://qpath4ms.ukdd.de/fhir/StructureDefinition/Q4MSMedicationProfile"
* ^status = #draft
* id MS
* meta MS
* language MS
* contained ..0
* code ^short = "PZN-Code des Medikamentes"
* code ^definition = "Die Verwendung von PZN ist verpflichtent, die Codes können jedoch nicht validiert werden, da der gesamte Katalog der Codes nicht vorliegt."
* manufacturer ..0
* form MS
* form from $edqm-dose-form-vs (required)
* form ^short = "Darreichungsform"
* form ^definition = "Darreichungsform codiert nach EDQM oder als Freitext"
* amount MS
* amount.numerator MS
* amount.numerator.value MS
* amount.numerator.unit MS
* amount.numerator.system MS
* amount.numerator.code MS
* amount.denominator MS
* amount.denominator.value ^mustSupport = false
* amount.denominator.unit MS
* amount.denominator.system MS
* amount.denominator.code MS
* ingredient MS
* ingredient.item[x] only CodeableConcept
* ingredient.item[x] MS
* ingredient.item[x].coding ^slicing.discriminator[0].type = #value
* ingredient.item[x].coding ^slicing.discriminator[=].path = "system"
* ingredient.item[x].coding ^slicing.rules = #open
* ingredient.item[x].coding ^mustSupport = false
* ingredient.item[x].coding contains
    atc 0..1 MS and
    edqm 0..1 MS
* ingredient.item[x].coding[atc].system 1.. MS
* ingredient.item[x].coding[atc].system = "http://www.whocc.no/atc" (exactly)
* ingredient.item[x].coding[atc].code 1.. MS
* ingredient.item[x].coding[atc].display MS
* ingredient.item[x].text MS
* ingredient.item[x].coding[edqm].system 1.. MS
* ingredient.item[x].coding[edqm].system = "urn:oid:0.4.0.127.0.16.1.1.2.1" (exactly)
* ingredient.item[x].coding[edqm].code MS
* ingredient.item[x].coding[edqm].display MS
* form.coding MS
* form.text MS
* form.coding.system 1.. MS
* form.coding.code 1.. MS
* form.coding.display MS
* code.coding ..1 MS
* code.coding.system 1.. MS
* code.coding.code 1.. MS
* code.coding.display MS
* code.text MS
* meta.profile MS