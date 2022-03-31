Instance: CheckInAnfrageExampleMH
InstanceOf: Q4MSCheckInNachrichtHeaderProfile
Usage: #example
Title: "Beispiel Check-In-Anfrage Nachrichtenkopf"
Description: "Beispiel Bundle Nachrichtenkopf einer Check-In-Anfrage"
* eventCoding = $q4ms-nachrichtenereignisse#check-in-request
* source.endpoint = "https://cis.example.org/fhir/task"
* focus = Reference(CheckInExampleTSK)
* definition = Canonical(Q4MSCheckInAnfrageMD)
