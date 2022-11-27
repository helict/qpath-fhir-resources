Instance: CheckInM3ExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Check-In"
Description: "Beispiel CarePlan zum Check-In eines Patienten (M3)"
* instantiatesCanonical = Canonical(Q4MSCheckIn)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.reference = Reference(CheckInM3ExampleRG)

Instance: CheckInM3ExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Check-In"
Description: "Beispiel RequestGroup zum Check-In eines Patienten (M3)"
* instantiatesCanonical = Canonical(Q4MSCheckIn)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Check-In eines Patienten"
* action.resource = Reference(CheckInM3ExampleTSK)