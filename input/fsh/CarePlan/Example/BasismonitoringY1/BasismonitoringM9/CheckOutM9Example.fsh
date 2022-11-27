Instance: CheckOutM9ExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Check-Out"
Description: "Beispiel CarePlan zum Check-Out eines Patienten (M9)"
* instantiatesCanonical = Canonical(Q4MSCheckOut)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.reference = Reference(CheckOutM9ExampleRG)

Instance: CheckOutM9ExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Check-Out"
Description: "Beispiel RequestGroup zum Check-Out eines Patienten (M9)"
* instantiatesCanonical = Canonical(Q4MSCheckOut)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Check-Out eines Patienten"
* action.resource = Reference(CheckOutM9ExampleTSK)

Instance: CheckOutM9ExampleTSK
InstanceOf: Task
Usage: #example
Title: "Beispiel Task Check-Out (Platzhalter)"
Description: "Beispiel Task zum Check-Out eines Patienten (M9)"
* instantiatesCanonical = Canonical(Q4MSCheckOutAD)
* basedOn = Reference(CheckOutM9ExampleCP)
* description = "Aufgaben zum Check-Out für den Patienten"
* status = $task-status#requested
* intent = $request-intent#order
* for = Reference(PatientPseudonym)