Instance: Q4MSBefundauswertung
InstanceOf: PlanDefinition
Title: "Befundauswertung PlanDefinition"
Usage: #definition
* url = "http://qpath.ukdd.de/PlanDefinition/Q4MSBefundauswertung"
* type = $plan-definition-type#eca-rule
* status = #draft
* experimental = true
* action.title = "Befundauswertung"
* action.type = $action-type#create
* action.condition.kind = #applicability
* action.condition.expression.language = #text/cql
* action.condition.expression.expression = "are findings available"
* action.definitionCanonical = Canonical(Q4MSBefundauswertungActivity)