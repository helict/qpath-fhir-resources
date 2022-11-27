Instance: BesuchsterminM0ExampleAPT
InstanceOf: Q4MSEinrichtungskontaktTerminProfile
Usage: #example
Title: "Basismonitoringtermin Z1 (M0, SOLL)"
Description: "Beispiel Appointment Basismonitoring 1. Zyklus (M0, SOLL) am 02.11.2022, 10:30 Uhr (M0) - vereinbart während der Erstvorstellung"
* status = $appointment-status#fulfilled
* appointmentType = $v2-0276#ROUTINE
* description = "Zweiter Besuchstermin (M3)"
* created = "2022-09-12T12:00:00Z"
* participant[Patient].type = $v3-participation-type#PPRF
* participant[Patient].actor = Reference(PatientPseudonym)
* participant[Patient].required = $participant-required#required
* participant[Patient].status = $participation-status#accepted
// after it was planned with the patient
* start = "2022-11-02T10:30:00Z"
* end = "2022-11-02T16:00:00Z"