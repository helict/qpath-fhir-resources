Instance: Q4MSTherapiespezifischeDiagnostik
InstanceOf: PlanDefinition
Title: "Therapiespezifische Diagnostik"
Description: "PlanDefinition zur therapiespezifischen Diagnostik"
Usage: #definition
* url = $q4ms-therapiespezifische-diagnostik
* name = "Q4MSTherapiespezifischeDiagnostik"
* type = $plan-definition-type#eca-rule
* status = $publication-status#draft
* experimental = true
* action.title = "Therapiespezifische Diagnostik"
* action.type = $action-type#create
* action.trigger.type = $trigger-type#periodic
* action.trigger.timingTiming.repeat.frequency = 1
* action.trigger.timingTiming.repeat.period = 3
* action.trigger.timingTiming.repeat.periodUnit = $ucum#mo
* action.condition.kind = #applicability
* action.condition.expression.language = #text/cql
* action.condition.expression.expression = "is under therapy"
* action.definitionCanonical = Canonical(Q4MSTherapiespezifischeDiagnostikAD)
