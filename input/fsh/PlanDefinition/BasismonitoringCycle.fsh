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
* action.groupingBehavior = #logical-group
* action.selectionBehavior = #all
* action.requiredBehavior = #must-unless-documented
* action.cardinalityBehavior = #single
* action.title = "Basismonitoring - Quartalstermine"

* action.action[0].id = "m0"
* action.action[=].title = "Termin M0"
* action.action[=].description = "Monitoring Termin in M0"
* action.action[=].definitionCanonical = Canonical(Q4MSBasismonitoringM0)

* action.action[+].id = "m3"
* action.action[=].title = "Termin M3"
* action.action[=].description = "Monitoring Termin in M3"
* action.action[=].definitionCanonical = Canonical(Q4MSBasismonitoringM3)
* action.action[=].relatedAction.actionId = "m0"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].relatedAction.offsetDuration.value = 3
* action.action[=].relatedAction.offsetDuration.system = $ucum
* action.action[=].relatedAction.offsetDuration.code = $ucum#mo

* action.action[+].id = "m6"
* action.action[=].title = "Termin M6"
* action.action[=].description = "Monitoring Termin in M6"
* action.action[=].definitionCanonical = Canonical(Q4MSBasismonitoringM6)
* action.action[=].relatedAction.actionId = "m3"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].relatedAction.offsetDuration.value = 3
* action.action[=].relatedAction.offsetDuration.system = $ucum
* action.action[=].relatedAction.offsetDuration.code = $ucum#mo

* action.action[+].id = "m9"
* action.action[=].title = "Termin M9"
* action.action[=].description = "Monitoring Termin in M9"
* action.action[=].definitionCanonical = Canonical(Q4MSBasismonitoringM3)
* action.action[=].relatedAction.actionId = "m6"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].relatedAction.offsetDuration.value = 3
* action.action[=].relatedAction.offsetDuration.system = $ucum
* action.action[=].relatedAction.offsetDuration.code = $ucum#mo