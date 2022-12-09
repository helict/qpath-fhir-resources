Instance: VoruntersuchungenM0ExampleENC
InstanceOf: Encounter
Usage: #example
Title: "Voruntersuchungen Erster Besuchstermin (M0, IST)"
Description: "Beispiel Encounter zur Voruntersuchung zum ersten Besuchstermin am 02.11.2022 (M0)"
* status = $encounter-status#finished
* class = $v3-act-code#AMB
* type = $encounter-kontaktart-de#tagesklinik "Tagesklinische Behandlung"
* subject = Reference(PatientPseudonym)
* episodeOfCare = Reference(BasismonitoringY1ExampleEOC)
* appointment = Reference(VoruntersuchungenM0ExampleAPT)
* serviceProvider = Reference(UnikliniumDresdenMultipleSkleroseZentrum)
* partOf = Reference(BesuchsterminM0ExampleENC)
// after it took place
* period.start = 2022-11-02T10:45:00Z
* period.end = 2022-11-02T14:25:00Z


Instance: AllgemeineNeurologischeUntersuchungM0ExampleENC
InstanceOf: Q4MSAbteilungskontaktProfile
Usage: #example
Title: "Neurologische Untersuchung (M0, IST)"
Description: "Neurologische Untersuchung, beendet (M0, IST)"
* status = $encounter-status#finished
* statusHistory[0].status = $encounter-status#planned
* statusHistory[=].period.start = "2022-04-01T11:00:00Z"
* statusHistory[=].period.end = "2022-04-01T11:00:00Z"
* statusHistory[+].status = $encounter-status#arrived
* statusHistory[=].period.start = "2022-04-19T08:03:00Z"
* statusHistory[=].period.end = "2022-04-19T08:03:00Z"
* class = $v3-act-code#AMB 
* type = $encounter-kontaktart-de#ub "Untersuchung und Behandlung"
* serviceType = $ops-codes#1-208.y
* subject = Reference(PatientPseudonym)
* episodeOfCare = Reference(BasismonitoringY1ExampleEOC)
* basedOn = Reference(AllgemeineNeurologischeUntersuchungM0ExampleSR)
* appointment = Reference(AllgemeineNeurologischeUntersuchungM0ExampleAPT)
* period.start = "2022-04-19T08:05:00Z"
* period.end = "2022-04-19T08:20:00Z"
* serviceProvider = Reference(UnikliniumDresdenMultipleSkleroseZentrum)
* partOf = Reference(VoruntersuchungenM0ExampleENC)

Instance: GanganalyseM0ExampleENC
InstanceOf: Q4MSAbteilungskontaktProfile
Usage: #example
Title: "Ganganalyse (M0, IST)"
Description: "Ganganalyse, beendet (M0, IST)"
* status = $encounter-status#finished
* statusHistory[0].status = $encounter-status#planned
* statusHistory[=].period.start = "2022-04-01T11:00:00Z"
* statusHistory[=].period.end = "2022-04-01T11:00:00Z"
* statusHistory[+].status = $encounter-status#arrived
* statusHistory[=].period.start = "2022-04-19T09:05:00Z"
* statusHistory[=].period.end = "2022-04-19T09:05:00Z"
* class = $v3-act-code#AMB 
* type = $encounter-kontaktart-de#ub "Untersuchung und Behandlung"
* serviceType = $ops-codes#1-798.x
* subject = Reference(PatientPseudonym)
* episodeOfCare = Reference(BasismonitoringY1ExampleEOC)
* basedOn = Reference(GanganalyseM0ExampleSR)
* appointment = Reference(GanganalyseM0ExampleAPT)
* period.start = "2022-04-19T09:35:00Z"
* period.end = "2022-04-19T10:00:00Z"
* serviceProvider = Reference(UnikliniumDresdenMultipleSkleroseZentrum)
* partOf = Reference(VoruntersuchungenM0ExampleENC)

Instance: MultipleSclerosisPerformanceTestM0ExampleENC
InstanceOf: Q4MSAbteilungskontaktProfile
Usage: #example
Title: "MSPT (M0, IST)"
Description: "Multiple Sclerosis Performance Test, beendet (M0, IST)"
* status = $encounter-status#finished
* statusHistory[0].status = $encounter-status#planned
* statusHistory[=].period.start = "2022-04-01T11:00:00Z"
* statusHistory[=].period.end = "2022-04-01T11:00:00Z"
* statusHistory[+].status = $encounter-status#arrived
* statusHistory[=].period.start = "2022-04-19T08:20:00Z"
* statusHistory[=].period.end = "2022-04-19T08:20:00Z"
* class = $v3-act-code#AMB 
* type = $encounter-kontaktart-de#ub "Untersuchung und Behandlung"
* serviceType = $ops-codes#1-20a
* subject = Reference(PatientPseudonym)
* episodeOfCare = Reference(BasismonitoringY1ExampleEOC)
* basedOn = Reference(MultipleSclerosisPerformanceTestM0ExampleSR)
* appointment = Reference(MultipleSclerosisPerformanceTestM0ExampleAPT)
* period.start = "2022-04-19T08:45:00Z"
* period.end = "2022-04-19T09:05:00Z"
* serviceProvider = Reference(UnikliniumDresdenMultipleSkleroseZentrum)
* partOf = Reference(VoruntersuchungenM0ExampleENC)

