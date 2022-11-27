Instance: TerminvereinbarungM0ExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Terminvereinbarung"
Description: "Beispiel CarePlan für die Vereinbarung des Folgetermins mit dem Patienten (M0 -> M3)"
* instantiatesCanonical = Canonical(Q4MSTerminvereinbarung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.reference = Reference(TerminvereinbarungM0ExampleRG)
* partOf = Reference(BasismonitoringM0ExampleCP)

Instance: TerminvereinbarungM0ExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Terminvereinbarung"
Description: "Beispiel RequestGroup für die Vereinbarung des Folgetermins mit dem Patienten (M0 -> M3)"
* instantiatesCanonical = Canonical(Q4MSTerminvereinbarung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Terminvereinbarung"
* action.resource = Reference(TerminvereinbarungM0ExampleTSK)

Instance: TerminvereinbarungM0ExampleTSK
InstanceOf: Task
Usage: #example
Title: "Beispiel Terminvereinbarung"
Description: "Beispiel Task für die Vereinbarung des Folgetermins mit dem Patienten (M0 -> M3)"
* instantiatesCanonical = Canonical(Q4MSTerminvereinbarungAD)
* basedOn = Reference(TerminvereinbarungM0ExampleCP)
* status = $task-status#accepted
* intent = $request-intent#order
* for = Reference(PatientPseudonym)
* input.type.text = "Besuchstermin"
* input.valueReference = Reference(BesuchsterminM3ExampleAPT)
// SOLL
* restriction.period.end = "2022-11-02T18:00:00Z"
// IST
* executionPeriod.end = "2022-11-02T17:53:24Z"