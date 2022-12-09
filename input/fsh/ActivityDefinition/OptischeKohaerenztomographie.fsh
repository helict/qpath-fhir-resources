Instance: Q4MSOptischeKohaerenztomographieAD
InstanceOf: Q4MSProzedurdefinitionProfile
Title: "Optische Kohärenztomographie"
Description: "ActivityDefinition zur Optischen Kohärenztomographie (OCT)"
Usage: #definition
* url = $q4ms-optische-kohaerenztomographie-ad
* name = "Q4MSOptischeKohaerenztomographieAD"
* title = "Optische Kohärenztomographie (OCT)"
* status = $publication-status#active
* experimental = true
* kind = $request-resource-type#ServiceRequest
* code = $ops-codes#3-300.y
* intent = $request-intent#plan
* profile = Canonical(Q4MSProzedurProfile)
* doNotPerform = false
* timingTiming.repeat.duration = 25
* timingTiming.repeat.durationUnit = $ucum#min
* timingTiming.repeat.timeOfDay = "09:30:00"
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

