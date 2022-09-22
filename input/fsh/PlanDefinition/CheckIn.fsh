Instance: Q4MSCheckIn
InstanceOf: PlanDefinition
Title: "Check-In"
Description: "PlanDefinition zum Check-In"
Usage: #definition
* url = $q4ms-check-in
* name = "Q4MSCheckIn"
* type = $plan-definition-type#eca-rule
* status = $publication-status#active
* experimental = true
* action.title = "Check-In eines Patienten"
* action.type = $action-type#create
* action.definitionCanonical = Canonical(Q4MSCheckInAD)
