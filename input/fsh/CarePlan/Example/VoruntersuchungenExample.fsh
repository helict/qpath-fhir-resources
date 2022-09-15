Instance: VoruntersuchungenExampleCP
InstanceOf: CarePlan
Title: "Beispiel Voruntersuchungen"
Description: "Beispiel CarePlan zu den Voruntersuchungen eines Patienten (M0)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSVoruntersuchungen)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.reference = Reference(VoruntersuchungenExampleRG)

Instance: VoruntersuchungenExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Voruntersuchungen"
Description: "Beispiel RequestGroup zu den Voruntersuchungen eines Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSVoruntersuchungen)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.groupingBehavior = #logical-group
* action.selectionBehavior = #all
* action.requiredBehavior = #must-unless-documented
* action.cardinalityBehavior = #single
* action.action[0].title = "Diagnostik alle 3 Monate"
* action.action[=].timingTiming.repeat.frequency = 1
* action.action[=].timingTiming.repeat.period = 3
* action.action[=].timingTiming.repeat.periodUnit = #mo
* action.action[=].groupingBehavior = #logical-group
* action.action[=].selectionBehavior = #all
* action.action[=].requiredBehavior = #must-unless-documented
* action.action[=].cardinalityBehavior = #single
* action.action[=].action[0].title = "Multiple Sclerosis Performance Test (MSPT)"
* action.action[=].action[=].resource = Reference(MultipleSclerosisPerformanceTestExampleCP)
* action.action[=].action[+].title = "Therapiespezifische Diagnostik"
* action.action[=].action[=].resource = Reference(TherapiespezifischeDiagnostikExampleCP)
* action.action[+].title = "Diagnostik alle 6 Monate"
* action.action[=].timingTiming.repeat.frequency = 1
* action.action[=].timingTiming.repeat.period = 6
* action.action[=].timingTiming.repeat.periodUnit = #mo
* action.action[=].groupingBehavior = #logical-group
* action.action[=].selectionBehavior = #all
* action.action[=].requiredBehavior = #must-unless-documented
* action.action[=].cardinalityBehavior = #single
* action.action[=].action[0].title = "Allgemeine und neurologische Untersuchung"
* action.action[=].action[=].resource = Reference(AllgemeineNeurologischeUntersuchungExampleCP)
* action.action[+].title = "Diagnostik alle 12 Monate"
* action.action[=].timingTiming.repeat.frequency = 1
* action.action[=].timingTiming.repeat.period = 12
* action.action[=].timingTiming.repeat.periodUnit = #mo
* action.action[=].groupingBehavior = #logical-group
* action.action[=].selectionBehavior = #all
* action.action[=].requiredBehavior = #must-unless-documented
* action.action[=].cardinalityBehavior = #single
* action.action[=].action[0].title = "Optische Kohärenztomographie (OCT)"
* action.action[=].action[=].resource = Reference(OptischeKohaerenztomographieExampleCP)
* action.action[=].action[+].title = "Ganganalyse"
* action.action[=].action[=].resource = Reference(GanganalyseExampleCP)
//* action.action[=].action[+].title = "Magnetresonanztomographie (MRT)"
//* action.action[=].action[=].resource = Reference(MagnetresonanztomographieExampleCP)
* action.action[=].action[+].title = "Laboruntersuchung"
* action.action[=].action[=].resource = Reference(LaboruntersuchungExampleCP)

// Voruntersuchung -> MSPT

Instance: MultipleSclerosisPerformanceTestExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Multiple Sclerosis Performance Test (MSPT)"
Description: "Beispiel CarePlan für die Durchführung eines MSPT mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSMultipleSclerosisPerformanceTest)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.extension[$extension-careplan-activity-title].valueString = "Multiple Sclerosis Performance Test (MSPT)"
* activity.reference = Reference(MultipleSclerosisPerformanceTestExampleRG)

Instance: MultipleSclerosisPerformanceTestExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Multiple Sclerosis Performance Test (MSPT)"
Description: "Beispiel RequestGroup für die Durchführung eines MSPT mit dem Patienten (M0)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSMultipleSclerosisPerformanceTest)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Multiple Sclerosis Performance Test (MSPT)"
* action.resource = Reference(MultipleSclerosisPerformanceTestExampleSR)

// Voruntersuchung -> Therapiespezifische Diagnostik

Instance: TherapiespezifischeDiagnostikExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Therapiespezifische Diagnostik"
Description: "Beispiel CarePlan für die Durchführung einer therapiespezifischen Diagnostik mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSTherapiespezifischeDiagnostik)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.extension[$extension-careplan-activity-title].valueString = "Therapiespezifische Diagnostik"
* activity.reference = Reference(TherapiespezifischeDiagnostikExampleRG)

Instance: TherapiespezifischeDiagnostikExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Therapiespezifische Diagnostik"
Description: "Beispiel RequestGroup für die Durchführung einer therapiespezifischen Diagnostik mit dem Patienten (M0)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSTherapiespezifischeDiagnostik)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Therapiespezifische Diagnostik"
* action.resource = Reference(TherapiespezifischeDiagnostikExampleSR)

Instance: TherapiespezifischeDiagnostikExampleSR
InstanceOf: ServiceRequest
Usage: #example
Title: "Beispiel Therapiespezifische Diagnostik"
Description: "Beispiel ServiceRequest für die Durchführung einer therapiespezifischen Diagnostik mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSTherapiespezifischeDiagnostikAD)
* status = $task-status#active
* intent = $request-intent#plan
* doNotPerform = false
* subject = Reference(PatientPseudonym)
* occurrencePeriod.start = "2021-08-16T10:30:00Z"
* occurrencePeriod.end = "2021-08-16T16:00:00Z"
* locationCode = $v3-role-code#DX

// Arztvorstellung -> Allgemeine neurologische Untersuchung (EDSS)

Instance: AllgemeineNeurologischeUntersuchungExampleCP
InstanceOf: CarePlan
Title: "Beispiel Allgemeine und neurologische Untersuchung"
Description: "Beispiel CarePlan für die Durchführung einer allgemeinen neurologischen Untersuchung mit dem Patienten (M0)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSAllgemeineNeurologischeUntersuchung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.reference = Reference(AllgemeineNeurologischeUntersuchungExampleRG)

Instance: AllgemeineNeurologischeUntersuchungExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Allgemeine und neurologische Untersuchung"
Description: "Beispiel RequestGroup für die Durchführung einer allgemeinen neurologischen Untersuchung mit dem Patienten (M0)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSAllgemeineNeurologischeUntersuchung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Expanded Disability Status Scale (EDSS)"
* action.resource = Reference(AllgemeineNeurologischeUntersuchungExampleSR)

// Voruntersuchung -> OCT

Instance: OptischeKohaerenztomographieExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Optische Kohärenztomographie (OCT)"
Description: "Beispiel CarePlan für die Durchführung eines OCT mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSOptischeKohaerenztomographie)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.extension[$extension-careplan-activity-title].valueString = "Optische Kohärenztomographie (OCT)"
* activity.reference = Reference(OptischeKohaerenztomographieExampleRG)

Instance: OptischeKohaerenztomographieExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Optische Kohärenztomographie (OCT)"
Description: "Beispiel RequestGroup für die Durchführung eines OCT mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSOptischeKohaerenztomographie)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Optische Kohärenztomographie (OCT)"
* action.resource = Reference(OptischeKohaerenztomographieExampleSR)

// Voruntersuchung -> Ganganalyse

Instance: GanganalyseExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Ganganalyse"
Description: "Beispiel CarePlan für die Durchführung einer Ganganalyse mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSGanganalyse)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.extension[$extension-careplan-activity-title].valueString = "Ganganalyse"
* activity.reference = Reference(GanganalyseExampleRG)

Instance: GanganalyseExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Ganganalyse"
Description: "Beispiel RequestGroup für die Durchführung einer Ganganalyse mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSGanganalyse)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Ganganalyse"
* action.resource = Reference(GanganalyseExampleSR)

// Voruntersuchung -> MRT

//Instance: MagnetresonanztomographieExampleCP
//InstanceOf: CarePlan
//Usage: #example
//Title: "Beispiel Magnetresonanztomographie (MRT)"
//Description: "Beispiel CarePlan für die Durchführung einer MRT mit dem Patienten (M0)"
//* instantiatesCanonical = Canonical(Q4MSMagnetresonanztomographie)
//* status = $publication-status#draft
//* intent = $request-intent#option
//* subject = Reference(PatientPseudonym)
//* activity.extension[$extension-careplan-activity-title].valueString = "Magnetresonanztomographie (MRT)"
//* activity.reference = Reference(MagnetresonanztomographieExampleRG)
//
//Instance: MagnetresonanztomographieExampleRG
//InstanceOf: RequestGroup
//Usage: #example
//Title: "Beispiel Magnetresonanztomographie (MRT)"
//Description: "Beispiel RequestGroup für die Durchführung einer MRT mit dem Patienten (M0)"
//* instantiatesCanonical = Canonical(Q4MSMagnetresonanztomographie)
//* status = $publication-status#draft
//* intent = $request-intent#plan
//* subject = Reference(PatientPseudonym)
//* action.title = "Magnetresonanztomographie (MRT)"
//* action.resource = Reference(MagnetresonanztomographieExampleSR)
