# QPath4MS IG

## Basismonitoringpfad

![Basismonitoringpfad](Basismonitoringpfad.png)

### Basismonitoring - Beispiel-Pfad

| Definition | PLAN | ServiceRequest/Task | Appointment (SOLL) | Encounter (IST) |
|:-|:-|:-|:-|:-|
| [1-Jahres-Zyklus](PlanDefinition-Q4MSBasismonitoringCycle.html) | [1. Jahr](CarePlan-BasismonitoringY1ExampleCP.html) | | | |

| [- Termin M0](PlanDefinition-Q4MSBasismonitoringM0.html) | [- CarePlan PLAN](CarePlan-BasismonitoringM0ExampleCP.html) | | [- Appointment SOLL](Appointment-BesuchsterminM0ExampleAPT.html) | [Encounter - IST](Encounter-BesuchsterminM0ExampleENC.html) |
| [-- CheckIn](PlanDefinition-Q4MSCheckIn.html) | [-- CarePlan (PLAN)](CarePlan-CheckInM0ExampleCP.html) | [-- Task (SOLL/IST)](Task-CheckInM0ExampleTSK.html) | | |
| [-- Voruntersuchungen](PlanDefinition-Q4MSVoruntersuchungenM0.html) | [-- CarePlan (PLAN)](CarePlan-VoruntersuchungenM0ExampleCP.html) | | | |
| [--- MSPT](PlanDefinition-Q4MSMultipleSclerosisPerformanceTest.html) | [-- CarePlan (PLAN)](CarePlan-MultipleSclerosisPerformanceTestM0ExampleCP.html) | [--- ServiceRequest](ServiceRequest-MultipleSclerosisPerformanceTestM0ExampleSR.html) | [--- Appointment](Appointment-MultipleSclerosisPerformanceTestM0ExampleAPT.html) | [--- Encounter](Encounter-MultipleSclerosisPerformanceTestM0ExampleENC.html) |
| [--- Therapiespezifische Diagnostik](PlanDefinition-Q4MSTherapiespezifischeDiagnostik.html) | [-- CarePlan (PLAN)](CarePlan-TherapiespezifischeDiagnostikM0ExampleCP.html) | [--- ServiceRequest](ServiceRequest-TherapiespezifischeDiagnostikM0ExampleSR.html) | [--- Appointment](Appointment-TherapiespezifischeDiagnostikM0ExampleAPT.html) | [--- Encounter](Encounter-TherapiespezifischeDiagnostikM0ExampleENC.html) |
| [--- Allg. neu. Untersuchung](PlanDefinition-Q4MSAllgemeineNeurologischeUntersuchung.html) | [-- CarePlan (PLAN)](CarePlan-AllgemeineNeurologischeUntersuchungM0ExampleCP.html) | [--- ServiceRequest](ServiceRequest-AllgemeineNeurologischeUntersuchungM0ExampleSR.html) | [--- Appointment](Appointment-AllgemeineNeurologischeUntersuchungM0ExampleAPT.html) | [--- Encounter](Encounter-AllgemeineNeurologischeUntersuchungM0ExampleENC.html) |
| [--- OCT](PlanDefinition-Q4MSOptischeKohaerenztomographie.html) | [-- CarePlan (PLAN)](CarePlan-OptischeKohaerenztomographieM0ExampleCP.html) | [--- ServiceRequest](ServiceRequest-OptischeKohaerenztomographieM0ExampleSR.html) | [--- Appointment](Appointment-OptischeKohaerenztomographieM0ExampleAPT.html) | [--- Encounter](Encounter-OptischeKohaerenztomographieM0ExampleENC.html) |
| [--- Ganganalyse](PlanDefinition-Q4MSGanganalyse.html) | [-- CarePlan (PLAN)](CarePlan-GanganalyseM0ExampleCP.html) | [--- ServiceRequest](ServiceRequest-GanganalyseM0ExampleSR.html) | [--- Appointment](Appointment-GanganalyseM0ExampleAPT.html) | [--- Encounter](Encounter-GanganalyseM0ExampleENC.html) |
| [--- Labor](PlanDefinition-Q4MSLaboruntersuchung.html) | [-- CarePlan (PLAN)](CarePlan-LaboruntersuchungM0ExampleCP.html) | [--- ServiceRequest](ServiceRequest-LaboruntersuchungM0ExampleSR.html) | [--- Appointment](Appointment-LaboruntersuchungM0ExampleAPT.html) | [--- Encounter](Encounter-LaboruntersuchungM0ExampleENC.html) |
| [-- Arztvorstellung](PlanDefinition-Q4MSArztvorstellung.html) | [-- CarePlan (PLAN)](CarePlan-ArztvorstellungM0ExampleCP.html) | [--- ServiceRequest](ServiceRequest-ArztvorstellungM0ExampleSR.html) | [--- Appointment](Appointment-ArztvorstellungM0ExampleAPT.html) | [--- Encounter](Encounter-ArztvorstellungM0ExampleENC.html) |
| [-- Terminvereinbarung](PlanDefinition-Q4MSTerminvereinbarung.html) | [-- CarePlan (PLAN)](CarePlan-TerminvereinbarungM0ExampleCP.html) | [-- Task (SOLL/IST)](Task-TerminvereinbarungM0ExampleTSK.html) | | |
| [-- Checkout](PlanDefinition-Q4MSCheckOut.html) | [-- CarePlan (PLAN)](CarePlan-CheckOutM0ExampleCP.html) | [-- Task (SOLL/IST)](Task-CheckOutM0ExampleTSK.html) | | |

