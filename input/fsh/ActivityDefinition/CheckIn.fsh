Instance: Q4MSCheckInAD
InstanceOf: ActivityDefinition
Title: "Check-In"
Description: "ActivityDefinition zum Check-In"
Usage: #definition
* url = $q4ms-check-in-ad
* name = "Q4MSCheckInAD"
* title = "Check-In"
* status = $publication-status#active
* experimental = true
* kind = $request-resource-type#Task
* doNotPerform = false
* timingTiming.repeat.duration = 15
* timingTiming.repeat.durationUnit = $ucum#min
