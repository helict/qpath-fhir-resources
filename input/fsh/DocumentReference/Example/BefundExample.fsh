Instance: BefundExample
InstanceOf: Q4MSBefundProfile
Usage: #example
Title: "Beispiel Befund"
Description: "Beispiel DocumentReference für einen Befund"
* subject = Reference(PatientPseudonym)
* content[+].attachment.contentType = $mime-types#text/plain
* content[=].attachment.language = $ietf-bcp-47#DE
* content[=].attachment.data = "Cg=="
* content[=].attachment.title = "Leeres Beispiel Attachment"
