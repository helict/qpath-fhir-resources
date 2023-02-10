Instance: Q4MSTerminvereinbarungAD
InstanceOf: ActivityDefinition
Title: "Terminvereinbarung"
Description: "ActivityDefinition zur Terminvereinbarung"
Usage: #definition
* url = $q4ms-terminvereinbarung-ad
* name = "Q4MSTerminvereinbarungAD"
* title = "Terminvereinbarung"
* status = $publication-status#active
* experimental = true
* kind = $request-resource-type#Task
* doNotPerform = false
* timingTiming.repeat.duration = 10
* timingTiming.repeat.durationUnit = $ucum#min