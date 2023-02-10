Instance: BasismonitoringY1ExampleCP
InstanceOf: CarePlan
Usage: #example
  Title: "Beispiel Basismonitoring Patientenpfad - 1. Jahreszyklus"
  Description: "Beispiel CarePlan einer Basismonitoring-Patientenpfadinstanz für einen Jahreszyklus"
* instantiatesCanonical = Canonical(Q4MSBasismonitoringCycle)
* status = $publication-status#active
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* activity.reference = Reference(BasismonitoringY1ExampleRG)
// after scheduling:
* period.start = "2022-11-01"

Instance: BasismonitoringY1ExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Basismonitoring Patientenpfad - 1. Jahreszyklus"
Description: "Beispiel RequestGroup einer Basismonitoring-Patientenpfadinstanz für einen Jahreszyklus (Y1)"
* instantiatesCanonical = Canonical(Q4MSBasismonitoringCycle)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)

// * action.groupingBehavior = #logical-group
// * action.selectionBehavior = #all
// * action.requiredBehavior = #must-unless-documented
// * action.cardinalityBehavior = #multiple

* action[0].id = "m0"
* action[=].title = "Termin M0"
* action[=].description = "Monitoring Termin in M0"
* action[=].resource = Reference(BasismonitoringM0ExampleCP)

* action[+].id = "m3"
* action[=].title = "Termin M3"
* action[=].description = "Monitoring Termin in M3"
* action[=].resource = Reference(BasismonitoringM3ExampleCP)
* action[=].relatedAction.actionId = "m0"
* action[=].relatedAction.relationship = #after-end
* action[=].relatedAction.offsetDuration.value = 3
* action[=].relatedAction.offsetDuration.system = $ucum
* action[=].relatedAction.offsetDuration.code = $ucum#mo

// * action[+].id = "m6"
// * action[=].title = "Termin M6"
// * action[=].description = "Monitoring Termin in M6"
// * action[=].resource = Reference(BasismonitoringM6ExampleCP)
// * action[=].relatedAction.actionId = "m3"
// * action[=].relatedAction.relationship = #after-end
// * action[=].relatedAction.offsetDuration.value = 3
// * action[=].relatedAction.offsetDuration.system = $ucum
// * action[=].relatedAction.offsetDuration.code = $ucum#mo

// * action[+].id = "m9"
// * action[=].title = "Termin M9"
// * action[=].description = "Monitoring Termin in M9"
// * action[=].resource = Reference(BasismonitoringM9ExampleCP)
// * action[=].relatedAction.actionId = "m6"
// * action[=].relatedAction.relationship = #after-end
// * action[=].relatedAction.offsetDuration.value = 3
// * action[=].relatedAction.offsetDuration.system = $ucum
// * action[=].relatedAction.offsetDuration.code = $ucum#mo