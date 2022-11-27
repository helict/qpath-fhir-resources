Instance: BesuchsterminM3ExampleENC
InstanceOf: Q4MSEinrichtungskontaktProfile
Usage: #example
Title: "Basismonitoring Zweiter Besuchstermin (M3, IST)"
Description: "Beispiel Encounter zum zweiten Besuchstermin am 03.02.2023 (M3)"
* status = $encounter-status#planned
* class = $v3-act-code#AMB
* type = $encounter-kontaktart-de#tagesklinik "Tagesklinische Behandlung"
* subject = Reference(PatientPseudonym)
* episodeOfCare = Reference(BasismonitoringY1ExampleEOC)
* appointment = Reference(BesuchsterminM3ExampleAPT)
* serviceProvider = Reference(UnikliniumDresdenMultipleSkleroseZentrum)
// after it took place
//* period.start =
//* period.end =