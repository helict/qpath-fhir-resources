Instance: ArztvorstellungExampleCP
InstanceOf: CarePlan
Title: "Beispiel Arztvorstellung"
Description: "Beispiel CarePlan für die Arztvorstellung eines Patienten (M0)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSArztvorstellung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(ArztvorstellungExampleRG)

Instance: ArztvorstellungExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Arztvorstellung"
Description: "Beispiel RequestGroup für die Arztvorstellung eines Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSArztvorstellung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action[0].id = "examination"
* action[=].groupingBehavior = #logical-group
* action[=].selectionBehavior = #all
* action[=].requiredBehavior = #must-unless-documented
* action[=].cardinalityBehavior = #single
* action[=].action[0].title = "Allgemeine und neurologische Anamnese"
* action[=].action[=].resource = Reference(AllgemeineNeurologischeAnamneseExampleCP)
* action[=].action[+].title = "Befundauswertung"
* action[=].action[=].resource = Reference(BefundauswertungExampleCP)
* action[=].action[+].title = "Therapiespezifische Diagnostik"
* action[=].action[=].resource = Reference(TherapiespezifischeDiagnostikExampleCP)
* action[=].action[+].title = "Zusatzdiagnostik"
* action[=].action[=].resource = Reference(ZusatzdiagnostikExampleCP)
* action[+].title = "Auswertung"
* action[=].relatedAction.actionId = "examination"
* action[=].relatedAction.relationship = #after-end
* action[=].resource = Reference(AuswertungExampleCP)

// Arztvorstellung -> Befundauswertung

Instance: BefundauswertungExampleCP
InstanceOf: CarePlan
Title: "Beispiel Befundauswertung"
Description: "Beispiel CarePlan für die Durchführung einer Befundauswertung mit dem Patienten (M0)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSBefundauswertung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(BefundauswertungExampleRG)

Instance: BefundauswertungExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Befundauswertung"
Description: "Beispiel RequestGroup für die Durchführung einer Befundauswertung mit dem Patienten (M0)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSBefundauswertung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Befundauswertung"
* action.resource = Reference(BefundauswertungExampleTSK)

Instance: BefundauswertungExampleTSK
InstanceOf: Task
Usage: #example
Title: "Beispiel Befundauswertung"
Description: "Beispiel Task für die Durchführung einer Befundauswertung mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSBefundauswertungAD)
* status = $task-status#ready
* intent = $request-intent#option
* code = $task-code#approve
* description = "Befundauswertung"
* executionPeriod.start = "2021-08-16T10:30:00Z"
* executionPeriod.end = "2021-08-16T16:00:00Z"
* authoredOn = "2021-08-16T10:30:00Z"
* performerType = $snomed-ct#56397003
//* input[0].type = $q4ms-dokumentarten#finding
//* input[=].valueDocumentReference = Reference(Q4MSBefundProfile)
//* input[+].type = $q4ms-dokumentarten#laboratory-result
//* input[=].valueDocumentReference = Reference(Q4MSLaborergebnisProfile)

// Arztvorstellung -> Allgemeine und neurologische Anamnese

Instance: AllgemeineNeurologischeAnamneseExampleCP
InstanceOf: CarePlan
Title: "Beispiel Allgemeine und neurologische Anamnese"
Description: "Beispiel CarePlan für die Durchführung einer allgemeinen und neurologischen Anamnese mit dem Patienten (M0)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSAllgemeineNeurologischeAnamnese)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(AllgemeineNeurologischeAnamneseExampleRG)

Instance: AllgemeineNeurologischeAnamneseExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Allgemeine und neurologische Anamnese"
Description: "Beispiel RequestGroup für die Durchführung einer allgemeinen und neurologischen Anamnese mit dem Patienten (M0)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSAllgemeineNeurologischeAnamnese)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Allgemeine und neurologische Anamnese"
* action.resource = Reference(AllgemeineNeurologischeAnamneseExampleTSK)

Instance: AllgemeineNeurologischeAnamneseExampleTSK
InstanceOf: Task
Usage: #example
Title: "Beispiel Allgemeine und neurologische Anamnese"
Description: "Beispiel Task für die Durchführung einer allgemeinenen und neurologischen Anamnese mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSAllgemeineNeurologischeAnamneseAD)
* status = $task-status#ready
* intent = $request-intent#option
* code = $task-code#approve
* description = "Allgemeine und neurologische Anamnese"
* executionPeriod.start = "2021-08-16T10:30:00Z"
* executionPeriod.end = "2021-08-16T16:00:00Z"
* authoredOn = "2021-08-16T10:30:00Z"
* performerType = $snomed-ct#56397003
//* input[0].type = $q4ms-dokumentarten#doctor-letter
//* input[=].valueDocumentReference = Reference(Q4MSArztbriefProfile)
//* input[+].type = $q4ms-dokumentarten#consiliary-report
//* input[=].valueDocumentReference = Reference(Q4MSKonsiliarberichtProfile)
//* input[+].type = $q4ms-dokumentarten#other
//* input[=].valueDocumentReference = Reference(Q4MSSonsigesDokumentProfile)

