Instance: BefundExample
InstanceOf: Q4MSBefundProfile
Usage: #example
Title: "Beispiel Befund"
Description: "Beispiel DocumentReference für einen Befund"
* subject = Reference(PatientExample)
* content[+].attachment.title = "Leeres Beispiel Attachment für einen Befund"
