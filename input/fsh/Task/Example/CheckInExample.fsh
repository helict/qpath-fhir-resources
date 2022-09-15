// Beispiel: Anfrage Check-In inkl. EMIQ Fragebogen ausfuellen

Instance: CheckInExampleTSK
InstanceOf: Q4MSPatientCheckInProfile
Usage: #example
Title: "Beispiel Task Check-In"
Description: "Beispiel Task zum Check-In eines Patienten"
* id = "47d39109-4e14-4a44-bd7a-fdd887ed86aa"
* instantiatesCanonical = Canonical(Q4MSCheckInAD)
* basedOn = Reference(CheckInExampleCP)
* description = "Aufgaben für den Check-In zum nächsten Arztbesuch"
* status = $task-status#requested
* intent = $request-intent#order
* for = Reference(PatientPseudonym)
* restriction.period.end = "2021-08-12T00:00:00Z"
* input.type.text = "Nächster Besuchstermin"
* input.valueReference = Reference(ErsterBesuchsterminExampleAPT)

Instance: EmiqFragebogenAusfuellenExampleTSK
InstanceOf: Q4MSPatientFrageboegenAusfuellenProfile
Usage: #example
Title: "Beispiel Task Fragebögen ausfüllen"
Description: "Beispiel Task zum Ausfüllen von Fragebögen"
* id = "fb3902cc-5265-4ec6-9476-99434350b5b3"
* description = "Aufgabe zum Ausfüllen von Fragebögen"
* partOf = Reference(CheckInExampleTSK)
* status = $task-status#requested
* intent = $request-intent#order
* for = Reference(PatientPseudonym)
* restriction.period.end = "2021-08-12T00:00:00Z"
* input.type.coding = $q4ms-dokumentarten#questionnaire
* input.type.text = "EMIQ Fragebogen"
* input.valueReference = Reference(ExerciseMentalIllnessQuestionnaire)

// Beispiel: Antwort Check-In inkl. EMIQ Fragebogen ausfuellen

Instance: CheckInAntwortExampleTSK
InstanceOf: Q4MSPatientCheckInProfile
Usage: #example
Title: "Beispiel Task Check-In (Empfangsbestätigung)"
Description: "Beispiel Task zum Check-In eines Patienten (Empfangsbestätigung)"
* id = "519c0009-118d-4055-95bc-9071d8470850"
* instantiatesCanonical = Canonical(Q4MSCheckInAD)
* basedOn = Reference(CheckInExampleCP)
* description = "Aufgaben für den Check-In zum nächsten Arztbesuch"
* status = $task-status#received
* intent = $request-intent#order
* for = Reference(PatientPseudonym)
* restriction.period.end = "2021-08-12T00:00:00Z"
* input.type.text = "Nächster Besuchstermin"
* input.valueReference = Reference(ErsterBesuchsterminExampleAPT)

Instance: EmiqFragebogenAusfuellenAntwortExampleTSK
InstanceOf: Q4MSPatientFrageboegenAusfuellenProfile
Usage: #example
Title: "Beispiel Task Fragebögen ausfüllen (Empfangsbestätigung)"
Description: "Beispiel Task zum Ausfüllen von Fragebögen (Empfangsbestätigung)"
* id = "a7c7bb9b-1234-491c-9bb5-78814c12a4c6"
* description = "Aufgabe zum Ausfüllen von Fragebögen"
* partOf = Reference(CheckInExampleTSK)
* status = $task-status#received
* intent = $request-intent#order
* for = Reference(PatientPseudonym)
* restriction.period.end = "2021-08-12T00:00:00Z"
* input.type.coding = $q4ms-dokumentarten#questionnaire
* input.type.text = "EMIQ Fragebogen"
* input.valueReference = Reference(ExerciseMentalIllnessQuestionnaire)