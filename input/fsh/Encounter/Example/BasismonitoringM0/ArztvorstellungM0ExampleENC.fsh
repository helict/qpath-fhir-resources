Instance: ArztvorstellungM0ExampleENC
InstanceOf: Q4MSAbteilungskontaktProfile
Usage: #example
Title: "Arztvorstellung (M0, IST)"
Description: "Arztvorstellung, beendet (M0, IST)"
* status = $encounter-status#finished
* statusHistory[0].status = $encounter-status#planned
* statusHistory[=].period.start = "2022-04-01T11:00:00Z"
* statusHistory[=].period.end = "2022-04-01T11:00:00Z"
* statusHistory[+].status = $encounter-status#arrived
* statusHistory[=].period.start = "2022-04-19T08:03:00Z"
* statusHistory[=].period.end = "2022-04-19T08:03:00Z"
* class = $v3-act-code#AMB 
* type = $encounter-kontaktart-de#ub "Untersuchung und Behandlung"
//* serviceType = $ops-codes#1-20a
* subject = Reference(PatientPseudonym)
* episodeOfCare = Reference(BasismonitoringY1ExampleEOC)
* basedOn = Reference(ArztvorstellungM0ExampleSR)
* appointment = Reference(ArztvorstellungM0ExampleAPT)
* period.start = "2022-11-02T15:45:00Z"
* period.end = "2022-11-02T16:10:00Z"
* serviceProvider = Reference(UnikliniumDresdenMultipleSkleroseZentrum)
* partOf = Reference(BesuchsterminM0ExampleENC)