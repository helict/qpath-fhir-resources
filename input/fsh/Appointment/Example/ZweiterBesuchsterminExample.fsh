Instance: ZweiterBesuchsterminExampleAPT
InstanceOf: Appointment
Usage: #example
Title: "Beispiel zweiter Besuchstermin"
Description: "Beispiel Appointment zum zweiten Besuchstermin am 07.12.2021, 09:30 Uhr (M1)"
* status = $appointment-status#proposed
* appointmentType = $v2-0276#ROUTINE
* description = "Zweiter Besuchstermin"
* created = "2021-08-16T16:00:00Z"
* participant.type = $v3-participation-type#PPRF
* participant.actor = Reference(PatientPseudonym)
* participant.required = $participant-required#required
* participant.status = $participation-status#needs-action
* requestedPeriod.start = "2021-12-07T09:30:00Z"