Alias: $q4ms-prozedur-sd = http://qpath4ms.ukdd.de/fhir/StructureDefinition/Q4MSProzedurProfile
Alias: $ops-codes = http://fhir.de/CodeSystem/bfarm/ops
Alias: $ext-workflow-episode-of-care = http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare

Profile: Q4MSProzedurProfile
Parent: ServiceRequest
Id: Q4MSProzedurProfile
Title: "Prozedur"
Description: "Profil zur Anfrage einer Prozedur"
* ^url = $q4ms-prozedur-sd
* instantiatesCanonical 1..1 MS
* instantiatesCanonical only Canonical(Q4MSProzedurdefinitionProfile)
* basedOn 1..1 MS // TODO CarePlan Profile
* status 1..1 MS
* intent 1..1 MS
* category MS
* category from $ops-codes (preferred)
* doNotPerform MS
* code 1..1 MS
* code from $ops-codes (required)
* subject MS
* subject only Reference(Q4MSPatientProfile or Q4MSPatientPseudonymProfile)
* occurrence[x] only Timing
* occurrenceTiming.event 0..1 MS
* occurrenceTiming.repeat MS
* occurrenceTiming.repeat.duration 1..1 MS
* occurrenceTiming.repeat.durationUnit 1..1 MS
* occurrenceTiming.repeat.timeOfDay MS
* locationCode MS
* locationCode from $v3-role-code (preferred)
* locationReference MS // TODO Location (Raum) Profile
* supportingInfo MS
* patientInstruction MS
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $ext-workflow-episode-of-care named WorkflowEpisodeOfCare 1..1 MS
* extension[WorkflowEpisodeOfCare].url = $ext-workflow-episode-of-care (exactly)
* extension[WorkflowEpisodeOfCare].value[x] only Reference(Q4MSMonitoringzyklusProfile)

Instance: MultipleSclerosisPerformanceTestExampleSR
InstanceOf: Q4MSProzedurProfile
Usage: #example
Title: "Multiple Sclerosis Performance Test (MSPT, PLAN)"
Description: "Beispiel ServiceRequest für die Durchführung eines MSPT mit dem Patienten (M0, PLAN)"
* instantiatesCanonical = Canonical(Q4MSMultipleSclerosisPerformanceTestAD)
* basedOn = Reference(MultipleSclerosisPerformanceTestExampleCP)
* status = $request-status#active
* intent = $request-intent#plan
* doNotPerform = false
* code = $ops-codes#8-92
* subject = Reference(PatientPseudonym)
* occurrenceTiming.event = "2022-04-19T09:00:00Z"
* occurrenceTiming.repeat.duration = 25
* occurrenceTiming.repeat.durationUnit = $ucum#min
* locationCode = $v3-role-code#NEUR
* extension[$ext-workflow-episode-of-care].valueReference = Reference(BasismonitoringErsterZyklusExampleEOC)

Instance: AllgemeineNeurologischeUntersuchungExampleSR
InstanceOf: Q4MSProzedurProfile
Usage: #example
Title: "Expanded Disability Status Scale (M0, PLAN)"
Description: "Beispiel ServiceRequest für die Durchführung einer allgemeinen und neurologischen Untersuchung mit dem Patienten (M0, PLAN)"
* instantiatesCanonical = Canonical(Q4MSExpandedDisabilityStatusScaleAD)
* basedOn = Reference(AllgemeineNeurologischeUntersuchungExampleCP)
* status = $request-status#active
* intent = $request-intent#plan
* doNotPerform = false
* code = $ops-codes#1-20a
* subject = Reference(PatientPseudonym)
* occurrenceTiming.event = "2022-04-19T08:00:00Z"
* occurrenceTiming.repeat.duration = 20
* occurrenceTiming.repeat.durationUnit = $ucum#min
* locationCode = $v3-role-code#NEUR
* extension[$ext-workflow-episode-of-care].valueReference = Reference(BasismonitoringErsterZyklusExampleEOC)

Instance: OptischeKohaerenztomographieExampleSR
InstanceOf: Q4MSProzedurProfile
Usage: #example
Title: "Optische Kohärenztomographie (M0, PLAN)"
Description: "Beispiel ServiceRequest für die Durchführung eines OCT mit dem Patienten (M0, PLAN)"
* instantiatesCanonical = Canonical(Q4MSOptischeKohaerenztomographieAD)
* basedOn = Reference(OptischeKohaerenztomographieExampleCP)
* status = $request-status#active
* intent = $request-intent#plan
* doNotPerform = false
* code = $ops-codes#3-300
* subject = Reference(PatientPseudonym)
* occurrenceTiming.event = "2022-04-19T09:30:00Z"
* occurrenceTiming.repeat.duration = 25
* occurrenceTiming.repeat.durationUnit = $ucum#min
* locationCode = $v3-role-code#OPTC
* extension[$ext-workflow-episode-of-care].valueReference = Reference(BasismonitoringErsterZyklusExampleEOC)

Instance: GanganalyseExampleSR
InstanceOf: Q4MSProzedurProfile
Usage: #example
Title: "Ganganalyse (M0, PLAN)"
Description: "Beispiel ServiceRequest für die Durchführung einer Ganganalyse mit dem Patienten (M0, PLAN)"
* instantiatesCanonical = Canonical(Q4MSGanganalyseAD)
* basedOn = Reference(GanganalyseExampleCP)
* status = $request-status#active
* intent = $request-intent#plan
* code = $ops-codes#1-798
* doNotPerform = false
* subject = Reference(PatientPseudonym)
* occurrenceTiming.event = "2022-04-19T08:30:00Z"
* occurrenceTiming.repeat.duration = 25
* occurrenceTiming.repeat.durationUnit = $ucum#min
* locationCode = $v3-role-code#SPMED
* extension[$ext-workflow-episode-of-care].valueReference = Reference(BasismonitoringErsterZyklusExampleEOC)

Instance: LaboruntersuchungExampleSR
InstanceOf: Q4MSProzedurProfile
Usage: #example
Title: "Laboruntersuchung (M0, PLAN)"
Description: "Beispiel ServiceRequest für die Durchführung einer Laboruntersuchung mit dem Patienten (M0, PLAN)"
* instantiatesCanonical = Canonical(Q4MSLaboruntersuchungAD)
* basedOn = Reference(LaboruntersuchungExampleCP)
* status = $request-status#active
* intent = $request-intent#plan
* code = $ops-codes#1-942
* doNotPerform = false
* subject = Reference(PatientPseudonym)
* occurrenceTiming.event = "2022-04-19T10:20:00Z"
* occurrenceTiming.repeat.duration = 10
* occurrenceTiming.repeat.durationUnit = $ucum#min
* locationCode = $v3-role-code#HLAB
* extension[$ext-workflow-episode-of-care].valueReference = Reference(BasismonitoringErsterZyklusExampleEOC)