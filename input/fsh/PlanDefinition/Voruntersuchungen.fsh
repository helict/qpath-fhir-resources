Instance: Q4MSVoruntersuchungen
InstanceOf: PlanDefinition
Title: "Voruntersuchungen"
Description: "PlanDefinition zu Voruntersuchungen"
Usage: #definition
* url = $q4ms-voruntersuchungen
* name = "Q4MSVoruntersuchungen"
* type = $plan-definition-type#workflow-definition
* status = $publication-status#active
* experimental = true
* action.groupingBehavior = #logical-group
* action.selectionBehavior = #all
* action.requiredBehavior = #must-unless-documented
* action.cardinalityBehavior = #single
* action.action[0].title = "Diagnostik alle 3 Monate"
* action.action[=].timingTiming.repeat.frequency = 1
* action.action[=].timingTiming.repeat.period = 3
* action.action[=].timingTiming.repeat.periodUnit = #mo
* action.action[=].groupingBehavior = #logical-group
* action.action[=].selectionBehavior = #all
* action.action[=].requiredBehavior = #must-unless-documented
* action.action[=].cardinalityBehavior = #single
* action.action[=].action[0].title = "Multiple Sclerosis Performance Test (MSPT)"
* action.action[=].action[=].definitionCanonical = Canonical(Q4MSMultipleSclerosisPerformanceTest)
* action.action[=].action[+].title = "Therapiespezifische Diagnostik"
* action.action[=].action[=].definitionCanonical = Canonical(Q4MSTherapiespezifischeDiagnostik)
* action.action[+].title = "Diagnostik alle 6 Monate"
* action.action[=].timingTiming.repeat.frequency = 1
* action.action[=].timingTiming.repeat.period = 6
* action.action[=].timingTiming.repeat.periodUnit = #mo
* action.action[=].groupingBehavior = #logical-group
* action.action[=].selectionBehavior = #all
* action.action[=].requiredBehavior = #must-unless-documented
* action.action[=].cardinalityBehavior = #single
* action.action[=].action[0].title = "Allgemeine und neurologische Untersuchung"
* action.action[=].action[=].definitionCanonical = Canonical(Q4MSAllgemeineNeurologischeUntersuchung)
* action.action[+].title = "Diagnostik alle 12 Monate"
* action.action[=].timingTiming.repeat.frequency = 1
* action.action[=].timingTiming.repeat.period = 12
* action.action[=].timingTiming.repeat.periodUnit = #mo
* action.action[=].groupingBehavior = #logical-group
* action.action[=].selectionBehavior = #all
* action.action[=].requiredBehavior = #must-unless-documented
* action.action[=].cardinalityBehavior = #single
* action.action[=].action[0].title = "Optische Kohärenztomographie (OCT)"
* action.action[=].action[=].definitionCanonical = Canonical(Q4MSOptischeKohaerenztomographie)
* action.action[=].action[+].title = "Ganganalyse"
* action.action[=].action[=].definitionCanonical = Canonical(Q4MSGanganalyse)
* action.action[=].action[+].title = "Magnetresonanztomographie (MRT)"
* action.action[=].action[=].definitionCanonical = Canonical(Q4MSMagnetresonanztomographie)
* action.action[=].action[=].condition.kind = #applicability
* action.action[=].action[=].condition.expression.language = #text/cql
* action.action[=].action[=].condition.expression.expression = "Letztes MRT älter 12 Monate"
* action.action[=].action[+].title = "Laboruntersuchung"
* action.action[=].action[=].definitionCanonical = Canonical(Q4MSLaboruntersuchung)
