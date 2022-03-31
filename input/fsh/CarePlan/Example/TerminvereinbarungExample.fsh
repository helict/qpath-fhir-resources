Instance: TerminvereinbarungExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Terminvereinbarung"
Description: "Beispiel CarePlan zur Terminvereinbarung mit einem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSTerminvereinbarung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(TerminvereinbarungExampleRG)

Instance: TerminvereinbarungExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Terminvereinbarung"
Description: "Beispiel Appointment zur Terminvereinbarung mit einem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSTerminvereinbarung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Nächster Besuchstermin"
* action.resource = Reference(ZweiterBesuchsterminExampleAPT)