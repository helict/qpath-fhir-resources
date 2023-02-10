Instance: VoruntersuchungenM0ExampleCP
InstanceOf: CarePlan
Title: "Beispiel Voruntersuchungen"
Description: "Beispiel CarePlan zu den Voruntersuchungen eines Patienten (M0)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSVoruntersuchungenM0)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.reference = Reference(VoruntersuchungenM0ExampleRG)
* partOf = Reference(BasismonitoringM0ExampleCP)
* encounter = Reference(VoruntersuchungenM0ExampleENC)

Instance: VoruntersuchungenM0ExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Voruntersuchungen"
Description: "Beispiel RequestGroup zu den Voruntersuchungen eines Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSVoruntersuchungenM0)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* encounter = Reference(VoruntersuchungenM0ExampleENC)

// * action.groupingBehavior = #logical-group
// * action.selectionBehavior = #all
// * action.requiredBehavior = #must-unless-documented
// * action.cardinalityBehavior = #single

// Diagnostik aller 3 Monate
* action[+].title = "Multiple Sclerosis Performance Test (MSPT)"
* action[=].resource = Reference(MultipleSclerosisPerformanceTestM0ExampleCP)
* action[+].title = "Therapiespezifische Diagnostik"
* action[=].resource = Reference(TherapiespezifischeDiagnostikM0ExampleCP)

// Diagnostik aller 6 Monate
* action[+].title = "Allgemeine und neurologische Untersuchung"
* action[=].resource = Reference(AllgemeineNeurologischeUntersuchungM0ExampleCP)

// Diagnostik aller 12 Monate
* action[+].title = "Optische Kohärenztomographie (OCT)"
* action[=].resource = Reference(OptischeKohaerenztomographieM0ExampleCP)
* action[+].title = "Ganganalyse"
* action[=].resource = Reference(GanganalyseM0ExampleCP)
//* action[+].title = "Magnetresonanztomographie (MRT)"
//* action[=].resource = Reference(MagnetresonanztomographieExampleCP)
* action[+].title = "Laboruntersuchung"
* action[=].resource = Reference(LaboruntersuchungM0ExampleCP)

// Voruntersuchung M0 -> MSPT

Instance: MultipleSclerosisPerformanceTestM0ExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Multiple Sclerosis Performance Test (MSPT)"
Description: "Beispiel CarePlan für die Durchführung eines MSPT mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSMultipleSclerosisPerformanceTest)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.extension[$extension-careplan-activity-title].valueString = "Multiple Sclerosis Performance Test (MSPT)"
* activity.reference = Reference(MultipleSclerosisPerformanceTestM0ExampleRG)
* partOf = Reference(VoruntersuchungenM0ExampleCP)
* encounter = Reference(MultipleSclerosisPerformanceTestM0ExampleENC)

Instance: MultipleSclerosisPerformanceTestM0ExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Multiple Sclerosis Performance Test (MSPT)"
Description: "Beispiel RequestGroup für die Durchführung eines MSPT mit dem Patienten (M0)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSMultipleSclerosisPerformanceTest)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Multiple Sclerosis Performance Test (MSPT)"
* action.resource = Reference(MultipleSclerosisPerformanceTestM0ExampleSR)
* encounter = Reference(MultipleSclerosisPerformanceTestM0ExampleENC)

// Voruntersuchung -> Therapiespezifische Diagnostik

Instance: TherapiespezifischeDiagnostikM0ExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Therapiespezifische Diagnostik"
Description: "Beispiel CarePlan für die Durchführung einer therapiespezifischen Diagnostik mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSTherapiespezifischeDiagnostik)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.extension[$extension-careplan-activity-title].valueString = "Therapiespezifische Diagnostik"
* activity.reference = Reference(TherapiespezifischeDiagnostikM0ExampleRG)
* partOf = Reference(VoruntersuchungenM0ExampleCP)
* encounter = Reference(TherapiespezifischeDiagnostikM0ExampleENC)

Instance: TherapiespezifischeDiagnostikM0ExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Therapiespezifische Diagnostik"
Description: "Beispiel RequestGroup für die Durchführung einer therapiespezifischen Diagnostik mit dem Patienten (M0)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSTherapiespezifischeDiagnostik)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Therapiespezifische Diagnostik"
* action.resource = Reference(TherapiespezifischeDiagnostikM0ExampleSR)
* encounter = Reference(TherapiespezifischeDiagnostikM0ExampleENC)

