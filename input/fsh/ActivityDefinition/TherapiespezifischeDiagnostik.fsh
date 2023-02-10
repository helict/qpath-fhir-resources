Instance: Q4MSTherapiespezifischeDiagnostikAD
InstanceOf: Q4MSProzedurdefinitionProfile
Title: "Therapiespezifische Diagnostik"
Description: "ActivityDefinition zur therapiespezifischen Diagnostik"
Usage: #definition
* url = $q4ms-therapiespezifische-diagnostik-ad
* name = "Q4MSTherapiespezifischeDiagnostikAD"
* title = "Therapiespezifische Diagnostik"
* status = $publication-status#active
* code = $ops-codes#1-798
* doNotPerform = false
* experimental = true
* kind = $request-resource-type#ServiceRequest
* intent = $request-intent#plan
* profile = Canonical(Q4MSProzedurProfile)
* timingTiming.repeat.duration = 30
* timingTiming.repeat.durationUnit = $ucum#min
* timingTiming.repeat.timeOfDay = "10:30:00"
* dynamicValue[+].path = "code"
* dynamicValue[=].expression.language = $expression-language#text/fhirpath
* dynamicValue[=].expression.expression = "%context.code"
* dynamicValue[+].path = "intent"
* dynamicValue[=].expression.language = $expression-language#text/fhirpath
* dynamicValue[=].expression.expression = "%context.intent"
* dynamicValue[+].path = "doNotPerform"
* dynamicValue[=].expression.language = $expression-language#text/fhirpath
* dynamicValue[=].expression.expression = "%context.doNotPerform"