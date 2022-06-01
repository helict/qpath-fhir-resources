Alias: $q4ms-prozedurdefinition-sd = http://qpath4ms.ukdd.de/fhir/StructureDefinition/Q4MSProzedurdefinitionProfile

Profile: Q4MSProzedurdefinitionProfile
Parent: ActivityDefinition
Id: Q4MSProzedurdefinitionProfile
Title: "Prozedurdefinition"
Description: "Profil zur Definition einer Prozedur"
* ^url = $q4ms-prozedurdefinition-sd
* status 1..1 MS
* title 1..1 MS
* kind 1..1 MS
* kind = $resource-type#ServiceRequest
* profile 1..1 MS
* profile = $q4ms-prozedur-sd
* code 1..1 MS
* intent 1..1 MS
* doNotPerform 1..1 MS
* timing[x] only Timing
* timingTiming.repeat MS
* timingTiming.repeat.duration MS
* timingTiming.repeat.durationUnit MS
* timingTiming.repeat.timeOfDay MS
* location MS
* dynamicValue MS