Instance: Q4MSEntlassung
InstanceOf: PlanDefinition
Title: "Entlassung"
Usage: #definition
* url = $q4ms-entlassung
* type = $plan-definition-type#workflow-definition
* status = $publication-status#draft
* experimental = true
* action.groupingBehavior = #logical-group
* action.selectionBehavior = #all
* action.requiredBehavior = #must-unless-documented
* action.cardinalityBehavior = #single
* action.action[0].groupingBehavior = #logical-group
* action.action[=].selectionBehavior = #all
* action.action[=].requiredBehavior = #must-unless-documented
* action.action[=].cardinalityBehavior = #single
* action.action[=].action[0].title = "Terminvereinbarung"
* action.action[=].action[=].description = "Termin zur Wiederorstellung vereinbaren"
* action.action[=].action[=].timingTiming.repeat.frequency = 1
* action.action[=].action[=].timingTiming.repeat.period = 3
* action.action[=].action[=].timingTiming.repeat.periodUnit = #mo
* action.action[=].action[=].definitionCanonical = Canonical(Q4MSTerminvereinbarung)
* action.action[=].action[+].title = "Dokumente übermitteln (Patient)"
* action.action[=].action[=].description = "Dokumente an Patient übermitteln"
* action.action[=].action[=].definitionCanonical = Canonical(Q4MSDokumenteUebermittelnPatient)
* action.action[+].title = "Dokumente übermitteln (Arzt)"
* action.action[=].description = "Dokumente an Arzt übermitteln"
* action.action[=].condition.kind = #applicability
* action.action[=].condition.expression.language = #text/cql
* action.action[=].condition.expression.expression = "is referred"
* action.action[=].definitionCanonical = Canonical(Q4MSDokumenteUebermittelnArzt)
