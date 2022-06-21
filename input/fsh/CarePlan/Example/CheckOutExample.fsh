Instance: CheckOutExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Check-Out"
Description: "Beispiel CarePlan zum Check-Out eines Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSCheckOut)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.reference = Reference(CheckOutExampleRG)

Instance: CheckOutExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Check-Out"
Description: "Beispiel RequestGroup zum Check-Out eines Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSCheckOut)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Check-Out eines Patienten"
// TODO: Reference Task resource