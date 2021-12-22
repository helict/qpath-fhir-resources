Instance: SonstigesDokumentExample
InstanceOf: Q4MSSonstigesDokumentProfile
Usage: #example
Title: "Beispiel Sonstiges Dokument"
Description: "Beispiel DocumentReference für ein Sonstiges Dokument, z.B. AU"
* subject = Reference(PatientExample)
* type = $ihe-xds-type-code#BESC
* content[+].attachment.title = "Leeres Beispiel Attachment für ein Sonstiges Dokument, z.B. AU"