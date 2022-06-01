Instance: Q4MSExpandedDisabilityStatusScaleAD
InstanceOf: Q4MSProzedurdefinitionProfile
Title: "Expanded Disability Status Scale (EDSS)"
Description: "ActivityDefinition zur Expanded Disability Status Scale (EDSS)"
Usage: #definition
* url = $q4ms-expanded-disability-status-scale-ad
* name = "Q4MSExpandedDisabilityStatusScaleAD"
* title = "Expanded Disability Status Scale (EDSS)"
* status = $publication-status#draft
* experimental = true
* kind = $resource-type#ServiceRequest
* code = $ops-codes#1-20a
* intent = $request-intent#plan
* profile = Canonical(Q4MSProzedurProfile)
* doNotPerform = false
* timingTiming.repeat.duration = 20
* timingTiming.repeat.durationUnit = $ucum#min
* timingTiming.repeat.timeOfDay = "08:00:00"
* dynamicValue[+].path = "code"
* dynamicValue[=].expression.language = $expression-language#text/fhirpath
* dynamicValue[=].expression.expression = "%context.code"
* dynamicValue[+].path = "intent"
* dynamicValue[=].expression.language = $expression-language#text/fhirpath
* dynamicValue[=].expression.expression = "%context.intent"
* dynamicValue[+].path = "doNotPerform"
* dynamicValue[=].expression.language = $expression-language#text/fhirpath
* dynamicValue[=].expression.expression = "%context.doNotPerform"
* dynamicValue[+].path = "occurrenceTiming.repeat.duration"
* dynamicValue[=].expression.language = $expression-language#text/fhirpath
* dynamicValue[=].expression.expression = "%context.timingTiming.repeat.duration"
* dynamicValue[+].path = "occurrenceTiming.repeat.durationUnit"
* dynamicValue[=].expression.language = $expression-language#text/fhirpath
* dynamicValue[=].expression.expression = "%context.timingTiming.repeat.durationUnit"
* dynamicValue[+].path = "occurrenceTiming.repeat.timeOfDay"
* dynamicValue[=].expression.language = $expression-language#text/fhirpath
* dynamicValue[=].expression.expression = "%context.timingTiming.repeat.timeOfDay"
