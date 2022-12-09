Instance: Q4MSMagnetresonanztomographieAD
InstanceOf: Q4MSProzedurdefinitionProfile
Title: "Magnetresonanztomographie"
Description: "ActivityDefinition zur Magnetresonanztomographie (MRT)"
Usage: #definition
* url = $q4ms-magnetresonanztomographie-ad
* name = "Q4MSMagnetresonanztomographieAD"
* title = "Magnetresonanztomographie (MRT)"
* status = $publication-status#active
* experimental = true
* kind = $request-resource-type#ServiceRequest
* code = $ops-codes#3-80x
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
* dynamicValue[+].path = "occurrence.repeat.duration"
* dynamicValue[=].expression.language = $expression-language#text/fhirpath
* dynamicValue[=].expression.expression = "%context.timing.repeat.duration"
* dynamicValue[+].path = "occurrence.repeat.durationUnit"
* dynamicValue[=].expression.language = $expression-language#text/fhirpath
* dynamicValue[=].expression.expression = "%context.timing.repeat.durationUnit"
