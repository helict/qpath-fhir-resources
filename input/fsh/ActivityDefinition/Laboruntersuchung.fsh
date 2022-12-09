Instance: Q4MSLaboruntersuchungAD
InstanceOf: Q4MSProzedurdefinitionProfile
Title: "Laboruntersuchung"
Description: "ActivityDefinition zur Laboruntersuchung"
Usage: #definition
* url = $q4ms-laboruntersuchung-ad
* name = "Q4MSLaboruntersuchungAD"
* title = "Laboruntersuchung"
* status = $publication-status#active
* experimental = true
* kind = $request-resource-type#ServiceRequest
* code = $ops-codes#1-204.y
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
* dynamicValue[+].path = "occurrence.repeat.duration"
* dynamicValue[=].expression.language = $expression-language#text/fhirpath
* dynamicValue[=].expression.expression = "%context.timing.repeat.duration"
* dynamicValue[+].path = "occurrence.repeat.durationUnit"
* dynamicValue[=].expression.language = $expression-language#text/fhirpath
* dynamicValue[=].expression.expression = "%context.timing.repeat.durationUnit"
* dynamicValue[+].path = "occurrence.repeat.timeOfDay"
* dynamicValue[=].expression.language = $expression-language#text/fhirpath
* dynamicValue[=].expression.expression = "%context.timing.repeat.timeOfDay"
