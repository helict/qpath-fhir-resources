// Beispiel: Anfrage Check-In inkl. EMIQ Fragebogen ausfuellen

Instance: CheckInM0ExampleTSK
InstanceOf: Q4MSPatientCheckInProfile
Usage: #example
Title: "Beispiel Task Check-In"
Description: "Beispiel Task zum Check-In eines Patienten"
* id = "47d39109-4e14-4a44-bd7a-fdd887ed86aa"
* instantiatesCanonical = Canonical(Q4MSCheckInAD)
* basedOn = Reference(CheckInM0ExampleCP)
* description = "Aufgaben für den Check-In zum nächsten Arztbesuch"
* status = $task-status#accepted
* intent = $request-intent#order
* for = Reference(PatientPseudonym)
* input.type.text = "Besuchstermin"
* input.valueReference = Reference(BesuchsterminM0ExampleAPT)
// after schedule (SOLL-Termin: 7-Tage vor appointment)
* restriction.period.end = "2022-10-25"

Instance: EmiqFragebogenAusfuellenM0ExampleTSK
InstanceOf: Q4MSPatientFrageboegenAusfuellenProfile
Usage: #example
Title: "Beispiel Task Fragebögen ausfüllen"
Description: "Beispiel Task zum Ausfüllen von Fragebögen"
* id = "fb3902cc-5265-4ec6-9476-99434350b5b3"
* description = "Aufgabe zum Ausfüllen von Fragebögen"
* partOf = Reference(CheckInM0ExampleTSK)
* status = $task-status#requested
* intent = $request-intent#order
* for = Reference(PatientPseudonym)
* restriction.period.end = "2022-10-25"
* input.type.coding = $q4ms-dokumentarten#questionnaire
* input.type.text = "EMIQ Fragebogen"
* input.valueReference = Reference(ExerciseMentalIllnessQuestionnaire)

// Beispiel: Antwort Check-In inkl. EMIQ Fragebogen ausfuellen

Instance: CheckInAntwortM0ExampleTSK
InstanceOf: Q4MSPatientCheckInProfile
Usage: #example
Title: "Beispiel Task Check-In (Empfangsbestätigung)"
Description: "Beispiel Task zum Check-In eines Patienten (Empfangsbestätigung)"
* id = "519c0009-118d-4055-95bc-9071d8470960"
* instantiatesCanonical = Canonical(Q4MSCheckInAD)
* basedOn = Reference(CheckInM0ExampleCP)
* description = "Aufgaben für den Check-In zum nächsten Arztbesuch"
* status = $task-status#received
* intent = $request-intent#order
* for = Reference(PatientPseudonym)
* restriction.period.end = "2022-10-25"
* input.type.text = "Besuchstermin"
* input.valueReference = Reference(BesuchsterminM0ExampleAPT)

Instance: EmiqFragebogenAusfuellenAntwortM0ExampleTSK
InstanceOf: Q4MSPatientFrageboegenAusfuellenProfile
Usage: #example
Title: "Beispiel Task Fragebögen ausfüllen (Empfangsbestätigung)"
Description: "Beispiel Task zum Ausfüllen von Fragebögen (Empfangsbestätigung)"
* id = "a7c7bb9b-1234-491c-9bb5-78814c12a4c6"
* description = "Aufgabe zum Ausfüllen von Fragebögen"
* partOf = Reference(CheckInM0ExampleTSK)
* status = $task-status#received
* intent = $request-intent#order
* for = Reference(PatientPseudonym)
* restriction.period.end = "2022-10-25"
* input.type.coding = $q4ms-dokumentarten#questionnaire
* input.type.text = "EMIQ Fragebogen"
* input.valueReference = Reference(ExerciseMentalIllnessQuestionnaire)