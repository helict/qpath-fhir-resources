Instance: LaborergebnisExample
InstanceOf: Q4MSLaborergebnisProfile
Usage: #example
Title: "Beispiel Laborergebnis"
Description: "Beispiel DocumentReference für ein Laborergebnis"
* subject = Reference(PatientPseudonym)
* content[+].attachment.contentType = $mime-types#text/plain
* content[=].attachment.language = $ietf-bcp-47#DE
* content[=].attachment.data = "Cg=="
* content[=].attachment.title = "Leeres Beispiel Attachment"
