Instance: ArztbriefExample
InstanceOf: Q4MSArztbriefProfile
Usage: #example
Title: "Beispiel Arztbrief"
Description: "Beispiel DocumentReference für einen Arztbrief"
* subject = Reference(PatientPseudonym)
* content[+].attachment.contentType = $mime-types#text/plain
* content[=].attachment.language = $ietf-bcp-47#DE
* content[=].attachment.data = "Cg=="
* content[=].attachment.title = "Leeres Beispiel Attachment"