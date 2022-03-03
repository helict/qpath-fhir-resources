Instance: EntlassungExampleCP
InstanceOf: CarePlan
Title: "Beispiel Entlassung"
Description: "Beispiel CarePlan für die Entlassung eines Patienten (M0)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSEntlassung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(EntlassungExampleRG)

Instance: EntlassungExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Entlassung"
Description: "Beispiel RequestGroup für die Entlassung eines Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSEntlassung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.groupingBehavior = #logical-group
* action.selectionBehavior = #all
* action.requiredBehavior = #must-unless-documented
* action.cardinalityBehavior = #single
* action.action[0].groupingBehavior = #logical-group
* action.action[=].selectionBehavior = #all
* action.action[=].requiredBehavior = #must-unless-documented
* action.action[=].cardinalityBehavior = #single
* action.action[=].action[0].title = "Terminvereinbarung"
* action.action[=].action[=].description = "Termin zur Wiedervorstellung vereinbaren"
* action.action[=].action[=].timingTiming.repeat.frequency = 1
* action.action[=].action[=].timingTiming.repeat.period = 3
* action.action[=].action[=].timingTiming.repeat.periodUnit = #mo
* action.action[=].action[=].resource = Reference(TerminvereinbarungExampleCP)
* action.action[=].action[+].title = "Dokumente übermitteln (Patient)"
* action.action[=].action[=].description = "Dokumente an Patient übermitteln"
* action.action[=].action[=].resource = Reference(DokumenteUebermittelnPatientExampleCP)
* action.action[+].title = "Dokumente übermitteln (Arzt)"
* action.action[=].description = "Dokumente an Arzt übermitteln"
* action.action[=].resource = Reference(DokumenteUebermittelnArztExampleCP)

// Entlassung -> DokumenteUebermittelnPatient

Instance: DokumenteUebermittelnPatientExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Dokumente an Patient übermitteln"
Description: "Beispiel CarePlan für eine Dokumentenübermittlung an den Patienten abfragen (M0)"
* instantiatesCanonical = Canonical(Q4MSDokumenteUebermittelnPatient)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(DokumenteUebermittelnPatientExampleRG)

Instance: DokumenteUebermittelnPatientExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Dokumente an Patient übermitteln"
Description: "Beispiel RequestGroup für eine Dokumentenübermittlung an den Patienten abfragen (M0)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSDokumenteUebermittelnPatient)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Dokumente übermitteln"
* action.resource = Reference(DokumenteUebermittelnPatientExampleTSK)

Instance: DokumenteUebermittelnPatientExampleTSK
InstanceOf: Task
Usage: #example
Title: "Beispiel Dokumente an Patient übermitteln"
Description: "Beispiel Task für eine Dokumentenübermittlung an den Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSDokumenteUebermittelnAD)
* status = $task-status#ready
* intent = $request-intent#option
* code = $task-code#approve
* focus = Reference(DokumenteUebermittelnPatientExampleCP)
* description = "Dokumente übermitteln"
* executionPeriod.start = "2022-01-12T12:00:00Z"
* executionPeriod.end = "2022-01-15T00:00:00Z"
* authoredOn = "2022-01-12T12:00:00Z"
* restriction.period.start = "2022-01-12T12:00:00Z"
* restriction.period.end = "2022-01-21T00:00:00Z"
* restriction.recipient = Reference(PatientJohnDoe)

// Entlassung -> DokumenteUebermittelnArzt

Instance: DokumenteUebermittelnArztExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Dokumente an Arzt übermitteln"
Description: "Beispiel CarePlan für eine Dokumentenübermittlung an den Patienten abfragen (M0)"
* instantiatesCanonical = Canonical(Q4MSDokumenteUebermittelnArzt)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(DokumenteUebermittelnArztExampleRG)

Instance: DokumenteUebermittelnArztExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Dokumente an Arzt übermitteln"
Description: "Beispiel RequestGroup für eine Dokumentenübermittlung an den Patienten abfragen (M0)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSDokumenteUebermittelnArzt)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Dokumente an Arzt übermitteln"
* action.resource = Reference(DokumenteUebermittelnArztExampleTSK)

Instance: DokumenteUebermittelnArztExampleTSK
InstanceOf: Task
Usage: #example
Title: "Beispiel Dokumente an Arzt übermitteln"
Description: "Beispiel Task für eine Dokumentenübermittlung an den Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSDokumenteUebermittelnAD)
* status = $task-status#ready
* intent = $request-intent#option
* code = $task-code#approve
* focus = Reference(DokumenteUebermittelnArztExampleCP)
* description = "Dokumente übermitteln"
* executionPeriod.start = "2022-01-12T12:00:00Z"
* executionPeriod.end = "2022-01-15T00:00:00Z"
* authoredOn = "2022-01-12T12:00:00Z"
* restriction.period.start = "2022-01-12T12:00:00Z"
* restriction.period.end = "2022-01-21T00:00:00Z"
