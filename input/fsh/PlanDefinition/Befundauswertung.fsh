Instance: Q4MSBefundauswertung
InstanceOf: PlanDefinition
Title: "Befundauswertung"
Usage: #definition
* url = $q4ms-befundauswertung
* type = $plan-definition-type#eca-rule
* status = $publication-status#draft
* experimental = true
* action.title = "Befundauswertung"
* action.type = $action-type#create
* action.condition.kind = #applicability
* action.condition.expression.language = #text/cql
* action.condition.expression.expression = "are findings available"
* action.definitionCanonical = Canonical(Q4MSBefundauswertungAD)