Instance: TherapiespezifischeDiagnostikM0ExampleENC
InstanceOf: Q4MSAbteilungskontaktProfile
Usage: #example
Title: "Therapiespezifische Diagnostik (M0, IST)"
Description: "Therapiespezifische Diagnostik, beendet (M0, IST)"
* status = $encounter-status#finished
* statusHistory[0].status = $encounter-status#planned
* statusHistory[=].period.start = "2022-04-01T11:00:00Z"
* statusHistory[=].period.end = "2022-04-01T11:00:00Z"
* statusHistory[+].status = $encounter-status#arrived
* statusHistory[=].period.start = "2022-04-19T08:20:00Z"
* statusHistory[=].period.end = "2022-04-19T08:20:00Z"
* class = $v3-act-code#AMB 
* type = $encounter-kontaktart-de#ub "Untersuchung und Behandlung"
* serviceType = $ops-codes#1-942.0
* subject = Reference(PatientPseudonym)
* episodeOfCare = Reference(BasismonitoringY1ExampleEOC)
* basedOn = Reference(TherapiespezifischeDiagnostikM0ExampleSR)
* appointment = Reference(TherapiespezifischeDiagnostikM0ExampleAPT)
* period.start = "2022-11-02T08:45:00Z"
* period.end = "2022-11-02T09:05:00Z"
* serviceProvider = Reference(UnikliniumDresdenMultipleSkleroseZentrum)
* partOf = Reference(VoruntersuchungenM0ExampleENC)

Instance: OptischeKohaerenztomographieM0ExampleENC
InstanceOf: Q4MSAbteilungskontaktProfile
Usage: #example
Title: "OCT (M0, IST)"
Description: "Optische Kohärenztomographie, beendet (M0, IST)"
* status = $encounter-status#finished
* statusHistory[0].status = $encounter-status#planned
* statusHistory[=].period.start = "2022-04-01T11:00:00Z"
* statusHistory[=].period.end = "2022-04-01T11:00:00Z"
* statusHistory[+].status = $encounter-status#arrived
* statusHistory[=].period.start = "2022-04-19T10:00:00Z"
* statusHistory[=].period.end = "2022-04-19T10:00:00Z"
* class = $v3-act-code#AMB 
* type = $encounter-kontaktart-de#ub "Untersuchung und Behandlung"
* serviceType = $ops-codes#3-300.y
* subject = Reference(PatientPseudonym)
* episodeOfCare = Reference(BasismonitoringY1ExampleEOC)
* basedOn = Reference(OptischeKohaerenztomographieM0ExampleSR)
* appointment = Reference(OptischeKohaerenztomographieM0ExampleAPT)
* period.start = "2022-04-19T10:10:00Z"
* period.end = "2022-04-19T10:25:00Z"
* serviceProvider = Reference(UnikliniumDresdenMultipleSkleroseZentrum)
* partOf = Reference(BesuchsterminM0ExampleENC)

Instance: LaboruntersuchungM0ExampleENC
InstanceOf: Q4MSAbteilungskontaktProfile
Usage: #example
Title: "Laboruntersuchung (M0, IST)"
Description: "Laboruntersuchung, beendet (M0, IST)"
* status = $encounter-status#finished
* statusHistory[0].status = $encounter-status#planned
* statusHistory[=].period.start = "2022-04-01T11:00:00Z"
* statusHistory[=].period.end = "2022-04-01T11:00:00Z"
* statusHistory[+].status = $encounter-status#arrived
* statusHistory[=].period.start = "2022-04-19T10:40:00Z"
* statusHistory[=].period.end = "2022-04-19T10:40:00Z"
* class = $v3-act-code#AMB 
* type = $encounter-kontaktart-de#ub "Untersuchung und Behandlung"
* serviceType = $ops-codes#1-204.y
* subject = Reference(PatientPseudonym)
* episodeOfCare = Reference(BasismonitoringY1ExampleEOC)
* basedOn = Reference(LaboruntersuchungM0ExampleSR)
* appointment = Reference(LaboruntersuchungM0ExampleAPT)
* period.start = "2022-04-19T10:55:00Z"
* period.end = "2022-04-19T11:05:00Z"
* serviceProvider = Reference(UnikliniumDresdenMultipleSkleroseZentrum)
* partOf = Reference(VoruntersuchungenM0ExampleENC)