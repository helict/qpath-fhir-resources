Instance: Q4MSLaboruntersuchungAD
InstanceOf: ActivityDefinition
Title: "Laboruntersuchung"
Description: "ActivityDefinition zur Laboruntersuchung"
Usage: #definition
* url = $q4ms-laboruntersuchung-ad
* name = "Q4MSLaboruntersuchungAD"
* status = $publication-status#draft
* experimental = true
* kind = $resource-type#ServiceRequest
* doNotPerform = false
* timingDuration.system = $ucum
* timingDuration.code = #min
* timingDuration.value = 10
* timingDuration.unit = "min"
