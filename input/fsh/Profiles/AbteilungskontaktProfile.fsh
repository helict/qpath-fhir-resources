Alias: $encounter-kontaktart-de = http://fhir.de/codes-vsystem/kontaktart-de
Alias: $q4ms-abteilungskontakt-sd = https://pathway-fgdh.wiwi.tu-dresden.de/fhir/StructureDefinition/Q4MSAbteilungskontaktProfile

Profile: Q4MSAbteilungskontaktProfile
Parent: Encounter
Id: Q4MSAbteilungskontaktProfile
Title: "Abteilungskontakt (IST)"
Description: "Profil eines Abteilungskontaktes (IST)"
* ^url = $q4ms-abteilungskontakt-sd
* status 1..1 MS
* class MS
//* serviceType from $ops-codes (required)
//* serviceType 1..1 MS
* subject 1..1 MS
* subject only Reference(Q4MSPatientProfile or Q4MSPatientPseudonymProfile)
* episodeOfCare only Reference(Q4MSMonitoringzyklusProfile)
* basedOn only Reference(Q4MSProzedurProfile)
* appointment 0..1 MS
* appointment only Reference(Q4MSAbteilungskontaktTerminProfile)
* period 1..1 MS
* period.start 1..1 MS
* period.end 1..1 MS
* location MS
* serviceProvider 1..1 MS
* partOf 1..1 MS
* partOf only Reference(Q4MSEinrichtungskontaktProfile)