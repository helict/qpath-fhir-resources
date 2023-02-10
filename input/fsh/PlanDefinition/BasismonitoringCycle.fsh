Instance: Q4MSBasismonitoringCycle
InstanceOf: PlanDefinition
Title: "Basismonitoring Patientenpfad - 1 Jahreszyklus"
Description: "PlanDefinition zum Basismonitoring-Patientenpfad für einen Jahreszyklus"
Usage: #definition
* url = $q4ms-basismonitoring-cycle
* name = "Q4MSBasismonitoringCycle"
* type = $plan-definition-type#clinical-protocol
* status = $publication-status#active
* experimental = true
// * action.groupingBehavior = #logical-group
// * action.selectionBehavior = #all
// * action.requiredBehavior = #must-unless-documented
// * action.cardinalityBehavior = #single
// * action.title = "Basismonitoring - Quartalstermine"

* action[0].id = "m0"
* action[=].title = "Termin M0"
* action[=].description = "Monitoring Termin in M0"
* action[=].definitionCanonical = Canonical(Q4MSBasismonitoringM0)

* action[+].id = "m3"
* action[=].title = "Termin M3"
* action[=].description = "Monitoring Termin in M3"
* action[=].definitionCanonical = Canonical(Q4MSBasismonitoringM3)
* action[=].relatedAction.actionId = "m0"
* action[=].relatedAction.relationship = #after-end
* action[=].relatedAction.offsetDuration.value = 3
* action[=].relatedAction.offsetDuration.system = $ucum
* action[=].relatedAction.offsetDuration.code = $ucum#mo

* action[+].id = "m6"
* action[=].title = "Termin M6"
* action[=].description = "Monitoring Termin in M6"
* action[=].definitionCanonical = Canonical(Q4MSBasismonitoringM6)
* action[=].relatedAction.actionId = "m3"
* action[=].relatedAction.relationship = #after-end
* action[=].relatedAction.offsetDuration.value = 3
* action[=].relatedAction.offsetDuration.system = $ucum
* action[=].relatedAction.offsetDuration.code = $ucum#mo

* action[+].id = "m9"
* action[=].title = "Termin M9"
* action[=].description = "Monitoring Termin in M9"
* action[=].definitionCanonical = Canonical(Q4MSBasismonitoringM3)
* action[=].relatedAction.actionId = "m6"
* action[=].relatedAction.relationship = #after-end
* action[=].relatedAction.offsetDuration.value = 3
* action[=].relatedAction.offsetDuration.system = $ucum
* action[=].relatedAction.offsetDuration.code = $ucum#mo