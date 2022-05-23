Instance: Q4MSGanganalyseAD
InstanceOf: ActivityDefinition
Title: "Ganganalyse"
Description: "ActivityDefinition zur Ganganalyse"
Usage: #definition
* url = $q4ms-ganganalyse-ad
* name = "Q4MSGanganalyseAD"
* status = $publication-status#draft
* experimental = true
* kind = $resource-type#ServiceRequest
* doNotPerform = false
* timingDuration.system = $ucum
* timingDuration.code = #min
* timingDuration.value = 25
* timingDuration.unit = "min"
