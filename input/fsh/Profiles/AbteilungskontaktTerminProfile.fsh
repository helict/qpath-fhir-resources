Alias: $appointment-status = http://hl7.org/fhir/appointmentstatus
Alias: $encounter-participant-type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType
Alias: $participant-required = http://hl7.org/fhir/participantrequired
Alias: $participation-status = http://hl7.org/fhir/participationstatus
Alias: $q4ms-abteilungskontakt-termin-sd = http://qpath4ms.ukdd.de/fhir/StructureDefinition/Q4MSAbteilungskontaktTerminProfile

Profile: Q4MSAbteilungskontaktTerminProfile
Parent: Appointment
Id: Q4MSAbteilungskontaktTerminProfile
Title: "Abteilungskontakttermin (SOLL)"
Description: "Profil eines Termins zum Abteilungskontakt (SOLL)"
* ^url = $q4ms-abteilungskontakt-termin-sd
* status 1..1 MS
* start 1..1 MS
* end 1..1 MS
* serviceType from $ops-codes (preferred)
* serviceType 0..1 MS
* minutesDuration MS
* patientInstruction MS
* basedOn MS
* basedOn only Reference(Q4MSProzedurProfile)
* participant ^slicing.discriminator.type = #pattern
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open
* participant contains Patient 1..1
* participant[Patient].type = $encounter-participant-type#PPRF (exactly)
* participant[Patient].actor only Reference(Q4MSPatientProfile or Q4MSPatientPseudonymProfile)
* participant[Patient].required = $participant-required#required (exactly)
* participant[Patient].status MS