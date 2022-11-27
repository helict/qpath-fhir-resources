Instance: TerminvereinbarungM3ExampleAPT
InstanceOf: Appointment
Usage: #example
Title: "Beispiel nächster Besuchstermin M3 -> M6"
Description: "Beispiel Appointment zum nächsten Besuchstermin (M6) am 01.08.2022, 09:30 Uhr"
* status = $appointment-status#proposed
* appointmentType = $v2-0276#ROUTINE
* description = "Nächster Besuchstermin"
* created = "2022-05-02T16:00:00Z"
* participant.type = $v3-participation-type#PPRF
* participant.actor = Reference(PatientPseudonym)
* participant.required = $participant-required#required
* participant.status = $participation-status#needs-action
* requestedPeriod.start = "2022-08-01T09:30:00Z"