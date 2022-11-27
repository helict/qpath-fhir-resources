Alias: $episode-of-care-status = http://hl7.org/fhir/episode-of-care-status
Alias: $q4ms-monitoringzyklus-sd = http://qpath4ms.ukdd.de/fhir/StructureDefinition/Q4MSMonitoringzyklusProfile

Profile: Q4MSMonitoringzyklusProfile
Parent: EpisodeOfCare
Id: Q4MSMonitoringzyklusProfile
Title: "Monitoringzyklus"
Description: "Profil eines Monitoringzyklus - 1 Jahr"
* ^url = $q4ms-monitoringzyklus-sd
* status 1..1 MS
* type MS
* diagnosis 1..1 MS
* diagnosis.condition only Reference(Q4MSMultipleSkleroseDiagnoseProfile)
* patient 1..1 MS
* patient only Reference(Q4MSPatientProfile or Q4MSPatientPseudonymProfile)
* managingOrganization 1..1 MS
* period 1..1 MS
* period.start 1..1 MS
* period.end 1..1 MS

Instance: BasismonitoringY1ExampleEOC
InstanceOf: Q4MSMonitoringzyklusProfile
Usage: #example
Title: "Kontinuierliches Basismonitoring Z1"
Description: "Beispiel eines 1. Zyklus zum kontinuierlichen Basismonitoring"
* status = $episode-of-care-status#planned
* diagnosis.condition = Reference(PatientWithMultipleSclerosisDiagnosisExample)
* patient = Reference(PatientPseudonym)
* managingOrganization = Reference(UnikliniumDresdenMultipleSkleroseZentrum)
* period.start = "2022-11-01"
* period.end = "2023-10-31"