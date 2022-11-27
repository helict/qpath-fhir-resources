Instance: ArztvorstellungM0ExampleAPT
InstanceOf: Q4MSAbteilungskontaktTerminProfile
Usage: #example
Title: "Arztvorstellung (M0, SOLL)"
Description: "Arztvorstellung, festgelegt durch MSZ (M0, SOLL)"
* status = $appointment-status#fulfilled
* start = "2022-11-02T16:30:00Z"
* end = "2022-11-02T16:45:00Z"
//* serviceType = $ops-codes#1-20a
* minutesDuration = 15
* created = "2022-04-01T11:00:00Z"
* basedOn = Reference(ArztvorstellungM0ExampleSR)
* participant[Patient].type = $encounter-participant-type#PPRF
* participant[Patient].actor = Reference(PatientPseudonym)
* participant[Patient].required = $participant-required#required
* participant[Patient].status = $participation-status#accepted