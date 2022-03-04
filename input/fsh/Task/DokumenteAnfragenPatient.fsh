Instance: DokumenteAnfragenPatientExampleTK
InstanceOf: Task
Usage: #example
Title: "Beispiel Task Dokumente beim Patienten anfragen"
Description: "Beispiel Task für eine Dokumentenanfrage beim Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSDokumenteAnfragenAD)
* basedOn = Reference(DokumenteAnfragenPatientExampleCP)
* status = $task-status#requested
* intent = $request-intent#order
* for = Reference(PatientJohnDoe)
* description = "Dokumente anfragen"
* authoredOn = "2022-03-03T10:00:00+01:00"
* restriction.period.end = "2022-03-10T12:00:00+01:00"