Instance: Q4MSMagnetresonanztomographie
InstanceOf: PlanDefinition
Title: "Magnetresonanztomographie"
Description: "PlanDefinition zur Magnetresonanztomographie (MRT)"
Usage: #definition
* url = $q4ms-magnetresonanztomographie
* name = "Q4MSMagnetresonanztomographie"
* type = $plan-definition-type#eca-rule
* status = $publication-status#active
* experimental = true
* action.code = $ops-codes#3-80x
* action.title = "Diagnostik Magnetresonanztomographie (MRT)"
* action.trigger.type = $trigger-type#periodic
* action.trigger.timingTiming.repeat.frequency = 1
* action.trigger.timingTiming.repeat.period = 12
* action.trigger.timingTiming.repeat.periodUnit = $ucum#mo
* action.type = $action-type#create
* action.condition.kind = #applicability
* action.condition.expression.language = #text/cql
* action.condition.expression.expression = "Nicht schwanger"
* action.definitionCanonical = Canonical(Q4MSMagnetresonanztomographieAD)
