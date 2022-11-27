Instance: CheckOutM0ExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Check-Out"
Description: "Beispiel CarePlan zum Check-Out eines Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSCheckOut)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.reference = Reference(CheckOutM0ExampleRG)
* partOf = Reference(BasismonitoringM0ExampleCP)

Instance: CheckOutM0ExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Check-Out"
Description: "Beispiel RequestGroup zum Check-Out eines Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSCheckOut)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Check-Out eines Patienten"
* action.resource = Reference(CheckOutM0ExampleTSK)

Instance: CheckOutM0ExampleTSK
InstanceOf: Task
Usage: #example
Title: "Beispiel Task Check-Out (Platzhalter)"
Description: "Beispiel Task zum Check-Out eines Patienten (M3)"
* instantiatesCanonical = Canonical(Q4MSCheckOutAD)
* basedOn = Reference(CheckOutM0ExampleCP)
* description = "Aufgaben zum Check-Out für den Patienten"
* status = $task-status#requested
* intent = $request-intent#order
* for = Reference(PatientPseudonym)
* input.type.text = "Nächster Besuchstermin"
* input.valueReference = Reference(BesuchsterminM3ExampleAPT)