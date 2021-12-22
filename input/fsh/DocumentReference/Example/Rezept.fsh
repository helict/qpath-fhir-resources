Instance: RezeptExample
InstanceOf: Q4MSRezeptProfile
Usage: #example
Title: "Beispiel Rezept"
Description: "Beispiel DocumentReference für ein Rezept"
* subject = Reference(PatientExample)
* content[+].attachment.title = "Leeres Beispiel Attachment für ein Rezept"
