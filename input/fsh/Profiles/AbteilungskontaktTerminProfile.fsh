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
* serviceType 1..1 MS
* serviceType from $ops-codes (required)
* minutesDuration MS
* patientInstruction MS
* basedOn MS
* basedOn only Reference(Q4MSProzedurProfile)
* participant ^slicing.discriminator.type = #pattern
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open
* participant contains Patient 1..1
* participant[Patient].type = $encounter-participant-type#PPRF (exactly)
* participant[Patient].actor only Reference(Patient)
* participant[Patient].required = $participant-required#required (exactly)
* participant[Patient].status MS

Instance: NeurologischeUntersuchungExampleAPT
InstanceOf: Q4MSAbteilungskontaktTerminProfile
Usage: #example
Title: "Neurologische Untersuchung (M0, SOLL)"
Description: "Neurologische Untersuchung, festgelegt durch MSZ (M0, SOLL)"
* status = $appointment-status#fulfilled
* start = "2022-04-19T08:00:00Z"
* end = "2022-04-19T08:20:00Z"
* serviceType = $ops-codes#1-20a
* minutesDuration = 20
* created = "2022-04-01T11:00:00Z"
* basedOn = Reference(NeurologischeUntersuchungExampleSR) // TODO SR
* participant[Patient].type = $encounter-participant-type#PPRF
* participant[Patient].actor = Reference(PatientJohnDoe)
* participant[Patient].required = $participant-required#required
* participant[Patient].status = $participation-status#accepted

Instance: MultipleSclerosisPerformanceTestExampleAPT
InstanceOf: Q4MSAbteilungskontaktTerminProfile
Usage: #example
Title: "MSPT (M0, SOLL)"
Description: "Multiple Sclerosis Performance Test, festgelegt durch MSZ (M0, SOLL)"
* status = $appointment-status#fulfilled
* start = "2022-04-19T09:00:00Z"
* end = "2022-04-19T09:25:00Z"
* serviceType = $ops-codes#8-92
* minutesDuration = 25
* created = "2022-04-01T11:00:00Z"
* basedOn = Reference(MultipleSclerosisPerformanceTestExampleSR)
* participant[Patient].type = $encounter-participant-type#PPRF
* participant[Patient].actor = Reference(PatientJohnDoe)
* participant[Patient].required = $participant-required#required
* participant[Patient].status = $participation-status#accepted

Instance: GanganalyseExampleAPT
InstanceOf: Q4MSAbteilungskontaktTerminProfile
Usage: #example
Title: "Ganganalyse (M0, SOLL)"
Description: "Ganganalyse, festgelegt durch MSZ (M0, SOLL)"
* status = $appointment-status#fulfilled
* start = "2022-04-19T08:30:00Z"
* end = "2022-04-19T08:55:00Z"
* serviceType = $ops-codes#1-798
* minutesDuration = 25
* created = "2022-04-01T11:00:00Z"
* basedOn = Reference(GanganalyseExampleSR)
* participant[Patient].type = $encounter-participant-type#PPRF
* participant[Patient].actor = Reference(PatientJohnDoe)
* participant[Patient].required = $participant-required#required
* participant[Patient].status = $participation-status#accepted

Instance: OptischeKohaerenztomographieExampleAPT
InstanceOf: Q4MSAbteilungskontaktTerminProfile
Usage: #example
Title: "OCT (M0, SOLL)"
Description: "Optische Kohärenztomographie, festgelegt durch MSZ (M0, SOLL)"
* status = $appointment-status#fulfilled
* start = "2022-04-19T09:30:00Z"
* end = "2022-04-19T09:55:00Z"
* serviceType = $ops-codes#3-300
* minutesDuration = 25
* created = "2022-04-01T11:00:00Z"
* basedOn = Reference(OptischeKohaerenztomographieExampleSR)
* participant[Patient].type = $encounter-participant-type#PPRF
* participant[Patient].actor = Reference(PatientJohnDoe)
* participant[Patient].required = $participant-required#required
* participant[Patient].status = $participation-status#accepted

Instance: ArztvorstellungExampleAPT
InstanceOf: Q4MSAbteilungskontaktTerminProfile
Usage: #example
Title: "Arztvorstellung (M0, SOLL)"
Description: "Arztvorstellung, festgelegt durch MSZ (M0, SOLL)"
* status = $appointment-status#fulfilled
* start = "2022-04-19T10:00:00Z"
* end = "2022-04-19T10:15:00Z"
* serviceType = $dkgev-fachabteilungsschluessel-erweitert#2800
* minutesDuration = 15
* created = "2022-04-01T11:00:00Z"
//* basedOn = Reference(ArztvorstellungExampleSR)
* participant[Patient].type = $encounter-participant-type#PPRF
* participant[Patient].actor = Reference(PatientJohnDoe)
* participant[Patient].required = $participant-required#required
* participant[Patient].status = $participation-status#accepted

Instance: LaboruntersuchungExampleAPT
InstanceOf: Q4MSAbteilungskontaktTerminProfile
Usage: #example
Title: "Laboruntersuchung (M0, SOLL)"
Description: "Laboruntersuchung, festgelegt durch MSZ (M0, SOLL)"
* status = $appointment-status#fulfilled
* start = "2022-04-19T10:20:00Z"
* end = "2022-04-19T10:30:00Z"
* serviceType = $ops-codes#1-942
* minutesDuration = 10
* created = "2022-04-01T11:00:00Z"
//* basedOn = Reference(LaborExampleSR)
* participant[Patient].type = $encounter-participant-type#PPRF
* participant[Patient].actor = Reference(PatientJohnDoe)
* participant[Patient].required = $participant-required#required
* participant[Patient].status = $participation-status#accepted