| [- Termin M3](PlanDefinition-Q4MSBasismonitoringM3.html) | [- CarePlan PLAN](CarePlan-BasismonitoringM3ExampleCP.html) | | [- Appointment SOLL](Appointment-BesuchsterminM3ExampleAPT.html) | [Encounter - IST](Encounter-BesuchsterminM3ExampleENC.html) |

| [- Termin M6](PlanDefinition-Q4MSBasismonitoringM6.html) | [- CarePlan PLAN](CarePlan-BasismonitoringM6ExampleCP.html) | | [- Appointment SOLL](Appointment-BesuchsterminM6ExampleAPT.html) | [Encounter - IST](Encounter-BesuchsterminM6ExampleENC.html) |

| [- Termin M9](PlanDefinition-Q4MSBasismonitoringM9.html) | [- CarePlan PLAN](CarePlan-BasismonitoringM9ExampleCP.html) | | [- Appointment SOLL](Appointment-BesuchsterminM9ExampleAPT.html) | [Encounter - IST](Encounter-BesuchsterminM9ExampleENC.html) |

## Beispiel Anwendungsfälle

### Check-In zum ersten Besuch im Multiple Sklerose-Zentrum (vereinfacht)

#### Beschreibung

Eine Patientin hat mit dem Multiple Sklerose-Zentrum (MSZ) ihren ersten Besuchstermin im Rahmen des kontinuierlichen Monitorings vereinbart.
In Vorbereitung auf den Besuch im MSZ soll die Patientin den EMIQ-Fragebogen ausfüllen und die Antworten bereitstellen, um beim Besuch im MSZ
möglichst wenig Zeit mit vorbereitenden oder administrativen Tätigkeiten zu verbringen. Die Bereitstellung des Fragebogens sowie die
Übermittlung der Antworten soll digital durchgeführt werden.

#### FHIR Ressourcen

##### Vorlage und Instanz

