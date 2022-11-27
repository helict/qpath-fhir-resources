Instance: CheckInM0ExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Check-In"
Description: "Beispiel CarePlan zum Check-In eines Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSCheckIn)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.reference = Reference(CheckInM0ExampleRG)
// after scheduling (7 Tage vor Besuchstermin)
* partOf = Reference(BasismonitoringM0ExampleCP)
* period.start = "2022-10-25"

Instance: CheckInM0ExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Check-In"
Description: "Beispiel RequestGroup zum Check-In eines Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSCheckIn)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Check-In eines Patienten"
* action.resource = Reference(CheckInM0ExampleTSK)