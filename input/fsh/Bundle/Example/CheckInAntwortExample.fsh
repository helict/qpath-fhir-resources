Instance: CheckInAntwortExampleBM
InstanceOf: Bundle
Usage: #example
Title: "Beispiel Check-In-Antwort"
Description: "Beispiel Bundle Nachricht einer Check-In-Antwort"
* type = $bundle-type#message
* entry[0].fullUrl = "MessageHeader/CheckInAntwortExampleMH"
* entry[=].resource = CheckInAntwortExampleMH
* entry[+].fullUrl = "Task/CheckInAntwortExampleTSK"
* entry[=].resource = CheckInAntwortExampleTSK
* entry[+].fullUrl = "Task/EmiqFragebogenAusfuellenAntwortExampleTSK"
* entry[=].resource = EmiqFragebogenAusfuellenAntwortExampleTSK