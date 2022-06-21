Alias: $encounter-status = http://hl7.org/fhir/encounter-status
Alias: $q4ms-einrichtungskontakt-sd = http://qpath4ms.ukdd.de/fhir/StructureDefinition/Q4MSEinrichtungskontaktProfile

Profile: Q4MSEinrichtungskontaktProfile
Parent: Encounter
Id: Q4MSEinrichtungskontaktProfile
Title: "Einrichtungskontakt (IST)"
Description: "Profil eines Einrichtungskontaktes (IST)"
* ^url = $q4ms-einrichtungskontakt-sd
* status 1..1 MS
* subject 1..1 MS
* subject only Reference(Q4MSPatientProfile or Q4MSPatientPseudonymProfile)
* episodeOfCare 1..1 MS
* episodeOfCare only Reference(Q4MSMonitoringzyklusProfile)
* appointment 1..1 MS
* appointment only Reference(Q4MSEinrichtungskontaktTerminProfile)
* diagnosis 0..1 MS
* diagnosis.condition only Reference(Q4MSMultipleSkleroseDiagnoseProfile)
* location MS
* serviceProvider 1..1 MS

Instance: BasismonitoringErsterZyklusExampleENC
InstanceOf: Q4MSEinrichtungskontaktProfile
Usage: #example
Title: "Basismonitoring Z1 (M0, IST)"
Description: "Beispiel Encounter Basismonitoring 1. Zyklus (M0, IST)"
* status = $encounter-status#finished
* class = $v3-act-code#AMB "Ambulant"
* type = $encounter-kontaktart-de#tagesklinik "Tagesklinische Behandlung"
* subject = Reference(PatientPseudonym)
* episodeOfCare = Reference(BasismonitoringErsterZyklusExampleEOC)
* appointment = Reference(BasismonitoringErsterZyklusExampleAPT)
* serviceProvider = Reference(UnikliniumDresdenMultipleSkleroseZentrum)