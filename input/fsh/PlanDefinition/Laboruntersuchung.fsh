Instance: Q4MSLaboruntersuchung
InstanceOf: PlanDefinition
Title: "Laboruntersuchung"
Description: "PlanDefinition zur Laboruntersuchung"
Usage: #definition
* url = $q4ms-laboruntersuchung
* name = "Q4MSLaboruntersuchung"
* type = $plan-definition-type#eca-rule
* status = $publication-status#active
* experimental = true
* action.code = $ops-codes#1-942
* action.title = "Laboruntersuchung"
* action.trigger.type = $trigger-type#periodic
* action.trigger.timingTiming.repeat.frequency = 1
* action.trigger.timingTiming.repeat.period = 12
* action.trigger.timingTiming.repeat.periodUnit = $ucum#mo
* action.type = $action-type#create
* action.definitionCanonical = Canonical(Q4MSLaboruntersuchungAD)