| FHIR Ressource | [Workflow](https://www.hl7.org/fhir/workflow.html)-Ressourcenkategorie | Beschreibung |
|:-|:-|:-|
|[PlanDefinition](PlanDefinition-Q4MSCheckIn.html)|Definition|Definition des geplanten Check-Ins der Patientin|
|[ActivityDefinition](ActivityDefinition-Q4MSCheckInAD.html)|Definition|Definition der einzelnen Schritte zum Check-In der Patientin|
|[CarePlan](CarePlan-CheckInM0ExampleCP.html)|Request|Konkrete Instanz des Check-Ins der Patientin|
|[RequestGroup](RequestGroup-CheckInM0ExampleRG.html)|Request|Konkrete Schritte zum Check-In der Patientin|

##### Anfrage (Requested)

| FHIR Ressource | [Workflow](https://www.hl7.org/fhir/workflow.html)-Ressourcenkategorie | Beschreibung |
|[Task (Anfrage)](Task-47d39109-4e14-4a44-bd7a-fdd887ed86aa.html)|Request|Beschreibung der Aufgaben inklusive Termin zum Check-In der Patientin|
|[Sub-Task (Anfrage)](Task-fb3902cc-5265-4ec6-9476-99434350b5b3.html)|Request|Beschreibung der Aufgabe zum Ausfüllen eines Fragebogens durch Patientin|
|[Bundle (Anfrage)](Bundle-CheckInAnfrageExampleBM.html)|-|Nachricht zum Check-In der Patientin|
|[MessageHeader (Anfrage)](MessageHeader-af021986-5fda-4a75-b3d8-71ad1474fc49.html)|-|Metadaten zur Nachricht zum Check-In der Patientin|
|[MessageDefinition (Anfrage)](MessageDefinition-Q4MSCheckInAnfrageMD.html)|-|Definition der Nachricht zum Check-In der Patientin|
|[Questionnaire (Anfrage)](Questionnaire-ExerciseMentalIllnessQuestionnaire.html)|Definition|Durch Patientin auszufüllender Fragebogen|

##### Antwort (Received)

| FHIR Ressource | [Workflow](https://www.hl7.org/fhir/workflow.html)-Ressourcenkategorie | Beschreibung |
|[Task (Antwort)](Task-519c0009-118d-4055-95bc-9071d8470850.html)|Request|Beschreibung der Empfangsbestätigung zum Check-In der Patientin|
|[Sub-Task (Antwort)](Task-a7c7bb9b-1234-491c-9bb5-78814c12a4c6.html)|Request|Beschreibung der Empfangsbestätigung zum Ausfüllen eines Fragebogens durch Patientin|
|[Bundle (Antwort)](Bundle-CheckInAntwortExampleBM.html)|-|Antwortnachricht zum Check-In der Patientin|
|[MessageHeader (Antwort)](MessageHeader-5ea78a0e-5ef6-406e-ab88-611a90aa46d2.html)|-|Metadaten zur Antwortnachricht zum Check-In der Patientin|
|[MessageDefinition (Antwort)](MessageDefinition-Q4MSCheckInAntwortMD.html)|-|Definition der Antwortnachricht zum Check-In der Patientin|

#### Workflow

##### Workflow Pattern

Workflow-Management Communication Pattern: [Messaging Task from placer to fulfiller](https://www.hl7.org/fhir/workflow-management.html#optionj)

##### Workflowschritte

Nachfolgend sind die einzelnen Schritte von der Erstellung einer Anfrage bis zum Übermitteln der Empfangsbestätigung aufgeführt.
Dabei wird nur der Erfolgsfall abgebildet, z.B. das Versäumnis, die angefragten Dokumente fristgerecht oder überhaupt bereitzustellen fehlt in der Darstellung.

|Nr.|Schritte|[Task.status](https://www.hl7.org/fhir/task-definitions.html#Task.status)|[Sub-Task.status](https://www.hl7.org/fhir/task-definitions.html#Task.status)|[Task.businessStatus](https://www.hl7.org/fhir/task-definitions.html#Task.businessStatus)|
|:-|:-|:-|:-|:-|
|1.|Das MSZ veranlasst den Check-In der Patientin. Es wird eine [CarePlan](https://www.hl7.org/fhir/careplan.html)-Ressource (inkl. [RequestGroup](https://www.hl7.org/fhir/requestgroup.html)) erzeugt, die die Veranlassung repräsentiert. Ein erzeugter [Task](https://www.hl7.org/fhir/task.html), der über [Task.basedOn](https://www.hl7.org/fhir/task-definitions.html#Task.basedOn) den CarePlan referenziert, repräsentiert die Anfrage des klinische Systems and das Patientenportal.|Draft|Draft|-|
|2.|Das klinische System übermittelt eine Anfrage als Nachricht, d.h. eine [Bundle-Message](https://www.hl7.org/fhir/bundle.html), an das Patientenportal.|Requested|Requested|-|
|3.|Das Patientenportal bestätigt den Erhalt der Anfrage, indem es den Task.status aktualisiert, eine Antwortnachricht mit dem gleichen Task als Inhalt erzeugt und diese an das klinische System sendet.|Received|Received|-|
|4.|Das Patientenportal wertet die Anfragen und dessen Inhalt aus und akzeptiert den Task. Die Patientin wird zur eingetroffenen Anfrage benachrichtigt.|Accepted|Accepted|-|
|5.|Die Patientin bearbeitet die Anfrage, indem die im (Sub-) Task.input angefragten Inhalte bearbeitet bzw. über (Sub-) Task.output angeforderte Inhalte bereitstellt.|In-Progress|In-Progrees|-|
|6.|Die Patientin hat die Bearbeitung bzw. Bereitstellung abgeschlossen.|Completed|Completed|-|
