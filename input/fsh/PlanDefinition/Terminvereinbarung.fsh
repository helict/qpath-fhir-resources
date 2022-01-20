Instance: Q4MSTerminvereinbarung
InstanceOf: PlanDefinition
Title: "Terminvereinbarung"
Description: "PlanDefinition zur Terminvereinbarung"
Usage: #definition
* url = $q4ms-terminvereinbarung
* type = $plan-definition-type#eca-rule
* status = $publication-status#draft
* experimental = true
* action.title = "Termin mit Patient vereinbaren"
* action.type = $action-type#create
* action.definitionCanonical = Canonical(Q4MSTerminvereinbarungAD)
