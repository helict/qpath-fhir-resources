Instance: BasismonitoringY1ExampleCP
InstanceOf: CarePlan
Usage: #example
  Title: "Beispiel Basismonitoring Patientenpfad - 1. Jahreszyklus"
  Description: "Beispiel CarePlan einer Basismonitoring-Patientenpfadinstanz für einen Jahreszyklus"
* instantiatesCanonical = Canonical(Q4MSBasismonitoringCycle)
* status = $publication-status#draft
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
* action.groupingBehavior = #logical-group
* action.selectionBehavior = #all
* action.requiredBehavior = #must-unless-documented
* action.cardinalityBehavior = #multiple

* action.action[0].id = "m0"
* action.action[=].title = "Termin M0"
* action.action[=].description = "Monitoring Termin in M0"
* action.action[=].resource = Reference(BasismonitoringM0ExampleCP)

* action.action[+].id = "m3"
* action.action[=].title = "Termin M3"
* action.action[=].description = "Monitoring Termin in M3"
* action.action[=].resource = Reference(BasismonitoringM3ExampleCP)
* action.action[=].relatedAction.actionId = "m0"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].relatedAction.offsetDuration.value = 3
* action.action[=].relatedAction.offsetDuration.system = $ucum
* action.action[=].relatedAction.offsetDuration.code = $ucum#mo

// * action.action[+].id = "m6"
// * action.action[=].title = "Termin M6"
// * action.action[=].description = "Monitoring Termin in M6"
// * action.action[=].resource = Reference(BasismonitoringM6ExampleCP)
// * action.action[=].relatedAction.actionId = "m3"
// * action.action[=].relatedAction.relationship = #after-end
// * action.action[=].relatedAction.offsetDuration.value = 3
// * action.action[=].relatedAction.offsetDuration.system = $ucum
// * action.action[=].relatedAction.offsetDuration.code = $ucum#mo

// * action.action[+].id = "m9"
// * action.action[=].title = "Termin M9"
// * action.action[=].description = "Monitoring Termin in M9"
// * action.action[=].resource = Reference(BasismonitoringM9ExampleCP)
// * action.action[=].relatedAction.actionId = "m6"
// * action.action[=].relatedAction.relationship = #after-end
// * action.action[=].relatedAction.offsetDuration.value = 3
// * action.action[=].relatedAction.offsetDuration.system = $ucum
// * action.action[=].relatedAction.offsetDuration.code = $ucum#mo