// Arztvorstellung -> Therapiespezifische Diagnostik (see Voruntersuchung -> Therapiespezifische Diagnostik)
// Do we need a Task with a doctors order to undergo diagnostic measures as output?

// Arztvorstellung -> Zusatzdiagnostik
// Do we need a Task with a doctors order to undergo diagnostic measures as output?

Instance: ZusatzdiagnostikExampleCP
InstanceOf: CarePlan
Title: "Beispiel Zusatzdiagnostik"
Description: "Beispiel CarePlan für die Durchführung einer Zusatzdiagnostik mit dem Patienten (M0)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSZusatzdiagnostik)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(ZusatzdiagnostikExampleRG)

Instance: ZusatzdiagnostikExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Zusatzdiagnostik"
Description: "Beispiel RequestGroup für die Durchführung einer Zusatzdiagnostik mit dem Patienten (M0)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSZusatzdiagnostik)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.selectionBehavior = #any
* action.requiredBehavior = #must-unless-documented
* action.cardinalityBehavior = #single
* action.action[0].title = "Ganganalyse"
* action.action[=].resource = Reference(GanganalyseExampleCP)
* action.action[+].title = "Optische Kohärenztomographie (OCT)"
* action.action[=].resource = Reference(OptischeKohaerenztomographieExampleCP)
* action.action[+].title = "Magnetresonanztomographie (MRT)"
* action.action[=].resource = Reference(MagnetresonanztomographieExampleCP)
* action.action[+].title = "Laboruntersuchung"
* action.action[=].resource = Reference(LaboruntersuchungExampleCP)
* action.action[+].title = "Multiple Sclerosis Performance Test (MSPT)"
* action.action[=].resource = Reference(MultipleSclerosisPerformanceTestExampleCP)

// Arztvorstellung -> Zusatzdiagnostik -> Laboruntersuchung

Instance: LaboruntersuchungExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Laboruntersuchung"
Description: "Beispiel CarePlan für die Durchführung einer Laboruntersuchung mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSLaboruntersuchung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(LaboruntersuchungExampleRG)

Instance: LaboruntersuchungExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Laboruntersuchung"
Description: "Beispiel RequestGroup für die Durchführung einer Laboruntersuchung mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSLaboruntersuchung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Laboruntersuchung"
* action.resource = Reference(LaboruntersuchungExampleSR)

Instance: LaboruntersuchungExampleSR
InstanceOf: ServiceRequest
Usage: #example
Title: "Beispiel Laboruntersuchung"
Description: "Beispiel ServiceRequest für die Durchführung einer Laboruntersuchung mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSLaboruntersuchungAD)
* status = $task-status#active
* intent = $request-intent#plan
* doNotPerform = false
* subject = Reference(PatientJohnDoe)
* occurrencePeriod.start = "2021-08-16T10:30:00Z"
* occurrencePeriod.end = "2022-01-21T00:00:00Z"
* locationCode = $v3-role-code#HLAB

// Arztvorstellung -> Auswertung

Instance: AuswertungExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Auswertung"
Description: "Beispiel CarePlan für die Durchführung einer Auswertung mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSAuswertung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(AuswertungExampleRG)

Instance: AuswertungExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Auswertung"
Description: "Beispiel RequestGroup für die Durchführung einer Auswertung mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSAuswertung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Auswertung"
* action.resource = Reference(AuswertungExampleTSK)

Instance: AuswertungExampleSR
InstanceOf: ServiceRequest
Usage: #example
Title: "Beispiel Auswertung"
Description: "Beispiel ServiceRequest für die Durchführung einer Auswertung mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSAuswertungAD)
* status = $task-status#active
* intent = $request-intent#plan
* doNotPerform = false
* subject = Reference(PatientJohnDoe)
* occurrencePeriod.start = "2021-08-16T10:30:00Z"
* occurrencePeriod.end = "2022-01-21T00:00:00Z"
* locationCode = $v3-role-code#NEUR

Instance: AuswertungExampleTSK
InstanceOf: Task
Usage: #example
Title: "Beispiel Auswertung"
Description: "Beispiel Task für die Durchführung einer Auswertung mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSAuswertungAD)
* status = $task-status#ready
* intent = $request-intent#option
* code = $task-code#approve
* focus = Reference(AuswertungExampleCP)
* description = "Auswertung"
* executionPeriod.start = "2021-08-16T10:30:00Z"
* executionPeriod.end = "2021-08-16T16:00:00Z"
* authoredOn = "2021-08-16T10:30:00Z"
* performerType = $snomed-ct#56397003
* restriction.period.start = "2021-08-16T10:30:00Z"
* restriction.period.end = "2022-01-21T00:00:00Z"
* restriction.recipient = Reference(PatientJohnDoe)
//* input.type = $q4ms-dokumentarten#other     // Patiententagebuch
//* input.valueReference = Reference(Q4MSSonstigesDokumentProfile)
//* output.type = $q4ms-dokumentarten#other    // Anweisungen (z.B. Sonder-Zusatzdiagnostik)
//* output.valueReference = Reference(Q4MSSonstigesDokumentProfile)
