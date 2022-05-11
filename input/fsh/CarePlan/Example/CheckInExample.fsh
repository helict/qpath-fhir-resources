Instance: CheckInExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Check-In"
Description: "Beispiel CarePlan zum Check-In eines Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSCheckIn)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(CheckInExampleRG)

Instance: CheckInExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Check-In"
Description: "Beispiel RequestGroup zum Check-In eines Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSCheckIn)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Check-In eines Patienten"
* action.resource = Reference(CheckInExampleTSK)