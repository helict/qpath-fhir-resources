Instance: RezeptExample
InstanceOf: Q4MSRezeptProfile
Usage: #example
Title: "Beispiel Rezept"
Description: "Beispiel DocumentReference für ein Rezept"
* subject = Reference(PatientPseudonym)
* content[+].attachment.contentType = $mime-types#text/plain
* content[=].attachment.language = $ietf-bcp-47#DE
* content[=].attachment.data = "Cg=="
* content[=].attachment.title = "Leeres Beispiel Attachment"
