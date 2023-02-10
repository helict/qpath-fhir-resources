Instance: Q4MSBefundauswertung
InstanceOf: PlanDefinition
Title: "Befundauswertung"
Description: "PlanDefinition zur Befundauswertung"
Usage: #definition
* url = $q4ms-befundauswertung
* name = "Q4MSBefundauswertung"
* type = $plan-definition-type#eca-rule
* status = $publication-status#active
* experimental = true
* action.title = "Befundauswertung"
* action.type = $action-type#create

// * action.condition.kind = #applicability
// * action.condition.expression.language = #text/cql
// * action.condition.expression.expression = "are findings available"

* action.definitionCanonical = Canonical(Q4MSBefundauswertungAD)
