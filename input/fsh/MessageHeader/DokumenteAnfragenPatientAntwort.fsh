Instance: DokumenteAnfragenPatientAntwortExampleMH
InstanceOf: MessageHeader
Usage: #example
Title: "Beispiel MessageHeader Antwort auf Dokumente beim Patienten anfragen"
Description: "Metadaten der Antwortnachricht zur Anfrage von Dokumenten beim Patienten"
* eventCoding = $q4ms-nachrichtenereignisse#document-request
* source.endpoint = "https://example.org/fhir/task"
* focus = Reference(DokumenteAnfragenPatientAntwortExampleTK)
* definition = Canonical(Q4MSDokumenteAnfragenAntwortMD)
