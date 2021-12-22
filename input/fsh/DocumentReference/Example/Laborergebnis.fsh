Instance: LaborergebnisExample
InstanceOf: Q4MSLaborergebnisProfile
Usage: #example
Title: "Beispiel Laborergebnis"
Description: "Beispiel DocumentReference für ein Laborergebnis"
* subject = Reference(PatientExample)
* content[+].attachment.title = "Leeres Beispiel Attachment für ein Laborergebnis"