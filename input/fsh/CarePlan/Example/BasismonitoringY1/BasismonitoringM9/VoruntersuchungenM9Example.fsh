Instance: VoruntersuchungenM9ExampleCP
InstanceOf: CarePlan
Title: "Beispiel Voruntersuchungen"
Description: "Beispiel CarePlan zu den Voruntersuchungen eines Patienten (M9)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSVoruntersuchungenM3)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.reference = Reference(VoruntersuchungenM9ExampleRG)

Instance: VoruntersuchungenM9ExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Voruntersuchungen"
Description: "Beispiel RequestGroup zu den Voruntersuchungen eines Patienten (M9)"
* instantiatesCanonical = Canonical(Q4MSVoruntersuchungenM3)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)

// * action.groupingBehavior = #logical-group
// * action.selectionBehavior = #all
// * action.requiredBehavior = #must-unless-documented
// * action.cardinalityBehavior = #single

// Diagnostik aller 3 Monate
* action[+].title = "Multiple Sclerosis Performance Test (MSPT)"
* action[=].resource = Reference(MultipleSclerosisPerformanceTestM9ExampleCP)
* action[+].title = "Therapiespezifische Diagnostik"
* action[=].resource = Reference(TherapiespezifischeDiagnostikM9ExampleCP)

//* action[+].title = "Diagnostik alle 6 Monate"
// -> entfällt, da M9

//* action[+].title = "Diagnostik alle 12 Monate"
// -> entfällt, da M9

// Voruntersuchung M9 -> MSPT

Instance: MultipleSclerosisPerformanceTestM9ExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Multiple Sclerosis Performance Test (MSPT)"
Description: "Beispiel CarePlan für die Durchführung eines MSPT mit dem Patienten (M9)"
* instantiatesCanonical = Canonical(Q4MSMultipleSclerosisPerformanceTest)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.extension[$extension-careplan-activity-title].valueString = "Multiple Sclerosis Performance Test (MSPT)"
* activity.reference = Reference(MultipleSclerosisPerformanceTestM9ExampleRG)

Instance: MultipleSclerosisPerformanceTestM9ExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Multiple Sclerosis Performance Test (MSPT)"
Description: "Beispiel RequestGroup für die Durchführung eines MSPT mit dem Patienten (M9)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSMultipleSclerosisPerformanceTest)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Multiple Sclerosis Performance Test (MSPT)"
* action.resource = Reference(MultipleSclerosisPerformanceTestM9ExampleSR)

// Voruntersuchung -> Therapiespezifische Diagnostik

Instance: TherapiespezifischeDiagnostikM9ExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Therapiespezifische Diagnostik"
Description: "Beispiel CarePlan für die Durchführung einer therapiespezifischen Diagnostik mit dem Patienten (M9)"
* instantiatesCanonical = Canonical(Q4MSTherapiespezifischeDiagnostik)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.extension[$extension-careplan-activity-title].valueString = "Therapiespezifische Diagnostik"
* activity.reference = Reference(TherapiespezifischeDiagnostikM9ExampleRG)

Instance: TherapiespezifischeDiagnostikM9ExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Therapiespezifische Diagnostik"
Description: "Beispiel RequestGroup für die Durchführung einer therapiespezifischen Diagnostik mit dem Patienten (M9)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSTherapiespezifischeDiagnostik)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Therapiespezifische Diagnostik"
* action.resource = Reference(TherapiespezifischeDiagnostikM9ExampleSR)

Instance: TherapiespezifischeDiagnostikM9ExampleSR
InstanceOf: ServiceRequest
Usage: #example
Title: "Beispiel Therapiespezifische Diagnostik"
Description: "Beispiel ServiceRequest für die Durchführung einer therapiespezifischen Diagnostik mit dem Patienten (M9)"
* instantiatesCanonical = Canonical(Q4MSTherapiespezifischeDiagnostikAD)
* status = $task-status#active
* intent = $request-intent#plan
* doNotPerform = false
* subject = Reference(PatientPseudonym)
* occurrencePeriod.start = "2022-05-02T10:30:00Z"
* occurrencePeriod.end = "2022-05-02T16:00:00Z"
* locationCode = $v3-role-code#DX