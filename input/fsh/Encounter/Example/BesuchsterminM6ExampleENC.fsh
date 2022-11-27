Instance: BesuchsterminM6ExampleENC
InstanceOf: Q4MSEinrichtungskontaktProfile
Usage: #example
Title: "Basismonitoring Dritter Besuchstermin (M6, IST)"
Description: "Beispiel Encounter zum dritten Besuchstermin am 02.05.2023 (M6)"
* status = $encounter-status#planned
* class = $v3-act-code#AMB
* type = $encounter-kontaktart-de#tagesklinik "Tagesklinische Behandlung"
* subject = Reference(PatientPseudonym)
* episodeOfCare = Reference(BasismonitoringY1ExampleEOC)
* appointment = Reference(BesuchsterminM6ExampleAPT)
* serviceProvider = Reference(UnikliniumDresdenMultipleSkleroseZentrum)
// after it took place
//* period.start =
//* period.end =