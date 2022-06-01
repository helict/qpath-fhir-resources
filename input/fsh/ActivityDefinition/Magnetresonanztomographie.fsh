Instance: Q4MSMagnetresonanztomographieAD
InstanceOf: Q4MSProzedurdefinitionProfile
Title: "Magnetresonanztomographie"
Description: "ActivityDefinition zur Magnetresonanztomographie (MRT)"
Usage: #definition
* url = $q4ms-magnetresonanztomographie-ad
* name = "Q4MSMagnetresonanztomographieAD"
* title = "Magnetresonanztomographie (MRT)"
* status = $publication-status#draft
* experimental = true
* kind = $resource-type#ServiceRequest
* code = $ops-codes#3-80
* intent = $request-intent#plan
* profile = Canonical(Q4MSProzedurProfile)
* doNotPerform = false
* timingTiming.repeat.duration = 30
* timingTiming.repeat.durationUnit = $ucum#min
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
