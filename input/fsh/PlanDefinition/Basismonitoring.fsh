Instance: Q4MSBasismonitoring
InstanceOf: PlanDefinition
Title: "Basismonitoring Patientepfad"
Description: "PlanDefinition zum Basismonitoring-Patientepfad"
Usage: #definition
* url = $q4ms-basismonitoring
* name = "Q4MSBasismonitoring"
* type = $plan-definition-type#clinical-protocol
* status = $publication-status#draft
* experimental = true
* action.groupingBehavior = #logical-group
* action.selectionBehavior = #all
* action.requiredBehavior = #must-unless-documented
* action.cardinalityBehavior = #single
* action.title = "Monitoring alle 3 Monate"
* action.timingTiming.repeat.frequency = 1
* action.timingTiming.repeat.period = 3
* action.timingTiming.repeat.periodUnit = #mo
* action.action[0].id = "check-in"
* action.action[=].title = "Check-In"
* action.action[=].description = "Check-In durchführen"
* action.action[=].definitionCanonical = Canonical(Q4MSCheckIn)
* action.action[+].id = "diagnostics"
* action.action[=].title = "Voruntersuchungen"
* action.action[=].description = "Diagnostische Voruntersuchungen durchführen"
* action.action[=].relatedAction.actionId = "check-in"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].definitionCanonical = Canonical(Q4MSVoruntersuchungen)
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