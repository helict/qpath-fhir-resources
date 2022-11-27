Instance: BesuchsterminM0ExampleENC
InstanceOf: Q4MSEinrichtungskontaktProfile
Usage: #example
Title: "Basismonitoring Erster Besuchstermin (M0, IST)"
Description: "Beispiel Encounter zum ersten Besuchstermin am 02.11.2022, 10:45-17:25 Uhr (M0)"
* status = $encounter-status#finished
* class = $v3-act-code#AMB
* type = $encounter-kontaktart-de#tagesklinik "Tagesklinische Behandlung"
* subject = Reference(PatientPseudonym)
* episodeOfCare = Reference(BasismonitoringY1ExampleEOC)
* appointment = Reference(BesuchsterminM0ExampleAPT)
* serviceProvider = Reference(UnikliniumDresdenMultipleSkleroseZentrum)
// after it took place
* period.start = 2022-11-02T10:45:00Z
* period.end = 2022-11-02T17:25:00Z