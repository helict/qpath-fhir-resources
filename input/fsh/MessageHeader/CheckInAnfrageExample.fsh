Instance: CheckInAnfrageExampleMH
InstanceOf: Q4MSCheckInNachrichtHeaderProfile
Usage: #example
Title: "Beispiel Check-In-Anfrage Nachrichtenkopf"
Description: "Beispiel Bundle Nachrichtenkopf einer Check-In-Anfrage"
* id = "af021986-5fda-4a75-b3d8-71ad1474fc49"
* eventCoding = $q4ms-nachrichtenereignisse#check-in-request
* source.endpoint = "https://cis.example.org/fhir/task"
* focus = Reference(CheckInM0ExampleTSK)
* definition = Canonical(Q4MSCheckInAnfrageMD)
