Instance: Q4MSArztvorstellung
InstanceOf: PlanDefinition
Title: "Arztvorstellung"
Description: "PlanDefinition zur Arztvorstellung"
Usage: #definition
* url = $q4ms-arztvorstellung
* name = "Q4MSArztvorstellung"
* type = $plan-definition-type#eca-rule
* status = $publication-status#active
* experimental = true
* action.title = "Arztvorstellung"
* action.type = $action-type#create
* action.definitionCanonical = Canonical(Q4MSArztvorstellungAD)
