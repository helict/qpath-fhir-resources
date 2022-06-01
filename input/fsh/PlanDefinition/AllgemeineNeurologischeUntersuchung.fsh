Instance: Q4MSAllgemeineNeurologischeUntersuchung
InstanceOf: PlanDefinition
Title: "Allgemeine und neurologische Untersuchung"
Description: "PlanDefinition zur allgemeinen und neurologischen Untersuchung"
Usage: #definition
* url = $q4ms-allgemeine-neurologische-untersuchung
* name = "Q4MSAllgemeineNeurologischeUntersuchung"
* type = $plan-definition-type#eca-rule
* status = $publication-status#draft
* experimental = true
* action.code = $ops-codes#1-20a
* action.title = "Expanded Disability Status Scale (EDSS)"
* action.trigger.type = $trigger-type#periodic
* action.trigger.timingTiming.repeat.frequency = 1
* action.trigger.timingTiming.repeat.period = 6
* action.trigger.timingTiming.repeat.periodUnit = $ucum#mo
* action.type = $action-type#create
* action.definitionCanonical = Canonical(Q4MSExpandedDisabilityStatusScaleAD)
