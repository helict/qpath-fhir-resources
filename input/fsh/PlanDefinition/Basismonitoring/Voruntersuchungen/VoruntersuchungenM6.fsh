Instance: Q4MSVoruntersuchungenM6
InstanceOf: PlanDefinition
Title: "Voruntersuchungen"
Description: "PlanDefinition zu Voruntersuchungen (M6)"
Usage: #definition
* url = $q4ms-voruntersuchungen-m6
* name = "Q4MSVoruntersuchungenM6"
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

// Diagnostik aller 6 Monate
* action[+].title = "Allgemeine und neurologische Untersuchung"
* action[=].definitionCanonical = Canonical(Q4MSAllgemeineNeurologischeUntersuchung)
* action[=].timingTiming.repeat.duration = 20
* action[=].timingTiming.repeat.durationUnit = $ucum#min
* action[=].timingTiming.repeat.timeOfDay = "08:00:00"

//* action[+].title = "Diagnostik alle 12 Monate"
// -> entfällt, da M6