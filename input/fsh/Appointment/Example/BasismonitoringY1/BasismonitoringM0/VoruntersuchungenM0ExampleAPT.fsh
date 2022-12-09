Instance: VoruntersuchungenM0ExampleAPT
InstanceOf: Appointment
Usage: #example
Title: "Voruntersuchungen zum Besuchstermin M0 (SOLL)"
Description: "Beispiel Appointment zu den Voruntersuchungen M0"
* status = $appointment-status#proposed
* appointmentType = $v2-0276#ROUTINE
* description = "Voruntersuchungen"
* created = "2022-09-12T12:00:00Z"
* start = "2022-11-02T10:30:00Z"
* end = "2022-11-02T16:00:00Z"
* participant.type = $v3-participation-type#PPRF
* participant.actor = Reference(PatientPseudonym)
* participant.required = $participant-required#required
* participant.status = $participation-status#accepted

Instance: AllgemeineNeurologischeUntersuchungM0ExampleAPT
InstanceOf: Q4MSAbteilungskontaktTerminProfile
Usage: #example
Title: "Neurologische Untersuchung (M0, SOLL)"
Description: "Neurologische Untersuchung, festgelegt durch MSZ (M0, SOLL)"
* status = $appointment-status#fulfilled
* start = "2022-04-19T08:00:00Z"
* end = "2022-04-19T08:20:00Z"
* serviceType = $ops-codes#1-208.y
* minutesDuration = 20
* created = "2022-04-01T11:00:00Z"
* basedOn = Reference(AllgemeineNeurologischeUntersuchungM0ExampleSR)
* participant[Patient].type = $encounter-participant-type#PPRF
* participant[Patient].actor = Reference(PatientPseudonym)
* participant[Patient].required = $participant-required#required
* participant[Patient].status = $participation-status#accepted

Instance: GanganalyseM0ExampleAPT
InstanceOf: Q4MSAbteilungskontaktTerminProfile
Usage: #example
Title: "Ganganalyse (M0, SOLL)"
Description: "Ganganalyse, festgelegt durch MSZ (M0, SOLL)"
* status = $appointment-status#fulfilled
* start = "2022-04-19T08:30:00Z"
* end = "2022-04-19T08:55:00Z"
* serviceType = $ops-codes#1-798.x
* minutesDuration = 25
* created = "2022-04-01T11:00:00Z"
* basedOn = Reference(GanganalyseM0ExampleSR)
* participant[Patient].type = $encounter-participant-type#PPRF
* participant[Patient].actor = Reference(PatientPseudonym)
* participant[Patient].required = $participant-required#required
* participant[Patient].status = $participation-status#accepted

Instance: MultipleSclerosisPerformanceTestM0ExampleAPT
InstanceOf: Q4MSAbteilungskontaktTerminProfile
Usage: #example
Title: "MSPT (M0, SOLL)"
Description: "Multiple Sclerosis Performance Test, festgelegt durch MSZ (M0, SOLL)"
* status = $appointment-status#fulfilled
* start = "2022-04-19T09:00:00Z"
* end = "2022-04-19T09:25:00Z"
* serviceType = $ops-codes#1-20a
* minutesDuration = 25
* created = "2022-04-01T11:00:00Z"
* basedOn = Reference(MultipleSclerosisPerformanceTestM0ExampleSR)
* participant[Patient].type = $encounter-participant-type#PPRF
* participant[Patient].actor = Reference(PatientPseudonym)
* participant[Patient].required = $participant-required#required
* participant[Patient].status = $participation-status#accepted

Instance: TherapiespezifischeDiagnostikM0ExampleAPT
InstanceOf: Q4MSAbteilungskontaktTerminProfile
Usage: #example
Title: "Therapiespezifische Diagnostik (M0, SOLL)"
Description: "Therapiespezifische Diagnostik, festgelegt durch MSZ (M0, SOLL)"
* status = $appointment-status#fulfilled
* start = "2022-11-02T09:00:00Z"
* end = "2022-11-02T09:25:00Z"
* serviceType = $ops-codes#1-942.0
* minutesDuration = 25
* created = "2022-04-01T11:00:00Z"
* basedOn = Reference(TherapiespezifischeDiagnostikM0ExampleSR)
* participant[Patient].type = $encounter-participant-type#PPRF
* participant[Patient].actor = Reference(PatientPseudonym)
* participant[Patient].required = $participant-required#required
* participant[Patient].status = $participation-status#accepted

Instance: OptischeKohaerenztomographieM0ExampleAPT
InstanceOf: Q4MSAbteilungskontaktTerminProfile
Usage: #example
Title: "OCT (M0, SOLL)"
Description: "Optische Kohärenztomographie, festgelegt durch MSZ (M0, SOLL)"
* status = $appointment-status#fulfilled
* start = "2022-04-19T09:30:00Z"
* end = "2022-04-19T09:55:00Z"
* serviceType = $ops-codes#3-300.y
* minutesDuration = 25
* created = "2022-04-01T11:00:00Z"
* basedOn = Reference(OptischeKohaerenztomographieM0ExampleSR)
* participant[Patient].type = $encounter-participant-type#PPRF
* participant[Patient].actor = Reference(PatientPseudonym)
* participant[Patient].required = $participant-required#required
* participant[Patient].status = $participation-status#accepted

Instance: LaboruntersuchungM0ExampleAPT
InstanceOf: Q4MSAbteilungskontaktTerminProfile
Usage: #example
Title: "Laboruntersuchung (M0, SOLL)"
Description: "Laboruntersuchung, festgelegt durch MSZ (M0, SOLL)"
* status = $appointment-status#fulfilled
* start = "2022-04-19T10:20:00Z"
* end = "2022-04-19T10:30:00Z"
* serviceType = $ops-codes#1-204.y
* minutesDuration = 10
* created = "2022-04-01T11:00:00Z"
* basedOn = Reference(LaboruntersuchungM0ExampleSR)
* participant[Patient].type = $encounter-participant-type#PPRF
* participant[Patient].actor = Reference(PatientPseudonym)
* participant[Patient].required = $participant-required#required
* participant[Patient].status = $participation-status#accepted