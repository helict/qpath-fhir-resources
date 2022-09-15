Instance: KonsiliarberichtExample
InstanceOf: Q4MSKonsiliarberichtProfile
Usage: #example
Title: "Beispiel Konsiliarbericht"
Description: "Beispiel DocumentReference für einen Konsiliarbericht"
* subject = Reference(PatientPseudonym)
* content[+].attachment.contentType = $mime-types#text/plain
* content[=].attachment.language = $ietf-bcp-47#DE
* content[=].attachment.data = "Cg=="
* content[=].attachment.title = "Leeres Beispiel Attachment"
