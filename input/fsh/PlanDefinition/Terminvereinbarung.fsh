Instance: Q4MSTerminvereinbarung
InstanceOf: PlanDefinition
Title: "Terminvereinbarung PlanDefinition"
Usage: #definition
* url = "http://qpath.ukdd.de/PlanDefinition/Q4MSTerminvereinbarung"
* type = $plan-definition-type#eca-rule
* status = #draft
* experimental = true
* action.title = "Termin mit Patient vereinbaren"
* action.type = $action-type#create
* action.definitionCanonical = Canonical(Q4MSTerminvereinbarungActivity)