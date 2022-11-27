Instance: BesuchsterminM9ExampleAPT
InstanceOf: Q4MSEinrichtungskontaktTerminProfile
Usage: #example
Title: "Beispiel vierter Besuchstermin (M9)"
Description: "Beispiel Appointment zum vierten Besuchstermin am 01.08.2023, 10:30 Uhr (M9) - vereinbart während der Terminvereinbarung in M6"
* status = $appointment-status#proposed
* appointmentType = $v2-0276#ROUTINE
* description = "Vierter Besuchstermin (M9)"
* created = "2022-09-12T12:00:00Z"
* participant[Patient].type = $v3-participation-type#PPRF
* participant[Patient].actor = Reference(PatientPseudonym)
* participant[Patient].required = $participant-required#required
* participant[Patient].status = $participation-status#needs-action
// take over PLAN from CarePlan/ServiceRequest when scheduling, can be adapted by doctor
* start = "2023-08-01T10:30:00Z"
* end = "2023-08-01T16:00:00Z"