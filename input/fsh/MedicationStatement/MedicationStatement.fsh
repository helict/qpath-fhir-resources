Profile: Q4MSMedicationStatementProfile
Parent: MedicationStatement
Id: Q4MSMedicationStatementProfile
Title: "Q4MSMedicationStatementProfile"
* ^url = "http://qpath4ms.ukdd.de/fhir/StructureDefinition/medicationPlan/Q4MSMedicationStatementProfile"
* ^status = #draft
* id MS
* meta MS
* language MS
* identifier MS
* basedOn ..0
* partOf ..0
* status MS
* category ..0
* medication[x] only Reference(Q4MSMedicationProfile)
* medication[x] MS
* medication[x] ^type.profile = Canonical(Q4MSMedicationProfile)
* subject only Reference(Q4MSPatientProfile or Q4MSPatientPseudonymProfile)
* subject MS
* context ..0
* subject.reference 1.. MS
* effective[x] 1.. MS
* effective[x] only Period
* dateAsserted MS
* reasonReference ..0
* note ..1 MS
* dosage 1..5 MS
* dosage ^slicing.rules = #open
* dosage contains
    freitext 0..1 MS and
    codiert 0..4
* dosage[freitext].text 1.. MS
* dosage[freitext].additionalInstruction ..0
* dosage[freitext].patientInstruction ..0
* dosage[freitext].timing ..0
* dosage[freitext].asNeeded[x] only boolean
* dosage[freitext].asNeeded[x] MS
* dosage[freitext].site ..0
* dosage[freitext].route ..0
* dosage[freitext].method ..0
* dosage[freitext].doseAndRate ..0
* dosage[freitext].maxDosePerPeriod ..0
* dosage[freitext].maxDosePerAdministration ..0
* dosage[freitext].maxDosePerLifetime ..0
* dosage[codiert].sequence ..0
* dosage[codiert].text ..0
* dosage[codiert].additionalInstruction ..0
* dosage[codiert].patientInstruction ..0
* dosage[codiert].timing MS
* dosage[codiert].asNeeded[x] ..0
* dosage[codiert].site ..0
* dosage[codiert].route ..0
* dosage[codiert].method ..0
* dosage[codiert].doseAndRate 1..
* dosage[codiert].doseAndRate only Element
* dosage[codiert].maxDosePerPeriod ..0
* dosage[codiert].maxDosePerAdministration ..0
* dosage[codiert].maxDosePerLifetime ..0
* dosage[codiert].timing.event ..0
* dosage[codiert].timing.repeat ..0
* dosage[codiert].timing.code from http://fhir.de/ValueSet/medikationsplanplus/einnahmezeitpunkte (required)
* dosage[codiert].timing.code ^short = "Einnahmezeitpunkt CM|CD|CV|HS (@m|@d|@v|@h)"
* dosage[codiert].timing.code.coding ..1 MS
* dosage[codiert].timing.code.coding.system MS
* dosage[codiert].timing.code.coding.code MS
* reasonCode.text MS
* effective[x].start 1.. MS
* effective[x].end MS
* identifier.system MS
* identifier.value MS
* meta.profile MS