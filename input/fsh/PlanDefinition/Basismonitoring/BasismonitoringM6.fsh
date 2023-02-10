Instance: Q4MSBasismonitoringM6
InstanceOf: PlanDefinition
Title: "Basismonitoring Patientenpfad - M6"
Description: "PlanDefinition zum Basismonitoring-Patientepfad zum Besuchstermin im 6. Monat"
Usage: #definition
* url = $q4ms-basismonitoring-m6
* name = "Q4MSBasismonitoringM6"
* title = "Basismonitoring - M6"
* description = "PlanDefinition zum Basismonitoring-Patientepfad zum Besuchstermin im 6. Monat"
* type = $plan-definition-type#clinical-protocol
* status = $publication-status#active
* experimental = true

// * action.groupingBehavior = #logical-group
// * action.selectionBehavior = #all
// * action.requiredBehavior = #must-unless-documented
// * action.cardinalityBehavior = #single

* title = "Basismonitoring - Besuch M6"
* action[0].id = "check-in"
* action[=].title = "Check-In"
* action[=].description = "Check-In durchführen"
// Checkin 7 Tage vor Voruntersuchungen => 7 Tage vor Besuchstermin
* action[=].relatedAction.actionId = "diagnostics"
* action[=].relatedAction.relationship = #before-start
* action[=].relatedAction.offsetDuration.value = 7
* action[=].relatedAction.offsetDuration.system = $ucum
* action[=].relatedAction.offsetDuration.code = $ucum#d
* action[=].definitionCanonical = Canonical(Q4MSCheckIn)
* action[=].timingTiming.repeat.duration = 15
* action[=].timingTiming.repeat.durationUnit = $ucum#min
* action[+].id = "diagnostics"
* action[=].title = "Voruntersuchungen"
* action[=].description = "Diagnostische Voruntersuchungen durchführen"
* action[=].relatedAction.actionId = "check-in"
* action[=].relatedAction.relationship = #after-end
* action[=].definitionCanonical = Canonical(Q4MSVoruntersuchungenM6)
* action[+].id = "examination"
* action[=].title = "Arztvorstellung"
* action[=].description = "Voruntersuchungen auswerten und Therapiemaßnahmen ableiten"
* action[=].relatedAction.actionId = "diagnostics"
* action[=].relatedAction.relationship = #after-end
* action[=].definitionCanonical = Canonical(Q4MSArztvorstellung)
* action[=].timingTiming.repeat.duration = 30
* action[=].timingTiming.repeat.durationUnit = $ucum#min
* action[=].timingTiming.repeat.timeOfDay = "11:00:00"
* action[+].id = "schedule-appointment"
* action[=].title = "Terminvereinbarung"
* action[=].description = "Termin für nächsten Besuch vereinbaren"
* action[=].relatedAction.actionId = "examination"
* action[=].relatedAction.relationship = #after-end
* action[=].definitionCanonical = Canonical(Q4MSTerminvereinbarung)
* action[=].timingTiming.repeat.duration = 10
* action[=].timingTiming.repeat.durationUnit = $ucum#min
* action[+].id = "check-out"
* action[=].title = "Check-Out"
* action[=].description = "Check-Out durchführen"
* action[=].relatedAction.actionId = "schedule-appointment"
* action[=].relatedAction.relationship = #after-end
* action[=].definitionCanonical = Canonical(Q4MSCheckOut)
* action[=].timingTiming.repeat.duration = 15
* action[=].timingTiming.repeat.durationUnit = $ucum#min