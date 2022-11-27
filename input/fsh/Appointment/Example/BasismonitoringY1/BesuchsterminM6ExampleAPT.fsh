Instance: BesuchsterminM6ExampleAPT
InstanceOf: Q4MSEinrichtungskontaktTerminProfile
Usage: #example
Title: "Beispiel dritter Besuchstermin (M6)"
Description: "Beispiel Appointment zum dritten Besuchstermin am 02.05.2023, 10:30 Uhr (M6) - vereinbart während der Terminvereinbarung in M3"
* status = $appointment-status#proposed
* appointmentType = $v2-0276#ROUTINE
* description = "Dritter Besuchstermin (M6)"
* created = "2022-09-12T12:00:00Z"
* participant[Patient].type = $v3-participation-type#PPRF
* participant[Patient].actor = Reference(PatientPseudonym)
* participant[Patient].required = $participant-required#required
* participant[Patient].status = $participation-status#needs-action
// take over PLAN from CarePlan/ServiceRequest when scheduling, can be adapted by doctor
* start = "2023-05-02T10:30:00Z"
* end = "2023-05-02T16:00:00Z"