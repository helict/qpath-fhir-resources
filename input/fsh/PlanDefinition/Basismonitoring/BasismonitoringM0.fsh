Instance: Q4MSBasismonitoringM0
InstanceOf: PlanDefinition
Title: "Basismonitoring Patientenpfad - M0"
Description: "PlanDefinition zum Basismonitoring-Patientepfad zum Besuchstermin im 0. Monat"
Usage: #definition
* url = $q4ms-basismonitoring-m0
* name = "Q4MSBasismonitoringM0"
* type = $plan-definition-type#clinical-protocol
* status = $publication-status#active
* experimental = true
* action.groupingBehavior = #logical-group
* action.selectionBehavior = #all
* action.requiredBehavior = #must-unless-documented
* action.cardinalityBehavior = #single
* action.title = "Basismonitoring - Besuch M0"
* action.action[0].id = "check-in"
* action.action[=].title = "Check-In"
* action.action[=].description = "Check-In durchführen"
// Checkin 7 Tage vor Voruntersuchungen => 7 Tage vor Besuchstermin
* action.action[=].relatedAction.actionId = "check-in"
* action.action[=].relatedAction.relationship = #before-start
* action.action[=].relatedAction.offsetDuration.value = 7
* action.action[=].relatedAction.offsetDuration.system = $ucum
* action.action[=].relatedAction.offsetDuration.code = $ucum#d
* action.action[=].definitionCanonical = Canonical(Q4MSCheckIn)
* action.action[+].id = "diagnostics"
* action.action[=].title = "Voruntersuchungen"
* action.action[=].description = "Diagnostische Voruntersuchungen durchführen"
* action.action[=].definitionCanonical = Canonical(Q4MSVoruntersuchungenM0)
* action.action[+].id = "examination"
* action.action[=].title = "Arztvorstellung"
* action.action[=].description = "Voruntersuchungen auswerten und Therapiemaßnahmen ableiten"
* action.action[=].relatedAction.actionId = "diagnostics"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].definitionCanonical = Canonical(Q4MSArztvorstellung)
* action.action[+].id = "schedule-appointment"
* action.action[=].title = "Terminvereinbarung"
* action.action[=].description = "Termin für nächsten Besuch vereinbaren"
* action.action[=].relatedAction.actionId = "examination"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].definitionCanonical = Canonical(Q4MSTerminvereinbarung)
* action.action[+].id = "check-out"
* action.action[=].title = "Check-Out"
* action.action[=].description = "Check-Out durchführen"
* action.action[=].relatedAction.actionId = "schedule-appointment"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].definitionCanonical = Canonical(Q4MSCheckOut)