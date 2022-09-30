Instance: Q4MSGanganalyseAD
InstanceOf: Q4MSProzedurdefinitionProfile
Title: "Ganganalyse"
Description: "ActivityDefinition zur Ganganalyse"
Usage: #definition
* url = $q4ms-ganganalyse-ad
* name = "Q4MSGanganalyseAD"
* title = "Ganganalyse"
* status = $publication-status#active
* experimental = true
* kind = $request-resource-type#ServiceRequest
* code = $ops-codes#1-798
* intent = $request-intent#plan
* profile = Canonical(Q4MSProzedurProfile)
* doNotPerform = false
* timingTiming.repeat.duration = 25
* timingTiming.repeat.durationUnit = $ucum#min
* timingTiming.repeat.timeOfDay = "08:30:00"
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
