Instance: Q4MSCheckOut
InstanceOf: PlanDefinition
Title: "Check-Out"
Description: "PlanDefinition zum Check-Out"
Usage: #definition
* url = $q4ms-check-out
* name = "Q4MSCheckOut"
* type = $plan-definition-type#eca-rule
* status = $publication-status#draft
* experimental = true
* action.title = "Check-Out eines Patienten"
* action.type = $action-type#create
* action.definitionCanonical = Canonical(Q4MSCheckOutAD)

