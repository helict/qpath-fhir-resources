Instance: DokumenteAnfragenPatientExampleMH
InstanceOf: MessageHeader
Usage: #example
Title: "Beispiel MessageHeader Dokumente beim Patienten anfragen"
Description: "Metadaten der Nachricht zur Anfrage von Dokumenten beim Patienten"
* eventCoding = $q4ms-nachrichtenereignisse#document-request
* source.endpoint = "https://example.org/fhir/task"
* focus = Reference(DokumenteAnfragenPatientExampleTK)
* definition = Canonical(Q4MSDokumenteAnfragenMD)
