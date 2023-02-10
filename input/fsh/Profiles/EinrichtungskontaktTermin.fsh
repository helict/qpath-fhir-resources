Alias: $q4ms-einrichtungskontakt-termin-sd = https://pathway-fgdh.wiwi.tu-dresden.de/fhir/StructureDefinition/Q4MSEinrichtungskontaktTerminProfile

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