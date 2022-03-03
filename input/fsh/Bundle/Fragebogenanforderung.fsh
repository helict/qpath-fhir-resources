Instance: FragebogenanforderungMessageExample
InstanceOf: Bundle
Usage: #example
Title: "Fragebogenanforderung Message"
Description: "Nachricht zur Anforderung zum Ausfüllen eines Fragebogens"
* type = $bundle-type#message
* entry[0].fullUrl = "MessageHeader/FragebogenanforderungMessageHeaderExample"
* entry[=].resource = FragebogenanforderungMessageHeaderExample
* entry[+].fullUrl = "Task/EMIQFragebogenanforderungTaskExample"
* entry[=].resource = EMIQFragebogenanforderungTaskExample