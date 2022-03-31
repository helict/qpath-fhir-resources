Instance: CheckInAntwortExampleMH
InstanceOf: Q4MSCheckInNachrichtHeaderProfile
Usage: #example
Title: "Beispiel Check-In-Antwort Nachrichtenkopf"
Description: "Beispiel Bundle Nachrichtenkopf einer Check-In-Antwort"
* eventCoding = $q4ms-nachrichtenereignisse#check-in-response
* source.endpoint = "https://pis.example.org/fhir/task"
* focus = Reference(CheckInAntwortExampleTSK)
* definition = Canonical(Q4MSCheckInAntwortMD)
