Instance: CheckInAntwortExampleMH
InstanceOf: Q4MSCheckInNachrichtHeaderProfile
Usage: #example
Title: "Beispiel Check-In-Antwort Nachrichtenkopf"
Description: "Beispiel Bundle Nachrichtenkopf einer Check-In-Antwort"
* id = "5ea78a0e-5ef6-406e-ab88-611a90aa46d2"
* eventCoding = $q4ms-nachrichtenereignisse#check-in-response
* source.endpoint = "https://pis.example.org/fhir/task"
* focus = Reference(CheckInAntwortM0ExampleTSK)
* definition = Canonical(Q4MSCheckInAntwortMD)
