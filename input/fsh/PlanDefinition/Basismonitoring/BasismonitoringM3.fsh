Instance: Q4MSBasismonitoringM3
InstanceOf: PlanDefinition
Title: "Basismonitoring Patientenpfad - M3"
Description: "PlanDefinition zum Basismonitoring-Patientepfad zum Besuchstermin im 3./9. Monat"
Usage: #definition
* url = $q4ms-basismonitoring-m3
* name = "Q4MSBasismonitoringM3"
* type = $plan-definition-type#clinical-protocol
* status = $publication-status#active
* experimental = true
* action.groupingBehavior = #logical-group
* action.selectionBehavior = #all
* action.requiredBehavior = #must-unless-documented
* action.cardinalityBehavior = #single
* action.title = "Basismonitoring - Besuch M3 / M9"
* action.action[0].id = "check-in"
* action.action[=].title = "Check-In"
* action.action[=].description = "Check-In durchführen"
* action.action[=].definitionCanonical = Canonical(Q4MSCheckIn)
* action.action[+].id = "diagnostics"
* action.action[=].title = "Voruntersuchungen"
* action.action[=].description = "Diagnostische Voruntersuchungen durchführen"
* action.action[=].relatedAction.actionId = "check-in"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].definitionCanonical = Canonical(Q4MSVoruntersuchungenM3)
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