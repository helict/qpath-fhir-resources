Instance: VoruntersuchungExampleCP
InstanceOf: CarePlan
Title: "Beispiel Voruntersuchung"
Description: "Beispiel CarePlan für die Voruntersuchung eines Patienten (M0)"
Usage: #example
* contained = VoruntersuchungExampleRG
* instantiatesCanonical = Canonical(Q4MSVoruntersuchung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(VoruntersuchungExampleRG)

Instance: VoruntersuchungExampleRG
InstanceOf: RequestGroup
Usage: #inline
Title: "Beispiel Voruntersuchung"
Description: "Beispiel RequestGroup für die Voruntersuchung eines Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSVoruntersuchung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
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
* action.action[=].action[+].title = "Magnetresonanztomographie (MRT)"
* action.action[=].action[=].resource = Reference(MagnetresonanztomographieExampleCP)

// Voruntersuchung -> MSPT

Instance: MultipleSclerosisPerformanceTestExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Multiple Sclerosis Performance Test (MSPT)"
Description: "Beispiel CarePlan für die Durchführung eines MSPT mit dem Patienten (M0)"
* contained = MultipleSclerosisPerformanceTestExampleRG
* instantiatesCanonical = Canonical(Q4MSMultipleSclerosisPerformanceTest)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(MultipleSclerosisPerformanceTestExampleRG)

Instance: MultipleSclerosisPerformanceTestExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Multiple Sclerosis Performance Test (MSPT)"
Description: "Beispiel RequestGroup für die Durchführung eines MSPT mit dem Patienten (M0)"
Usage: #inline
* instantiatesCanonical = Canonical(Q4MSMultipleSclerosisPerformanceTest)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Multiple Sclerosis Performance Test (MSPT)"
* action.resource = Reference(MultipleSclerosisPerformanceTestExampleSR)

Instance: MultipleSclerosisPerformanceTestExampleSR
InstanceOf: ServiceRequest
Usage: #example
Title: "Beispiel Multiple Sclerosis Performance Test (MSPT)"
Description: "Beispiel ServiceRequest für die Durchführung eines MSPT mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSMultipleSclerosisPerformanceTestAD)
* status = $task-status#active
* intent = $request-intent#plan
* doNotPerform = false
* subject = Reference(PatientJohnDoe)
* occurrencePeriod.start = "2022-01-12T12:00:00Z"
* occurrencePeriod.end = "2022-01-21T00:00:00Z"
* locationCode = $v3-role-code#NEUR

// Voruntersuchung -> Therapiespezifische Diagnostik

Instance: TherapiespezifischeDiagnostikExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Therapiespezifische Diagnostik"
Description: "Beispiel CarePlan für die Durchführung einer therapiespezifischen Diagnostik mit dem Patienten (M0)"
* contained = TherapiespezifischeDiagnostikExampleRG
* instantiatesCanonical = Canonical(Q4MSTherapiespezifischeDiagnostik)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(TherapiespezifischeDiagnostikExampleRG)

Instance: TherapiespezifischeDiagnostikExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Therapiespezifische Diagnostik"
Description: "Beispiel RequestGroup für die Durchführung einer therapiespezifischen Diagnostik mit dem Patienten (M0)"
Usage: #inline
* instantiatesCanonical = Canonical(Q4MSTherapiespezifischeDiagnostik)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
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
* subject = Reference(PatientJohnDoe)
* occurrencePeriod.start = "2022-01-12T12:00:00Z"
* occurrencePeriod.end = "2022-01-21T00:00:00Z"
* locationCode = $v3-role-code#DX

// Voruntersuchung -> OCT

Instance: OptischeKohaerenztomographieExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Optische Kohärenztomographie (OCT)"
Description: "Beispiel CarePlan für die Durchführung eines OCT mit dem Patienten (M0)"
* contained = OptischeKohaerenztomographieExampleRG
* instantiatesCanonical = Canonical(Q4MSOptischeKohaerenztomographie)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(OptischeKohaerenztomographieExampleRG)

Instance: OptischeKohaerenztomographieExampleRG
InstanceOf: RequestGroup
Usage: #inline
Title: "Beispiel Optische Kohärenztomographie (OCT)"
Description: "Beispiel RequestGroup für die Durchführung eines OCT mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSOptischeKohaerenztomographie)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Optische Kohärenztomographie (OCT)"
* action.resource = Reference(OptischeKohaerenztomographieExampleSR)

Instance: OptischeKohaerenztomographieExampleSR
InstanceOf: ServiceRequest
Usage: #example
Title: "Beispiel Optische Kohärenztomographie (OCT)"
Description: "Beispiel ServiceRequest für die Durchführung eines OCT mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSOptischeKohaerenztomographieAD)
* status = $task-status#active
* intent = $request-intent#plan
* doNotPerform = false
* subject = Reference(PatientJohnDoe)
* occurrencePeriod.start = "2022-01-12T12:00:00Z"
* occurrencePeriod.end = "2022-01-21T00:00:00Z"
* locationCode = $v3-role-code#OPTC

// Voruntersuchung -> Ganganalyse

Instance: GanganalyseExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Ganganalyse"
Description: "Beispiel CarePlan für die Durchführung einer Ganganalyse mit dem Patienten (M0)"
* contained = GanganalyseExampleRG
* instantiatesCanonical = Canonical(Q4MSGanganalyse)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(GanganalyseExampleRG)

Instance: GanganalyseExampleRG
InstanceOf: RequestGroup
Usage: #inline
Title: "Beispiel Ganganalyse"
Description: "Beispiel RequestGroup für die Durchführung einer Ganganalyse mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSGanganalyse)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Ganganalyse"
* action.resource = Reference(GanganalyseExampleSR)

Instance: GanganalyseExampleSR
InstanceOf: ServiceRequest
Usage: #example
Title: "Beispiel Ganganalyse"
Description: "Beispiel ServiceRequest für die Durchführung einer Ganganalyse mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSGanganalyseAD)
* status = $task-status#active
* intent = $request-intent#plan
* doNotPerform = false
* subject = Reference(PatientJohnDoe)
* occurrencePeriod.start = "2022-01-12T12:00:00Z"
* occurrencePeriod.end = "2022-01-21T00:00:00Z"
* locationCode = $v3-role-code#SPMED

// Voruntersuchung -> MRT

Instance: MagnetresonanztomographieExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Magnetresonanztomographie (MRT)"
Description: "Beispiel CarePlan für die Durchführung einer MRT mit dem Patienten (M0)"
* contained = MagnetresonanztomographieExampleRG
* instantiatesCanonical = Canonical(Q4MSMagnetresonanztomographie)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(MagnetresonanztomographieExampleRG)

Instance: MagnetresonanztomographieExampleRG
InstanceOf: RequestGroup
Usage: #inline
Title: "Beispiel Magnetresonanztomographie (MRT)"
Description: "Beispiel RequestGroup für die Durchführung einer MRT mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSMagnetresonanztomographie)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Magnetresonanztomographie (MRT)"
* action.resource = Reference(MagnetresonanztomographieExampleSR)

Instance: MagnetresonanztomographieExampleSR
InstanceOf: ServiceRequest
Usage: #example
Title: "Beispiel Magnetresonanztomographie (MRT)"
Description: "Beispiel ServiceRequest für die Durchführung einer MRT mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSMagnetresonanztomographieAD)
* status = $task-status#active
* intent = $request-intent#plan
* doNotPerform = false
* subject = Reference(PatientJohnDoe)
* occurrencePeriod.start = "2022-01-12T12:00:00Z"
* occurrencePeriod.end = "2022-01-21T00:00:00Z"
* locationCode = $v3-role-code#HRAD
