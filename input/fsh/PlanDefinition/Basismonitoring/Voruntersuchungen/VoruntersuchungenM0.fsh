Instance: Q4MSVoruntersuchungenM0
InstanceOf: PlanDefinition
Title: "Voruntersuchungen"
Description: "PlanDefinition zu Voruntersuchungen"
Usage: #definition
* url = $q4ms-voruntersuchungen-m0
* name = "Q4MSVoruntersuchungenM0"
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

// Diagnostik aller 12 Monate
* action[+].title = "Optische Kohärenztomographie (OCT)"
* action[=].definitionCanonical = Canonical(Q4MSOptischeKohaerenztomographie)
* action[=].timingTiming.repeat.duration = 25
* action[=].timingTiming.repeat.durationUnit = $ucum#min
* action[=].timingTiming.repeat.timeOfDay = "09:30:00"

* action[+].title = "Ganganalyse"
* action[=].definitionCanonical = Canonical(Q4MSGanganalyse)
* action[=].timingTiming.repeat.duration = 25
* action[=].timingTiming.repeat.durationUnit = $ucum#min
* action[=].timingTiming.repeat.timeOfDay = "08:30:00"

* action[+].title = "Magnetresonanztomographie (MRT)"
* action[=].definitionCanonical = Canonical(Q4MSMagnetresonanztomographie)
* action[=].timingTiming.repeat.duration = 30
* action[=].timingTiming.repeat.durationUnit = $ucum#min

// * action[=].condition.kind = #applicability
// * action[=].condition.expression.language = #text/cql-identifier
// * action[=].condition.expression.expression = "Letztes MRT älter 12 Monate"
* action[+].title = "Laboruntersuchung"
* action[=].definitionCanonical = Canonical(Q4MSLaboruntersuchung)
* action[=].timingTiming.repeat.duration = 10
* action[=].timingTiming.repeat.durationUnit = $ucum#min
* action[=].timingTiming.repeat.timeOfDay = "10:20:00"
