Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-verification-status =	http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $icd-10-gm = http://fhir.de/CodeSystem/bfarm/icd-10-gm
Alias: $q4ms-ms-diagnose-sd = https://pathway-fgdh.wiwi.tu-dresden.de/fhir/Q4MSMultipleSkleroseDiagnoseProfile
//Alias: $ext-icd-diagnosesicherheit = http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit
//Alias: $kbv-icd-diagnosesicherheit = https://fhir.kbv.de/ValueSet/KBV_VS_SFHIR_ICD_DIAGNOSESICHERHEIT

Profile: Q4MSMultipleSkleroseDiagnoseProfile
Parent: Condition
Id: Q4MSMultipleSkleroseDiagnoseProfile
Title: "Multiple Sklerose-Diagnose"
Description: "Profil zur Diagnose einer Multiplen Sklerose"
* ^url = $q4ms-ms-diagnose-sd
* clinicalStatus 1..1 MS
* verificationStatus 1..1 MS
* code 1..1 MS
* code.coding.system 1..1 MS
* code.coding.version 1..1 MS
* code.coding.code 1..1 MS
* code.coding.system = $icd-10-gm
* recordedDate MS
* note MS

Instance: PatientWithMultipleSclerosisDiagnosisExample
InstanceOf: Q4MSMultipleSkleroseDiagnoseProfile
Usage: #example
Title: "ICD-10 MS-Diagnose John Doe"
Description: "ICD-10 GM Multiple Sklerose-Diagnose von John Doe"
* id = "PatientWithMultipleSclerosisDiagnosisExample"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-verification-status#confirmed
* code.coding.system = $icd-10-gm
* code.coding.version = "2022"
* code.coding.code = #G35.0
* code.coding.display = "Erstmanifestation einer Multiplen Sklerose"
//* code.extension[$ext-icd-diagnosesicherheit].valueCoding = $kbv-icd-diagnosesicherheit#G
* subject = Reference(PatientPseudonym)