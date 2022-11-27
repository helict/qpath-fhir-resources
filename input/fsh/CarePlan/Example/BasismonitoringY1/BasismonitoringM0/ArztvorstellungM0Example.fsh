Instance: ArztvorstellungM0ExampleCP
InstanceOf: CarePlan
Title: "Beispiel Arztvorstellung"
Description: "Beispiel CarePlan für die Arztvorstellung eines Patienten (M0)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSArztvorstellung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.reference = Reference(ArztvorstellungM0ExampleRG)
* partOf = Reference(BasismonitoringM0ExampleCP)
* encounter = Reference(ArztvorstellungM0ExampleENC)

Instance: ArztvorstellungM0ExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Arztvorstellung"
Description: "Beispiel RequestGroup für die Arztvorstellung eines Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSArztvorstellung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Arztvorstellung"
* action.resource = Reference(ArztvorstellungM0ExampleSR)
* encounter = Reference(ArztvorstellungM0ExampleENC)

Instance: ArztvorstellungM0ExampleSR
InstanceOf: Q4MSProzedurProfile
Usage: #example
Title: "Arztvorstellung (M0, PLAN)"
Description: "Beispiel ServiceRequest für die Vorstellung eines Patienten beim Arzt (M0, PLAN)"
* instantiatesCanonical = Canonical(Q4MSArztvorstellung)
* basedOn = Reference(ArztvorstellungM0ExampleCP)
* status = $request-status#active
* intent = $request-intent#plan
* code = $ops-codes#8-92
* doNotPerform = false
* subject = Reference(PatientPseudonym)
// TODO: check timing definition here (PLAN) 
* occurrenceTiming.event = "2022-11-02T14:30:00Z"
* occurrenceTiming.repeat.duration = 15
* occurrenceTiming.repeat.durationUnit = $ucum#min
* locationCode = $v3-role-code#PROFF
* extension[$ext-workflow-episode-of-care].valueReference = Reference(BasismonitoringY1ExampleEOC)
