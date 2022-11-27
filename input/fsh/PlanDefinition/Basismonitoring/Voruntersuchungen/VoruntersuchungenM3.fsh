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
* action.groupingBehavior = #logical-group
* action.selectionBehavior = #all
* action.requiredBehavior = #must-unless-documented
* action.cardinalityBehavior = #single
* action.action[0].title = "Diagnostik alle 3 Monate"
//* action.action[=].timingTiming.repeat.frequency = 1
//* action.action[=].timingTiming.repeat.period = 3
//* action.action[=].timingTiming.repeat.periodUnit = #mo
* action.action[=].groupingBehavior = #logical-group
* action.action[=].selectionBehavior = #all
* action.action[=].requiredBehavior = #must-unless-documented
* action.action[=].cardinalityBehavior = #single
* action.action[=].action[0].title = "Multiple Sclerosis Performance Test (MSPT)"
* action.action[=].action[=].definitionCanonical = Canonical(Q4MSMultipleSclerosisPerformanceTest)
* action.action[=].action[+].title = "Therapiespezifische Diagnostik"
* action.action[=].action[=].definitionCanonical = Canonical(Q4MSTherapiespezifischeDiagnostik)
//* action.action[+].title = "Diagnostik alle 6 Monate"
// -> entfällt, da M3 bzw. M9
//* action.action[+].title = "Diagnostik alle 12 Monate"
// -> entfällt, da M3 bzw. M9