Instance: Q4MSMagnetresonanztomographieAD
InstanceOf: ActivityDefinition
Title: "Magnetresonanztomographie"
Description: "ActivityDefinition zur Magnetresonanztomographie (MRT)"
Usage: #definition
* url = $q4ms-magnetresonanztomographie-ad
* name = "Q4MSMagnetresonanztomographieAD"
* status = $publication-status#draft
* experimental = true
* kind = $resource-type#ServiceRequest
* doNotPerform = false
* timingDuration.system = $ucum
* timingDuration.code = #min
* timingDuration.value = 20
* timingDuration.unit = "min"