Instance: TherapiespezifischeDiagnostikM0ExampleSR
InstanceOf: ServiceRequest
Usage: #example
Title: "Beispiel Therapiespezifische Diagnostik"
Description: "Beispiel ServiceRequest für die Durchführung einer therapiespezifischen Diagnostik mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSTherapiespezifischeDiagnostikAD)
* status = $task-status#active
* intent = $request-intent#plan
* doNotPerform = false
* subject = Reference(PatientPseudonym)
// TODO: check timing specification here (PLAN)
* occurrencePeriod.start = "2021-08-16T10:30:00Z"
* occurrencePeriod.end = "2021-08-16T16:00:00Z"
* locationCode = $v3-role-code#DX

// Voruntersuchung -> Allgemeine neurologische Untersuchung (EDSS)

Instance: AllgemeineNeurologischeUntersuchungM0ExampleCP
InstanceOf: CarePlan
Title: "Beispiel Allgemeine und neurologische Untersuchung"
Description: "Beispiel CarePlan für die Durchführung einer allgemeinen neurologischen Untersuchung mit dem Patienten (M0)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSAllgemeineNeurologischeUntersuchung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.reference = Reference(AllgemeineNeurologischeUntersuchungM0ExampleRG)
* partOf = Reference(VoruntersuchungenM0ExampleCP)
* encounter = Reference(AllgemeineNeurologischeUntersuchungM0ExampleENC)

Instance: AllgemeineNeurologischeUntersuchungM0ExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Allgemeine und neurologische Untersuchung"
Description: "Beispiel RequestGroup für die Durchführung einer allgemeinen neurologischen Untersuchung mit dem Patienten (M0)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSAllgemeineNeurologischeUntersuchung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Expanded Disability Status Scale (EDSS)"
* action.resource = Reference(AllgemeineNeurologischeUntersuchungM0ExampleSR)
* encounter = Reference(AllgemeineNeurologischeUntersuchungM0ExampleENC)

// Voruntersuchung -> OCT

Instance: OptischeKohaerenztomographieM0ExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Optische Kohärenztomographie (OCT)"
Description: "Beispiel CarePlan für die Durchführung eines OCT mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSOptischeKohaerenztomographie)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.extension[$extension-careplan-activity-title].valueString = "Optische Kohärenztomographie (OCT)"
* activity.reference = Reference(OptischeKohaerenztomographieM0ExampleRG)
* partOf = Reference(VoruntersuchungenM0ExampleCP)
* encounter = Reference(OptischeKohaerenztomographieM0ExampleENC)

Instance: OptischeKohaerenztomographieM0ExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Optische Kohärenztomographie (OCT)"
Description: "Beispiel RequestGroup für die Durchführung eines OCT mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSOptischeKohaerenztomographie)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Optische Kohärenztomographie (OCT)"
* action.resource = Reference(OptischeKohaerenztomographieM0ExampleSR)
* encounter = Reference(OptischeKohaerenztomographieM0ExampleENC)

// Voruntersuchung -> Ganganalyse

Instance: GanganalyseM0ExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Ganganalyse"
Description: "Beispiel CarePlan für die Durchführung einer Ganganalyse mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSGanganalyse)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.extension[$extension-careplan-activity-title].valueString = "Ganganalyse"
* activity.reference = Reference(GanganalyseM0ExampleRG)
* partOf = Reference(VoruntersuchungenM0ExampleCP)
* encounter = Reference(GanganalyseM0ExampleENC)

Instance: GanganalyseM0ExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Ganganalyse"
Description: "Beispiel RequestGroup für die Durchführung einer Ganganalyse mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSGanganalyse)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Ganganalyse"
* action.resource = Reference(GanganalyseM0ExampleSR)
* encounter = Reference(GanganalyseM0ExampleENC)

// Voruntersuchung -> Laboruntersuchung

Instance: LaboruntersuchungM0ExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Laboruntersuchung"
Description: "Beispiel CarePlan für die Durchführung einer Laboruntersuchung mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSLaboruntersuchung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientPseudonym)
* activity.reference = Reference(LaboruntersuchungM0ExampleRG)
* partOf = Reference(VoruntersuchungenM0ExampleCP)
* encounter = Reference(LaboruntersuchungM0ExampleENC)

Instance: LaboruntersuchungM0ExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Laboruntersuchung (Zusatz)"
Description: "Beispiel RequestGroup für die Durchführung einer Laboruntersuchung mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSLaboruntersuchung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* action.title = "Laboruntersuchung"
* action.resource = Reference(LaboruntersuchungM0ExampleSR)
* encounter = Reference(LaboruntersuchungM0ExampleENC)

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
