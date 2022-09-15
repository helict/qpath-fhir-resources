Profile: Q4MSMedicationStatementProfile
Parent: MedicationStatement
Id: Q4MSMedicationStatementProfile
Title: "Q4MSMedicationStatementProfile"
* ^url = "http://qpath4ms.ukdd.de/fhir/StructureDefinition/Q4MSMedicationStatementProfile"
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
* dosage ^slicing.discriminator[0].type = #exists
* dosage ^slicing.discriminator[=].path = "text"
* dosage ^slicing.rules = #open
* dosage contains
    Freitext 0..1 MS and
    Codiert 0..4
* dosage[Freitext].text 1.. MS
* dosage[Freitext].additionalInstruction ..0
* dosage[Freitext].patientInstruction ..0
* dosage[Freitext].timing ..0
* dosage[Freitext].asNeeded[x] only boolean
* dosage[Freitext].asNeeded[x] MS
* dosage[Freitext].site ..0
* dosage[Freitext].route ..0
* dosage[Freitext].method ..0
* dosage[Freitext].doseAndRate ..0
* dosage[Freitext].maxDosePerPeriod ..0
* dosage[Freitext].maxDosePerAdministration ..0
* dosage[Freitext].maxDosePerLifetime ..0
* dosage[Codiert].sequence ..0
* dosage[Codiert].text ..0
* dosage[Codiert].additionalInstruction ..0
* dosage[Codiert].patientInstruction ..0
* dosage[Codiert].timing MS
* dosage[Codiert].asNeeded[x] ..0
* dosage[Codiert].site ..0
* dosage[Codiert].route ..0
* dosage[Codiert].method ..0
* dosage[Codiert].doseAndRate 1..
* dosage[Codiert].doseAndRate only Element
* dosage[Codiert].maxDosePerPeriod ..0
* dosage[Codiert].maxDosePerAdministration ..0
* dosage[Codiert].maxDosePerLifetime ..0
* dosage[Codiert].timing.event ..0
* dosage[Codiert].timing.repeat ..0
* dosage[Codiert].timing.code from http://fhir.de/ValueSet/medikationsplanplus/einnahmezeitpunkte (required)
* dosage[Codiert].timing.code ^short = "Einnahmezeitpunkt CM|CD|CV|HS (@m|@d|@v|@h)"
* dosage[Codiert].timing.code.coding ..1 MS
* dosage[Codiert].timing.code.coding.system MS
* dosage[Codiert].timing.code.coding.code MS
* reasonCode.text MS
* effective[x].start 1.. MS
* effective[x].end MS
* identifier.system MS
* identifier.value MS
* meta.profile MS