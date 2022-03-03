Instance: DokumenteAbfragenPatientTaskExample
InstanceOf: Task
Usage: #example
Title: "Beispiel Dokumente abfragen"
Description: "Beispiel Task für eine Dokumentenabfrage beim Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSDokumenteAbfragenAD)
* status = $task-status#requested
* intent = $request-intent#order
* for = Reference(PatientJohnDoe)
* focus = Reference(DokumenteAbfragenPatientExampleCP)
* description = "Dokumente abfragen"
* authoredOn = "2022-03-03T10:00:00+01:00"
* restriction.period.end = "2022-03-10T12:00:00+01:00"