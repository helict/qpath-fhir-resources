Instance: Q4MSVoruntersuchung
InstanceOf: PlanDefinition
Title: "Voruntersuchung"
Description: "PlanDefinition zur Voruntersuchung"
Usage: #definition
* url = $q4ms-voruntersuchung
* name = "Q4MSVoruntersuchung"
* type = $plan-definition-type#workflow-definition
* status = $publication-status#draft
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
