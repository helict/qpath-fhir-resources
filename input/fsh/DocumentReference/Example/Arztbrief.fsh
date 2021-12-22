Instance: ArztbriefExample
InstanceOf: Q4MSArztbriefProfile
Usage: #example
Title: "Beispiel Arztbrief"
Description: "Beispiel DocumentReference für einen Arztbrief"
* subject = Reference(PatientExample)
* content[+].attachment.title = "Leeres Beispiel Attachment für einen Arztbrief"
