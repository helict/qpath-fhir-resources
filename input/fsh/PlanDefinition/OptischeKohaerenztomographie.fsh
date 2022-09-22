Instance: Q4MSOptischeKohaerenztomographie
InstanceOf: PlanDefinition
Title: "Optische Kohärenztomographie"
Description: "PlanDefinition zur Optischen Kohärenztomographie (OCT)"
Usage: #definition
* url = $q4ms-optische-koheraenztomographie
* name = "Q4MSOptischeKohaerenztomographie"
* type = $plan-definition-type#eca-rule
* status = $publication-status#active
* experimental = true
* action.code = $ops-codes#3-300
* action.title = "Diagnostik Optische Kohärenztomographie (OCT)"
* action.trigger.type = $trigger-type#periodic
* action.trigger.timingTiming.repeat.frequency = 1
* action.trigger.timingTiming.repeat.period = 12
* action.trigger.timingTiming.repeat.periodUnit = $ucum#mo
* action.type = $action-type#create
* action.definitionCanonical = Canonical(Q4MSOptischeKohaerenztomographieAD)
