Alias: $encounter-kontaktart-de = http://fhir.de/CodeSystem/kontaktart-de
Alias: $q4ms-abteilungskontakt-sd = http://qpath4ms.ukdd.de/fhir/StructureDefinition/Q4MSAbteilungskontaktProfile

Profile: Q4MSAbteilungskontaktProfile
Parent: Encounter
Id: Q4MSAbteilungskontaktProfile
Title: "Abteilungskontakt (IST)"
Description: "Profil eines Abteilungskontaktes (IST)"
* ^url = $q4ms-abteilungskontakt-sd
* status 1..1 MS
* class MS
* serviceType 1..1 MS
* serviceType from $ops-codes (required)
* subject 1..1 MS
* subject only Reference(Q4MSPatientProfile or Q4MSPatientPseudonymProfile)
* episodeOfCare only Reference(Q4MSMonitoringzyklusProfile)
* basedOn only Reference(Q4MSProzedurProfile)
* appointment 0..1 MS
* appointment only Reference(Q4MSAbteilungskontaktTerminProfile)
* period 1..1 MS
* period.start 1..1 MS
* period.end 1..1 MS
* location MS
* serviceProvider 1..1 MS
* partOf 1..1 MS
* partOf only Reference(Q4MSEinrichtungskontaktProfile)

Instance: NeurologischeUntersuchungExampleENC
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
* class = $v3-act-code#AMB "Ambulant"
* type = $encounter-kontaktart-de#ub "Untersuchung und Behandlung"
* serviceType = $ops-codes#1-20a
* subject = Reference(PatientPseudonym)
* episodeOfCare = Reference(BasismonitoringErsterZyklusExampleEOC)
* basedOn = Reference(NeurologischeUntersuchungExampleSR)
* appointment = Reference(NeurologischeUntersuchungExampleAPT)
* period.start = "2022-04-19T08:05:00Z"
* period.end = "2022-04-19T08:20:00Z"
* serviceProvider = Reference(UnikliniumDresdenMultipleSkleroseZentrum)
* partOf = Reference(BasismonitoringErsterZyklusExampleENC)

Instance: MultipleSclerosisPerformanceTestExampleENC
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
* class = $v3-act-code#AMB "Ambulant"
* type = $encounter-kontaktart-de#ub "Untersuchung und Behandlung"
* serviceType = $ops-codes#8-92
* subject = Reference(PatientPseudonym)
* episodeOfCare = Reference(BasismonitoringErsterZyklusExampleEOC)
* basedOn = Reference(MultipleSclerosisPerformanceTestExampleSR)
* appointment = Reference(MultipleSclerosisPerformanceTestExampleAPT)
* period.start = "2022-04-19T08:45:00Z"
* period.end = "2022-04-19T09:05:00Z"
* serviceProvider = Reference(UnikliniumDresdenMultipleSkleroseZentrum)
* partOf = Reference(BasismonitoringErsterZyklusExampleENC)

Instance: GanganalyseExampleENC
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
* class = $v3-act-code#AMB "Ambulant"
* type = $encounter-kontaktart-de#ub "Untersuchung und Behandlung"
* serviceType = $ops-codes#1-798
* subject = Reference(PatientPseudonym)
* episodeOfCare = Reference(BasismonitoringErsterZyklusExampleEOC)
* basedOn = Reference(GanganalyseExampleSR)
* appointment = Reference(GanganalyseExampleAPT)
* period.start = "2022-04-19T09:35:00Z"
* period.end = "2022-04-19T10:00:00Z"
* serviceProvider = Reference(UnikliniumDresdenMultipleSkleroseZentrum)
* partOf = Reference(BasismonitoringErsterZyklusExampleENC)

Instance: OptischeKohaerenztomographieExampleENC
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
* class = $v3-act-code#AMB "Ambulant"
* type = $encounter-kontaktart-de#ub "Untersuchung und Behandlung"
* serviceType = $ops-codes#3-300
* subject = Reference(PatientPseudonym)
* episodeOfCare = Reference(BasismonitoringErsterZyklusExampleEOC)
* basedOn = Reference(OptischeKohaerenztomographieExampleSR)
* appointment = Reference(OptischeKohaerenztomographieExampleAPT)
* period.start = "2022-04-19T10:10:00Z"
* period.end = "2022-04-19T10:25:00Z"
* serviceProvider = Reference(UnikliniumDresdenMultipleSkleroseZentrum)
* partOf = Reference(BasismonitoringErsterZyklusExampleENC)

Instance: ArztvorstellungExampleENC
InstanceOf: Q4MSAbteilungskontaktProfile
Usage: #example
Title: "Arztvorstellung (M0, IST)"
Description: "Arztvorstellung, beendet (M0, IST)"
* status = $encounter-status#finished
* statusHistory[0].status = $encounter-status#planned
* statusHistory[=].period.start = "2022-04-01T11:00:00Z"
* statusHistory[=].period.end = "2022-04-01T11:00:00Z"
* statusHistory[+].status = $encounter-status#arrived
* statusHistory[=].period.start = "2022-04-19T10:25:00Z"
* statusHistory[=].period.end = "2022-04-19T10:25:00Z"
* class = $v3-act-code#AMB "Ambulant"
* type = $encounter-kontaktart-de#konsil "Konsil"
* serviceType = $dkgev-fachabteilungsschluessel-erweitert#2800
* subject = Reference(PatientPseudonym)
* episodeOfCare = Reference(BasismonitoringErsterZyklusExampleEOC)
* basedOn = Reference(ArztvorstellungExampleSR)
* appointment = Reference(ArztvorstellungExampleAPT)
* period.start = "2022-04-19T10:25:00Z"
* period.end = "2022-04-19T10:40:00Z"
* serviceProvider = Reference(UnikliniumDresdenMultipleSkleroseZentrum)
* partOf = Reference(BasismonitoringErsterZyklusExampleENC)

Instance: LaboruntersuchungExampleENC
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
* class = $v3-act-code#AMB "Ambulant"
* type = $encounter-kontaktart-de#ub "Untersuchung und Behandlung"
* serviceType = $ops-codes#1-942
* subject = Reference(PatientPseudonym)
* episodeOfCare = Reference(BasismonitoringErsterZyklusExampleEOC)
* basedOn = Reference(LaboruntersuchungExampleSR)
* appointment = Reference(LaborExampleAPT)
* period.start = "2022-04-19T10:55:00Z"
* period.end = "2022-04-19T11:05:00Z"
* serviceProvider = Reference(UnikliniumDresdenMultipleSkleroseZentrum)
* partOf = Reference(BasismonitoringErsterZyklusExampleENC)