Instance: Q4MSVoruntersuchungenM3
InstanceOf: PlanDefinition
Title: "Voruntersuchungen"
Description: "PlanDefinition zu Voruntersuchungen (M3 + M9)"
Usage: #definition
* url = $q4ms-voruntersuchungen-m3
* name = "Q4MSVoruntersuchungenM3"
* type = $plan-definition-type#workflow-definition
* status = $publication-status#active
* experimental = true
* library = Canonical(Q4MSBasismonitoringLibrary)

// * action.groupingBehavior = #logical-group
// * action.selectionBehavior = #all
// * action.requiredBehavior = #must-unless-documented
// * action.cardinalityBehavior = #single

// Diagnostik aller 3 Monate
* action[0].title = "Multiple Sclerosis Performance Test (MSPT)"
* action[=].definitionCanonical = Canonical(Q4MSMultipleSclerosisPerformanceTest)
* action[=].timingTiming.repeat.duration = 25
* action[=].timingTiming.repeat.durationUnit = $ucum#min
* action[=].timingTiming.repeat.timeOfDay = "09:00:00"

* action[+].title = "Therapiespezifische Diagnostik"
* action[=].definitionCanonical = Canonical(Q4MSTherapiespezifischeDiagnostik)
* action[=].timingTiming.repeat.duration = 30
* action[=].timingTiming.repeat.durationUnit = $ucum#min
* action[=].timingTiming.repeat.timeOfDay = "10:30:00"
//* action[+].title = "Diagnostik alle 6 Monate"
// -> entfällt, da M3 bzw. M9
//* action[+].title = "Diagnostik alle 12 Monate"
// -> entfällt, da M3 bzw. M9