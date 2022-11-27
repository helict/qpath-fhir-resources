Instance: TerminvereinbarungM9ExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Terminvereinbarung"
Description: "Beispiel CarePlan zur Terminvereinbarung mit einem Patienten (M9)"
* instantiatesCanonical = Canonical(Q4MSTerminvereinbarung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.reference = Reference(TerminvereinbarungM9ExampleRG)

Instance: TerminvereinbarungM9ExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Terminvereinbarung"
Description: "Beispiel Appointment zur Terminvereinbarung mit einem Patienten (M9)"
* instantiatesCanonical = Canonical(Q4MSTerminvereinbarung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Nächster Besuchstermin"
* action.resource = Reference(TerminvereinbarungM9ExampleAPT)