Alias: $q4ms-einrichtungskontakt-termin-sd = http://qpath4ms.ukdd.de/fhir/StructureDefinition/Q4MSEinrichtungskontaktTerminProfile

Profile: Q4MSEinrichtungskontaktTerminProfile
Parent: Appointment
Id: Q4MSEinrichtungskontaktTerminProfile
Title: "Einrichtungskontakttermin (SOLL)"
Description: "Profil eines Termins zum Einrichtungskontakt (SOLL)"
* ^url = $q4ms-einrichtungskontakt-termin-sd
* status 1..1 MS
* start 1..1 MS
* end 1..1 MS
* patientInstruction MS
* participant ^slicing.discriminator.type = #pattern
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open
* participant contains Patient 1..1
* participant[Patient].type = $encounter-participant-type#PPRF (exactly)
* participant[Patient].actor only Reference(Q4MSPatientProfile or Q4MSPatientPseudonymProfile)
* participant[Patient].required = $participant-required#required (exactly)
* participant[Patient].status MS

Instance: BasismonitoringErsterZyklusExampleAPT
InstanceOf: Q4MSEinrichtungskontaktTerminProfile
Usage: #example
Title: "Basismonitoringtermin Z1 (M0, SOLL)"
Description: "Beispiel Appointment Basismonitoring 1. Zyklus (M0, SOLL)"
* status = $appointment-status#fulfilled
* start = "2022-04-19T08:00:00Z"
* end = "2022-04-19T10:30:00Z"
* created = "2022-04-01T11:00:00Z"
* participant[Patient].type = $encounter-participant-type#PPRF
* participant[Patient].actor = Reference(PatientPseudonym)
* participant[Patient].required = $participant-required#required
* participant[Patient].status = $participation-status#accepted