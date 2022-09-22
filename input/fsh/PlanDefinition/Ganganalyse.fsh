Instance: Q4MSGanganalyse
InstanceOf: PlanDefinition
Title: "Ganganalyse"
Description: "PlanDefinition zur Ganganalyse"
Usage: #definition
* url = $q4ms-ganganalyse
* name = "Q4MSGanganalyse"
* type = $plan-definition-type#eca-rule
* status = $publication-status#active
* experimental = true
* action.code = $ops-codes#1-798
* action.title = "Diagnostik Ganganalyse"
* action.trigger.type = $trigger-type#periodic
* action.trigger.timingTiming.repeat.frequency = 1
* action.trigger.timingTiming.repeat.period = 12
* action.trigger.timingTiming.repeat.periodUnit = $ucum#mo
* action.type = $action-type#create
* action.definitionCanonical = Canonical(Q4MSGanganalyseAD)
