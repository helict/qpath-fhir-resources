/*
  Issues and Questions raised:

    ServiceRequest / Task / Appointment
      - Who (role, profession) does perform those?
      - Where (location) does the performance take place?
      - When (date, time) are those performed?
      - What input is needed and what output is expected (in terms of documents or information)?

    Conditions and Constraints during instantiation
      - Are there any conditions and constraints related for each planned action?
      - Should we introduces goals?
      - Create an placeholder or 'null' Encounter?
      - Timing constraints depend on scheduled appointment outcome
      - Embedd quality indicators

    In General
      - Cross-check with FHIR CPG IG: https://build.fhir.org/ig/HL7/cqf-recommendations/
      - Cross-check with FHIR CQM IG: https://www.hl7.org/fhir/us/cqfmeasures/
      - Cross-check with FHIR QI CORE IG: https://hl7.org/fhir/us/qicore/
      - Therapiespezifische Maßnahmen = Diagnostik- und/oder Therapie-bezogen?

    TODOs
      - CarePlan profiles
      - ServiceRequest / Task / Appointment profiles
      - DocumentReference profiles
      - Separate document request from document profiles (determine intersections)?
      - Determine exactly which type and class of documents are input and output to activities
      - Check usage of CQL as expression language for condition declaration
*/


Instance: BasismonitoringExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Basismonitoring Patientenpfad"
Description: "Beispiel CarePlan einer Basismonitoring-Patientenpfadinstanz bei Erstvorstellung (M0) von Patient John Doe nach Überweisung aus der ambulanten neurologischen Einrichtung"
* contained = BasismonitoringExampleRG
* instantiatesCanonical = Canonical(Q4MSBasismonitoring)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(BasismonitoringExampleRG)

Instance: BasismonitoringExampleRG
InstanceOf: RequestGroup
Usage: #inline
Title: "Beispiel Basismonitoring Patientenpfad"
Description: "Beispiel RequestGroup einer Basismonitoring-Patientenpfadinstanz (M0)"
* instantiatesCanonical = Canonical(Q4MSBasismonitoring)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.groupingBehavior = #logical-group
* action.selectionBehavior = #all
* action.requiredBehavior = #must-unless-documented
* action.cardinalityBehavior = #multiple
* action.action[0].id = "admission"
* action.action[=].title = "Vorstellung"
* action.action[=].description = "Erst- und Wiedervostellung"
* action.action[=].resource = Reference(VorstellungExampleCP)
* action.action[+].id = "diagnostic-testing"
* action.action[=].title = "Voruntersuchung"
* action.action[=].description = "Diagnostische Voruntersuchungen durchführen"
* action.action[=].relatedAction.actionId = "admission"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].resource = Reference(VoruntersuchungExampleCP)
* action.action[+].id = "examination"
* action.action[=].title = "Arztvorstellung"
* action.action[=].description = "Voruntersuchungen auswerten und Therapiemaßnahmen ableiten"
* action.action[=].relatedAction.actionId = "diagnostic-testing"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].resource = Reference(ArztvorstellungExampleCP)
* action.action[+].id = "discharge"
* action.action[=].title = "Entlassung"
* action.action[=].description = "Patient nach Hause entlassen"
* action.action[=].relatedAction.actionId = "examination"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].resource = Reference(EntlassungExampleCP)

// Vorstellung

