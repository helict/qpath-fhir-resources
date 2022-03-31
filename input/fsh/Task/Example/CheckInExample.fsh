// Beispiel: Anfrage Check-In inkl. EMIQ Fragebogen ausfuellen

Instance: CheckInExampleTSK
InstanceOf: Q4MSPatientCheckInProfile
Usage: #example
Title: "Beispiel Task Check-In"
Description: "Beispiel Task zum Check-In eines Patienten"
* instantiatesCanonical = Canonical(Q4MSCheckInAD)
* basedOn = Reference(CheckInExampleCP)
* description = "Aufgaben für den Check-In zum nächsten Arztbesuch"
* status = $task-status#requested
* intent = $request-intent#order
* for = Reference(PatientJohnDoe)
* restriction.period.end = "2021-08-12T00:00:00Z"
* input.type.text = "Nächster Besuchstermin"
* input.valueReference = Reference(ErsterBesuchsterminExampleAPT)

Instance: EmiqFragebogenAusfuellenExampleTSK
InstanceOf: Q4MSPatientFrageboegenAusfuellenProfile
Usage: #example
Title: "Beispiel Task Fragebögen ausfüllen"
Description: "Beispiel Task zum Ausfüllen von Fragebögen"
* description = "Aufgabe zum Ausfüllen von Fragebögen"
* partOf = Reference(CheckInExampleTSK)
* status = $task-status#requested
* intent = $request-intent#order
* for = Reference(PatientJohnDoe)
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
* instantiatesCanonical = Canonical(Q4MSCheckInAD)
* basedOn = Reference(CheckInExampleCP)
* description = "Aufgaben für den Check-In zum nächsten Arztbesuch"
* status = $task-status#received
* intent = $request-intent#order
* for = Reference(PatientJohnDoe)
* restriction.period.end = "2021-08-12T00:00:00Z"
* input.type.text = "Nächster Besuchstermin"
* input.valueReference = Reference(ErsterBesuchsterminExampleAPT)

Instance: EmiqFragebogenAusfuellenAntwortExampleTSK
InstanceOf: Q4MSPatientFrageboegenAusfuellenProfile
Usage: #example
Title: "Beispiel Task Fragebögen ausfüllen (Empfangsbestätigung)"
Description: "Beispiel Task zum Ausfüllen von Fragebögen (Empfangsbestätigung)"
* description = "Aufgabe zum Ausfüllen von Fragebögen"
* partOf = Reference(CheckInExampleTSK)
* status = $task-status#received
* intent = $request-intent#order
* for = Reference(PatientJohnDoe)
* restriction.period.end = "2021-08-12T00:00:00Z"
* input.type.coding = $q4ms-dokumentarten#questionnaire
* input.type.text = "EMIQ Fragebogen"
* input.valueReference = Reference(ExerciseMentalIllnessQuestionnaire)