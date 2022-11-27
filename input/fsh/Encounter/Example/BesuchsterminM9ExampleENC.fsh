Instance: BesuchsterminM9ExampleENC
InstanceOf: Q4MSEinrichtungskontaktProfile
Usage: #example
Title: "Basismonitoring Vierter Besuchstermin (M9, IST)"
Description: "Beispiel Encounter zum vierten Besuchstermin am 01.08.2023 (M9)"
* status = $encounter-status#planned
* class = $v3-act-code#AMB
* type = $encounter-kontaktart-de#tagesklinik "Tagesklinische Behandlung"
* subject = Reference(PatientPseudonym)
* episodeOfCare = Reference(BasismonitoringY1ExampleEOC)
* appointment = Reference(BesuchsterminM9ExampleAPT)
* serviceProvider = Reference(UnikliniumDresdenMultipleSkleroseZentrum)
// after it took place
//* period.start =
//* period.end =