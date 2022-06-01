Instance: Q4MSMultipleSclerosisPerformanceTest
InstanceOf: PlanDefinition
Title: "Multiple Sclerosis Performance Test"
Description: "PlanDefinition zum Multiple Sclerosis Performance Test (MSPT)"
Usage: #definition
* url = $q4ms-multiple-sclerosis-performance-test
* name = "Q4MSMultipleSclerosisPerformanceTest"
* type = $plan-definition-type#eca-rule
* status = $publication-status#draft
* experimental = true
* action.code = $ops-codes#8-92
* action.title = "Diagnostik Multiple Sclerosis Performance Test (MSPT)"
* action.trigger.type = $trigger-type#periodic
* action.trigger.timingTiming.repeat.frequency = 1
* action.trigger.timingTiming.repeat.period = 3
* action.trigger.timingTiming.repeat.periodUnit = $ucum#mo
* action.type = $action-type#create
* action.definitionCanonical = Canonical(Q4MSMultipleSclerosisPerformanceTestAD)
