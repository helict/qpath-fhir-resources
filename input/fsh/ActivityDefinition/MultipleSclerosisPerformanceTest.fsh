Instance: Q4MSMultipleSclerosisPerformanceTestAD
InstanceOf: ActivityDefinition
Title: "Multiple Sclerosis Performance Test"
Description: "ActivityDefinition zum Multiple Sclerosis Performance Test (MSPT)"
Usage: #definition
* url = $q4ms-multiple-sclerosis-performance-test-ad
* name = "Q4MSMultipleSclerosisPerformanceTestAD"
* status = $publication-status#draft
* experimental = true
* kind = $resource-type#ServiceRequest
* doNotPerform = false
* timingDuration.system = $ucum
* timingDuration.code = #min
* timingDuration.value = 25
* timingDuration.unit = "min"
