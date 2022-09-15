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
* action.resource = Reference(CheckOutExampleTSK)

Instance: CheckOutExampleTSK
InstanceOf: Task
Usage: #example
Title: "Beispiel Task Check-Out (Platzhalter)"
Description: "Beispiel Task zum Check-In eines Patienten"
* instantiatesCanonical = Canonical(Q4MSCheckOutAD)
* basedOn = Reference(CheckOutExampleCP)
* description = "Aufgaben zum Check-Out für den Patienten"
* status = $task-status#requested
* intent = $request-intent#order
* for = Reference(PatientPseudonym)