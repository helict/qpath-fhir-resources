Instance: Q4MSLaboruntersuchungAD
InstanceOf: Q4MSProzedurdefinitionProfile
Title: "Laboruntersuchung"
Description: "ActivityDefinition zur Laboruntersuchung"
Usage: #definition
* url = $q4ms-laboruntersuchung-ad
* name = "Q4MSLaboruntersuchungAD"
* title = "Laboruntersuchung"
* status = $publication-status#draft
* experimental = true
* kind = $resource-type#ServiceRequest
* code = $ops-codes#1-942
* intent = $request-intent#plan
* profile = Canonical(Q4MSProzedurProfile)
* doNotPerform = false
* timingTiming.repeat.duration = 10
* timingTiming.repeat.durationUnit = $ucum#min
* timingTiming.repeat.timeOfDay = "10:20:00"
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