Instance: VorstellungExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Erst- oder Wiedervorstellung"
Description: "Beispiel CarePlan zur Erstvorstellung eines Patienten (M0)"
* contained = VorstellungExampleRG
* instantiatesCanonical = Canonical(Q4MSVorstellung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(VorstellungExampleRG)

Instance: VorstellungExampleRG
InstanceOf: RequestGroup
Usage: #inline
Title: "Beispiel Erstvorstellung"
Description: "Beispiel RequestGroup zur Erstvorstellung eines Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSVorstellung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action[0].id = "appointment"
* action[=].title = "Terminvereinbarung"
* action[=].description = "Termin zur Vorstellung vereinbaren"
* action[=].resource = Reference(TerminvereinbarungExampleCP)
* action[+].title = "Dokumente abfragen"
* action[=].description = "Dokumente beim Patienten abfragen"
* action[=].relatedAction.actionId = "appointment"
* action[=].relatedAction.relationship = #after-end
* action[=].resource = Reference(DokumenteAbfragenPatientExampleCP)

// Vorstellung -> Terminvorstellung

Instance: TerminvereinbarungExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Terminvereinbarung"
Description: "Beispiel CarePlan zur Terminvereinbarung mit einem Patienten (M0)"
* contained = TerminvereinbarungExampleRG
* instantiatesCanonical = Canonical(Q4MSTerminvereinbarung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(TerminvereinbarungExampleRG)

Instance: TerminvereinbarungExampleRG
InstanceOf: RequestGroup
Usage: #inline
Title: "Beispiel Terminvereinbarung"
Description: "Beispiel Appointment zur Terminvereinbarung mit einem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSTerminvereinbarung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Termin mit Patient vereinbaren"
* action.resource = Reference(TerminvereinbarungExampleAPT)

// TODO: Klaeren was genau an Informationen benoetigt/geliefert wird
Instance: TerminvereinbarungExampleAPT
InstanceOf: Appointment
Usage: #example
Title: "Beispiel Terminvereinbarung"
Description: "Beispiel Appointment mit einem Terminvorschlag für einen Patienten (M0)"
* status = $appointment-status#proposed
* appointmentType = $v2-0276#ROUTINE
* description = "Terminvereinbarung im Rahmen des Basismonitorings"
* minutesDuration = 21600
* created = "2022-01-12T12:00:00Z"
* patientInstruction = "Bitte prüfen Sie den Terminvorschlag und bestätigen oder lehnen diesen ab."
* participant.type = $v3-participation-type#PPRF
* participant.actor = Reference(PatientJohnDoe)
* participant.required = $participant-required#required
* participant.status = $participation-status#needs-action
* participant.period.start = "2022-01-17T00:00:00Z"
* participant.period.end = "2022-01-21T00:00:00Z"

// Vorstellung -> DokumenteAbfragenPatient

Instance: DokumenteAbfragenPatientExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Dokumente abfragen"
Description: "Beispiel CarePlan für eine Dokumentenabfrage beim Patienten abfragen (M0)"
* contained = DokumenteAbfragenPatientExampleRG
* instantiatesCanonical = Canonical(Q4MSDokumenteAbfragenPatient)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(DokumenteAbfragenPatientExampleRG)

Instance: DokumenteAbfragenPatientExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Dokumente abfragen"
Description: "Beispiel RequestGroup für eine Dokumentenabfrage beim Patienten abfragen (M0)"
Usage: #inline
* instantiatesCanonical = Canonical(Q4MSDokumenteAbfragenPatient)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Dokumente abfragen"
* action.resource = Reference(DokumenteAbfragenPatientExampleTSK)

Instance: DokumenteAbfragenPatientExampleTSK
InstanceOf: Task
Usage: #example
Title: "Beispiel Dokumente abfragen"
Description: "Beispiel Task für eine Dokumentenabfrage beim Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSDokumenteAbfragenAD)
* status = $task-status#ready
* intent = $request-intent#option
* code = $task-code#approve
* focus = Reference(DokumenteAbfragenPatientExampleCP)
* description = "Dokumente abfragen"
* executionPeriod.start = "2022-01-12T12:00:00Z"
* executionPeriod.end = "2022-01-15T00:00:00Z"
* authoredOn = "2022-01-12T12:00:00Z"
* restriction.period.start = "2022-01-12T12:00:00Z"
* restriction.period.end = "2022-01-21T00:00:00Z"
* restriction.recipient = Reference(PatientJohnDoe)
//* input.type = $q4ms-dokumentanforderungkategorie#doctor-letter
//* input.valueReference = Reference(Q4MSArztbriefanfrage)
//* output.type = $q4ms-dokumentanforderungkategorie#doctor-letter
//* output.valueReference = Reference(ArztbriefExample)

// Voruntersuchung

Instance: VoruntersuchungExampleCP
InstanceOf: CarePlan
Title: "Beispiel Voruntersuchung"
Description: "Beispiel CarePlan für die Voruntersuchung eines Patienten (M0)"
Usage: #example
* contained = VorstellungExampleRG
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

// Arztvorstellung

Instance: ArztvorstellungExampleCP
InstanceOf: CarePlan
Title: "Beispiel Arztvorstellung"
Description: "Beispiel CarePlan für die Arztvorstellung eines Patienten (M0)"
Usage: #example
* contained = ArztvorstellungExampleRG
* instantiatesCanonical = Canonical(Q4MSArztvorstellung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(ArztvorstellungExampleRG)

Instance: ArztvorstellungExampleRG
InstanceOf: RequestGroup
Usage: #inline
Title: "Beispiel Arztvorstellung"
Description: "Beispiel RequestGroup für die Arztvorstellung eines Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSArztvorstellung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action[0].id = "examination"
* action[=].groupingBehavior = #logical-group
* action[=].selectionBehavior = #all
* action[=].requiredBehavior = #must-unless-documented
* action[=].cardinalityBehavior = #single
* action[=].action[0].title = "Allgemeine und neurologische Untersuchung"
* action[=].action[=].resource = Reference(AllgemeineNeurologischeUntersuchungExampleCP)
* action[=].action[+].title = "Befundauswertung"
* action[=].action[=].resource = Reference(BefundauswertungExampleCP)
* action[=].action[+].title = "Allgemeine und neurologische Anamnese"
* action[=].action[=].resource = Reference(AllgemeineNeurologischeAnamneseExampleCP)
* action[=].action[+].title = "Therapiespezifische Diagnostik"   // TODO: Check with professionals
* action[=].action[=].resource = Reference(TherapiespezifischeDiagnostikExampleCP)
* action[=].action[+].title = "Zusatzdiagnostik"  // TODO: Check with professionals
* action[=].action[=].resource = Reference(ZusatzdiagnostikExampleCP)
* action[+].title = "Auswertung"
* action[=].relatedAction.actionId = "examination"
* action[=].relatedAction.relationship = #after-end
* action[=].resource = Reference(AuswertungExampleCP)

// Arztvorstellung -> Allgemeine neurologische Untersuchung (EDSS)

Instance: AllgemeineNeurologischeUntersuchungExampleCP
InstanceOf: CarePlan
Title: "Beispiel Allgemeine und neurologische Untersuchung"
Description: "Beispiel CarePlan für die Durchführung einer allgemeinen neurologischen Untersuchung mit dem Patienten (M0)"
Usage: #example
* contained = AllgemeineNeurologischeUntersuchungExampleRG
* instantiatesCanonical = Canonical(Q4MSAllgemeineNeurologischeUntersuchung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(AllgemeineNeurologischeUntersuchungExampleRG)

Instance: AllgemeineNeurologischeUntersuchungExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Allgemeine und neurologische Untersuchung"
Description: "Beispiel RequestGroup für die Durchführung einer allgemeinen neurologischen Untersuchung mit dem Patienten (M0)"
Usage: #inline
* instantiatesCanonical = Canonical(Q4MSAllgemeineNeurologischeUntersuchung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Expanded Disability Status Scale (EDSS)"
* action.resource = Reference(AllgemeineNeurologischeUntersuchungExampleTSK)

Instance: AllgemeineNeurologischeUntersuchungExampleTSK
InstanceOf: Task
Usage: #example
Title: "Beispiel Allgemeine und neurologische Untersuchung"
Description: "Beispiel Task für die Durchführung einer allgemeinen und neurologischen Untersuchung mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSExpandedDisabilityStatusScaleAD)
* status = $task-status#ready
* intent = $request-intent#option
* code = $task-code#approve
* description = "Expanded Disability Status Scale (EDSS)"
* executionPeriod.start = "2022-01-12T12:00:00Z"
* executionPeriod.end = "2022-01-15T00:00:00Z"
* authoredOn = "2022-01-12T12:00:00Z"
* performerType = $snomed-ct#56397003
* restriction.period.start = "2022-01-12T12:00:00Z"
* restriction.period.end = "2022-01-21T00:00:00Z"
* restriction.recipient = Reference(PatientJohnDoe)
// Input: EDSS Questionnaire

// Arztvorstellung -> Befundauswertung

Instance: BefundauswertungExampleCP
InstanceOf: CarePlan
Title: "Beispiel Befundauswertung"
Description: "Beispiel CarePlan für die Durchführung einer Befundauswertung mit dem Patienten (M0)"
Usage: #example
* contained = BefundauswertungExampleRG
* instantiatesCanonical = Canonical(Q4MSBefundauswertung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(BefundauswertungExampleRG)

Instance: BefundauswertungExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Befundauswertung"
Description: "Beispiel RequestGroup für die Durchführung einer Befundauswertung mit dem Patienten (M0)"
Usage: #inline
* instantiatesCanonical = Canonical(Q4MSBefundauswertung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Befundauswertung"
* action.resource = Reference(BefundauswertungExampleTSK)

Instance: BefundauswertungExampleTSK
InstanceOf: Task
Usage: #example
Title: "Beispiel Befundauswertung"
Description: "Beispiel Task für die Durchführung einer Befundauswertung mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSBefundauswertungAD)
* status = $task-status#ready
* intent = $request-intent#option
* code = $task-code#approve
* description = "Befundauswertung"
* executionPeriod.start = "2022-01-12T12:00:00Z"
* executionPeriod.end = "2022-01-15T00:00:00Z"
* authoredOn = "2022-01-12T12:00:00Z"
* performerType = $snomed-ct#56397003
//* input[0].type = $q4ms-dokumentanforderungkategorie#finding
//* input[=].valueDocumentReference = Reference(Q4MSBefundProfile)
//* input[+].type = $q4ms-dokumentanforderungkategorie#laboratory-result
//* input[=].valueDocumentReference = Reference(Q4MSLaborergebnisProfile)

// Arztvorstellung -> Allgemeine und neurologische Anamnese

Instance: AllgemeineNeurologischeAnamneseExampleCP
InstanceOf: CarePlan
Title: "Beispiel Allgemeine und neurologische Anamnese"
Description: "Beispiel CarePlan für die Durchführung einer allgemeinen und neurologischen Anamnese mit dem Patienten (M0)"
Usage: #example
* contained = AllgemeineNeurologischeAnamneseExampleRG
* instantiatesCanonical = Canonical(Q4MSAllgemeineNeurologischeAnamnese)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(AllgemeineNeurologischeAnamneseExampleRG)

Instance: AllgemeineNeurologischeAnamneseExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Allgemeine und neurologische Anamnese"
Description: "Beispiel RequestGroup für die Durchführung einer allgemeinen und neurologischen Anamnese mit dem Patienten (M0)"
Usage: #inline
* instantiatesCanonical = Canonical(Q4MSAllgemeineNeurologischeAnamnese)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Allgemeine und neurologische Anamnese"
* action.resource = Reference(AllgemeineNeurologischeAnamneseExampleTSK)

Instance: AllgemeineNeurologischeAnamneseExampleTSK
InstanceOf: Task
Usage: #example
Title: "Beispiel Allgemeine und neurologische Anamnese"
Description: "Beispiel Task für die Durchführung einer allgemeinenen und neurologischen Anamnese mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSAllgemeineNeurologischeAnamneseAD)
* status = $task-status#ready
* intent = $request-intent#option
* code = $task-code#approve
* description = "Allgemeine und neurologische Anamnese"
* executionPeriod.start = "2022-01-12T12:00:00Z"
* executionPeriod.end = "2022-01-15T00:00:00Z"
* authoredOn = "2022-01-12T12:00:00Z"
* performerType = $snomed-ct#56397003
//* input[0].type = $q4ms-dokumentanforderungkategorie#doctor-letter
//* input[=].valueDocumentReference = Reference(Q4MSArztbriefProfile)
//* input[+].type = $q4ms-dokumentanforderungkategorie#consiliary-report
//* input[=].valueDocumentReference = Reference(Q4MSKonsiliarberichtProfile)
//* input[+].type = $q4ms-dokumentanforderungkategorie#other
//* input[=].valueDocumentReference = Reference(Q4MSSonsigesDokumentProfile)

// Arztvorstellung -> Therapiespezifische Diagnostik (see Voruntersuchung -> Therapiespezifische Diagnostik)
// Do we need a Task with a doctors order to undergo diagnostic measures as output?

// Arztvorstellung -> Zusatzdiagnostik
// Do we need a Task with a doctors order to undergo diagnostic measures as output?

Instance: ZusatzdiagnostikExampleCP
InstanceOf: CarePlan
Title: "Beispiel Zusatzdiagnostik"
Description: "Beispiel CarePlan für die Durchführung einer Zusatzdiagnostik mit dem Patienten (M0)"
Usage: #example
* contained = ZusatzdiagnostikExampleRG
* instantiatesCanonical = Canonical(Q4MSZusatzdiagnostik)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(ZusatzdiagnostikExampleRG)

Instance: ZusatzdiagnostikExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Zusatzdiagnostik"
Description: "Beispiel RequestGroup für die Durchführung einer Zusatzdiagnostik mit dem Patienten (M0)"
Usage: #inline
* instantiatesCanonical = Canonical(Q4MSZusatzdiagnostik)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.selectionBehavior = #any
* action.requiredBehavior = #must-unless-documented
* action.cardinalityBehavior = #single
* action.action[0].title = "Ganganalyse"
* action.action[=].resource = Reference(GanganalyseExampleCP)
* action.action[+].title = "Optische Kohärenztomographie (OCT)"
* action.action[=].resource = Reference(OptischeKohaerenztomographieExampleCP)
* action.action[+].title = "Magnetresonanztomographie (MRT)"
* action.action[=].resource = Reference(MagnetresonanztomographieExampleCP)
* action.action[+].title = "Laboruntersuchung"
* action.action[=].resource = Reference(LaboruntersuchungExampleCP)
* action.action[+].title = "Multiple Sclerosis Performance Test (MSPT)"
* action.action[=].resource = Reference(MultipleSclerosisPerformanceTestExampleCP)

// Arztvorstellung -> Zusatzdiagnostik -> Laboruntersuchung

Instance: LaboruntersuchungExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Laboruntersuchung"
Description: "Beispiel CarePlan für die Durchführung einer Laboruntersuchung mit dem Patienten (M0)"
* contained = LaboruntersuchungExampleRG
* instantiatesCanonical = Canonical(Q4MSLaboruntersuchung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(LaboruntersuchungExampleRG)

Instance: LaboruntersuchungExampleRG
InstanceOf: RequestGroup
Usage: #inline
Title: "Beispiel Laboruntersuchung"
Description: "Beispiel RequestGroup für die Durchführung einer Laboruntersuchung mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSLaboruntersuchung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Laboruntersuchung"
* action.resource = Reference(LaboruntersuchungExampleSR)

Instance: LaboruntersuchungExampleSR
InstanceOf: ServiceRequest
Usage: #example
Title: "Beispiel Laboruntersuchung"
Description: "Beispiel ServiceRequest für die Durchführung einer Laboruntersuchung mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSLaboruntersuchungAD)
* status = $task-status#active
* intent = $request-intent#plan
* doNotPerform = false
* subject = Reference(PatientJohnDoe)
* occurrencePeriod.start = "2022-01-12T12:00:00Z"
* occurrencePeriod.end = "2022-01-21T00:00:00Z"
* locationCode = $v3-role-code#HLAB

// Arztvorstellung -> Auswertung

Instance: AuswertungExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Auswertung"
Description: "Beispiel CarePlan für die Durchführung einer Auswertung mit dem Patienten (M0)"
* contained = AuswertungExampleRG
* instantiatesCanonical = Canonical(Q4MSAuswertung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(AuswertungExampleRG)

Instance: AuswertungExampleRG
InstanceOf: RequestGroup
Usage: #inline
Title: "Beispiel Auswertung"
Description: "Beispiel RequestGroup für die Durchführung einer Auswertung mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSAuswertung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Auswertung"
* action.resource = Reference(AuswertungExampleTSK)

Instance: AuswertungExampleSR
InstanceOf: ServiceRequest
Usage: #example
Title: "Beispiel Auswertung"
Description: "Beispiel ServiceRequest für die Durchführung einer Auswertung mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSAuswertungAD)
* status = $task-status#active
* intent = $request-intent#plan
* doNotPerform = false
* subject = Reference(PatientJohnDoe)
* occurrencePeriod.start = "2022-01-12T12:00:00Z"
* occurrencePeriod.end = "2022-01-21T00:00:00Z"
* locationCode = $v3-role-code#NEUR

Instance: AuswertungExampleTSK
InstanceOf: Task
Usage: #example
Title: "Beispiel Auswertung"
Description: "Beispiel Task für die Durchführung einer Auswertung mit dem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSAuswertungAD)
* status = $task-status#ready
* intent = $request-intent#option
* code = $task-code#approve
* focus = Reference(AuswertungExampleCP)
* description = "Auswertung"
* executionPeriod.start = "2022-01-12T12:00:00Z"
* executionPeriod.end = "2022-01-15T00:00:00Z"
* authoredOn = "2022-01-12T12:00:00Z"
* performerType = $snomed-ct#56397003
* restriction.period.start = "2022-01-12T12:00:00Z"
* restriction.period.end = "2022-01-21T00:00:00Z"
* restriction.recipient = Reference(PatientJohnDoe)
//* input.type = $q4ms-dokumentanforderungkategorie#other     // Patiententagebuch
//* input.valueReference = Reference(Q4MSSonstigesDokumentProfile)
//* output.type = $q4ms-dokumentanforderungkategorie#other    // Anweisungen (z.B. Sonder-Zusatzdiagnostik)
//* output.valueReference = Reference(Q4MSSonstigesDokumentProfile)

// Entlassung

Instance: EntlassungExampleCP
InstanceOf: CarePlan
Title: "Beispiel Entlassung"
Description: "Beispiel CarePlan für die Entlassung eines Patienten (M0)"
Usage: #example
* contained = EntlassungExampleRG
* instantiatesCanonical = Canonical(Q4MSEntlassung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(EntlassungExampleRG)

Instance: EntlassungExampleRG
InstanceOf: RequestGroup
Usage: #inline
Title: "Beispiel Entlassung"
Description: "Beispiel RequestGroup für die Entlassung eines Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSEntlassung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.groupingBehavior = #logical-group
* action.selectionBehavior = #all
* action.requiredBehavior = #must-unless-documented
* action.cardinalityBehavior = #single
* action.action[0].groupingBehavior = #logical-group
* action.action[=].selectionBehavior = #all
* action.action[=].requiredBehavior = #must-unless-documented
* action.action[=].cardinalityBehavior = #single
* action.action[=].action[0].title = "Terminvereinbarung"
* action.action[=].action[=].description = "Termin zur Wiedervorstellung vereinbaren"
* action.action[=].action[=].timingTiming.repeat.frequency = 1
* action.action[=].action[=].timingTiming.repeat.period = 3
* action.action[=].action[=].timingTiming.repeat.periodUnit = #mo
* action.action[=].action[=].resource = Reference(TerminvereinbarungExampleCP)
* action.action[=].action[+].title = "Dokumente übermitteln (Patient)"
* action.action[=].action[=].description = "Dokumente an Patient übermitteln"
* action.action[=].action[=].resource = Reference(DokumenteUebermittelnPatientExampleCP)
* action.action[+].title = "Dokumente übermitteln (Arzt)"
* action.action[=].description = "Dokumente an Arzt übermitteln"
* action.action[=].resource = Reference(DokumenteUebermittelnArztExampleCP)

// Entlassung -> DokumenteUebermittelnPatient

Instance: DokumenteUebermittelnPatientExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Dokumente an Patient übermitteln"
Description: "Beispiel CarePlan für eine Dokumentenübermittlung an den Patienten abfragen (M0)"
* contained = DokumenteUebermittelnPatientExampleRG
* instantiatesCanonical = Canonical(Q4MSDokumenteUebermittelnPatient)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(DokumenteUebermittelnPatientExampleRG)

Instance: DokumenteUebermittelnPatientExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Dokumente an Patient übermitteln"
Description: "Beispiel RequestGroup für eine Dokumentenübermittlung an den Patienten abfragen (M0)"
Usage: #inline
* instantiatesCanonical = Canonical(Q4MSDokumenteUebermittelnPatient)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Dokumente übermitteln"
* action.resource = Reference(DokumenteUebermittelnPatientExampleTSK)

Instance: DokumenteUebermittelnPatientExampleTSK
InstanceOf: Task
Usage: #example
Title: "Beispiel Dokumente an Patient übermitteln"
Description: "Beispiel Task für eine Dokumentenübermittlung an den Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSDokumenteUebermittelnAD)
* status = $task-status#ready
* intent = $request-intent#option
* code = $task-code#approve
* focus = Reference(DokumenteUebermittelnPatientExampleCP)
* description = "Dokumente übermitteln"
* executionPeriod.start = "2022-01-12T12:00:00Z"
* executionPeriod.end = "2022-01-15T00:00:00Z"
* authoredOn = "2022-01-12T12:00:00Z"
* restriction.period.start = "2022-01-12T12:00:00Z"
* restriction.period.end = "2022-01-21T00:00:00Z"
* restriction.recipient = Reference(PatientJohnDoe)

// Entlassung -> DokumenteUebermittelnArzt

Instance: DokumenteUebermittelnArztExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Dokumente an Arzt übermitteln"
Description: "Beispiel CarePlan für eine Dokumentenübermittlung an den Patienten abfragen (M0)"
* contained = DokumenteUebermittelnArztExampleRG
* instantiatesCanonical = Canonical(Q4MSDokumenteUebermittelnArzt)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(DokumenteUebermittelnArztExampleRG)

Instance: DokumenteUebermittelnArztExampleRG
InstanceOf: RequestGroup
Title: "Beispiel Dokumente an Arzt übermitteln"
Description: "Beispiel RequestGroup für eine Dokumentenübermittlung an den Patienten abfragen (M0)"
Usage: #inline
* instantiatesCanonical = Canonical(Q4MSDokumenteUebermittelnArzt)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Dokumente an Arzt übermitteln"
* action.resource = Reference(DokumenteUebermittelnArztExampleTSK)

Instance: DokumenteUebermittelnArztExampleTSK
InstanceOf: Task
Usage: #example
Title: "Beispiel Dokumente an Arzt übermitteln"
Description: "Beispiel Task für eine Dokumentenübermittlung an den Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSDokumenteUebermittelnAD)
* status = $task-status#ready
* intent = $request-intent#option
* code = $task-code#approve
* focus = Reference(DokumenteUebermittelnArztExampleCP)
* description = "Dokumente übermitteln"
* executionPeriod.start = "2022-01-12T12:00:00Z"
* executionPeriod.end = "2022-01-15T00:00:00Z"
* authoredOn = "2022-01-12T12:00:00Z"
* restriction.period.start = "2022-01-12T12:00:00Z"
* restriction.period.end = "2022-01-21T00:00:00Z"