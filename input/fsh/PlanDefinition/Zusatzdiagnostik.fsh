Instance: Q4MSZusatzdiagnostik
InstanceOf: PlanDefinition
Title: "Zusatzdiagnostik PlanDefinition"
Usage: #definition
* url = $q4ms-zusatzdiagnostik
* status = $publication-status#draft
* experimental = true
* type = $plan-definition-type#workflow-definition
* action.selectionBehavior = #any
* action.requiredBehavior = #must-unless-documented
* action.cardinalityBehavior = #single
* action.action[0].title = "Ganganalyse"
* action.action[=].definitionCanonical = Canonical(Q4MSGanganalyse)
* action.action[+].title = "Optische Koheränztomographie (OCT)"
* action.action[=].definitionCanonical = Canonical(Q4MSOptischeKoheraenztomographie)
* action.action[+].title = "Magnetresonanztomographie (MRT)"
* action.action[=].definitionCanonical = Canonical(Q4MSMagnetresonanztomographie)
* action.action[+].title = "Laboruntersuchung"
* action.action[=].definitionCanonical = Canonical(Q4MSLaboruntersuchung)
* action.action[+].title = "Multiple Sclerosis Performance Test (MSPT)"
* action.action[=].definitionCanonical = Canonical(Q4MSMultipleSclerosisPerformanceTest)