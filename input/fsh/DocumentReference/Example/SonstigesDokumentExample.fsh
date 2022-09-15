Instance: SonstigesDokumentExample
InstanceOf: Q4MSSonstigesDokumentProfile
Usage: #example
Title: "Beispiel Sonstiges Dokument"
Description: "Beispiel DocumentReference für ein Sonstiges Dokument, z.B. AU"
* subject = Reference(PatientPseudonym)
* type = $ihe-xds-type-code#BESC
* content[+].attachment.contentType = $mime-types#text/plain
* content[=].attachment.language = $ietf-bcp-47#DE
* content[=].attachment.data = "Cg=="
* content[=].attachment.title = "Leeres Beispiel Attachment"
