Instance: Q4MSTerminvereinbarung
InstanceOf: PlanDefinition
Title: "Terminvereinbarung"
Description: "PlanDefinition zur Terminvereinbarung"
Usage: #definition
* url = $q4ms-terminvereinbarung
* name = "Q4MSTerminvereinbarung"
* type = $plan-definition-type#eca-rule
* status = $publication-status#active
* experimental = true
* action.title = "Termin mit Patient vereinbaren"
* action.type = $action-type#create
* action.definitionCanonical = Canonical(Q4MSTerminvereinbarungAD)
* action.timingTiming.repeat.duration = 10
* action.timingTiming.repeat.durationUnit = $ucum#min
