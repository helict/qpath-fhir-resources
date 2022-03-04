Instance: EMIQFragebogenAusfuellenExampleTK
InstanceOf: Task
Usage: #example
Title: "Beispiel Task EMIQ Fragebogen ausfüllen"
Description: "Beispiel einer Anforderung zum Ausfüllen des EMIQ-Fragebogens"
* partOf = Reference(DokumenteAnfragenPatientExampleTK)
* status = $task-status#requested
* intent = $request-intent#order
* for = Reference(PatientJohnDoe)
* description = "EMIQ Fragebogen ausfüllen"
* authoredOn = "2022-03-03T10:00:00+01:00"
* restriction.period.end = "2022-03-10T12:00:00+01:00"
* input.type.coding = $q4ms-dokumentarten#questionnaire
* input.type.text = "Auszufüllender EMIQ Fragebogen"
* input.valueReference = Reference(ExerciseMentalIllnessQuestionnaire)