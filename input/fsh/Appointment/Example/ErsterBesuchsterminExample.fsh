Instance: ErsterBesuchsterminExampleAPT
InstanceOf: Appointment
Usage: #example
Title: "Beispiel erster Besuchstermin"
Description: "Beispiel Appointment zum ersten Besuchstermin am 16.08.2021, 10:30 Uhr (M0)"
* status = $appointment-status#proposed
* appointmentType = $v2-0276#ROUTINE
* description = "Erster Besuchstermin"
* created = "2021-05-12T12:00:00Z"
* participant.type = $v3-participation-type#PPRF
* participant.actor = Reference(PatientPseudonym)
* participant.required = $participant-required#required
* participant.status = $participation-status#needs-action
* requestedPeriod.start = "2021-08-16T10:30:00Z"