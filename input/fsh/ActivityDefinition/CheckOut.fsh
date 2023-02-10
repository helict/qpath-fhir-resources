Instance: Q4MSCheckOutAD
InstanceOf: ActivityDefinition
Title: "Check-Out"
Description: "ActivityDefinition zum Check-Out"
Usage: #definition
* url = $q4ms-check-out-ad
* name = "Q4MSCheckOutAD"
* title = "Check-Out"
* status = $publication-status#active
* experimental = true
* kind = $request-resource-type#Task
* doNotPerform = false
* timingTiming.repeat.duration = 15
* timingTiming.repeat.durationUnit = $ucum#min
