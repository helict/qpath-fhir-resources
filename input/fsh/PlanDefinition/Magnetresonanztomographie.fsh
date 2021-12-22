Instance: Q4MSMagnetresonanztomographie
InstanceOf: PlanDefinition
Title: "Magnetresonanztomographie (MRT)"
Usage: #definition
* url = $q4ms-magnetresonanztomographie
* type = $plan-definition-type#eca-rule
* status = $publication-status#draft
* experimental = true
* action.title = "Diagnostik Magnetresonanztomographie (MRT)"
* action.type = $action-type#create
* action.condition.kind = #applicability
* action.condition.expression.language = #text/cql
* action.condition.expression.expression = "no current pregnancy"
* action.definitionCanonical = Canonical(Q4MSMagnetresonanztomographieAD)
