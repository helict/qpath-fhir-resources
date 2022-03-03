Instance: FragebogenanforderungMessageHeaderExample
InstanceOf: MessageHeader
Usage: #example
Title: "Fragebogenanforderung Message Header"
Description: "Metadaten der Nachricht für die Anforderungen zum Ausfüllen eines Fragebogens"
* eventCoding = $q4ms-dokumentanforderungkategorie#fill-questionnaire
* source.endpoint = "https://example.org/fhir/task"
* focus = Reference(EMIQFragebogenanforderungTaskExample)
* definition = Canonical(Q4MSFragebogenanforderungMD)
