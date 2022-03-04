Instance: DokumenteAnfragenPatientAntwortExampleBM
InstanceOf: Bundle
Usage: #example
Title: "Antwort auf Dokumente beim Patienten anfragen Message"
Description: "Antwortnachricht zur Anforderung zum Ausfüllen eines Fragebogens"
* type = $bundle-type#message
* entry[0].fullUrl = "MessageHeader/DokumenteAnfragenPatientAntwortExampleMH"
* entry[=].resource = DokumenteAnfragenPatientAntwortExampleMH
* entry[+].fullUrl = "Task/DokumenteAnfragenPatientAntwortExampleTK"
* entry[=].resource = DokumenteAnfragenPatientAntwortExampleTK
* entry[+].fullUrl = "Task/EMIQFragebogenAusfuellenAntwortExampleTK"
* entry[=].resource = EMIQFragebogenAusfuellenAntwortExampleTK