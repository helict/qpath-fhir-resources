Instance: DokumenteAnfragenPatientExampleBM
InstanceOf: Bundle
Usage: #example
Title: "Dokumente beim Patienten anfragen Message"
Description: "Nachricht zur Anforderung zum Ausfüllen eines Fragebogens"
* type = $bundle-type#message
* entry[0].fullUrl = "MessageHeader/DokumenteAnfragenPatientExampleMH"
* entry[=].resource = DokumenteAnfragenPatientExampleMH
* entry[+].fullUrl = "Task/DokumenteAnfragenPatientExampleTK"
* entry[=].resource = DokumenteAnfragenPatientExampleTK
* entry[+].fullUrl = "Task/EMIQFragebogenAusfuellenExampleTK"
* entry[=].resource = EMIQFragebogenAusfuellenExampleTK